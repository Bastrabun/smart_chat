--[[
   ****************************************************************
   *******                                                   ******
   *******        Support for Matterbridge                   ******
   *******    (?) by A.C.M. and Bastrabun on your-land       ******
   *******                                                   ******
   ****************************************************************

]]--

    local sc = smart_chat

if(minetest.global_exist(yl_matterbridge)) then

    function yl_matterbridge.publish_to_chat(user_name, message_text)
        local line = "<".. user_name .. "@bridge> " .. message_text
        sc.sent_2_public_channel(line)

    end -- func(user_name

    function sc.send_2_bridge(user_name, message_text)
        local line = "<" .. user_name .. "@" .. sc.servername .. "> " .. message_text
        yl_matterbridge.send_to_bridge(username, line)

    end

end -- if(minetest.global_exist

