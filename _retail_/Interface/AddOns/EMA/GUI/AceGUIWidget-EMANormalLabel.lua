-- ================================================================================ --
--				EMA - ( Ebony's MultiBoxing Assistant )    							--
--				Current Author: Jennifer Cally (Ebony)								--
--																					--
--				License: All Rights Reserved 2018-2025 Jennifer Cally					--
--																					--
--				Some Code Used from "Jamba" that is 								--
--				Released under the MIT License 										--
--				"Jamba" Copyright 2008-2015  Michael "Jafula" Miller				--
--																					--
-- ================================================================================ --

--[[
File modified from AceGUI Label widget.  Used under Ace3 modified BSD licence.
]]--

local AceGUI = LibStub("AceGUI-3.0")

--------------------------
-- Jamba Normal Label
--------------------------
do
	local Type = "EMANormalLabel"
	local Version = 1
	
	local function OnAcquire(self)
		self:SetText("")
		self:SetImage(nil)
		self:SetColor()
	end
	
	local function OnRelease(self)
		self.frame:ClearAllPoints()
		self.frame:Hide()
	end
	
	local function UpdateImageAnchor(self)
		local width = self.frame.width or self.frame:GetWidth() or 0
		local image = self.image
		local label = self.label
		local frame = self.frame
		local height
		
		label:ClearAllPoints()
		image:ClearAllPoints()
		
		if self.imageshown then
			local imagewidth = image:GetWidth()
			if (width - imagewidth) < 200 or (label:GetText() or "") == "" then
				--image goes on top centered when less than 200 width for the text, or if there is no text
				image:SetPoint("TOP",frame,"TOP",0,0)
				label:SetPoint("TOP",image,"BOTTOM",0,0)
				label:SetPoint("LEFT",frame,"LEFT",0,0)
				label:SetWidth(width)
				height = image:GetHeight() + label:GetHeight()
			else
				--image on the left
				image:SetPoint("TOPLEFT",frame,"TOPLEFT",0,0)
				label:SetPoint("TOPLEFT",image,"TOPRIGHT",0,0)
				label:SetWidth(width - imagewidth)
				height = math.max(image:GetHeight(), label:GetHeight())
			end
		else
			--no image shown
			label:SetPoint("TOPLEFT",frame,"TOPLEFT",0,0)
			label:SetWidth(width)
			height = self.label:GetHeight()
		end
		
		self.resizing = true
		self.frame:SetHeight(height)
		self.frame.height = height
		self.resizing = nil
	end
	
	local function SetText(self, text)
		self.label:SetText(text or "")
		UpdateImageAnchor(self)
	end

	local function SetDisabled(self,disabled)
		if disabled then
			self.label:SetTextColor(0.5,0.5,0.5)
		else
			self.label:SetTextColor(1,1,1)
		end
	end
		
	local function SetColor(self, r, g, b)
		if not (r and g and b) then
			r, g, b = 1, 1, 1
		end
		self.label:SetVertexColor(r, g, b)
	end
	
	local function OnWidthSet(self, width)
		if self.resizing then return end
		UpdateImageAnchor(self)
	end
	
	local function SetImage(self, path, ...)
		local image = self.image
		image:SetTexture(path)
		
		if image:GetTexture() then
			self.imageshown = true
			local n = select('#', ...)
			if n == 4 or n == 8 then
				image:SetTexCoord(...)
			end
		else
			self.imageshown = nil
		end
		UpdateImageAnchor(self)
	end
	
	local function SetImageSize(self, width, height)
		self.image:SetWidth(width)
		self.image:SetHeight(height)
		UpdateImageAnchor(self)
	end

	local function Constructor()
		local frame = CreateFrame("Frame",nil,UIParent)
		local self = {}
		self.type = Type
		
		self.OnRelease = OnRelease
		self.OnAcquire = OnAcquire
		self.SetText = SetText
		self.SetDisabled = SetDisabled
		self.SetColor = SetColor
		self.frame = frame
		self.OnWidthSet = OnWidthSet
		self.SetImage = SetImage
		self.SetImageSize = SetImageSize
		frame.obj = self
		
		frame:SetHeight(24)
		frame:SetWidth(200)
		local label = frame:CreateFontString(nil,"BACKGROUND","GameFontHighlight")
		label:SetPoint("TOPLEFT",frame,"TOPLEFT",0,0)
		label:SetWidth(200)
		label:SetHeight(24)
		label:SetJustifyH("LEFT")
		label:SetJustifyV("MIDDLE")
		self.label = label
		
		local image = frame:CreateTexture(nil,"BACKGROUND")
		self.image = image
		
		AceGUI:RegisterAsWidget(self)
		return self
	end
	
	AceGUI:RegisterWidgetType(Type,Constructor,Version)
end

