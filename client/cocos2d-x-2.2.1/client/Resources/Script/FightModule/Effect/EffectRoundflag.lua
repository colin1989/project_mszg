--region EffectRoundflag.lua
--Author : Effectroundflag
--Date   : 2015/1/6
--此文件由[BabeLua]插件自动生成

EffectRoundflag = class(EffectPlayerCast)
	CCEaseSineIn:create( CCMoveBy:create(0.3,CCPointMake(200,0))),
	CCFadeIn:create(0.3))
	CCEaseSineOut:create( CCMoveBy:create(0.2,CCPointMake(200,0))),
	CCFadeOut:create(0.3))
    return 0.8
end 

--endregion