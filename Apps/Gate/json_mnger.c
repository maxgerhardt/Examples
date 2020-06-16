#include <stdio.h>
#include "json_mnger.h"
#include "cmd.h"
#include "convert.h"
#include "gate.h"
#include "luos.h"

static time_luos_t update_time = DEFAULT_REFRESH_MS;

//******************* sensor update ****************************
// This function will gather data from sensors and create a json string for you
void collect_data(module_t *module)
{
    msg_t update_msg;
    update_msg.header.target_mode = IDACK;
    update_msg.header.cmd = ASK_PUB_CMD;
    // ask modules to publish datas
    for (uint8_t i = 1; i <= get_last_module(); i++)
    {
        // Check if this module is a sensor
        if (is_sensor(type_from_id(i)))
        {
            // This module is a sensor so create a msg to enable auto update
            update_msg.header.target = i;
            time_to_msg(&update_time, &update_msg);
            update_msg.header.cmd = UPDATE_PUB;
            luos_send(module, &update_msg);
        }
    }
}

// This function will create a json string for modules datas
void format_data(module_t *module, char *json)
{
    msg_t *json_msg;
    if ((luos_message_available() > 0))
    {
        // Init the json string
        sprintf(json, "{\"modules\":{");
        // loop into modules.
        uint16_t i = 1;
        while (luos_message_available())
        {
            // get the oldest message of this module
            json_msg = luos_read(module);
            if (json_msg)
            {
                i = json_msg->header.source;
                // Create module description
                char *alias;
                alias = alias_from_id(i);
                if (alias != 0)
                {
                    sprintf(json, "%s\"%s\":{", json, alias);
                    // now add json data from module
                    // Check if we receive messages from this module
                    while (json_msg)
                    {
                        // we receive some, add it to the Json
                        msg_to_json(json_msg, &json[strlen(json)]);
                        json_msg = luos_read_from(module, i);
                    }
                    if (json[strlen(json) - 1] != '{')
                    {
                        // remove the last "," char
                        json[strlen(json) - 1] = '\0';
                    }
                    // End the module section
                    sprintf(json, "%s},", json);
                }
            }
        }
        // remove the last "," char
        json[strlen(json) - 1] = '\0';
        // End the Json message
        sprintf(json, "%s}}\n", json);
    }
    else
    {
        //create a void string
        *json = '\0';
    }
}

void set_update_time(time_luos_t new_time)
{
    update_time = new_time;
}
