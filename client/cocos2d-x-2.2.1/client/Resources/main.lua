﻿----------------------------------------------------------------------
    --CCSequence:createWithTwoActions(CCDelayTime:create(0.5),CCCallFuncN:create(pushAction))
	runningScene:runAction(CCSequence:createWithTwoActions(CCDelayTime:create(0.1), CCCallFunc:create(function()
			NetHelper.close()
	        UIManager.destroyAllUI()
	        UIManager.begin(true)
	end)))