-- target.lua START --


local f = LindUF:UnitFrame("target")
f:ClearAllPoints()
f:SetWidth(280)
f:SetHeight(15)
f:SetPoint("LEFT", UIParent, "CENTER", 100, -150)

f.HealthBar = LindUF:HealthBar(f)
f.HealthBar.Texture:SetColorTexture(1, 0, 0, .7)
-- f.HealthBar:SetReverseFill(true)
f.HealthBar:ClearAllPoints()
f.HealthBar:SetWidth(90)
f.HealthBar:SetHeight(15)
f.HealthBar:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
f.HealthBar:SetMinMaxValues(0, .33)

f.HealthBar2 = LindUF:HealthBar(f)
f.HealthBar2.Texture:SetColorTexture(1, 0, 0, .7)
-- f.HealthBar2:SetReverseFill(true)
f.HealthBar2:ClearAllPoints()
f.HealthBar2:SetWidth(90)
f.HealthBar2:SetHeight(15)
f.HealthBar2:SetPoint("LEFT", f.HealthBar, "RIGHT", 5, 0)
f.HealthBar2:SetMinMaxValues(.33, .66)

f.HealthBar3 = LindUF:HealthBar(f)
f.HealthBar3.Texture:SetColorTexture(1, 0, 0, .7)
-- f.HealthBar3:SetReverseFill(true)
f.HealthBar3:ClearAllPoints()
f.HealthBar3:SetWidth(90)
f.HealthBar3:SetHeight(15)
f.HealthBar3:SetPoint("LEFT", f.HealthBar2, "RIGHT", 5, 0)
f.HealthBar3:SetMinMaxValues(.66, 1)

-- LindUF:health(LindUF.Target)
-- local shi = LindUF.Target.HealthBar
-- shi.Texture:SetColorTexture(1,0,0,.7)
-- shi:SetReverseFill(true)
f.HealthBar:RegisterEvent("UNIT_TARGET")
-- shi:ClearAllPoints()
-- shi:SetWidth(300)
-- shi:SetHeight(15)
-- shi:SetPoint("LEFT", UIParent, "CENTER", 100, -100)
-- shi.Texture:SetVertexOffset(3, 10, 0)
-- shi.BackgroundTexture:SetVertexOffset(3, 10, 0)
-- shi.Texture:SetVertexOffset(1, 10, 0)
-- shi.BackgroundTexture:SetVertexOffset(1, 10, 0)

LindUF:power(f)
f.PowerBar.Texture:SetColorTexture(1,0,0,.5)

-- local f = LindUF.Target.PowerBar
-- f.Texture:SetColorTexture(1,0,0,.5)
f.PowerBar:RegisterEvent("UNIT_TARGET")
f.PowerBar:ClearAllPoints()
f.PowerBar:SetWidth(280)
f.PowerBar:SetHeight(10)
f.PowerBar:SetPoint("TOPLEFT", f.HealthBar, "BOTTOMLEFT", 0, -2)
-- f.Texture:SetVertexOffset(3, 5, 0)
-- f.BackgroundTexture:SetVertexOffset(3, 5, 0)
-- f.Texture:SetVertexOffset(1, 5, 0)
-- f.BackgroundTexture:SetVertexOffset(1, 5, 0)



-- local target = LindUF:UnitFrame("target")
-- target:SetWidth(300)
-- target:SetHeight(20)
-- target:ClearAllPoints()
-- target:SetPoint("LEFT", UIParent, "CENTER", 150, -50)

-- LindUF:HealthBar(target)
-- LindUF:PowerBar(target)

-- target.PowerBar:ClearAllPoints()
-- target.PowerBar:SetPoint("TOP", target.HealthBar, "BOTTOM", 0, -3)
-- target.PowerBar.Power:SetHeight(6)
-- target.PowerBar:SetHeight(10)

LindUF:CastBar(f)
f.CastBar:ClearAllPoints()
f.CastBar:SetHeight(8)
f.CastBar:SetWidth(280)
f.CastBar:SetPoint("BOTTOM", f, "TOP", 0, 20)

LindUF:Name(f)
f.Name:ClearAllPoints()
f.Name:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 0, 5)
f.Name.Text:ClearAllPoints()
f.Name.Text:SetPoint("LEFT", 0, 0)

LindUF:HealthText(f)
f.HealthText:ClearAllPoints()
f.HealthText:SetPoint("TOPLEFT", f, "TOPRIGHT", 2, 0)
f.HealthText.Text:ClearAllPoints()
f.HealthText.Text:SetPoint("LEFT", 0, 0)

-- local lol = CreateFrame("Frame", "target30", f.HealthBar)
-- lol:SetWidth(2)
-- lol:SetHeight(5)
-- lol:SetPoint("BOTTOM", f.HealthBar, "BOTTOMLEFT", f:GetWidth()/3, 0)
-- lol:SetFrameStrata("BACKGROUND")
-- lol:SetFrameLevel(5)
-- lol.tx = LindUF:Texture(lol)
-- lol.tx:SetColorTexture(1,1,1,.2)
--
-- local sixty = CreateFrame("Frame", "target30", shi)
-- sixty:SetWidth(1)
-- sixty:SetHeight(32)
-- sixty:SetPoint("BOTTOM", shi, "BOTTOMLEFT", shi:GetWidth()*2/3, 0)
-- sixty:SetFrameStrata("BACKGROUND")
-- sixty:SetFrameLevel(5)
-- sixty.tx = LindUF:Texture(sixty)
-- sixty.tx:SetColorTexture(1,1,1,.5)

LindUF.Target = f

-- TargetFrame:SetScript("OnEvent", nil);
-- TargetFrame:Hide();
-- target.lua END --
