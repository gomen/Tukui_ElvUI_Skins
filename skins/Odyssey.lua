if not (IsAddOnLoaded("ElvUI") or IsAddOnLoaded("Tukui")) or not IsAddOnLoaded("Odyssey") then return end
local U = unpack(select(2,...))
local name = "OdysseySkin"
local function SkinOdyssey(self)
	local s = U.s
	local c = U.c

	OdysseyFrameQuestDBScrollFrame:StripTextures(True)
	OdysseyMapsMenuScrollFrame:StripTextures(True)
	OdysseyFrameQuestDetailsSeries:StripTextures(True)
	OdysseyFrameSearchScrollFrame:StripTextures(True)

	OdysseyFramePortrait:Kill()

	cSkinFrame(OdysseyFrame)
	cSkinFrame(OdysseyFrameRealmSummaryScrollFrame)
	OdysseyFrameQuestDB:SetTemplate("Transparent")
	OdysseyFrameQuestDBScrollFrame:SetTemplate("Transparent")
	OdysseyFrameQuestDetails:SetTemplate("Transparent")
	OdysseyFrameZoneMaps:SetTemplate("Transparent")

	cSkinScrollBar(OdysseyFrameQuestDBScrollFrameScrollBar)
	cSkinScrollBar(OdysseyFrameRealmSummaryScrollFrameScrollBar)
	cSkinScrollBar(OdysseyMapsMenuScrollFrameScrollBar)
	cSkinEditBox(OdysseyFrame_SearchEditBox)
	cSkinEditBox(OdysseyFrameQuestDB_MinLevel)
	cSkinEditBox(OdysseyFrameQuestDB_MaxLevel)
	
	OdysseyFrame_ResetButton:Point("TOPLEFT", OdysseyFrame, "TOPLEFT", 55, -77)
	OdysseyFrameTab1:Point("TOPLEFT", OdysseyFrame, "BOTTOMLEFT", -5, 2)
	cSkinButton(OdysseyFrame_ResetButton)
	cSkinButton(OdysseyFrame_SearchButton)
	cSkinButton(OdysseyFrameQuestDB_GetHistory)
	cSkinCloseButton(OdysseyFrameCloseButton)
	cSkinNextPrevButton(OdysseyFrameQuestDetailsGoBack)
	cSkinNextPrevButton(OdysseyFrameQuestDetailsGoForward)
	cSkinDropDownBox(OdysseyFrameRealmSummary_SelectContinent)
	cSkinScrollBar(OdysseyFrameSearchScrollFrameScrollBar)

	for i = 1, 3 do
		cSkinTab(_G["OdysseyFrameTab"..i])
		cSkinFrame(_G["OdysseyTabQuestsMenuItem"..i])
	end

	for i = 1, 5 do
		cSkinFrame(_G["OdysseyTabQuests_Sort"..i])
	end

	for i = 1, 15 do
		cSkinFrame(_G["OdysseyTabMapsMenuItem"..i])
	end

	for i = 1, 4 do
		cSkinFrame(_G["OdysseyTabSearchMenuItem"..i])
	end

	for i = 1, 10 do
		_G["OdysseyFrameRealmSummaryEntry1Item"..i]:StripTextures(True)
		_G["OdysseyFrameRealmSummaryEntry2Item"..i]:StripTextures(True)
		_G["OdysseyFrameRealmSummaryEntry3Item"..i]:StripTextures(True)
		_G["OdysseyFrameRealmSummaryEntry4Item"..i]:StripTextures(True)
		_G["OdysseyFrameRealmSummaryEntry5Item"..i]:StripTextures(True)
		_G["OdysseyFrameRealmSummaryEntry6Item"..i]:StripTextures(True)
		_G["OdysseyFrameRealmSummaryEntry7Item"..i]:StripTextures(True)
		_G["OdysseyFrameRealmSummaryEntry8Item"..i]:StripTextures(True)
	end

	OdyTooltip:HookScript("OnShow", function(self) self:SetTemplate("Transparent") end)

end

cRegisterSkin(name,SkinOdyssey)