--迅雷の騎士ガイアドラグーン
function c91949988.initial_effect(c)
	--xyz summon
	c:EnableReviveLimit()
	aux.AddXyzProcedure(c,c91949988.xyzfilter,2,c91949988.ovfilter,aux.Stringid(91949988,0))
	--pierce
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode(EFFECT_PIERCE)
	c:RegisterEffect(e1)
end
function c91949988.xyzfilter(c)
	return c:GetLevel()==7
end
function c91949988.ovfilter(c)
	local rk=c:GetRank()
	return c:IsFaceup() and (rk==5 or rk==6)
end
