local sc = smart_chat
local S = sc.S
local cname = "reconnect"
local short = "rc"
local activate = minetest.settings:get_bool("smart_chat.cmd_" .. cname, true)

if(not activate) then return end

sc.register_help({
                            Name = cname,
                            Usage = "/c " .. cname,
                            Description = S("Restarts the counter for automatic reconnect."),
                            Parameter = "<>",
                            Shortcut = "/c " .. short,
                        }
                       )

sc.registered_commands[cname] = function(player)

--[[
     *******************************************************
     ***         Insert your code to execute here        ***
     *******************************************************
    parameter = Table with command and parameter(s)
    parameter[1] = command
    parameter[2] = parameter 1
    parameter[3] = parameter 3
    ...
    parameter[x] = parameter x
]]--
    local channel = sc.player[player]

    if(sc.is_channelmod(player) < 10) then
        sc.print(player, sc.red .. S("Error: You are not a channelmod."))
        return

    end -- if(not privs.channelmod
    if(sc.automatic_reconnect) then
        if( (sc.reconnect > sc.reconnect_max) and (not sc.irc_on)
            sc.reconnect = 0
            sc.print(player, sc.green .. S("Automatic reconnect restarted."))

        end -- if(sc.reconnect
        
    else
        sc.irc_connect()
        sc.print(player, sc.green .. S("New connect to irc started."))

    end -- if(sc.automatic_reconnect
    
end -- sc[template

sc.registered_commands[short] = function(player)

        sc.registered_commands[cname](player, parameter)

end -- sc.registered_commands[template_shortcut
