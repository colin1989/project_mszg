﻿----------------------------------------------------------------------
    if express == nil then return  end 
    local exptb = CommonFunc_split(express,",")
    if #exptb == 1 then 
        return exptb[1]
    end 

    for key = 1,120  do --最大120级
        local curlv = tonumber(exptb[2*key-1])
        assert(curlv ~= nil, "PLANNER ERROR!! key"..key)
        local curExp = exptb[2*key] 
        assert(curExp ~= nil, "PLANNER ERROR!! curExp"..key)

        if  lv <=  curlv then 
            return curExp
        end 
    end 
end 
    local exptb = CommonFunc_split(express,",")
    if #exptb == 1 then 
        return exptb[1]
    end 

    for key = 1,30  do --天赋最大30级
        local curlv = tonumber(exptb[2*key-1])
        assert(curlv ~= nil, "PLANNER ERROR!! key"..key)
        local curExp = exptb[2*key] 
        assert(curExp ~= nil, "PLANNER ERROR!! curExp"..key)

        print("ParseExpressByTanletLv",TalentLv,curlv)
        if  TalentLv <=  curlv then 
            return curExp
        end 
    end 