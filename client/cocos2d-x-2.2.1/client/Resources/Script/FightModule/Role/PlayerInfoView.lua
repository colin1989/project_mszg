﻿----------------------------------------------------------------------
			numberModifiedAction(label)
			self.mOriginals[i] = cur
		end
			updateParam.cur = cur
			updateParam.delta = self.mOriginals[i] - cur
            updateParam.origin = self.mOriginals[i]
            updateParam.label = label
            updateParam.key = i

            updateParam.lifeBar = self.mLifeBar

			self:createUpdateBattleTimer()
            self.UpdateLabelTimer.stop()
			self.UpdateLabelTimer.setParam(updateParam)
			self.UpdateLabelTimer.start()
function PlayerInfoView:createUpdateBattleTimer()
    local function getDetla(delta)
	    local x = math.abs(delta)
        if x > 10 then 
		    return math.floor(x/10)
	    else
		    return math.floor(x)
	    end
    end 

	if nil == self.UpdateLabelTimer then
		self.UpdateLabelTimer = CreateTimer(0.04, -1, function(ct)
	
			local cur = ct.getParam().cur   --当前 要变成的值
            local origin = ct.getParam().origin --原来的值
			local delta = ct.getParam().delta  
            local i = ct.getParam().key
            local label = ct.getParam().label


            cclog("cur",cur, "origin",origin,"delta",delta,"getDetla(delta)",getDetla(delta))
			if  cur < origin then 
		        self.mShowPoint[i] = self.mShowPoint[i] - getDetla(delta)
                label:setStringValue(string.format("%d",self.mShowPoint[i]))
				if  self.mShowPoint[i] < cur then 
                    self.mShowPoint[i] = cur
					label:setStringValue(tostring(cur))
					ct.stop()
				end
            elseif cur > origin then 
                self.mShowPoint[i] = self.mShowPoint[i] + getDetla(delta)
				label:setStringValue(string.format("%d",self.mShowPoint[i]))
				if  self.mShowPoint[i] > cur then 
                    self.mShowPoint[i] = cur
					label:setStringValue(tostring(cur))
					ct.stop()
				end 
			end

		end, nil)
	end
end
    if newbuff ~= nil then 
         local iconRes = newbuff:getBuffConfig("buff_icon")
         local unit = self.mBuffView[self:getBuffType(newbuff:getBuffConfig("buff_type"))]
         --是否需要飘ICON
         if iconRes~=nil and string.find(iconRes,".png") and unit ~= nil then 
             local sprite = CCSprite:createWithSpriteFrameName(iconRes)
        end
        newbuff:setBuffConfig("new_flag",false)
    end