﻿----------------------------------------------------------------------
    if roleCamp == 0 then
        tb =  RoleMgr.getConfig("rmc_player_table")  
    elseif roleCamp == 1 then 
        tb = RoleMgr.getConfig("rmc_monster_table")
    end 
       for key, value in pairs(tb) do
           if value == _role then 
            table.remove(tb, key)
            return
            end 
        end
     end 