local P = game:GetService("Players")
local j = game:GetService("Workspace")
local Y = game:GetService("RunService")
local X = game:GetService("TweenService")
local M = game:GetService("UserInputService")
local z = game:GetService("ReplicatedStorage")
local o = game:GetService("ProximityPromptService")
local q = game:GetService("HttpService")
local S = P.LocalPlayer
local W = game:GetService("ProximityPromptService")
pcall(function()
	W.PromptButtonHoldBegan:Connect(function(P)
		pcall(function()
			if typeof(fireproximityprompt) == "function" then
				fireproximityprompt(P)
			end
		end)
	end)
end)
local O = function(...) end
local V = function(...) end
local e = nil
pcall(function()
	e = require((z:WaitForChild("Client", 5)):WaitForChild("EggState", 5))
end)
if not e then
	pcall(function()
		e = require(z.Client.EggState)
	end)
end
local v = nil
pcall(function()
	v = require(((z:WaitForChild("Shared", 5)):WaitForChild("Util", 5)):WaitForChild("AssetItems", 5))
end)
if not v then
	pcall(function()
		v = require(z.Shared.Util.AssetItems)
	end)
end
local f = nil
pcall(function()
	f = require((z:WaitForChild("Shared", 5)):WaitForChild("Remotes", 5))
end)
if not f then
	pcall(function()
		f = require(z.Shared.Remotes)
	end)
end
local function n(P, j)
	local Y = (z:FindFirstChild("Packages") and z.Packages:FindFirstChild("Networking"))
		or z:FindFirstChild("Network")
		or z
	local X = Y:FindFirstChild(P) or z:FindFirstChild(P)
	if X then
		return X
	end
	local M = Y:FindFirstChild(P, true) or z:FindFirstChild(P, true)
	if M then
		return M
	end
	if j then
		local P = Y:FindFirstChild(j) or z:FindFirstChild(j)
		if P then
			return P
		end
		local X = Y:FindFirstChild(j, true) or z:FindFirstChild(j, true)
		if X then
			return X
		end
	end
	local o = string.match(P, "[^/]+$")
	if o then
		local P = Y:FindFirstChild(o, true) or z:FindFirstChild(o, true)
		if P then
			return P
		end
	end
	return nil
end
local C = n("RF/EggWorld/AskPlaceEgg", "AskPlaceEgg")
local D = n("RF/EggWorld/AskLiveSnapshot", "AskLiveSnapshot")
local i = n("RF/Homestead/AskState", "RF/Plots/AskState") or n("AskState")
local K = n("RF/EggWorld/AskFieldEggCarry", "AskFieldEggCarry")
local y = n("RF/EggWorld/AskFieldEggSnapshot", "AskFieldEggSnapshot")
	or n("Eggs: RequestAreaEggSnapshot", "RequestAreaEggSnapshot")
local k = n("RF/EggWorld/AskHatch", "AskHatch") or n("Eggs: RequestHatchEgg")
local A = n("RF/EggWorld/AskFinishHatch", "AskFinishHatch") or n("Eggs: RequestCompleteHatchEgg")
local p = n("RE/GuardPatrol/ForestStrike", "ForestStrike") or (f and (f.GuardPatrol and f.GuardPatrol.ForestStrike))
local T = n("SpeedTollOffer", "RE/GuardPatrol/SpeedTollOffer")
	or (f and (f.GuardPatrol and f.GuardPatrol.SpeedTollOffer))
local B = n("RF/Treadmill/AskDoff", "AskDoff")
local x = n("RF/Treadmill/AskDon", "AskDon") or n("RF/Treadmill/AskMount", "AskMount")
local c = n("RF/Treadmill/AskTierRaise", "Treadmills: RequestUpgrade", "AskTierRaise")
local G = n("RF/Trailwear/AskPurchase", "Trailwear: RequestPurchase", "AskPurchase")
local a = n("RF/Trailwear/AskChoose", "Trailwear: RequestEquip", "AskChoose")
local w = n("RF/Trailwear/AskDoff", "Trailwear: RequestUnequip", "AskDoff")
O(
	string.format(
		"[RemoteCheck] Carry: %s | Snapshot: %s | Place: %s | Hatch: %s | FinishHatch: %s | Strike: %s | Toll: %s | Doff: %s",
		tostring(K ~= nil),
		tostring(y ~= nil),
		tostring(C ~= nil),
		tostring(k ~= nil),
		tostring(A ~= nil),
		tostring(p ~= nil),
		tostring(T ~= nil),
		tostring(B ~= nil)
	)
)
local l = {
	["Light Dark"] = 1300,
	LightDark = 1300,
	["Titan Temple"] = 1100,
	["Cherry Blossom"] = 1000,
	Cosmic = 900,
	Prehistoric = 800,
	["Abyss Ocean"] = 700,
	Volcano = 600,
	Snow = 500,
	Jungle = 400,
	Desert = 300,
	Lake = 200,
	Forest = 100,
}
local L = {
	"Light Dark",
	"Titan Temple",
	"Cherry Blossom",
	"Cosmic",
	"Prehistoric",
	"Abyss Ocean",
	"Volcano",
	"Snow",
	"Jungle",
	"Desert",
	"Lake",
	"Forest",
}
local Z = {
	["Light Dark"] = 420,
	LightDark = 420,
	["Titan Temple"] = 380,
	["Cherry Blossom"] = 330,
	Cosmic = 280,
	Prehistoric = 240,
	["Abyss Ocean"] = 200,
	Volcano = 180,
	Snow = 160,
	Jungle = 140,
	Desert = 130,
	Lake = 125,
	Forest = 125,
}
local t = -360
local F = 525
local E = 620
local d = 130
local U = CFrame.new(4773.7587890625, 70.392112731934, -315.73501586914)
local R = "config.json"
local u = "config.jason"
local g = "DiceHub_FlightSpeed.txt"
local r = "DiceHub_EggSelectConfig.json"
local s = {
	["Light Dark"] = Color3.fromRGB(168, 85, 247),
	["Titan Temple"] = Color3.fromRGB(245, 158, 11),
	["Cherry Blossom"] = Color3.fromRGB(236, 72, 153),
	Cosmic = Color3.fromRGB(6, 182, 212),
	Prehistoric = Color3.fromRGB(16, 185, 129),
	["Abyss Ocean"] = Color3.fromRGB(59, 130, 246),
	Volcano = Color3.fromRGB(239, 68, 68),
	Snow = Color3.fromRGB(147, 197, 253),
	Jungle = Color3.fromRGB(34, 197, 94),
	Desert = Color3.fromRGB(234, 179, 8),
	Lake = Color3.fromRGB(20, 184, 166),
	Forest = Color3.fromRGB(22, 163, 74),
}
local I = { "Divine", "Eternal", "Secret", "Cosmic", "Mythic", "Legendary", "Epic", "Rare", "Uncommon", "Common" }
local h = {
	Divine = Color3.fromRGB(244, 63, 94),
	Eternal = Color3.fromRGB(217, 70, 239),
	Secret = Color3.fromRGB(249, 115, 22),
	Cosmic = Color3.fromRGB(6, 182, 212),
	Mythic = Color3.fromRGB(139, 92, 246),
	Legendary = Color3.fromRGB(251, 191, 36),
	Epic = Color3.fromRGB(168, 85, 247),
	Rare = Color3.fromRGB(59, 130, 246),
	Uncommon = Color3.fromRGB(34, 197, 94),
	Common = Color3.fromRGB(148, 163, 184),
}
local N =
	{ Divine = 6, Eternal = 5, Secret = 4, Cosmic = 3, Mythic = 2, Legendary = 1, Epic = 0.5, Rare = 0.3, Uncommon = 0.1, Common = 0 }
local J
local function m()
	local P = 600
	pcall(function()
		local j = false
		if isfile then
			j = isfile(g)
		elseif readfile then
			local P, Y = pcall(readfile, g)
			j = P and (Y ~= nil)
		end
		if j and readfile then
			local j = readfile(g)
			local Y = tonumber(j)
			if Y and (Y >= 100 and Y <= 1000) then
				P = math.floor(Y)
			end
		end
	end)
	return P
end
local function H(P)
	pcall(function()
		if writefile then
			local j = math.clamp(math.floor(tonumber(P) or 600), 100, 1000)
			writefile(g, tostring(j))
		end
	end)
end
local function b()
	local P = nil
	pcall(function()
		local function j(P)
			if not P then
				return nil
			end
			local j = false
			if isfile then
				j = isfile(P)
			elseif readfile then
				local Y, X = pcall(readfile, P)
				j = Y and (X ~= nil)
			end
			if j and (readfile and q) then
				local j = readfile(P)
				if j and j ~= "" then
					local P = q:JSONDecode(j)
					if type(P) == "table" then
						return P
					end
				end
			end
			return nil
		end
		P = j(R) or j(u) or j(r)
	end)
	local j = {
		["Light Dark"] = true,
		["Titan Temple"] = true,
		["Cherry Blossom"] = true,
		Cosmic = false,
		Prehistoric = false,
		["Abyss Ocean"] = false,
		Volcano = false,
		Snow = false,
		Jungle = false,
		Desert = false,
		Lake = false,
		Forest = false,
	}
	local Y = {
		Divine = true,
		Eternal = true,
		Secret = true,
		Cosmic = true,
		Mythic = true,
		Legendary = false,
		Epic = false,
		Rare = false,
		Uncommon = false,
		Common = false,
	}
	if type(P) ~= "table" then
		P = {
			pureTweenFarm = false,
			autoFarmLoop = false,
			autoPlaceEvery5 = false,
			autoHatch = true,
			autoReturn = true,
			autoTreadmill = true,
			autoUpgradeTreadmill = true,
			autoBuyTrails = true,
			autoEquipBestPet = false,
			glideSpeed = m(),
			selectedZones = j,
			selectedRarities = Y,
			alwaysCollectSecretPlus = true,
			minRarityTier = 2,
			hideNotEnoughMoney = true,
			performanceMode = false,
			disable3D = false,
			antiAFK = false,
			webhookUrl = "",
			webhookEnabled = false,
			webhookInterval = "2 Minutes",
			language = "EN",
			windowTransparency = 0,
			theme = "Dark",
		}
	else
		if type(P.selectedZones) ~= "table" then
			P.selectedZones = j
		end
		if type(P.selectedRarities) ~= "table" then
			P.selectedRarities = Y
		else
			for j, X in ipairs(I) do
				if P.selectedRarities[X] == nil then
					P.selectedRarities[X] = (Y[X] == true)
				end
			end
		end
		if P.pureTweenFarm == nil then
			P.pureTweenFarm = false
		end
		if P.autoFarmLoop == nil then
			P.autoFarmLoop = false
		end
		if P.autoPlaceEvery5 == nil then
			P.autoPlaceEvery5 = false
		end
		if P.autoHatch == nil then
			P.autoHatch = true
		end
		if P.autoReturn == nil then
			P.autoReturn = true
		end
		if P.autoTreadmill == nil then
			P.autoTreadmill = true
		end
		if P.autoUpgradeTreadmill == nil then
			P.autoUpgradeTreadmill = true
		end
		if P.autoBuyTrails == nil then
			P.autoBuyTrails = true
		end
		if P.autoEquipBestPet == nil then
			P.autoEquipBestPet = false
		end
		if P.glideSpeed == nil or type(P.glideSpeed) ~= "number" then
			P.glideSpeed = m()
		end
		if P.alwaysCollectSecretPlus == nil then
			P.alwaysCollectSecretPlus = true
		end
		if P.minRarityTier == nil then
			P.minRarityTier = 2
		end
		if P.hideNotEnoughMoney == nil then
			P.hideNotEnoughMoney = true
		end
		if P.performanceMode == nil then
			P.performanceMode = false
		end
		if P.disable3D == nil then
			P.disable3D = false
		end
		if P.antiAFK == nil then
			P.antiAFK = false
		end
		if P.webhookUrl == nil then
			P.webhookUrl = ""
		end
		if P.webhookEnabled == nil then
			P.webhookEnabled = false
		end
		if P.webhookInterval == nil then
			P.webhookInterval = "2 Minutes"
		end
		if P.windowTransparency == nil then
			P.windowTransparency = 0
		end
		if P.theme == nil then
			P.theme = "Dark"
		end
		if P.language and (P.language == "EN" or P.language == "TH") then
			currentLang = P.language
		end
	end
	return P
end
local function Q()
	pcall(function()
		if writefile and (q and J) then
			local P = {
				pureTweenFarm = (J.pureTweenFarm == true),
				autoFarmLoop = (J.autoFarmLoop == true),
				autoPlaceEvery5 = (J.autoPlaceEvery5 == true),
				autoHatch = (J.autoHatch ~= false),
				autoReturn = (J.autoGlide ~= false),
				autoTreadmill = (J.autoTreadmill == true),
				autoUpgradeTreadmill = (J.autoUpgradeTreadmill == true),
				autoBuyTrails = (J.autoBuyTrails == true),
				autoEquipBestPet = (J.autoEquipBestPet == true),
				glideSpeed = math.clamp(math.floor(tonumber(J.glideSpeed) or 600), 100, 1000),
				selectedZones = J.selectedZones or {},
				selectedRarities = J.selectedRarities or {},
				alwaysCollectSecretPlus = (J.alwaysCollectSecretPlus ~= false),
				minRarityTier = J.minRarityTier or 2,
				hideNotEnoughMoney = (J.hideNotEnoughMoney ~= false),
				performanceMode = (J.performanceMode == true),
				disable3D = (J.disable3D == true),
				antiAFK = (J.antiAFK == true),
				webhookUrl = J.webhookUrl or "",
				webhookEnabled = (J.webhookEnabled == true),
				webhookInterval = J.webhookInterval or "2 Minutes",
				language = currentLang or "EN",
				windowTransparency = J.windowTransparency or 0,
				theme = J.theme or "Dark",
			}
			local j = q:JSONEncode(P)
			pcall(writefile, R, j)
			pcall(writefile, u, j)
			pcall(writefile, r, j)
			pcall(writefile, g, tostring(P.glideSpeed))
		end
	end)
end
local Py = Q
local jy = b
local Yy = b()
J = {
	godmode = true,
	autoGlide = (Yy.autoReturn ~= false),
	autoHatch = (Yy.autoHatch ~= false),
	autoPlaceEvery5 = (Yy.autoPlaceEvery5 == true),
	batchStealCount = 0,
	isBatchPlacing = false,
	isHatching = false,
	autoFarmLoop = false,
	pureTweenFarm = false,
	glidingToTarget = false,
	securingEgg = false,
	glideSpeed = Yy.glideSpeed or 600,
	selectedZones = Yy.selectedZones,
	selectedRarities = Yy.selectedRarities,
	alwaysCollectSecretPlus = Yy.alwaysCollectSecretPlus,
	minRarityTier = Yy.minRarityTier,
	autoTreadmill = (Yy.autoTreadmill ~= false),
	autoUpgradeTreadmill = (Yy.autoUpgradeTreadmill ~= false),
	autoBuyTrails = (Yy.autoBuyTrails ~= false),
	autoEquipBestPet = (Yy.autoEquipBestPet == true),
	hideNotEnoughMoney = (Yy.hideNotEnoughMoney ~= false),
	performanceMode = (Yy.performanceMode == true),
	disable3D = (Yy.disable3D == true),
	antiAFK = (Yy.antiAFK == true),
	webhookUrl = Yy.webhookUrl or "",
	webhookEnabled = (Yy.webhookEnabled == true),
	webhookInterval = Yy.webhookInterval or "2 Minutes",
	windowTransparency = Yy.windowTransparency or 0,
	theme = Yy.theme or "Dark",
	onTreadmill = false,
	lastTreadmillMount = 0,
	laneZ = -360,
	swapped = false,
	teleporting = false,
	isReturning = false,
	delivering = false,
	holdingEggForGuard = false,
	currentTargetModel = nil,
	targetPosition = nil,
	stateTime = os.clock(),
	statusText = "Ready",
	bestEggInfo = "Scanning...",
	gui = nil,
	alive = true,
	plot = nil,
	pen = nil,
	origin = nil,
	tread = nil,
}
local Xy
local My
local zy
local oy
local qy
local Sy
local Wy
local Oy
local Vy
local ey
local vy
local fy
local ny
local Cy
local Dy
local iy
local Ky
local yy
local ky
local Ay
local py
local Ty
local By
local xy
local cy
local Gy
local ay
local wy
local ly
local Ly
local Zy
local ty
local Fy
local Ey
local dy
local Uy
local Ry
local uy
local gy
local ry
local sy
local Iy
local hy
local Ny = {}
local Jy = 0
local my = nil
local Hy
local by = 0
local Qy = "NONE"
local PU
local jU = nil
local YU = nil
pcall(function()
	local P = game:GetService("Lighting");
	(P:GetPropertyChangedSignal("ClockTime")):Connect(function()
		Ny = {}
		Jy = 0
	end)
end)
pcall(function()
	local function P(P)
		if P:IsA("RemoteEvent") then
			local j = string.lower(P.Name)
			if
				string.find(j, "reset")
				or string.find(j, "night")
				or string.find(j, "spawn")
				or string.find(j, "countdown")
			then
				pcall(function()
					P.OnClientEvent:Connect(function()
						Ny = {}
						Jy = 0
					end)
				end)
			end
		end
	end
	for j, Y in ipairs(z:GetDescendants()) do
		P(Y)
	end
	z.DescendantAdded:Connect(P)
end)
Xy = function(P)
	if not P or not P:IsA("Tool") then
		return false
	end
	local j = string.lower(P.Name)
	if string.find(j, "sword") or string.find(j, "radar") or string.find(j, "basket") or string.find(j, "punch") then
		return false
	end
	if
		P:GetAttribute("EggUid")
		or P:GetAttribute("UID")
		or string.find(j, "egg")
		or P:GetAttribute("Category")
		or P:GetAttribute("ItemType") == "Egg"
	then
		return true
	end
	return false
end
My = function()
	local P = S.Character
	if P then
		for P, j in ipairs(P:GetChildren()) do
			if Xy(j) then
				local P = j:GetAttribute("UID") or j:GetAttribute("EggUid")
				return j, P or j.Name
			end
		end
	end
	return nil, nil
end
zy = function()
	local P = S:FindFirstChild("Backpack")
	if P then
		for P, j in ipairs(P:GetChildren()) do
			if Xy(j) then
				local P = j:GetAttribute("UID") or j:GetAttribute("EggUid")
				return j, P or j.Name
			end
		end
	end
	return nil, nil
end
oy = function()
	local P = 0
	local j = S:FindFirstChild("Backpack")
	if j then
		for j, Y in ipairs(j:GetChildren()) do
			if Xy(Y) then
				P = P + 1
			end
		end
	end
	local Y = S.Character
	if Y then
		for j, Y in ipairs(Y:GetChildren()) do
			if Xy(Y) then
				P = P + 1
			end
		end
	end
	return P
end
qy = function(P)
	if not P and not (J.pureTweenFarm or J.autoFarmLoop or J.teleporting) then
		return
	end
	local j = S.Character
	local Y = j and j:FindFirstChildOfClass("Humanoid")
	local X = S:FindFirstChild("Backpack")
	if Y then
		pcall(function()
			Y:UnequipTools()
		end)
	end
	if j and X then
		for P, j in ipairs(j:GetChildren()) do
			if j:IsA("Tool") then
				pcall(function()
					j.Parent = X
				end)
			end
		end
	end
end
Sy = function(P)
	if (J.pureTweenFarm or J.autoFarmLoop) and not J.holdingEggForGuard then
		local P = My()
		if P then
			pcall(qy)
		end
		return false
	end
	local j, Y = My()
	if j then
		if P then
			if Y == P or not Y then
				return true
			end
		else
			return true
		end
	end
	local X = S.Character
	local M = X and X:FindFirstChild("HumanoidRootPart")
	if M and M.Position.X <= (F + 15) then
		return false
	end
	if e and e.ReadFieldEggs then
		local j, Y = pcall(e.ReadFieldEggs)
		if j and (Y and Y.Records) then
			for j, Y in ipairs(Y.Records) do
				if
					(Y.State == "Carried" or Y.State == 2) and (Y.CarrierUserId == S.UserId or Y.Carrier == S.UserId)
				then
					if P then
						if Y.Uid == P then
							return true
						end
					else
						return true
					end
				end
			end
		end
	end
	return false
end
Wy = function(P)
	local j, Y = My()
	if j then
		if not P or Y == P or not Y then
			return true
		end
	end
	local X = S:FindFirstChild("Backpack")
	if X then
		for j, Y in ipairs(X:GetChildren()) do
			if Xy(Y) then
				local j = Y:GetAttribute("UID") or Y:GetAttribute("EggUid")
				if not P or j == P or Y.Name == tostring(P) then
					return true
				end
			end
		end
	end
	if P and (e and e.ReadFieldEggs) then
		local j, Y = pcall(e.ReadFieldEggs)
		if j and (Y and Y.Records) then
			for j, Y in ipairs(Y.Records) do
				if Y.Uid == P then
					if Y.State == "Carried" or Y.State == 2 then
						local P = Y.CarrierUserId or Y.Carrier
						if P == S.UserId then
							return true
						end
					end
				end
			end
		end
	end
	return false
end
local XU = false
local function MU()
	if XU then
		return
	end
	local P = y
		or z:FindFirstChild("RF/EggWorld/AskFieldEggSnapshot", true)
		or z:FindFirstChild("AskFieldEggSnapshot", true)
		or z:FindFirstChild("Eggs: RequestAreaEggSnapshot", true)
	if not P or not P:IsA("RemoteFunction") then
		return
	end
	XU = true
	task.spawn(function()
		local j, Y = pcall(function()
			return P:InvokeServer()
		end)
		if j and type(Y) == "table" then
			local P = {}
			local j = Y.Records or Y
			if type(j) == "table" then
				for j, Y in pairs(j) do
					if type(Y) == "table" then
						if not Y.Uid and type(j) == "string" then
							Y.Uid = j
						end
						table.insert(P, Y)
					end
				end
			end
			if #P > 0 then
				my = P
				Jy = os.clock()
			end
		end
		XU = false
	end)
end
task.spawn(function()
	while true do
		task.wait(1.5)
		pcall(MU)
	end
end)
function Hy(P)
	local Y = os.clock()
	if P or (Y - Jy >= 1.5) or not my then
		MU()
	end
	local X = (my and #my > 0) and my or nil
	local M = nil
	if e and e.ReadFieldEggs then
		local P, j = pcall(e.ReadFieldEggs)
		if P and type(j) == "table" then
			local P = {}
			local Y = j.Records or j
			if type(Y) == "table" then
				for j, Y in pairs(Y) do
					if type(Y) == "table" then
						if not Y.Uid and type(j) == "string" then
							Y.Uid = j
						end
						table.insert(P, Y)
					end
				end
			end
			if #P > 0 then
				M = P
			end
		end
	end
	local z = {}
	local o = {}
	if X then
		for P, j in ipairs(X) do
			if j.Uid then
				o[j.Uid] = true
				table.insert(z, j)
			end
		end
	end
	if M then
		for P, j in ipairs(M) do
			if j.Uid and not o[j.Uid] then
				o[j.Uid] = true
				table.insert(z, j)
			end
		end
	end
	local q = j:FindFirstChild("AreaEggSlotsClient")
	if q then
		for P, j in ipairs(q:GetChildren()) do
			local Y = j.Name
			if Y and Y ~= "" then
				local P = j:GetPivot()
				local X = P.Position
				if X.X >= 530 and not string.find(tostring(Y), "FirstArea") then
					if not o[Y] then
						o[Y] = true
						local X = j:GetAttribute("Category") or j:GetAttribute("AssetCategory") or j.Name
						local M = j:GetAttribute("AreaId") or j:GetAttribute("Area")
						local q = j:GetAttribute("Rarity") or j:GetAttribute("RarityTier")
						local S = j:GetAttribute("RarityRank") or j:GetAttribute("Rank")
						local W = j:GetAttribute("Income") or j:GetAttribute("EarningRate")
						local O = j:GetAttribute("Scale") or j:GetAttribute("AssetScale") or 1
						local V = j:GetAttribute("Mutations") or j:GetAttribute("Mutation")
						table.insert(
							z,
							{
								Uid = Y,
								AssetCategory = X,
								AreaId = M,
								Rarity = q,
								Rank = S,
								Income = W,
								BoundsCFrame = P,
								BottomCFrame = P,
								CFrame = P,
								State = "Slot",
								AssetScale = O,
								Mutations = V,
								PhysicalModel = j,
							}
						)
					else
						for X, M in ipairs(z) do
							if M.Uid == Y then
								M.PhysicalModel = j
								if not M.BoundsCFrame then
									M.BoundsCFrame = P
								end
								if not M.AreaId or M.AreaId == "" or M.AreaId == "Unknown" then
									M.AreaId = j:GetAttribute("AreaId") or j:GetAttribute("Area")
								end
								break
							end
						end
					end
				end
			end
		end
	end
	return z
end
Oy = function(P)
	if not P then
		return false, "NoUid"
	end
	local Y = Hy(false)
	if Y and #Y > 0 then
		for j, Y in ipairs(Y) do
			if Y.Uid == P then
				if Y.State == "Carried" or Y.State == 2 then
					local P = Y.CarrierUserId or Y.Carrier
					if P and P == S.UserId then
						return true, "CarriedBySelf"
					else
						return false, "CarriedByOther"
					end
				end
				if Y.State == "Slot" or Y.State == "Dropped" or Y.State == "GuardCarried" or Y.State == 1 then
					return true, "Available"
				end
				local P = Y.CarrierUserId or Y.Carrier
				if P then
					if P == S.UserId then
						return true, "CarriedBySelf"
					else
						return false, "CarriedByOther"
					end
				end
				return true, "Available"
			end
		end
	end
	local X = j:FindFirstChild("AreaEggSlotsClient")
	if X then
		for j, Y in ipairs(X:GetChildren()) do
			if Y.Name == tostring(P) or Y:GetAttribute("UID") == P or Y:GetAttribute("Uid") == P then
				return true, "Available"
			end
		end
	end
	return true, "Unchecked"
end
Vy = function()
	local P, j = My()
	if not j then
		local P, Y = zy()
		j = Y
	end
	if not j then
		return false
	end
	if e and e.ReadFieldEggs then
		local P, Y = pcall(e.ReadFieldEggs)
		if P and (Y and Y.Records) then
			for P, Y in ipairs(Y.Records) do
				if Y.Uid == j then
					local P = tostring(Y.AreaId or "")
					if P == "Lake" or string.find(string.lower(P), "lake") ~= nil then
						return true
					end
				end
			end
		end
	end
	if string.find(string.lower(tostring(j)), "lake") ~= nil then
		return true
	end
	return false
end
ey = function()
	local P, j = My()
	if not j then
		local P, Y = zy()
		j = Y
	end
	if not j then
		return J.glideSpeed or 350
	end
	if e and e.ReadFieldEggs then
		local P, Y = pcall(e.ReadFieldEggs)
		if P and (Y and Y.Records) then
			for P, Y in ipairs(Y.Records) do
				if Y.Uid == j and Y.AreaId then
					return Z[Y.AreaId] or J.glideSpeed or 350
				end
			end
		end
	end
	return J.glideSpeed or 350
end
vy = function(P, Y)
	Y = Y or 8
	local X = Instance.new("Part")
	X.Name = "SafetyFloorPad_AntiVoid"
	X.Size = Vector3.new(28, 1.5, 28)
	X.Position = P - Vector3.new(0, 3.2, 0)
	X.Anchored = true
	X.Transparency = 1
	X.CanCollide = true
	X.Parent = j
	task.delay(Y, function()
		pcall(function()
			X:Destroy()
		end)
	end)
	return X
end
fy = function(P)
	if p and P then
		pcall(function()
			local j = S.Character
			local Y = j and j:FindFirstChild("HumanoidRootPart")
			local X = Y and (Y.CFrame * CFrame.new(0, 0, -3)) or CFrame.new()
			if p:IsA("RemoteFunction") then
				p:InvokeServer({ EggUid = P, GuardCFrame = X })
			else
				p:FireServer({ EggUid = P, GuardCFrame = X })
			end
		end)
	end
end
if typeof(hookmetamethod) == "function" and not _G._DesyncAntiRagdollHooked then
	_G._DesyncAntiRagdollHooked = true
	local P
	P = hookmetamethod(
		game,
		"__newindex",
		newcclosure(function(j, Y, X)
			if not checkcaller() and typeof(j) == "Instance" then
				if j:IsA("Motor6D") and (Y == "Enabled" and X == false) then
					return nil
				end
				if j:IsA("Humanoid") then
					if Y == "PlatformStand" and X == true then
						return nil
					end
					if
						Y == "Sit"
						and (X == true and (J.pureTweenFarm or J.autoFarmLoop or J.isReturning or J.glidingToTarget))
					then
						return nil
					end
				end
			end
			return P(j, Y, X)
		end)
	)
end
ry = function(P)
	P = P or S.Character
	if not P then
		return
	end
	local j = P:FindFirstChild("HumanoidRootPart")
	local Y = P:FindFirstChild("Torso") or P:FindFirstChild("UpperTorso") or j
	if not Y then
		return
	end
	for P, j in ipairs(P:GetDescendants()) do
		if j:IsA("BallSocketConstraint") or j:IsA("HingeConstraint") or j:IsA("NoCollisionConstraint") then
			pcall(function()
				j:Destroy()
			end)
		end
	end
	for P, j in ipairs(P:GetDescendants()) do
		if j:IsA("Motor6D") and (j.Part0 and j.Part1) then
			j.Enabled = true
			local P = "RigidJointWeld_" .. j.Name
			local Y = j.Part1:FindFirstChild(P)
			if not Y then
				local Y = Instance.new("WeldConstraint")
				Y.Name = P
				Y.Part0 = j.Part0
				Y.Part1 = j.Part1
				Y.Parent = j.Part1
			end
		end
	end
end
sy = function(P)
	if J and J.onTreadmill then
		return
	end
	P = P or S.Character
	if not P then
		return
	end
	local j = P:FindFirstChildOfClass("Humanoid")
	if j then
		j:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
		j:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		j:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
		j:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
		j:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
		if j.PlatformStand then
			j.PlatformStand = false
		end
		if j.Sit then
			j.Sit = false
		end
	end
	for P, j in ipairs(P:GetDescendants()) do
		if
			j:IsA("LocalScript")
			and (string.find(string.lower(j.Name), "ragdoll") or string.find(string.lower(j.Name), "fall"))
		then
			j.Disabled = true
		end
	end
	ry(P)
end
Iy = function(P)
	if not P then
		return
	end
	sy(P)
	for P, j in ipairs(P:GetDescendants()) do
		if j:IsA("Motor6D") then
			(j:GetPropertyChangedSignal("Enabled")):Connect(function()
				if not j.Enabled then
					j.Enabled = true
				end
			end)
		end
	end
	P.DescendantAdded:Connect(function(j)
		if j:IsA("BallSocketConstraint") or j:IsA("HingeConstraint") or j:IsA("NoCollisionConstraint") then
			task.defer(function()
				pcall(function()
					j:Destroy()
				end)
				sy(P)
			end)
		elseif
			j:IsA("LocalScript")
			and (string.find(string.lower(j.Name), "ragdoll") or string.find(string.lower(j.Name), "fall"))
		then
			j.Disabled = true
		end
	end)
	P.ChildAdded:Connect(function(P)
		if P:IsA("Tool") and ((J.pureTweenFarm or J.autoFarmLoop) and not J.holdingEggForGuard) then
			task.defer(function()
				qy()
			end)
		end
	end)
end
Ly = function()
	if J then
		J.onTreadmill = false
	end
	local P = S.Character
	local j = P and P:FindFirstChildOfClass("Humanoid")
	local Y = P and P:FindFirstChild("HumanoidRootPart")
	if B then
		task.spawn(function()
			pcall(function()
				B:InvokeServer()
			end)
		end)
	end
	if j then
		pcall(function()
			for P, j in ipairs(j:GetPlayingAnimationTracks()) do
				local Y = j.Animation
				local X = Y and Y.AnimationId or ""
				if
					string.find(X, "10921259953")
					or string.find(string.lower(j.Name), "treadmill")
					or string.find(string.lower(j.Name), "run")
				then
					j:Stop(0)
				end
			end
			j.PlatformStand = false
			j.Sit = false
			j:SetStateEnabled(Enum.HumanoidStateType.Running, true)
			j:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
			j:ChangeState(Enum.HumanoidStateType.Running)
		end)
	end
	local X = S:FindFirstChild("PlayerGui")
	if X then
		local P = X:FindFirstChild("SpeedGainAnimation")
		if P then
			pcall(function()
				P:Destroy()
			end)
		end
	end
	if Y then
		Y.AssemblyLinearVelocity = Vector3.zero
		Y.AssemblyAngularVelocity = Vector3.zero
	end
	sy(P)
end
local zU = 0
local oU = false
Ry = function()
	local P = S:FindFirstChild("PlayerGui")
	if not P then
		return false
	end
	local j = false
	pcall(function()
		for P, Y in ipairs(P:GetChildren()) do
			if Y:IsA("ScreenGui") and Y.Enabled then
				for P, Y in ipairs(Y:GetDescendants()) do
					if (Y:IsA("TextButton") or Y:IsA("ImageButton")) and Y.Visible then
						local P = (Y:IsA("TextButton") and Y.Text) or Y.Name
						local X = string.lower(P or "")
						if
							string.find(X, "get out")
							or string.find(X, "treadmill")
							or string.find(X, "doff")
							or string.find(X, "leave")
							or string.find(X, "exit")
						then
							if typeof(firesignal) == "function" and Y.Activated then
								pcall(firesignal, Y.Activated)
							elseif typeof(firesignal) == "function" and Y.MouseButton1Click then
								pcall(firesignal, Y.MouseButton1Click)
							elseif typeof(getconnections) == "function" then
								local P = getconnections(Y.MouseButton1Click) or getconnections(Y.Activated) or {}
								for P, j in ipairs(P) do
									pcall(function()
										j:Fire()
									end)
									break
								end
							end
							j = true
							break
						end
					end
				end
				if j then
					break
				end
			end
		end
	end)
	return j
end
Uy = function()
	local P = S.Character
	local j = P and P:FindFirstChild("HumanoidRootPart")
	if not j then
		return false
	end
	local Y = (typeof(dy) == "function") and dy() or nil
	if Y then
		local P = Y.Position + Vector3.new(0, 1.8, 0)
		local X = ((j.Position - P)).Magnitude
		if X > 6 then
			if J then
				J.onTreadmill = false
			end
			return false
		end
	else
		if j.Position.X > 535 then
			if J then
				J.onTreadmill = false
			end
			return false
		end
	end
	if J and J.onTreadmill then
		return true
	end
	local X = P and P:FindFirstChildOfClass("Humanoid")
	if X then
		for P, j in ipairs(X:GetPlayingAnimationTracks()) do
			local Y = j.Animation
			local X = Y and Y.AnimationId or ""
			local M = string.lower(j.Name or "")
			if string.find(X, "10921259953") or string.find(M, "treadmill") or string.find(M, "run") then
				return true
			end
		end
	end
	local M = S:FindFirstChild("PlayerGui")
	if M and M:FindFirstChild("SpeedGainAnimation") then
		return true
	end
	return false
end
Ey = function()
	if oU then
		return
	end
	if os.clock() - zU < 0.8 then
		if J then
			J.onTreadmill = false
		end
		return
	end
	oU = true
	zU = os.clock()
	if J then
		J.onTreadmill = false
	end
	Ry()
	if B then
		pcall(function()
			B:InvokeServer()
		end)
	end
	local P = S.Character
	local j = P and P:FindFirstChildOfClass("Humanoid")
	local Y = P and P:FindFirstChild("HumanoidRootPart")
	if j then
		pcall(function()
			for P, j in ipairs(j:GetPlayingAnimationTracks()) do
				local Y = j.Animation
				local X = Y and Y.AnimationId or ""
				local M = string.lower(j.Name or "")
				if string.find(X, "10921259953") or string.find(M, "treadmill") or string.find(M, "run") then
					j:Stop(0)
				end
			end
			j.PlatformStand = false
			j.Sit = false
			j:SetStateEnabled(Enum.HumanoidStateType.Running, true)
			j:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
			j:ChangeState(Enum.HumanoidStateType.Running)
		end)
	end
	local X = S:FindFirstChild("PlayerGui")
	if X then
		local P = X:FindFirstChild("SpeedGainAnimation")
		if P then
			pcall(function()
				P:Destroy()
			end)
		end
	end
	if Y then
		Y.AssemblyLinearVelocity = Vector3.zero
		Y.AssemblyAngularVelocity = Vector3.zero
	end
	sy(P)
	task.wait(0.15)
	oU = false
end
Zy = Ey
ty = function()
	pcall(function()
		local P = j:FindFirstChild("Plots")
		if P then
			local j = J and J.plot
			if not j and ny then
				j = select(1, ny())
			end
			for P, Y in ipairs(P:GetChildren()) do
				local X = (j ~= nil and Y == j)
				local M = Y:FindFirstChild("TreadmillBottom")
				if M and M:IsA("BasePart") then
					if X and (J and J.autoTreadmill) then
						M.CanTouch = true
						M.CanCollide = true
					else
						M.CanTouch = false
						M.CanCollide = false
					end
				end
				local z = Y:FindFirstChild("TreadmillUpgrade")
				if z then
					for P, j in ipairs(z:GetDescendants()) do
						if j:IsA("BasePart") then
							if X and (J and J.autoTreadmill) then
								j.CanTouch = true
							else
								j.CanTouch = false
								j.CanCollide = false
							end
						end
					end
				end
			end
		end
	end)
end
ty()
j.DescendantAdded:Connect(function(P)
	pcall(function()
		local j = (P.Name == "TreadmillBottom" and P:IsA("BasePart"))
		local Y = (P.Name == "TreadmillUpgrade" and P:IsA("Model"))
		if j or Y then
			local Y = J and J.plot
			if not Y and ny then
				Y = select(1, ny())
			end
			local X = Y and P:IsDescendantOf(Y)
			if X and (J and J.autoTreadmill) then
				if j then
					P.CanTouch = true
					P.CanCollide = true
				else
					for P, j in ipairs(P:GetDescendants()) do
						if j:IsA("BasePart") then
							j.CanTouch = true
						end
					end
				end
			else
				if j then
					P.CanTouch = false
					P.CanCollide = false
				else
					for P, j in ipairs(P:GetDescendants()) do
						if j:IsA("BasePart") then
							j.CanTouch = false
							j.CanCollide = false
						end
					end
				end
			end
		end
	end)
end)
ly = function()
	J.onTreadmill = false
	J.teleporting = false
	J.glidingToTarget = false
	J.securingEgg = false
	J.isReturning = false
	J.delivering = false
	J.holdingEggForGuard = false
	J.currentTargetModel = nil
	J.targetPosition = nil
	J.stateTime = os.clock()
	local P = S.Character
	local j = P and P:FindFirstChild("HumanoidRootPart")
	if j then
		pcall(function()
			j.Anchored = false
			j.AssemblyLinearVelocity = Vector3.zero
			j.AssemblyAngularVelocity = Vector3.zero
		end)
	end
	pcall(function()
		if Ly then
			Ly()
		end
	end)
	pcall(function()
		if sy and P then
			sy(P)
		end
	end)
	pcall(function()
		if qy and (J.pureTweenFarm or J.autoFarmLoop) then
			qy()
		end
	end)
end
hy = function(P, Y)
	if P then
		for P, j in ipairs(P:GetDescendants()) do
			if j:IsA("ProximityPrompt") then
				pcall(function()
					j.RequiresLineOfSight = false
					j.HoldDuration = 0
					if typeof(fireproximityprompt) == "function" then
						fireproximityprompt(j, 0)
						fireproximityprompt(j)
					end
				end)
			end
		end
	end
	local X = j:FindFirstChild("AreaEggSlotsClient")
	if X and Y then
		for P, j in ipairs(X:GetChildren()) do
			local X = j:FindFirstChildWhichIsA("BasePart") or j.PrimaryPart
			if X and ((X.Position - Y)).Magnitude <= 18 then
				for P, j in ipairs(j:GetDescendants()) do
					if j:IsA("ProximityPrompt") then
						pcall(function()
							j.RequiresLineOfSight = false
							j.HoldDuration = 0
							if typeof(fireproximityprompt) == "function" then
								fireproximityprompt(j, 0)
								fireproximityprompt(j)
							end
						end)
					end
				end
			end
		end
	end
end
uy = function(P)
	J.godmode = P
	local j = S.Character
	if not j then
		return
	end
	local Y = j:FindFirstChildOfClass("Humanoid")
	if Y then
		Y:SetStateEnabled(Enum.HumanoidStateType.Dead, not P)
		if P and Y.Health < 100 then
			Y.Health = 100
		end
	end
	for j, Y in ipairs(j:GetDescendants()) do
		if Y:IsA("BasePart") then
			if P then
				Y.CanTouch = false
				Y.CanCollide = false
			end
		end
	end
	sy(j)
end
gy = function()
	local P = S.Character
	local Y = P and P:FindFirstChildOfClass("Humanoid")
	if not P or not Y then
		return false
	end
	pcall(function()
		Y.BreakJointsOnDeath = false
		local X = Y:Clone()
		X.Parent = P
		Y:Destroy()
		local M = X:FindFirstChildOfClass("Animator")
		if not M then
			M = Instance.new("Animator")
			M.Parent = X
		end
		j.CurrentCamera.CameraSubject = X
		local z = P:FindFirstChild("Animate")
		if z and z:IsA("LocalScript") then
			z.Disabled = true
			task.defer(function()
				task.wait(0.05)
				z.Disabled = false
			end)
		end
		X:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
		X:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
		X:SetStateEnabled(Enum.HumanoidStateType.Running, true)
		X:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
		X.JumpPower = math.max(50, X.JumpPower)
		X.JumpHeight = math.max(7.2, X.JumpHeight)
		X:ChangeState(Enum.HumanoidStateType.Running)
	end)
	J.swapped = true
	if J.godmode then
		uy(true)
	end
	Iy(P)
	return true
end
ny = function()
	if J.plot and (J.plot.Parent and (J.pen and (J.origin and J.plotVerified))) then
		return J.plot, J.pen, J.origin
	end
	local P = j:FindFirstChild("Plots")
	if not P then
		return nil, nil, nil
	end
	local Y = S.UserId
	local X = S.Name
	local M = S.DisplayName
	local z = nil
	local o = false
	if i then
		local j, M = pcall(function()
			return i:InvokeServer()
		end)
		if j and (type(M) == "table" and type(M.OwnersBySlot) == "table") then
			for j, M in pairs(M.OwnersBySlot) do
				if M == Y or tostring(M) == tostring(Y) or M == X then
					z = P:FindFirstChild(tostring(j))
					if z then
						o = true
						break
					end
				end
			end
		end
	end
	if not z and D then
		local j, X = pcall(function()
			return D:InvokeServer()
		end)
		if j and type(X) == "table" then
			for j, X in pairs(X) do
				if type(X) == "table" and (X.OwnerUserId == Y or tostring(X.OwnerUserId) == tostring(Y)) then
					local Y = X.Slot or j
					z = P:FindFirstChild(tostring(Y)) or P:FindFirstChild(tostring(j))
					if z then
						o = true
						break
					end
				end
			end
		end
	end
	if not z then
		for P, j in ipairs(P:GetChildren()) do
			local q = j:GetAttribute("Owner")
				or j:GetAttribute("OwnerUserId")
				or j:GetAttribute("UserId")
				or j:GetAttribute("OwnerId")
				or j:GetAttribute("Player")
			if q and (q == Y or tostring(q) == tostring(Y) or q == X or tostring(q) == X or q == M) then
				z = j
				o = true
				break
			end
			for P, q in ipairs({ "Owner", "OwnerUserId", "OwnerId", "UserId", "Player", "PlayerName" }) do
				local S = j:FindFirstChild(q)
				if S and (S.Value == Y or tostring(S.Value) == tostring(Y) or S.Value == X or S.Value == M) then
					z = j
					o = true
					break
				end
			end
			if z then
				break
			end
		end
	end
	if not z then
		for P, j in ipairs(P:GetChildren()) do
			for P, Y in ipairs(j:GetDescendants()) do
				if Y:IsA("TextLabel") and Y.Text ~= "" then
					local P = string.lower(Y.Text)
					if string.find(P, string.lower(X), 1, true) or (M and string.find(P, string.lower(M), 1, true)) then
						z = j
						o = true
						break
					end
				end
			end
			if z then
				break
			end
		end
	end
	if not z then
		local j = S.Character
		local Y = j and j:FindFirstChild("HumanoidRootPart")
		if Y and Y.Position.X <= (F + 30) then
			local j = nil
			local X = 999999
			for P, M in ipairs(P:GetChildren()) do
				local z = M:FindFirstChild("CenterPoint") or M.PrimaryPart or M:FindFirstChildWhichIsA("BasePart")
				if z then
					local P = ((Y.Position - z.Position)).Magnitude
					if P < X then
						X = P
						j = M
					end
				end
			end
			if j and X < 160 then
				z = j
			end
		end
	end
	if not z then
		z = P:FindFirstChild("2") or P:FindFirstChild("1") or (P:GetChildren())[1]
	end
	if not z then
		return nil, nil, nil
	end
	J.plot = z
	J.plotVerified = o
	J.origin = z:FindFirstChild("CenterPoint")
	local q = z:FindFirstChild("ToUpdate")
	J.pen = (q and q:FindFirstChild("PetArea")) or z:FindFirstChild("PetArea")
	J.tread = z:FindFirstChild("TreadmillBottom")
	if not J.pen and q then
		for P, j in ipairs(q:GetChildren()) do
			if j:IsA("BasePart") and string.find(string.lower(j.Name), "pet") then
				J.pen = j
				break
			end
		end
	end
	if not J.origin then
		J.origin = z:FindFirstChild("CenterPoint") or J.pen or z.PrimaryPart
	end
	if not J.pen then
		J.pen = J.origin
	end
	return J.plot, J.pen, J.origin
end
Cy = function()
	local P, j, Y = ny()
	if j then
		return j.Position + Vector3.new(0, 3.5, 0)
	end
	if Y then
		return Y.Position + Vector3.new(0, 3.5, 0)
	end
	return Vector3.new(464.7, 71.7, -304)
end
Dy = function(P)
	local j, Y, X = ny()
	if not Y then
		return nil
	end
	local M = Y.Size
	local z = math.max(4, M.X / 2 - 5)
	local o = math.max(4, M.Z / 2 - 5)
	for j = 1, 60, 1 do
		local X = math.random(-math.floor(z), math.floor(z))
		local q = math.random(-math.floor(o), math.floor(o))
		local S = Y.CFrame * CFrame.new(X, M.Y / 2 + 1, q)
		local W = true
		for P, j in ipairs(P) do
			if ((j - S.Position)).Magnitude < 5.5 then
				W = false
				break
			end
		end
		if W then
			return S
		end
	end
	return Y.CFrame * CFrame.new(math.random(-8, 8), M.Y / 2 + 1, math.random(-8, 8))
end
iy = function()
	local P, j, Y = ny()
	if not Y or not C then
		return 0
	end
	local X = 0
	local M = {}
	if D then
		local P, j = pcall(function()
			return D:InvokeServer()
		end)
		if P and type(j) == "table" then
			local P = {}
			for j, Y in pairs(j) do
				if type(Y) == "table" and Y.OwnerUserId == S.UserId then
					for j, Y in pairs(Y.Records or {}) do
						P[j] = Y
					end
				end
			end
			for P, j in pairs(P) do
				if j.Placement and j.Placement.LocalCFrame then
					M[#M + 1] = ((Y.CFrame * j.Placement.LocalCFrame)).Position
				else
					local j = Dy(M)
					if j then
						local z = Y.CFrame:ToObjectSpace(j)
						local o, q = pcall(function()
							return C:InvokeServer({ Uid = P, LocalCFrame = z })
						end)
						if o and q then
							X = X + 1
							M[#M + 1] = j.Position
						end
					end
				end
			end
		end
	end
	local z = {}
	local o = S.Character
	if o then
		for P, j in ipairs(o:GetChildren()) do
			if Xy(j) then
				table.insert(z, j)
			end
		end
	end
	local q = S:FindFirstChild("Backpack")
	if q then
		for P, j in ipairs(q:GetChildren()) do
			if Xy(j) then
				table.insert(z, j)
			end
		end
	end
	for P, j in ipairs(z) do
		if not J.alive then
			break
		end
		local z = j:GetAttribute("UID") or j:GetAttribute("EggUid") or j.Name
		local o = Dy(M)
		if o then
			local P = Y.CFrame:ToObjectSpace(o)
			local j, q = pcall(function()
				return C:InvokeServer({ Uid = z, LocalCFrame = P })
			end)
			if j and q ~= false then
				X = X + 1
				M[#M + 1] = o.Position
				O(string.format("[PlaceEgg] Placed egg %s from inventory", tostring(z)))
			end
			task.wait(0.04)
		end
	end
	return X
end
Ky = function(P)
	if (not P and not J.autoHatch) or not k or not A or not D then
		return 0
	end
	if J.isHatching then
		return 0
	end
	J.isHatching = true
	local Y, X = pcall(function()
		return D:InvokeServer()
	end)
	if not Y or type(X) ~= "table" then
		return 0
	end
	local M = {}
	for P, j in pairs(X) do
		if type(j) == "table" and j.OwnerUserId == S.UserId then
			for P, j in pairs(j.Records or {}) do
				M[P] = j
			end
		end
	end
	local z = {}
	local o = j:GetServerTimeNow()
	for P, j in pairs(M) do
		if not J.alive then
			break
		end
		if j.Placement then
			local Y = nil
			if e then
				local j = e.IsReadyToHatch or e.IsLocalEggReady
				if j then
					local X, M = pcall(j, P)
					if X and type(M) == "boolean" then
						Y = M
					end
				end
			end
			if Y == nil then
				local P = j.Placement.PlacedAt or j.Placement.Time or 0
				local X = 30
				if v and (v.Assets and v.Assets[j.AssetCategory]) then
					local P = v.Assets[j.AssetCategory]
					X = (P and (P.Egg and P.Egg.GrowthTime)) or 30
				end
				local M = X / math.max(0.01, j.GrowthSpeedMultiplier or 1)
				Y = (o - P) >= M
			end
			if Y then
				table.insert(z, { uid = P, category = j.AssetCategory or "Egg" })
			end
		end
	end
	if #z == 0 then
		J.isHatching = false
		return 0
	end
	O(string.format("[AutoHatch] Found %d eggs ready to hatch! Starting hatch sequence...", #z))
	J.statusText = string.format("[Hatch] Hatching %d ready eggs...", #z)
	local q = 0
	for P, j in ipairs(z) do
		task.spawn(function()
			local P, Y = pcall(function()
				if k:IsA("RemoteFunction") then
					return k:InvokeServer(j.uid)
				else
					k:FireServer(j.uid)
					return true
				end
			end)
			if P and Y ~= false then
				task.wait(0.9)
				local P, Y = pcall(function()
					if A:IsA("RemoteFunction") then
						return A:InvokeServer(j.uid)
					else
						A:FireServer(j.uid)
						return true
					end
				end)
				if P and Y ~= false then
					q = q + 1
					J.hatched = (J.hatched or 0) + 1
					O(
						string.format(
							"[+] [AutoHatch] Hatched %s (UID: %s) -> Total Hatched: %d",
							j.category,
							tostring(j.uid),
							J.hatched
						)
					)
				end
			end
		end)
		task.wait(0.04)
	end
	task.wait(0.95)
	J.isHatching = false
	O(string.format("[AutoHatch] Finished! Hatched %d eggs.", q))
	if J.autoEquipBestPet then
		task.delay(1, function()
			pcall(function()
				triggerEquipBest(true)
			end)
		end)
	end
	return q
end
py = function()
	local P = {}
	local Y = j:FindFirstChild("__DEBRIS")
	if Y then
		for j, Y in ipairs(Y:GetChildren()) do
			local X = Y:FindFirstChild("Hitbox")
			if X and X:IsA("BasePart") then
				table.insert(P, X)
			elseif Y:IsA("BasePart") and string.find(Y.Name:lower(), "hitbox") then
				table.insert(P, Y)
			end
		end
	end
	local X = j:FindFirstChild("BossArenaTeleport")
	if X then
		local j = X:FindFirstChild("Hitbox") or X:FindFirstChildWhichIsA("BasePart") or (X:IsA("BasePart") and X)
		if j and j:IsA("BasePart") then
			table.insert(P, j)
		end
	end
	return P
end
By = function(P, j, X)
	local M = S.Character
	local z = M and M:FindFirstChild("HumanoidRootPart")
	local o = M and M:FindFirstChildOfClass("Humanoid")
	if not z then
		return false
	end
	if o then
		o.AutoRotate = false
	end
	local q = Cy()
	P = math.max(100, P or J.glideSpeed or 600)
	local W = J.laneZ or t
	J.isReturning = true
	J.stateTime = os.clock()
	vy(q, 20)
	z.AssemblyLinearVelocity = Vector3.zero
	z.AssemblyAngularVelocity = Vector3.zero
	local O = ey()
	local V = math.max(P, O)
	local e = os.clock() + 25
	while J.alive and (J.isReturning and os.clock() < e) do
		if j and by ~= j then
			if o then
				o.AutoRotate = true
			end
			J.isReturning = false
			return false
		end
		if not X and (not J.pureTweenFarm and not J.autoFarmLoop) then
			if o then
				o.AutoRotate = true
			end
			J.isReturning = false
			return false
		end
		local P = z.Position
		local M = ((q - P)).Magnitude
		if (P.X <= (q.X + 3) and math.abs(P.Z - q.Z) <= 8) or M <= 6 then
			break
		end
		local S = Y.Heartbeat:Wait()
		P = z.Position
		local O = V
		if P.X <= E and P.X > F then
			local j = math.clamp((P.X - F) / (E - F), 0, 1)
			O = d + ((V - d) * j)
		elseif P.X <= F then
			O = d
		end
		local e = q.Z
		if P.X > 540 then
			e = W
		end
		local v = math.sign(q.X - P.X)
		local f = v * math.min(math.abs(q.X - P.X), O * S)
		local n = P.X + f
		local C = math.sign(q.Y - P.Y)
		local D = C * math.min(math.abs(q.Y - P.Y), (O * S) * 0.5)
		local i = P.Y + D
		local K = e - P.Z
		local y = math.sign(K) * math.min(math.abs(K), O * S)
		local k = P.Z + y
		local A = py()
		local p = false
		if P.X > F then
			for P, j in ipairs(A) do
				local Y = j.Position
				local X = ((Vector3.new(n, i, k) - Y)).Magnitude
				local M = math.abs(n - Y.X)
				local z = math.abs(k - Y.Z)
				if X < 22 or (M < 18 and z < 14) then
					p = true
					local P = Y.Y + 16
					if i < P then
						i = math.min(i + ((O * S) * 1.5), P)
					end
					break
				end
			end
		end
		local T = Vector3.new(n, i, k)
		local B = ((T - P)).Magnitude > 0.05 and ((T - P)).Unit or z.CFrame.LookVector
		z.CFrame = CFrame.lookAt(T, T + B)
		z.AssemblyLinearVelocity = Vector3.zero
		z.AssemblyAngularVelocity = Vector3.zero
		if p then
			J.statusText = string.format("Tweening Home (Z: %.0f) [DODGING TRAP!]", k)
		else
			J.statusText = string.format("Tweening Home (%.0f studs | Z: %.0f | Spd: %.0f)", M, k, O)
		end
	end
	z.CFrame = CFrame.new(q)
	z.AssemblyLinearVelocity = Vector3.zero
	z.AssemblyAngularVelocity = Vector3.zero
	if o then
		o.AutoRotate = true
	end
	qy()
	J.isReturning = false
	J.delivering = false
	J.statusText = "Arrived at Base PetArea!"
	return true
end
Ay = function(P, j, Y)
	local X = S.Character
	local M = X and X:FindFirstChild("HumanoidRootPart")
	local z = X and X:FindFirstChildOfClass("Humanoid")
	if not M or not z then
		return
	end
	local o = Cy()
	local q = ((M.Position - o)).Magnitude
	if q > 8 then
		J.statusText = "[Place] Tweening back to base plot..."
		By(P or J.glideSpeed or 600, j, true)
	end
	vy(o, 15)
	M.CFrame = CFrame.new(o)
	M.AssemblyLinearVelocity = Vector3.zero
	J.statusText = "[Place] Placing All Eggs to Stand..."
	local W = os.clock() + 3
	while oy() > 0 and (os.clock() < W and J.alive) do
		iy()
		task.wait(0.06)
	end
	J.statusText = "[Place] Hatching ready eggs..."
	Ky(true)
	qy()
	J.isReturning = false
	J.delivering = false
	J.currentTargetModel = nil
	J.targetPosition = nil
	local O = oy()
	J.statusText = string.format("Placed & Hatched (Left: %d)! Hands Free.", O)
end
local qU = 5
yy = function(P)
	if J.isBatchPlacing then
		return
	end
	J.isBatchPlacing = true
	O(string.format("[AutoPlace] %d steals done! Batch placing (%s mode)...", qU, tostring(P)))
	local j = by
	J.pureTweenFarm = (P == "TWEEN")
	J.autoFarmLoop = (P == "WARP")
	local Y = S.Character
	local X = Y and Y:FindFirstChild("HumanoidRootPart")
	local M = Y and Y:FindFirstChildOfClass("Humanoid")
	local z = Cy()
	local o = X and ((X.Position - z)).Magnitude or 999
	if o > 8 then
		J.statusText = "[AutoPlace] Tweening home to base plot..."
		By(J.glideSpeed or 600, j, true)
	end
	if X then
		vy(z, 20)
		X.CFrame = CFrame.new(z)
		X.AssemblyLinearVelocity = Vector3.zero
		X.AssemblyAngularVelocity = Vector3.zero
		if M then
			M.AutoRotate = true
		end
	end
	task.spawn(function()
		pcall(iy)
		pcall(Ky, true)
	end)
	qy()
	J.isReturning = false
	J.delivering = false
	J.glidingToTarget = false
	J.securingEgg = false
	J.teleporting = false
	J.currentTargetModel = nil
	J.targetPosition = nil
	for P = 5, 1, -1 do
		if not J.alive then
			break
		end
		J.statusText = string.format("[AutoPlace] At Base: Resuming in %ds...", P)
		task.wait(1)
	end
	J.isBatchPlacing = false
	if J.alive and by == j then
		O(string.format("[AutoPlace] Done! Continuing %s farm.", P))
		J.statusText = string.format("[AutoPlace] Resuming %s farm...", P)
		if P == "TWEEN" then
			J.pureTweenFarm = true
			J.autoFarmLoop = false
		elseif P == "WARP" then
			J.autoFarmLoop = true
			J.pureTweenFarm = false
		end
		Qy = P
	end
end
ky = function(P)
	if not J.autoPlaceEvery5 then
		return false
	end
	J.batchStealCount = (J.batchStealCount or 0) + 1
	O(string.format("[AutoPlace] Steal trip %d / %d completed successfully.", J.batchStealCount, qU))
	if J.batchStealCount >= qU then
		J.batchStealCount = 0
		task.spawn(function()
			yy(P)
		end)
		return true
	end
	return false
end
local function SU(P, j, X, M)
	local z = S.Character
	local o = z and z:FindFirstChild("HumanoidRootPart")
	local q = z and z:FindFirstChildOfClass("Humanoid")
	if not o then
		return false
	end
	if q then
		q.AutoRotate = false
	end
	j = math.max(60, j or J.glideSpeed or 350)
	local W = P.Position
	vy(W, 14)
	pcall(function()
		S:RequestStreamAroundAsync(W)
	end)
	o.AssemblyLinearVelocity = Vector3.zero
	o.AssemblyAngularVelocity = Vector3.zero
	local O = J.laneZ or t
	J.glidingToTarget = true
	J.stateTime = os.clock()
	local V = 0
	local e = os.clock() + 15
	while J.alive and (J.glidingToTarget and os.clock() < e) do
		if M and by ~= M then
			if q then
				q.AutoRotate = true
			end
			J.glidingToTarget = false
			return false
		end
		if not J.pureTweenFarm and (not J.autoFarmLoop and not J.teleporting) then
			if q then
				q.AutoRotate = true
			end
			J.glidingToTarget = false
			return false
		end
		local P = o.Position
		local z = ((W - P)).Magnitude
		local S = ((Vector2.new(P.X, P.Z) - Vector2.new(W.X, W.Z))).Magnitude
		local e = math.abs(P.Y - W.Y)
		if z <= 6 or (S <= 3.5 and e <= 6) then
			break
		end
		local v = Y.Heartbeat:Wait()
		P = o.Position
		z = ((W - P)).Magnitude
		S = ((Vector2.new(P.X, P.Z) - Vector2.new(W.X, W.Z))).Magnitude
		local f = math.abs(P.X - W.X)
		if X and (os.clock() - V > 0.5) then
			V = os.clock()
			local P, j = Oy(X)
			if not P and j == "CarriedByOther" then
				if q then
					q.AutoRotate = true
				end
				J.glidingToTarget = false
				return false
			end
		end
		local n = W.Z
		if f > 40 then
			n = O
		end
		local C = math.sign(W.X - P.X)
		local D = C * math.min(math.abs(W.X - P.X), j * v)
		local i = P.X + D
		local K = (S <= 25) and 1.2 or 0.5
		local y = math.sign(W.Y - P.Y)
		local k = y * math.min(math.abs(W.Y - P.Y), (j * v) * K)
		local A = P.Y + k
		local p = n - P.Z
		local T = math.sign(p) * math.min(math.abs(p), j * v)
		local B = P.Z + T
		local x = false
		if S > 25 then
			local P = py()
			for P, Y in ipairs(P) do
				local X = Y.Position
				local M = ((Vector3.new(i, A, B) - X)).Magnitude
				local z = math.abs(i - X.X)
				local o = math.abs(B - X.Z)
				if M < 22 or (z < 18 and o < 14) then
					x = true
					local P = X.Y + 16
					if A < P then
						A = math.min(A + ((j * v) * 1.5), P)
					end
					break
				end
			end
		end
		local c = Vector3.new(i, A, B)
		local G = ((c - P)).Magnitude > 0.05 and ((c - P)).Unit or o.CFrame.LookVector
		o.CFrame = CFrame.lookAt(c, c + G)
		o.AssemblyLinearVelocity = Vector3.zero
		o.AssemblyAngularVelocity = Vector3.zero
		if x then
			J.statusText = string.format("Gliding Out (Z: %.0f) [DODGING TRAP!]", B)
		else
			J.statusText = string.format("Gliding -> Egg (%.0f studs | H: %.0f)", z, S)
		end
	end
	o.CFrame = P * CFrame.new(0, 0.4, 0)
	o.AssemblyLinearVelocity = Vector3.zero
	o.AssemblyAngularVelocity = Vector3.zero
	if q then
		q.AutoRotate = true
	end
	J.glidingToTarget = false
	return true
end
Ty = function(P, j, Y, X)
	local M = S.Character
	local z = M and M:FindFirstChild("HumanoidRootPart")
	if z then
		local M = z.Position.X
		local o = P.Position.X
		if M <= 535 and o > 510 then
			local P = CFrame.new(500, 70, -364)
			local o = ((z.Position - P.Position)).Magnitude
			if o > 5 then
				J.statusText = "[AutoSteal] Exiting Base -> Waypoint (500, 70, -364)..."
				O(
					string.format(
						"[AutoSteal] Leaving base (X=%.1f): Gliding to waypoint (500, 70, -364) first (dist=%.1f studs)...",
						M,
						o
					)
				)
				local z = SU(P, j, Y, X)
				if not z then
					return false
				end
				task.wait(0.04)
			end
		end
	end
	return SU(P, j, Y, X)
end
xy = function(P, j)
	local X = S.Character
	local M = X and X:FindFirstChild("HumanoidRootPart")
	local z = X and X:FindFirstChildOfClass("Humanoid")
	if not M then
		return false
	end
	if z then
		z.AutoRotate = false
	end
	local o = J.laneZ or t
	local q = Vector3.new(F - 10, 70, o)
	P = math.max(100, P or J.glideSpeed or 350)
	J.isReturning = true
	J.stateTime = os.clock()
	vy(Vector3.new(F, 70, o), 20)
	pcall(qy)
	M.AssemblyLinearVelocity = Vector3.zero
	M.AssemblyAngularVelocity = Vector3.zero
	local W = ey()
	local O = math.max(P, W)
	local e = os.clock() + 15
	while J.alive and (J.isReturning and os.clock() < e) do
		if j and by ~= j then
			V("[Return] Aborted by session switch!")
			if z then
				z.AutoRotate = true
			end
			J.isReturning = false
			return false
		end
		if not J.pureTweenFarm and not J.autoFarmLoop then
			V("[Return] Aborted (all farms disabled)")
			if z then
				z.AutoRotate = true
			end
			J.isReturning = false
			return false
		end
		local P = M.Position
		local S = ((q - P)).Magnitude
		if P.X <= (F + 10) or S <= 6 then
			qy()
			break
		end
		if X then
			for P, j in ipairs(X:GetChildren()) do
				if j:IsA("Tool") then
					pcall(qy)
					break
				end
			end
		end
		local W = Y.Heartbeat:Wait()
		P = M.Position
		local e = O
		if P.X <= E and P.X > F then
			local j = math.clamp((P.X - F) / (E - F), 0, 1)
			e = d + ((O - d) * j)
		elseif P.X <= F then
			e = d
		end
		local v = math.sign(q.X - P.X)
		local f = v * math.min(math.abs(q.X - P.X), e * W)
		local n = P.X + f
		local C = math.sign(q.Y - P.Y)
		local D = C * math.min(math.abs(q.Y - P.Y), (e * W) * 0.5)
		local i = P.Y + D
		local K = o - P.Z
		local y = math.sign(K) * math.min(math.abs(K), e * W)
		local k = P.Z + y
		local A = py()
		local p = false
		for P, j in ipairs(A) do
			local Y = j.Position
			local X = ((Vector3.new(n, i, k) - Y)).Magnitude
			local M = math.abs(n - Y.X)
			local z = math.abs(k - Y.Z)
			if X < 22 or (M < 18 and z < 14) then
				p = true
				local P = Y.Y + 16
				if i < P then
					i = math.min(i + ((e * W) * 1.5), P)
				end
				break
			end
		end
		local T = Vector3.new(n, i, k)
		local B = ((T - P)).Magnitude > 0.05 and ((T - P)).Unit or M.CFrame.LookVector
		M.CFrame = CFrame.lookAt(T, T + B)
		M.AssemblyLinearVelocity = Vector3.zero
		M.AssemblyAngularVelocity = Vector3.zero
		if p then
			J.statusText = string.format("Tweening Safe Line (Z: %.0f) [DODGING!]", k)
		else
			J.statusText = string.format("Tweening to Safe Line (%.0f studs | X: %.0f)", S, P.X)
		end
	end
	M.CFrame = CFrame.new(F, math.max(68, M.Position.Y), o)
	M.AssemblyLinearVelocity = Vector3.zero
	M.AssemblyAngularVelocity = Vector3.zero
	if z then
		z.AutoRotate = true
	end
	qy()
	J.isReturning = false
	J.delivering = false
	if J then
		J.onTreadmill = false
	end
	J.statusText = "Arrived at Safe Line (X=525)! Hands Free."
	return true
end
local function WU(P)
	if not P then
		return nil
	end
	local j = P:FindFirstChild("TreadmillBottom")
	if j and j:IsA("BasePart") then
		return j
	end
	j = P:FindFirstChild("TreadmillBottom", true)
	if j and j:IsA("BasePart") then
		return j
	end
	local Y = P:FindFirstChild("TreadmillUpgrade", true)
	if Y then
		for P, j in ipairs({ "TreadmillBottom", "Belt", "RunArea", "Run", "Platform", "Pad", "Floor", "Base" }) do
			local X = Y:FindFirstChild(j, true)
			if X and X:IsA("BasePart") then
				return X
			end
		end
		local P = nil
		local j = 999999
		for Y, X in ipairs(Y:GetDescendants()) do
			if X:IsA("BasePart") and (X.Size.X >= 1.2 and X.Size.Z >= 1.2) then
				if X.Position.Y < j then
					j = X.Position.Y
					P = X
				end
			end
		end
		if P then
			return P
		end
		if Y.PrimaryPart then
			return Y.PrimaryPart
		end
		local X = Y:FindFirstChildWhichIsA("BasePart", true)
		if X then
			return X
		end
	end
	for P, j in ipairs(P:GetDescendants()) do
		if j:IsA("BasePart") and string.find(string.lower(j.Name), "treadmill") then
			return j
		end
	end
	return nil
end
dy = function()
	local P = ny()
	if J.tread and J.tread.Parent then
		return J.tread
	end
	local Y = nil
	if P then
		Y = WU(P)
	end
	if not Y then
		local X = j:FindFirstChild("Plots")
		if X then
			local j = string.lower(S.Name)
			local M = S.DisplayName and string.lower(S.DisplayName)
			for P, X in ipairs(X:GetChildren()) do
				local z = WU(X)
				if z then
					local P = false
					for Y, X in ipairs(X:GetDescendants()) do
						if X:IsA("TextLabel") and X.Text ~= "" then
							local Y = string.lower(X.Text)
							if string.find(Y, j, 1, true) or (M and string.find(Y, M, 1, true)) then
								P = true
								break
							end
						end
					end
					if P then
						J.plot = X
						J.plotVerified = true
						Y = z
						break
					end
				end
			end
			if not Y and P then
				Y = WU(P)
			end
		end
	end
	J.tread = Y
	return Y
end
Fy = function(P)
	local j = S.Character
	local X = j and j:FindFirstChild("HumanoidRootPart")
	local M = j and j:FindFirstChildOfClass("Humanoid")
	if not X or not M then
		return false
	end
	if M.PlatformStand then
		M.PlatformStand = false
	end
	if M.Sit then
		M.Sit = false
	end
	M:ChangeState(Enum.HumanoidStateType.Running)
	local z = ny()
	local o = dy()
	if not o then
		V("[AutoTreadmill] Treadmill part not found! Retrying next loop...")
		return false
	end
	pcall(function()
		for P, j in ipairs(j:GetChildren()) do
			if j:IsA("BasePart") and j.Name ~= "HumanoidRootPart" then
				j.CanCollide = false
			end
		end
	end)
	pcall(function()
		o.CanTouch = true
		o.CanCollide = true
		local P = z and z:FindFirstChild("TreadmillUpgrade", true)
		if P then
			for P, j in ipairs(P:GetDescendants()) do
				if j:IsA("BasePart") then
					j.CanTouch = true
					j.CanCollide = true
				end
			end
		end
		if o.Parent and o.Parent:IsA("Model") then
			for P, j in ipairs(o.Parent:GetDescendants()) do
				if j:IsA("BasePart") then
					j.CanTouch = true
					j.CanCollide = true
				end
			end
		end
	end)
	local q = o.Position + Vector3.new(0, 1.8, 0)
	if X.Position.X > 535 then
		J.statusText = "[AutoTreadmill] Returning along highway to base..."
		xy(J.glideSpeed, P)
		if P and by ~= P then
			return false
		end
		if X.Position.X > 535 then
			if X.Position.X <= 560 then
				X.CFrame = CFrame.new(F, 70, J.laneZ or t)
			else
				return false
			end
		end
	end
	if P and by ~= P then
		return false
	end
	local W = ((Vector2.new(X.Position.X, X.Position.Z) - Vector2.new(q.X, q.Z))).Magnitude
	if W > 4 then
		J.statusText = "[AutoTreadmill] Elevated flyover to base plot..."
		local j = math.max(250, J.glideSpeed or 400)
		local z = os.clock()
		while
			J.alive and (
				((Vector2.new(X.Position.X, X.Position.Z) - Vector2.new(q.X, q.Z))).Magnitude > 4 and (
					os.clock() - z < 4
				)
			)
		do
			if P and by ~= P then
				return false
			end
			local z = Y.Heartbeat:Wait()
			local o = X.Position
			local S = Vector3.new(q.X, 70, q.Z)
			local W = (S - o)
			local O = W.Unit * math.min(W.Magnitude, j * z)
			local V = o + O
			X.CFrame = CFrame.lookAt(V, V + (W.Magnitude > 0.05 and W.Unit or X.CFrame.LookVector))
			X.AssemblyLinearVelocity = Vector3.zero
			X.AssemblyAngularVelocity = Vector3.zero
			if M then
				if M.PlatformStand then
					M.PlatformStand = false
				end
				if M.Sit then
					M.Sit = false
				end
				M:ChangeState(Enum.HumanoidStateType.Running)
			end
		end
	end
	if P and by ~= P then
		return false
	end
	local O = os.clock()
	while J.alive and (math.abs(X.Position.Y - q.Y) > 2 and (os.clock() - O < 1.5)) do
		if P and by ~= P then
			return false
		end
		local j = Y.Heartbeat:Wait()
		local M = X.Position
		local z = q
		local o = (z - M)
		local S = o.Unit * math.min(o.Magnitude, 150 * j)
		local W = M + S
		X.CFrame = CFrame.new(W)
		X.AssemblyLinearVelocity = Vector3.zero
		X.AssemblyAngularVelocity = Vector3.zero
	end
	X.CFrame = CFrame.new(q)
	X.AssemblyLinearVelocity = Vector3.zero
	X.AssemblyAngularVelocity = Vector3.zero
	local e = ((X.Position - q)).Magnitude
	if e <= 6 then
		pcall(function()
			if typeof(firetouchinterest) == "function" then
				firetouchinterest(X, o, 0)
				task.wait(0.02)
				firetouchinterest(X, o, 1)
			end
		end)
		pcall(function()
			for P, j in ipairs(o:GetDescendants()) do
				if j:IsA("ProximityPrompt") and j.Enabled then
					if typeof(fireproximityprompt) == "function" then
						fireproximityprompt(j)
					end
				end
			end
			if o.Parent then
				for P, j in ipairs(o.Parent:GetDescendants()) do
					if j:IsA("ProximityPrompt") and j.Enabled then
						if typeof(fireproximityprompt) == "function" then
							fireproximityprompt(j)
						end
					end
				end
			end
		end)
		if x then
			pcall(function()
				x:InvokeServer()
			end)
		end
		J.onTreadmill = true
		J.lastTreadmillMount = os.clock()
		J.statusText = "[AutoTreadmill] Running on treadmill (Waiting for eggs...)"
		return true
	else
		J.onTreadmill = false
		V(string.format("[AutoTreadmill] Not yet at treadmill pad (dist=%.1f studs). Will retry!", e))
		return false
	end
end
local function OU(P)
	if not P or P == "" then
		return false
	end
	local j = string.lower(P)
	return j:find("not enough money")
		or j:find("not enough cash")
		or (j:find("not enough") and (j:find("money") or j:find("cash") or j:find("coin") or j:find("fund")))
end
local function VU(P)
	if not P or not P:IsA("TextLabel") then
		return
	end
	P.Visible = false
	P.TextTransparency = 1
	P.TextStrokeTransparency = 1
	local j = P.Parent
	if j and ((j:IsA("Frame") or j:IsA("CanvasGroup")) and #j:GetChildren() <= 4) then
		j.Visible = false
	end
end
local function eU()
	if not J or not J.hideNotEnoughMoney then
		return
	end
	local P = S:FindFirstChild("PlayerGui")
	if not P then
		return
	end
	for j, Y in ipairs({ "Notifications", "OverlayUI", "Message", "PopupPrompt", "ActionPrompts" }) do
		local X = P:FindFirstChild(Y)
		if X then
			for P, j in ipairs(X:GetDescendants()) do
				if j:IsA("TextLabel") and (j.Visible and OU(j.Text)) then
					VU(j)
				end
			end
		end
	end
end
local function vU()
	local P = S:FindFirstChild("PlayerGui")
	if not P then
		return
	end
	local function j(P)
		if not J or not J.hideNotEnoughMoney then
			return
		end
		if P:IsA("TextLabel") then
			if OU(P.Text) then
				VU(P)
			end
			(P:GetPropertyChangedSignal("Text")):Connect(function()
				if J and (J.hideNotEnoughMoney and OU(P.Text)) then
					VU(P)
				end
			end)
		end
	end
	for Y, X in ipairs({ "Notifications", "OverlayUI", "Message", "PopupPrompt", "ActionPrompts" }) do
		local M = P:FindFirstChild(X)
		if M then
			for P, Y in ipairs(M:GetDescendants()) do
				j(Y)
			end
			M.DescendantAdded:Connect(j)
		end
	end
	P.ChildAdded:Connect(function(P)
		local Y = P.Name
		if Y == "Notifications" or Y == "OverlayUI" or Y == "Message" or Y == "PopupPrompt" or Y == "ActionPrompts" then
			P.DescendantAdded:Connect(j)
		end
	end)
	task.spawn(function()
		while J and J.alive do
			if J.hideNotEnoughMoney then
				pcall(eU)
			end
			task.wait(3)
		end
	end)
end
task.spawn(vU)
local fU
do
	local P = 0
	local function j()
		local P = S and S:FindFirstChild("PlayerGui")
		if not P then
			return nil
		end
		local j = P:FindFirstChild("ActivePets")
		if j then
			for P, Y in ipairs(j:GetDescendants()) do
				if Y:IsA("GuiButton") then
					local P = Y.Name:lower()
					if P:find("equipbest") or P:find("equip_best") or P == "best" then
						return Y
					end
					if Y:IsA("TextButton") and (Y.Text and (Y.Text:lower()):find("equip%s*best")) then
						return Y
					end
					local j = Y:FindFirstChildWhichIsA("TextLabel", true)
					if j and (j.Text and (j.Text:lower()):find("equip%s*best")) then
						return Y
					end
				elseif Y:IsA("TextLabel") and (Y.Text and (Y.Text:lower()):find("equip%s*best")) then
					local P = Y.Parent
					while P and P ~= j do
						if P:IsA("GuiButton") then
							return P
						end
						P = P.Parent
					end
				end
			end
		end
		for P, j in ipairs(P:GetDescendants()) do
			if j:IsA("GuiButton") then
				local P = j.Name:lower()
				if P:find("equipbest") or P:find("equip_best") then
					return j
				end
				if j:IsA("TextButton") and (j.Text and (j.Text:lower()):find("equip%s*best")) then
					return j
				end
				local Y = j:FindFirstChildWhichIsA("TextLabel", true)
				if Y and (Y.Text and (Y.Text:lower()):find("equip%s*best")) then
					return j
				end
			end
		end
		return nil
	end
	local function Y(P)
		if not P then
			return false
		end
		local j = false
		pcall(function()
			if firesignal then
				if P.Activated then
					firesignal(P.Activated)
					j = true
				end
				if P.MouseButton1Click then
					firesignal(P.MouseButton1Click)
					j = true
				end
			end
		end)
		pcall(function()
			if getconnections then
				for P, Y in ipairs(getconnections(P.Activated)) do
					if Y and Y.Fire then
						Y:Fire()
						j = true
					end
				end
				for P, Y in ipairs(getconnections(P.MouseButton1Click)) do
					if Y and Y.Fire then
						Y:Fire()
						j = true
					end
				end
			end
		end)
		pcall(function()
			if firebutton1click then
				firebutton1click(P)
				j = true
			end
		end)
		return j
	end
	fU = function(X)
		local M = os.clock()
		if not X and (M - P < 4) then
			return false
		end
		P = M
		local z = j()
		if z then
			local P = Y(z)
			if P then
				O("[AutoEquipBest] Successfully clicked [Equip Best] button.")
				return true
			end
		end
		return false
	end
end
local function nU(P)
	if not P then
		return 0
	end
	local j = (((tostring(P)):gsub("[$,]", "")):gsub("%s+", "")):lower()
	local Y, X = j:match("^([%d%.]+)([%a]*)$")
	if not Y then
		Y = j:match("[%d%.]+")
		if not Y then
			return 0
		end
		X = j:gsub("[%d%.]+", "")
	end
	local M = tonumber(Y) or 0
	local z = 1
	X = X and X:lower() or ""
	if X == "sp" then
		z = 1e+024
	elseif X == "sx" then
		z = 1e+021
	elseif X == "qi" then
		z = 1e+018
	elseif X == "qa" or X == "q" then
		z = 1e+015
	elseif X == "t" then
		z = 1000000000000
	elseif X == "b" then
		z = 1000000000
	elseif X == "m" then
		z = 1000000
	elseif X == "k" then
		z = 1000
	end
	return M * z
end
local function CU()
	local P = nil
	local j = 0
	pcall(function()
		local j = S and S:FindFirstChild("PlayerGui")
		if j then
			local Y = j:FindFirstChild("HUD")
			if Y then
				local j = Y:FindFirstChild("GameHUD") or Y:FindFirstChild("TradmilHud")
				local X = (j and j:FindFirstChild("BottomLeft")) or Y:FindFirstChild("BottomLeft", true)
				if X then
					local j = X:FindFirstChild("Money")
					local Y = j and (j:FindFirstChild("Value") or j:FindFirstChildOfClass("TextLabel"))
					if Y and Y:IsA("TextLabel") then
						local j = (tostring(Y.Text or "")):gsub("%s+", "")
						if j ~= "" and (j:find("%$") or j:match("%d")) then
							P = j
						end
					end
					if not P and j then
						for j, Y in ipairs(j:GetDescendants()) do
							if Y:IsA("TextLabel") then
								local j = (tostring(Y.Text or "")):gsub("%s+", "")
								if j ~= "" and (j:find("%$") or j:match("%d")) then
									P = j
									break
								end
							end
						end
					end
				end
			end
			if not P then
				for j, Y in ipairs(j:GetChildren()) do
					if
						Y:IsA("ScreenGui")
						and (
							Y.Name ~= "Dice_UI"
							and (
								not (Y.Name:lower()):find("shop")
								and (not (Y.Name:lower()):find("popup") and not (Y.Name:lower()):find("prompt"))
							)
						)
					then
						local j = Y:FindFirstChild("BottomLeft", true)
						if j then
							local Y = j:FindFirstChild("Money", true)
							if Y then
								for j, Y in ipairs(Y:GetDescendants()) do
									if Y:IsA("TextLabel") then
										local j = (tostring(Y.Text or "")):gsub("%s+", "")
										if j ~= "" and (j:find("%$") or j:match("%d")) then
											P = j
											break
										end
									end
								end
							end
						end
						if P then
							break
						end
					end
				end
			end
		end
	end)
	if P then
		j = nU(P)
		if not P:find("%$") then
			P = "$" .. P
		end
		return P, j
	end
	pcall(function()
		local Y = S and S:FindFirstChild("leaderstats")
		if Y then
			for X, M in ipairs({ "Money", "Cash", "Coins", "Currency" }) do
				local z = Y:FindFirstChild(M)
				if z then
					local Y = tostring(z.Value or "")
					if Y ~= "" and Y ~= "0" then
						P = "$" .. Y:gsub("%$", "")
						j = tonumber(z.Value) or nU(Y)
						return
					end
				end
			end
		end
	end)
	if P then
		return P, j
	end
	return "$0", 0
end
local function DU()
	local P, j = CU()
	return j or 0
end
local function iU()
	local P = J.plot or (ny and ny())
	if not P then
		return nil
	end
	local j = P:FindFirstChild("TreadmillUpgrade", true)
	if not j then
		return nil
	end
	local Y = nil
	for P, j in ipairs(j:GetDescendants()) do
		if j:IsA("TextLabel") or j:IsA("TextButton") then
			local P = tostring(j.Text or "")
			local X = P:match("%$([%d%.,]+%s*[kKmMbBtTqQ]?[aA]?)")
			if X then
				local P = nU(X)
				if P and P > 0 then
					if not Y or P > Y then
						Y = P
					end
				end
			end
		end
	end
	return Y
end
local KU = 0
local yU = 10
local function kU()
	if not J.autoUpgradeTreadmill then
		return
	end
	if os.clock() - KU < yU then
		return
	end
	local P = J.plot or (ny and ny())
	if not P then
		return
	end
	local j = P:FindFirstChild("TreadmillUpgrade", true)
	if not j then
		return
	end
	local Y = DU()
	local X = iU()
	if X and (X > 0 and Y < X) then
		return
	end
	KU = os.clock()
	if c then
		pcall(function()
			c:InvokeServer()
		end)
	end
	local M = S.Character
	local z = M and M:FindFirstChild("HumanoidRootPart")
	pcall(function()
		for P, j in ipairs(j:GetDescendants()) do
			if j:IsA("ProximityPrompt") and j.Enabled then
				if typeof(fireproximityprompt) == "function" then
					fireproximityprompt(j, 0)
					fireproximityprompt(j)
				end
			end
			if j:IsA("GuiButton") and j.Visible then
				local P = (j:IsA("TextButton") and j.Text) or j.Name
				local Y = string.lower(P)
				if
					not string.find(Y, "robux")
					and (
						not string.find(Y, "r%$")
						and (
							string.find(Y, "%$")
							or string.find(Y, "upgrade")
							or string.find(Y, "cash")
							or (j.BackgroundColor3 and j.BackgroundColor3.G > j.BackgroundColor3.R)
						)
					)
				then
					if typeof(firesignal) == "function" and j.Activated then
						firesignal(j.Activated)
					elseif typeof(firesignal) == "function" and j.MouseButton1Click then
						firesignal(j.MouseButton1Click)
					end
				end
			end
			if j:IsA("BasePart") and (j.Name:find("Pad") and z) then
				if ((z.Position - j.Position)).Magnitude < 10 then
					if typeof(firetouchinterest) == "function" then
						firetouchinterest(z, j, 0)
						task.wait(0.02)
						firetouchinterest(z, j, 1)
					end
				end
			end
		end
	end)
end
local AU = {
	{ id = "GreyTrail", base = "Grey", name = "Grey Trail", price = 100, mult = 1.5 },
	{ id = "GreenTrail", base = "Green", name = "Green Trail", price = 5000, mult = 2 },
	{ id = "BlueTrail", base = "Blue", name = "Blue Trail", price = 75000, mult = 2.5 },
	{ id = "PurpleTrail", base = "Purple", name = "Purple Trail", price = 1500000, mult = 3 },
	{ id = "GoldenTrail", base = "Golden", name = "Golden Trail", price = 1500000, mult = 3.5 },
	{ id = "RedTrail", base = "Red", name = "Red Trail", price = 750000000, mult = 4 },
	{ id = "GalaxyTrail", base = "Galaxy", name = "Galaxy Trail", price = 20000000000, mult = 5 },
	{ id = "SecretTrail", base = "Secret", name = "Secret Trail", price = 500000000000, mult = 6 },
	{ id = "EternalTrail", base = "Eternal", name = "Eternal Trail", price = 12500000000000, mult = 10 },
	{ id = "DivineTrail", base = "Divine", name = "Divine Trail", price = 3e+014, mult = 14 },
	{ id = "MoonbloomTrail", base = "Moonbloom", name = "Moonbloom Trail", price = 5e+015, mult = 20 },
}
local function pU()
	return AU
end
local function TU()
	local P = {}
	local j = S:FindFirstChild("PlayerGui")
	local Y = j and (j:FindFirstChild("TrailShop") or j:FindFirstChild("TrailShop", true))
	local X = Y and Y:FindFirstChild("ScrollingFrame", true)
	if X then
		pcall(function()
			for j, Y in ipairs(X:GetChildren()) do
				if Y:IsA("GuiObject") and (not Y:IsA("UIListLayout") and not Y:IsA("UIPadding")) then
					local j = Y.Name
					for Y, X in ipairs(Y:GetDescendants()) do
						if X:IsA("GuiButton") or X:IsA("TextButton") then
							local Y = (X:IsA("TextButton") and X.Text:lower()) or X.Name:lower()
							if Y:find("unequip") or (Y:find("equip") and not Y:find("unequip")) then
								P[j] = true
								P[j:lower()] = true
								local Y = j:gsub("Trail", "")
								P[Y] = true
								P[Y:lower()] = true
							end
						end
					end
				end
			end
		end)
	end
	return P
end
local function BU(P)
	if not P then
		return false
	end
	pcall(function()
		if typeof(firebutton1click) == "function" then
			firebutton1click(P)
		elseif typeof(firesignal) == "function" and P.Activated then
			firesignal(P.Activated)
		elseif typeof(firesignal) == "function" and P.MouseButton1Click then
			firesignal(P.MouseButton1Click)
		end
	end)
	return true
end
local function xU()
	local P = pU()
	local j = TU()
	local Y = S:FindFirstChild("PlayerGui")
	local X = Y and (Y:FindFirstChild("TrailShop") or Y:FindFirstChild("TrailShop", true))
	local M = X and X:FindFirstChild("ScrollingFrame", true)
	if M then
		for j = #P, 1, -1 do
			local Y = P[j]
			local X = M:FindFirstChild(Y.id) or M:FindFirstChild(Y.base) or M:FindFirstChild(Y.name)
			if not X then
				for P, j in ipairs(M:GetChildren()) do
					if
						j:IsA("GuiObject")
						and (
							j.Name:lower() == Y.id:lower()
							or j.Name:lower() == Y.base:lower()
							or j.Name:lower() == Y.name:lower()
						)
					then
						X = j
						break
					end
				end
			end
			if X then
				local P = false
				local j = nil
				for Y, X in ipairs(X:GetDescendants()) do
					if X:IsA("GuiButton") or X:IsA("TextButton") then
						local Y = (X:IsA("TextButton") and X.Text:lower()) or X.Name:lower()
						if Y:find("unequip") then
							P = true
							break
						elseif Y:find("equip") and not Y:find("unequip") then
							j = X
						end
					end
				end
				if P then
					return true
				end
				if j then
					BU(j)
					if a then
						pcall(function()
							a:InvokeServer(Y.id)
						end)
					end
					task.wait(0.2)
					return true
				end
			end
		end
	end
	if a then
		for Y = #P, 1, -1 do
			local X = P[Y]
			local M = j[X.id] or j[X.id:lower()] or j[X.base] or j[X.base:lower()] or j[X.name] or j[X.name:lower()]
			if M then
				pcall(function()
					a:InvokeServer(X.id)
				end)
				return true
			end
		end
	end
	return false
end
local cU = 0
local GU = 8
local function aU()
	if not J.autoBuyTrails then
		return
	end
	xU()
	if os.clock() - cU < GU then
		return
	end
	local P = DU()
	if P <= 0 then
		return
	end
	local j = pU()
	local Y = TU()
	local X = S:FindFirstChild("PlayerGui")
	local M = X and (X:FindFirstChild("TrailShop") or X:FindFirstChild("TrailShop", true))
	local z = M and M:FindFirstChild("ScrollingFrame", true)
	for X = #j, 1, -1 do
		local M = j[X]
		local o = Y[M.id] or Y[M.id:lower()] or Y[M.base] or Y[M.base:lower()] or Y[M.name] or Y[M.name:lower()]
		if not o and (M.price > 0 and P >= M.price) then
			cU = os.clock()
			local P = false
			if z then
				local j = z:FindFirstChild(M.id) or z:FindFirstChild(M.base) or z:FindFirstChild(M.name)
				if not j then
					for P, Y in ipairs(z:GetChildren()) do
						if
							Y:IsA("GuiObject")
							and (
								Y.Name:lower() == M.id:lower()
								or Y.Name:lower() == M.base:lower()
								or Y.Name:lower() == M.name:lower()
							)
						then
							j = Y
							break
						end
					end
				end
				if j then
					for j, Y in ipairs(j:GetDescendants()) do
						if Y:IsA("GuiButton") or Y:IsA("TextButton") then
							local j = (Y:IsA("TextButton") and Y.Text:lower()) or Y.Name:lower()
							if
								not j:find("robux")
								and (not j:find("r%$") and (not j:find("unequip") and not j:find("equip")))
							then
								if j:find("%$") or j:find("buy") then
									BU(Y)
									P = true
									break
								end
							end
						end
					end
				end
			end
			if G then
				pcall(function()
					G:InvokeServer(M.id)
				end)
				P = true
			end
			if P then
				task.wait(0.3)
				xU()
				break
			end
		end
	end
end
cy = function()
	local P = S.Character
	local Y = P and P:FindFirstChild("HumanoidRootPart")
	if not Y then
		return nil
	end
	local X = {}
	local M = j:FindFirstChild("AreaEggSlotsClient")
	local z = Hy(false)
	if z and #z > 0 then
		for P, j in ipairs(z) do
			local M = (j.State == "Slot" or j.State == "Dropped" or j.State == 1)
			local z = (j.AreaId == "Lake")
				or (string.find(string.lower(tostring(j.AreaId)), "lake") ~= nil)
				or (string.find(string.lower(tostring(j.Uid)), "lake") ~= nil)
			local o = Ny[j.Uid] and (os.clock() < Ny[j.Uid])
			if M and (z and (j.BoundsCFrame and not o)) then
				local P = j.BoundsCFrame.Position
				local M = ((Y.Position - P)).Magnitude
				table.insert(
					X,
					{ Uid = j.Uid, Model = nil, Hitbox = nil, CFrame = j.BoundsCFrame, Position = P, Distance = M, Area = "Lake" }
				)
			end
		end
	end
	if #X == 0 and (z and #z > 0) then
		for P, j in ipairs(z) do
			local M = (j.State == "Slot" or j.State == "Dropped" or j.State == 1)
			local z = j.BoundsCFrame and j.BoundsCFrame.Position
			local o = z and (z.X >= 545 and z.X < 850)
			local q = Ny[j.Uid] and (os.clock() < Ny[j.Uid])
			if M and (o and not q) then
				table.insert(
					X,
					{
						Uid = j.Uid,
						Model = nil,
						Hitbox = nil,
						CFrame = j.BoundsCFrame,
						Position = z,
						Distance = ((Y.Position - z)).Magnitude,
						Area = j.AreaId or "Field",
					}
				)
			end
		end
	end
	if #X == 0 then
		return nil
	end
	table.sort(X, function(P, j)
		return P.Distance < j.Distance
	end)
	local o = X[1]
	if o and M then
		for P, j in ipairs(M:GetChildren()) do
			local Y = j:FindFirstChildWhichIsA("BasePart") or j.PrimaryPart
			if Y and ((Y.Position - o.Position)).Magnitude <= 8 then
				o.Model = j
				break
			end
		end
	end
	return o
end
local wU = nil
local lU = nil
local LU = 350
local function ZU()
	local P = j:FindFirstChild("__OBJECTS") or j:FindFirstChild("Objects")
	local Y = P and (P:FindFirstChild("Areas") or P:FindFirstChild("Area"))
	local X = Y and (Y:FindFirstChild("GuardAreas") or Y:FindFirstChild("Guards"))
	if X then
		local P = X:FindFirstChild("Light Dark")
			or X:FindFirstChild("LightDark")
			or X:FindFirstChild("Light_Dark")
			or X:FindFirstChild("Light-Dark")
		if P then
			return P
		end
		for P, j in ipairs(X:GetChildren()) do
			local Y = string.lower(j.Name)
			if string.find(Y, "light") and string.find(Y, "dark") then
				return j
			end
		end
	end
	if Y then
		local P = Y:FindFirstChild("Light Dark") or Y:FindFirstChild("LightDark") or Y:FindFirstChild("Light_Dark")
		if P then
			return P
		end
		for P, j in ipairs(Y:GetChildren()) do
			local Y = string.lower(j.Name)
			if string.find(Y, "light") and string.find(Y, "dark") then
				return j
			end
		end
	end
	for P, j in ipairs(j:GetChildren()) do
		local Y = j.Name
		if Y == "__OBJECTS" or Y == "Objects" or Y == "Areas" or Y == "Map" then
			for P, j in ipairs(j:GetDescendants()) do
				local Y = string.lower(j.Name)
				if Y == "light dark" or Y == "lightdark" or (string.find(Y, "light") and string.find(Y, "dark")) then
					if j:IsA("BasePart") or j:IsA("Model") or j:IsA("Folder") then
						return j
					end
				end
			end
		end
	end
	return nil
end
local function tU(P)
	if not P then
		return false
	end
	if wU then
		local j = ((Vector3.new(P.X, 0, P.Z) - Vector3.new(wU.X, 0, wU.Z))).Magnitude
		if j <= LU then
			return true
		end
	end
	local j = ZU()
	if not j then
		if P.X >= 5200 then
			return true
		end
		return false
	end
	local Y = false
	pcall(function()
		local X, M = nil, nil
		if j:IsA("BasePart") then
			X = j.CFrame
			M = j.Size
		elseif j:IsA("Model") then
			X, M = j:GetBoundingBox()
		else
			local P, Y = nil, nil
			for j, X in ipairs(j:GetChildren()) do
				if X:IsA("BasePart") then
					local j = X.CFrame
					local M = X.Size / 2
					local z = j.Position - M
					local o = j.Position + M
					if not P then
						P = z
						Y = o
					else
						P = Vector3.new(math.min(P.X, z.X), math.min(P.Y, z.Y), math.min(P.Z, z.Z))
						Y = Vector3.new(math.max(Y.X, o.X), math.max(Y.Y, o.Y), math.max(Y.Z, o.Z))
					end
				end
			end
			if P and Y then
				X = CFrame.new((P + Y) / 2)
				M = Y - P
			end
		end
		if X and M then
			wU = X.Position
			lU = X
			LU = math.max(350, math.max(M.X, M.Z) / 2 + 150)
			local j = ((Vector3.new(P.X, 0, P.Z) - Vector3.new(X.Position.X, 0, X.Position.Z))).Magnitude
			if j <= LU then
				Y = true
				return
			end
			local z = X:PointToObjectSpace(P)
			local o = M / 2
			if math.abs(z.X) <= (o.X + 200) and math.abs(z.Z) <= (o.Z + 200) then
				Y = true
				return
			end
		end
		for j, X in ipairs(j:GetDescendants()) do
			if X:IsA("BasePart") then
				if ((P - X.Position)).Magnitude <= 250 then
					Y = true
					if not wU then
						wU = X.Position
					end
					return
				end
			end
		end
	end)
	return Y
end
local function FU(P, j, Y)
	local X = j and j.X or 0
	local M = string.lower(tostring(P or ""))
	local z = string.lower(tostring(Y or ""))
	if z ~= "" and z ~= "egg" then
		if
			string.find(z, "spideron")
			or string.find(z, "crustacia")
			or string.find(z, "bladehide")
			or string.find(z, "mantaris")
			or string.find(z, "rhinotaur")
			or string.find(z, "mutantshark")
			or string.find(z, "mutant shark")
			or string.find(z, "gorillaking")
			or string.find(z, "gorilla king")
			or string.find(z, "nightflame")
		then
			return "Titan Temple"
		end
		if
			string.find(z, "crane")
			or string.find(z, "salamander")
			or string.find(z, "redpanda")
			or string.find(z, "red panda")
			or string.find(z, "snowyowl")
			or string.find(z, "snowy owl")
			or string.find(z, "koiegg")
			or string.find(z, "koi egg")
			or string.find(z, "stagegg")
			or string.find(z, "stag egg")
			or string.find(z, "onitiger")
			or string.find(z, "oni tiger")
			or string.find(z, "kitsune")
		then
			return "Cherry Blossom"
		end
		if
			string.find(z, "centapede")
			or string.find(z, "cosmicgecko")
			or string.find(z, "cosmic gecko")
			or string.find(z, "cosmicgorilla")
			or string.find(z, "cosmic gorilla")
			or string.find(z, "saturno")
			or string.find(z, "saturnita")
			or string.find(z, "vacca")
			or string.find(z, "cosmic skeleton")
			or string.find(z, "skeletonboss")
			or string.find(z, "skeleton boss")
			or string.find(z, "cosmicdragon")
			or string.find(z, "cosmic dragon")
			or string.find(z, "lunardragon")
			or string.find(z, "lunar dragon")
			or string.find(z, "unicornegg")
			or string.find(z, "unicorn egg")
		then
			return "Cosmic"
		end
		if
			string.find(z, "dodo")
			or string.find(z, "pterodactyl")
			or string.find(z, "ankylosaurus")
			or string.find(z, "triceratops")
			or string.find(z, "bronto")
			or string.find(z, "trex")
			or string.find(z, "t-rex")
			or string.find(z, "tralaledon")
			or string.find(z, "mosasaurus")
		then
			return "Prehistoric"
		end
		if
			string.find(z, "parrotfish")
			or string.find(z, "swordfish")
			or string.find(z, "whaleshark")
			or string.find(z, "whale shark")
			or string.find(z, "belugawhale")
			or string.find(z, "beluga whale")
			or string.find(z, "kraken")
			or string.find(z, "elmaja")
			or string.find(z, "el maja")
		then
			return "Abyss Ocean"
		end
		if
			string.find(z, "lava gecko")
			or string.find(z, "lava frog")
			or string.find(z, "flaming bull")
			or string.find(z, "lava iguana")
			or string.find(z, "chillin chilli")
			or string.find(z, "cerberus")
			or string.find(z, "phoenix")
			or string.find(z, "lava dragon")
		then
			return "Volcano"
		end
		if
			string.find(z, "penguin")
			or string.find(z, "walrus")
			or string.find(z, "polar bear")
			or string.find(z, "polarbear")
			or string.find(z, "sabertooth")
			or string.find(z, "mammoth")
			or string.find(z, "yeti")
			or string.find(z, "ice dragon")
			or string.find(z, "icedragon")
		then
			return "Snow"
		end
		if
			string.find(z, "sand spider")
			or string.find(z, "sandspider")
			or string.find(z, "royal sphinx")
			or string.find(z, "sphinx")
			or string.find(z, "tob tobi")
			or string.find(z, "tobtobi")
			or string.find(z, "jerboa")
			or string.find(z, "fennec")
			or string.find(z, "camel")
		then
			return "Desert"
		end
		if
			string.find(z, "chimpanzee")
			or string.find(z, "toucan")
			or string.find(z, "crocodile")
			or string.find(z, "orangutini")
			or string.find(z, "ananassini")
			or string.find(z, "king snake")
			or string.find(z, "kingsnake")
		then
			return "Jungle"
		end
		if
			string.find(z, "duckling")
			or string.find(z, "catfish")
			or string.find(z, "turtle")
			or string.find(z, "trulimero")
			or string.find(z, "trulicina")
			or string.find(z, "swan")
			or string.find(z, "axolotl")
			or string.find(z, "leviathan")
		then
			return "Lake"
		end
		if
			string.find(z, "burrowing owl")
			or string.find(z, "burrowingowl")
			or string.find(z, "brr brr")
			or string.find(z, "patapim")
			or string.find(z, "chicken")
			or string.find(z, "dog")
			or string.find(z, "bird")
			or string.find(z, "raccoon")
			or string.find(z, "fox")
		then
			return "Forest"
		end
		if string.find(z, "shark") then
			return "Abyss Ocean"
		end
		if string.find(z, "snake") then
			return "Desert"
		end
		if string.find(z, "spider") then
			return "Jungle"
		end
		if string.find(z, "gorilla") then
			return "Jungle"
		end
		if string.find(z, "tiger") then
			return "Jungle"
		end
		if string.find(z, "frog") then
			return "Lake"
		end
		if string.find(z, "bear") then
			return "Forest"
		end
	end
	if (string.find(M, "light") and string.find(M, "dark")) or M == "lightdark" then
		return "Light Dark"
	elseif string.find(M, "titan") then
		return "Titan Temple"
	elseif string.find(M, "cherry") then
		return "Cherry Blossom"
	elseif string.find(M, "cosmic") then
		return "Cosmic"
	elseif string.find(M, "prehistoric") or string.find(M, "dino") then
		return "Prehistoric"
	elseif string.find(M, "abyss") or string.find(M, "ocean") then
		return "Abyss Ocean"
	elseif string.find(M, "volcano") or string.find(M, "lava") then
		return "Volcano"
	elseif string.find(M, "snow") or string.find(M, "ice") or string.find(M, "winter") then
		return "Snow"
	elseif string.find(M, "jungle") then
		return "Jungle"
	elseif string.find(M, "desert") or string.find(M, "sand") then
		return "Desert"
	elseif string.find(M, "lake") or string.find(M, "water") then
		return "Lake"
	elseif string.find(M, "forest") then
		return "Forest"
	end
	if X > 0 then
		if X >= 5200 then
			return "Light Dark"
		elseif X >= 4750 then
			return "Titan Temple"
		elseif X >= 4000 then
			return "Cherry Blossom"
		elseif X >= 3350 then
			return "Cosmic"
		elseif X >= 2780 then
			return "Prehistoric"
		elseif X >= 2250 then
			return "Abyss Ocean"
		elseif X >= 1850 then
			return "Volcano"
		elseif X >= 1450 then
			return "Snow"
		elseif X >= 1150 then
			return "Jungle"
		elseif X >= 920 then
			return "Desert"
		elseif X >= 720 then
			return "Lake"
		else
			return "Forest"
		end
	end
	return "Forest"
end
Gy = function()
	local P = Hy(false)
	if not P or #P == 0 then
		P = Hy(true)
	end
	if not P or #P == 0 then
		return nil
	end
	local Y = S.Character
	local X = Y and Y:FindFirstChild("HumanoidRootPart")
	local M = X and X.Position or Vector3.new(525, 70, -360)
	local function z(P)
		P = tonumber(P) or 0
		if P >= 1000000000000 then
			return string.format("%.1fT", P / 1000000000000)
		end
		if P >= 1000000000 then
			return string.format("%.1fB", P / 1000000000)
		end
		if P >= 1000000 then
			return string.format("%.1fM", P / 1000000)
		end
		if P >= 1000 then
			return string.format("%.1fK", P / 1000)
		end
		return string.format("%.0f", P)
	end
	local function o(P, j, Y, X)
		if P and P.PhysicalModel then
			local X = P.PhysicalModel
			local M = X:GetAttribute("Rarity") or X:GetAttribute("RarityTier") or X:GetAttribute("Tier")
			if M and (tostring(M) ~= "" and tostring(M) ~= "Unknown") then
				Y = tostring(M)
			end
			if not j or j == "Egg" or j == "" then
				j = X:GetAttribute("Category") or X:GetAttribute("AssetCategory") or X.Name
			end
		end
		local M = string.lower(tostring(P.Rarity or ""))
		local z = string.lower(tostring(Y or ""))
		for P, j in ipairs({ M, z }) do
			if j ~= "" and (j ~= "unknown" and j ~= "nil") then
				if string.find(j, "divine") then
					return 6, "Divine"
				end
				if string.find(j, "eternal") then
					return 5, "Eternal"
				end
				if string.find(j, "secret") then
					return 4, "Secret"
				end
				if string.find(j, "cosmic") then
					return 3, "Cosmic"
				end
				if string.find(j, "mythic") then
					return 2, "Mythic"
				end
				if string.find(j, "legendary") then
					return 1, "Legendary"
				end
				if string.find(j, "epic") then
					return 0.5, "Epic"
				end
				if string.find(j, "rare") then
					return 0.3, "Rare"
				end
				if string.find(j, "uncommon") then
					return 0.1, "Uncommon"
				end
				if string.find(j, "common") then
					return 0, "Common"
				end
			end
		end
		if X and X >= 10 then
			return 6, "Divine"
		elseif X and X >= 9 then
			return 5, "Eternal"
		elseif X and X >= 8 then
			return 4, "Secret"
		elseif X and X >= 7 then
			return 3, "Cosmic"
		elseif X and X >= 6 then
			return 2, "Mythic"
		elseif X and X >= 5 then
			return 1, "Legendary"
		elseif X and X >= 4 then
			return 0.5, "Epic"
		elseif X and X >= 3 then
			return 0.3, "Rare"
		elseif X and X >= 2 then
			return 0.1, "Uncommon"
		elseif X and X >= 1 then
			return 0, "Common"
		end
		local o = string.lower(
			string.format(
				"%s %s %s %s %s",
				tostring(j or ""),
				tostring(P.Uid or ""),
				tostring(P.Name or ""),
				tostring(P.DisplayName or ""),
				tostring(P.EggName or "")
			)
		)
		if
			string.find(o, "nightflame")
			or string.find(o, "unicornegg")
			or string.find(o, "unicorn egg")
			or string.find(o, "shatteredcolossus")
			or string.find(o, "kitsune")
			or string.find(o, "elmaja")
			or string.find(o, "el maja")
		then
			return 6, "Divine"
		end
		if
			string.find(o, "gorillaking")
			or string.find(o, "gorilla king")
			or string.find(o, "lunardragon")
			or string.find(o, "lunar dragon")
			or string.find(o, "onitiger")
			or string.find(o, "oni tiger")
			or string.find(o, "mosasaurus")
		then
			return 5, "Eternal"
		end
		if
			string.find(o, "mutantshark")
			or string.find(o, "mutant shark")
			or string.find(o, "skeletonboss")
			or string.find(o, "skeleton boss")
			or string.find(o, "stagegg")
			or string.find(o, "stag egg")
			or string.find(o, "cosmicdragon")
			or string.find(o, "cosmic dragon")
			or string.find(o, "trex")
			or string.find(o, "t-rex")
			or string.find(o, "tralaledon")
			or string.find(o, "kraken")
		then
			return 4, "Secret"
		end
		if
			string.find(o, "saturnita")
			or string.find(o, "saturno")
			or string.find(o, "mantaris")
			or string.find(o, "rhinotaur")
			or string.find(o, "snowyowl")
			or string.find(o, "snowy owl")
			or string.find(o, "koiegg")
			or string.find(o, "koi egg")
			or string.find(o, "triceratops")
			or string.find(o, "bronto")
			or string.find(o, "whaleshark")
			or string.find(o, "whale shark")
			or string.find(o, "belugawhale")
			or string.find(o, "beluga whale")
		then
			return 3, "Cosmic"
		end
		if
			string.find(o, "bladehide")
			or string.find(o, "redpanda")
			or string.find(o, "red panda")
			or string.find(o, "cosmicgorilla")
			or string.find(o, "cosmic gorilla")
			or string.find(o, "ankylosaurus")
			or string.find(o, "orca")
		then
			return 2, "Mythic"
		end
		if
			string.find(o, "spideron")
			or string.find(o, "crustacia")
			or string.find(o, "salamander")
			or string.find(o, "cosmicgecko")
			or string.find(o, "cosmic gecko")
			or string.find(o, "pterodactyl")
			or string.find(o, "sharkegg")
			or string.find(o, "shark egg")
		then
			return 1, "Legendary"
		end
		if string.find(o, "crane") or string.find(o, "centapede") or string.find(o, "swordfish") then
			return 0.5, "Epic"
		end
		if string.find(o, "dodo") or string.find(o, "parrotfish") then
			return 0.3, "Rare"
		end
		local q = tonumber(P.EarningRate or P.Income or 0)
		if q and q >= 150000000 then
			return 4, "Secret"
		end
		local S = (Y and (Y ~= "Unknown" and Y)) or "Common"
		local W = N[S] or 0
		return W, S
	end
	local function q(j, Y)
		local X = {}
		for P, j in ipairs(P) do
			local z = (j.State == "Slot" or j.State == "Dropped" or j.State == "GuardCarried" or j.State == 1)
			local q = (j.BoundsCFrame and j.BoundsCFrame.Position.X < 530) or string.find(tostring(j.Uid), "FirstArea")
			local S = Ny[j.Uid] and (os.clock() < Ny[j.Uid])
			if z and (not q and ((Y or not S) and j.BoundsCFrame)) then
				local P = j.AssetCategory or "Egg"
				local Y = 0
				local z = 0
				local q = 0
				local S = "Unknown"
				if v then
					pcall(function()
						if v.RarityRankForCategory then
							Y = v.RarityRankForCategory(P) or 0
						end
						if v.ProfileIncomePerSecond then
							z = v.ProfileIncomePerSecond(P) or 0
						end
						if v.SalePrice then
							q = v.SalePrice(P) or 0
						end
						if v.Assets and v.Assets[P] then
							local j = v.Assets[P]
							S = j.Rarity or (j.Egg and j.Egg.Rarity) or "Unknown"
							if not z or z == 0 then
								z = j.EarningRate or (j.Egg and j.Egg.EarningRate) or 0
							end
						end
					end)
				end
				local W = j.BoundsCFrame.Position.X
				local O = j.BoundsCFrame.Position
				local V = j.AreaId
				if (not V or V == "" or V == "Unknown") and j.PhysicalModel then
					V = j.PhysicalModel:GetAttribute("AreaId") or j.PhysicalModel:GetAttribute("Area")
				end
				local e = string.format(
					"%s %s %s %s",
					tostring(P or ""),
					tostring(j.Uid or ""),
					tostring(j.Name or ""),
					(j.PhysicalModel and j.PhysicalModel.Name) or ""
				)
				local f = FU(V, O, e)
				local n, C = o(j, P, S, Y)
				local D = (n >= 4 or C == "Secret" or C == "Eternal" or C == "Divine")
				local i = (J.selectedZones and J.selectedZones[f] == true)
				local K = (J.selectedRarities and J.selectedRarities[C] == true)
				local y = false
				if D then
					y = true
				else
					if i and K then
						y = true
					end
				end
				if y then
					local o = tonumber(j.AssetScale or j.Scale) or 1
					local q = 1
					if j.Mutations and type(j.Mutations) == "table" then
						for P, j in pairs(j.Mutations) do
							local Y = (type(j) == "table" and tonumber(j.Multiplier or j.Value)) or tonumber(j) or 1.5
							q = q * Y
						end
					elseif j.Mutation then
						q = 1.5
					end
					local S = (z * o) * q
					local W = l[f] or 50
					if S <= 0 then
						S = (((W ^ 2) * o) * q) * 10
					end
					local O = ((M - j.BoundsCFrame.Position)).Magnitude
					table.insert(
						X,
						{
							Uid = j.Uid,
							Category = tostring(P),
							Area = tostring(f),
							ZoneWeight = W,
							Rarity = tostring(C),
							RarityTier = n,
							Rank = Y,
							Income = z,
							RealIncome = S,
							Scale = o,
							MutMultiplier = q,
							CFrame = j.BoundsCFrame,
							Position = j.BoundsCFrame.Position,
							Distance = O,
							Model = j.PhysicalModel,
						}
					)
				end
			end
		end
		if #X == 0 then
			return nil
		end
		local function q(P)
			local j = P.RarityTier or 0
			local Y = P.ZoneWeight or 50
			if j >= 4 then
				return (400000 + (j * 10000)) + Y
			else
				return (Y * 11) + (j * 1000)
			end
		end
		table.sort(X, function(P, j)
			local Y = q(P)
			local X = q(j)
			if Y ~= X then
				return Y > X
			end
			if P.ZoneWeight ~= j.ZoneWeight then
				return P.ZoneWeight > j.ZoneWeight
			end
			if math.abs(P.RealIncome - j.RealIncome) > 1 then
				return P.RealIncome > j.RealIncome
			end
			if math.abs(P.Scale - j.Scale) > 0.05 then
				return P.Scale > j.Scale
			end
			return P.Distance < j.Distance
		end)
		local S = X[1]
		local W = {}
		for P = 1, math.min(3, #X), 1 do
			local j = X[P]
			table.insert(
				W,
				string.format(
					"#%d %s[%s|%s] Score:%d $%s/s (%.1fx) dist=%dm",
					P,
					tostring(j.Category),
					tostring(j.Rarity),
					tostring(j.Area),
					q(j),
					z(j.RealIncome),
					tonumber(j.Scale) or 1,
					math.floor(tonumber(j.Distance) or 0)
				)
			)
		end
		if #W > 0 then
			O("[AutoSteal v42.44] " .. table.concat(W, " | "))
		end
		return S
	end
	local W = q(false, false)
	if not W then
		Ny = {}
		W = q(false, true)
	end
	if not W then
		P = Hy(true)
		W = q(false, true)
	end
	if W and j:FindFirstChild("AreaEggSlotsClient") then
		for P, j in ipairs(j.AreaEggSlotsClient:GetChildren()) do
			local Y = j:FindFirstChildWhichIsA("BasePart") or j.PrimaryPart
			if Y and ((Y.Position - W.Position)).Magnitude <= 12 then
				W.Model = j
				break
			end
		end
	end
	return W
end
ay = function(P, X, M, z)
	local o = S.Character
	local q = o and o:FindFirstChild("HumanoidRootPart")
	local W = o and o:FindFirstChildOfClass("Humanoid")
	if not q or not W then
		return false
	end
	J.securingEgg = true
	J.isReturning = false
	J.stateTime = os.clock()
	J.holdingEggForGuard = true
	local e = X.Position
	vy(e, 14)
	J.currentTargetModel = M
	J.targetPosition = e
	q.AssemblyLinearVelocity = Vector3.zero
	q.AssemblyAngularVelocity = Vector3.zero
	sy(o)
	pcall(function()
		S:RequestStreamAroundAsync(e)
	end)
	if not M and j:FindFirstChild("AreaEggSlotsClient") then
		for P, j in ipairs(j.AreaEggSlotsClient:GetChildren()) do
			local Y = j:FindFirstChildWhichIsA("BasePart") or j.PrimaryPart
			if Y and ((Y.Position - e)).Magnitude <= 16 then
				M = j
				J.currentTargetModel = j
				break
			end
		end
	end
	if M then
		pcall(function()
			for P, j in ipairs(M:GetDescendants()) do
				if
					j:IsA("BasePart")
					and (
						j.Transparency > 0.8 and (j.Name ~= "Hitbox" and (j.Name ~= "Root" and not j.Name:find("Pad")))
					)
				then
					j.Transparency = 0
				end
			end
		end)
	end
	J.statusText = "[1/4] Lifting Egg to Trigger Guard..."
	O(string.format("[GuardStrike] Step 1: Lifting target egg (%s)...", tostring(P)))
	local v = os.clock() + 3.5
	local f = 0
	while not Sy() and (os.clock() < v and (J.alive and J.securingEgg)) do
		if z and by ~= z then
			V("[GuardStrike] Cancelled by session switch in Step 1")
			break
		end
		if not J.pureTweenFarm and (not J.autoFarmLoop and not J.teleporting) then
			break
		end
		if P and (os.clock() - f > 0.4) then
			f = os.clock()
			local j, Y = Oy(P)
			if not j and Y == "CarriedByOther" then
				V(
					string.format(
						"[GuardStrike] Target egg %s was snatched by another player! Aborting pickup...",
						tostring(P)
					)
				)
				break
			end
		end
		o:PivotTo(X * CFrame.new(0, 0.4, 0))
		hy(M, e)
		if P and K then
			task.spawn(function()
				pcall(function()
					if K:IsA("RemoteFunction") then
						K:InvokeServer({ Uid = P })
						K:InvokeServer(P)
					else
						K:FireServer({ Uid = P })
						K:FireServer(P)
					end
				end)
			end)
		end
		Y.Heartbeat:Wait()
	end
	if not Sy() then
		V("[GuardStrike] Initial egg pickup timed out or egg was stolen")
		if P then
			Ny[P] = os.clock() + 2
		end
		J.currentTargetModel = nil
		J.targetPosition = nil
		J.securingEgg = false
		J.holdingEggForGuard = false
		return false
	end
	J.statusText = "[2/4] Waiting for Guard Strike..."
	O("[GuardStrike] Step 2: Egg lifted! Triggering guard strike...")
	local n = os.clock()
	local C = n + 4.5
	local D = false
	while Sy() and (os.clock() < C and (J.alive and J.securingEgg)) do
		if z and by ~= z then
			V("[GuardStrike] Cancelled by session switch in Step 2")
			break
		end
		if not J.pureTweenFarm and (not J.autoFarmLoop and not J.teleporting) then
			break
		end
		o:PivotTo(X * CFrame.new(0, 0.4, 0))
		vy(e, 14)
		if p and not D then
			task.spawn(function()
				pcall(function()
					if p:IsA("RemoteFunction") then
						p:InvokeServer()
					else
						p:FireServer()
					end
				end)
			end)
			D = true
		end
		Y.Heartbeat:Wait()
	end
	J.statusText = "[3/4] Re-grabbing Egg..."
	O("[GuardStrike] Step 3: Guard struck! Re-grabbing egg...")
	local i = os.clock() + 3
	while not Sy() and (os.clock() < i and (J.alive and J.securingEgg)) do
		if z and by ~= z then
			V("[GuardStrike] Cancelled by session switch in Step 3")
			break
		end
		if not J.pureTweenFarm and (not J.autoFarmLoop and not J.teleporting) then
			break
		end
		o:PivotTo(X * CFrame.new(0, 0.4, 0))
		hy(M, e)
		if P and K then
			task.spawn(function()
				pcall(function()
					if K:IsA("RemoteFunction") then
						K:InvokeServer({ Uid = P })
						K:InvokeServer(P)
					else
						K:FireServer({ Uid = P })
						K:FireServer(P)
					end
				end)
			end)
		end
		Y.Heartbeat:Wait()
	end
	local y = Wy(P)
	if not y then
		task.wait(0.12)
		y = Wy(P)
	end
	J.currentTargetModel = nil
	J.targetPosition = nil
	J.securingEgg = false
	J.holdingEggForGuard = false
	if z and by ~= z then
		return false
	end
	if y then
		pcall(qy)
		O("[GuardStrike] Egg successfully secured after guard strike! Stashed in backpack.")
		J.statusText = "Egg Secured! Tweening along Z=-360..."
	else
		V("[-] Failed to re-grab egg after guard strike (stolen or despawned)")
		J.statusText = "[-] Failed to re-grab egg"
		if P then
			Ny[P] = os.clock() + 2
		end
	end
	return y
end
wy = function(P, X)
	if J.teleporting or J.glidingToTarget or J.delivering or J.securingEgg then
		return false
	end
	J.teleporting = true
	J.isReturning = false
	J.stateTime = os.clock()
	local M = S.Character
	local z = M and M:FindFirstChild("HumanoidRootPart")
	local o = M and M:FindFirstChildOfClass("Humanoid")
	if not z or not o then
		ly()
		return false
	end
	if o then
		o:UnequipTools()
	end
	J.statusText = "[1/7] Pre-Flight Desync..."
	if not J.swapped then
		gy()
	end
	if not J.godmode then
		uy(true)
	end
	sy(M)
	if not P then
		P = Gy()
	end
	local q = P and P.CFrame or U
	local W = P and P.Uid
	local O = q.Position
	if W then
		local P, j = Oy(W)
		if not P and j ~= "CarriedBySelf" then
			V(
				string.format(
					"[Snipe] Target egg %s is already taken (%s)! Selecting next target...",
					tostring(W),
					tostring(j)
				)
			)
			J.statusText = "Target taken by another player!"
			Ny[W] = os.clock() + 5
			ly()
			return false
		end
	end
	local e = select(2, My())
	if not e then
		local P = cy()
		if not P then
			V("[-] Lake egg not found")
			J.statusText = "[-] No Lake egg found"
			ly()
			return false
		end
		J.currentTargetModel = P.Model
		J.targetPosition = P.Position
		local j = ((z.Position - P.Position)).Magnitude
		local M = P.CFrame * CFrame.new(0, 0.4, 0)
		pcall(function()
			S:RequestStreamAroundAsync(P.Position)
		end)
		vy(P.Position, 8)
		if j > 60 then
			J.statusText = string.format("[2/7] Gliding to Lake Egg (%.0f studs)...", j)
			J.glidingToTarget = true
			local Y = Ty(M, J.glideSpeed, P.Uid, X)
			J.glidingToTarget = false
			if not Y then
				V("[-] Lake starter egg was taken during flight")
				Ny[P.Uid] = os.clock() + 5
				ly()
				return false
			end
		else
			J.statusText = "[2/7] Aligning with Lake Egg..."
			z.CFrame = M
			z.AssemblyLinearVelocity = Vector3.zero
			task.wait(0.04)
		end
		z.Anchored = true
		task.wait(0.06)
		z.Anchored = false
		J.holdingEggForGuard = true
		local o = os.clock() + 3
		while not Sy() and (os.clock() < o and (J.alive and J.teleporting)) do
			if X and by ~= X then
				V("[Snipe] Cancelled by session switch during Lake egg pickup")
				ly()
				return false
			end
			if not J.autoFarmLoop and not J.teleporting then
				ly()
				return false
			end
			hy(P.Model, P.Position)
			if P.Uid and K then
				task.spawn(function()
					pcall(function()
						if K:IsA("RemoteFunction") then
							K:InvokeServer({ Uid = P.Uid })
						else
							K:FireServer({ Uid = P.Uid })
						end
					end)
				end)
			end
			Y.Heartbeat:Wait()
		end
		e = select(2, My())
		if not Sy() then
			V("[-] Lake egg pickup failed")
			J.statusText = "[-] Lake pickup failed"
			ly()
			return false
		end
	end
	J.statusText = "[3/7] Pre-streaming Target..."
	pcall(function()
		S:RequestStreamAroundAsync(O)
	end)
	vy(O, 12)
	J.statusText = "[4/7] Waiting for physical bounce..."
	z.Anchored = false
	o:ChangeState(Enum.HumanoidStateType.Running)
	local v = (o.WalkSpeed > 0) and o.WalkSpeed or 16
	o.WalkSpeed = 0
	o:Move(Vector3.zero, false)
	z.AssemblyLinearVelocity = Vector3.zero
	z.AssemblyAngularVelocity = Vector3.zero
	task.wait(0.04)
	local f = z.Position
	local n = f.Y
	local C = select(2, My()) or e
	local D = false
	local i = nil
	if T and T:IsA("RemoteEvent") then
		i = T.OnClientEvent:Connect(function()
			D = true
			if i then
				i:Disconnect()
			end
		end)
	end
	J.holdingEggForGuard = true
	fy(C)
	local y = os.clock()
	local k = false
	local A = os.clock() + 2.5
	local p = false
	while os.clock() < A and (J.alive and J.teleporting) do
		if X and by ~= X then
			V("[Snipe] Cancelled by session switch during strike bounce")
			if i then
				i:Disconnect()
			end
			o.WalkSpeed = v
			ly()
			return false
		end
		local P = os.clock() - y
		local j = z.AssemblyLinearVelocity
		local M = z.Position
		local q = M.Y - n
		local S = ((M - f)).Magnitude
		if P >= 0.08 then
			local P = D or (j.Y >= 10) or (q >= 1.5 and j.Magnitude >= 16) or (S >= 2) or (j.Magnitude >= 20)
			if P then
				k = true
				break
			end
		end
		if P >= 0.5 and not p then
			p = true
			fy(C)
		end
		Y.Heartbeat:Wait()
	end
	if i then
		i:Disconnect()
	end
	o.WalkSpeed = v
	J.holdingEggForGuard = false
	if not k then
		V("[-] No bounce detected, aborting")
		J.statusText = "[-] Aborted (No bounce detected)"
		ly()
		pcall(qy)
		return false
	end
	task.wait(0.05)
	if W then
		local P, j = Oy(W)
		if not P and j == "CarriedByOther" then
			V(
				string.format(
					"[Snipe] Target egg %s was snatched while bouncing (%s)! Aborting warp...",
					tostring(W),
					tostring(j)
				)
			)
			J.statusText = "Target taken! Aborting warp..."
			Ny[W] = os.clock() + 5
			ly()
			return false
		end
	end
	J.currentTargetModel = P and P.Model
	J.targetPosition = O
	J.statusText = "[5/7] Warping to Target Egg..."
	vy(O, 8)
	M:PivotTo(q * CFrame.new(0, 0.4, 0))
	z.Anchored = true
	for P, j in ipairs(M:GetDescendants()) do
		if j:IsA("BasePart") then
			j.AssemblyLinearVelocity = Vector3.zero
			j.AssemblyAngularVelocity = Vector3.zero
		end
	end
	J.statusText = "[6/7] Picking up Target Egg..."
	local B = S:FindFirstChild("Backpack")
	for P, Y in ipairs(M:GetChildren()) do
		if Y:IsA("Tool") then
			pcall(function()
				if B then
					Y.Parent = B
				else
					Y.Parent = j
				end
			end)
		end
	end
	task.wait(0.06)
	z.Anchored = false
	o:ChangeState(Enum.HumanoidStateType.Running)
	local x = ay(W, q, P and P.Model, X)
	z.Anchored = false
	o:ChangeState(Enum.HumanoidStateType.Running)
	for P, j in ipairs(M:GetDescendants()) do
		if j:IsA("BasePart") then
			j.AssemblyLinearVelocity = Vector3.zero
			j.AssemblyAngularVelocity = Vector3.zero
		end
	end
	if not x then
		V("[-] Guard Strike criteria not met")
		J.statusText = "[-] Guard Strike criteria failed"
		ly()
		return false
	else
		J.statusText = "[7/7] Target Secured! Stashing into Backpack..."
		J.teleporting = false
		pcall(qy)
		return true
	end
end
PU = function(P)
	if Qy == P then
		return
	end
	by = by + 1
	local j = by
	Qy = "SWITCHING"
	J.pureTweenFarm = false
	J.autoFarmLoop = false
	pcall(ly)
	pcall(qy)
	if P == "TWEEN" then
		if YU then
			YU(false, true)
		end
		if jU then
			jU(true, true)
		end
	elseif P == "WARP" then
		if jU then
			jU(false, true)
		end
		if YU then
			YU(true, true)
		end
	else
		if jU then
			jU(false, true)
		end
		if YU then
			YU(false, true)
		end
	end
	task.delay(0.06, function()
		if by == j then
			Qy = P
			if P == "TWEEN" then
				J.pureTweenFarm = true
				J.autoFarmLoop = false
				pcall(qy)
				O("[FarmController] Pure Auto Steal (Tween) ACTIVATED exclusively.")
			elseif P == "WARP" then
				J.autoFarmLoop = true
				J.pureTweenFarm = false
				pcall(qy)
				O("[FarmController] Snipe Auto Loop (Warp) ACTIVATED exclusively.")
			else
				J.pureTweenFarm = false
				J.autoFarmLoop = false
				if not J.isBatchPlacing then
					J.batchStealCount = 0
				end
				O("[FarmController] All farms DEACTIVATED. Bot idle.")
			end
			pcall(Q)
		end
	end)
end
local EU = os.clock()
task.spawn(function()
	while J.alive do
		local P, j = pcall(function()
			if
				J.pureTweenFarm
				and (
					not J.autoFarmLoop
					and (
						Qy == "TWEEN"
						and (
							not J.isBatchPlacing
							and (
								not J.teleporting
								and (
									not J.glidingToTarget
									and (not J.securingEgg and (not J.delivering and not J.isReturning))
								)
							)
						)
					)
				)
			then
				local P = S.Character
				local j = P and P:FindFirstChild("HumanoidRootPart")
				local Y = P and P:FindFirstChildOfClass("Humanoid")
				if j and Y then
					pcall(qy)
					local Y = Sy()
					if not Y then
						local Y = by
						local X = Gy()
						if X and (J.pureTweenFarm and (Qy == "TWEEN" and by == Y)) then
							if J.onTreadmill or Uy() then
								J.statusText = "[AutoSteal] Target found! Getting off treadmill..."
								Ey()
								task.wait(0.08)
							end
							local M, z = Oy(X.Uid)
							if not M and z ~= "CarriedBySelf" then
								O(
									string.format(
										"[AutoSteal] Egg %s already taken (%s). Switching to next target...",
										tostring(X.Uid),
										tostring(z)
									)
								)
								Ny[X.Uid] = os.clock() + 5
								task.wait(0.12)
								return
							end
							J.currentTargetModel = X.Model
							J.targetPosition = X.Position
							J.glidingToTarget = true
							J.stateTime = os.clock()
							local o = (X.Scale and X.Scale > 1.05) and string.format(" | %.1fx", X.Scale) or ""
							J.statusText = string.format(
								"[AutoSteal] Flying to %s (%s%s)...",
								tostring(X.Category or "Egg"),
								tostring(X.Area or "Field"),
								o
							)
							O(
								string.format(
									"[AutoSteal] Flying to %s | Zone: %s%s | Rank: %d (Corridor Z=-360)",
									tostring(X.Category or "Egg"),
									tostring(X.Area or "Field"),
									o,
									tonumber(X.Rank) or 1
								)
							)
							if not J.swapped then
								gy()
							end
							if not J.godmode then
								uy(true)
							end
							sy(P)
							pcall(function()
								S:RequestStreamAroundAsync(X.Position)
							end)
							local q = X.CFrame * CFrame.new(0, 0.4, 0)
							local W = Ty(q, J.glideSpeed, X.Uid, Y)
							J.glidingToTarget = false
							if by ~= Y or not J.pureTweenFarm or Qy ~= "TWEEN" then
								return
							end
							if not W then
								V("[AutoSteal] Egg was taken during flight. Switching to next target...")
								Ny[X.Uid] = os.clock() + 5
								ly()
								return
							end
							if J.pureTweenFarm and (Qy == "TWEEN" and ((j.Position - X.Position)).Magnitude <= 22) then
								local P = ay(X.Uid, q, X.Model, Y)
								if not P and Sy() then
									P = true
								end
								if by ~= Y or not J.pureTweenFarm or Qy ~= "TWEEN" then
									return
								end
								if P then
									pcall(qy)
									if J.autoGlide then
										J.statusText = "[AutoSteal] Secured! Tweening to Safe Line X=525..."
										O(
											"[AutoSteal] Egg secured after Guard Strike! Returning smoothly to Safe Line X=525 along Z=-360..."
										)
										xy(J.glideSpeed, Y)
										pcall(qy)
										local P = oy()
										J.statusText = string.format("Stashed in Bag (%d Eggs). Next steal...", P)
										O(
											string.format(
												"[AutoSteal] Egg stashed in bag (%d total eggs). Hands-Free ready for next steal...",
												P
											)
										)
									else
										J.statusText = "[AutoSteal] Secured! (Auto Return is OFF)"
										O("[AutoSteal] Egg secured! Staying at target (Auto Return is OFF).")
									end
									pcall(qy)
									J.isReturning = false
									J.delivering = false
									J.glidingToTarget = false
									J.securingEgg = false
									J.currentTargetModel = nil
									J.targetPosition = nil
									if ky("TWEEN") then
										return
									end
								else
									if by == Y and (J.pureTweenFarm and Qy == "TWEEN") then
										V("[AutoSteal] Guard Strike or Re-grab failed. Retrying with next egg...")
										Ny[X.Uid] = os.clock() + 5
										ly()
									end
								end
							else
								J.currentTargetModel = nil
								J.targetPosition = nil
								J.glidingToTarget = false
							end
						else
							if os.clock() - EU > 5 then
								Ny = {}
								EU = os.clock()
							end
							if J.autoTreadmill and (not J.isBatchPlacing and not J.isHatching) then
								if not J.onTreadmill and not Uy() then
									J.statusText = "[AutoTreadmill] No targets. Mounting treadmill..."
									Fy(Y)
								else
									J.statusText = "[AutoTreadmill] Running on treadmill (Waiting for eggs...)"
								end
							else
								J.statusText = "[AutoSteal] Scanning for targets..."
							end
						end
					end
				end
			end
		end)
		if not P then
			V("[AutoSteal Loop Recovered]:", tostring(j))
			pcall(ly)
		end
		task.wait(0.08)
	end
end)
local dU = os.clock()
task.spawn(function()
	while J.alive do
		local P, j = pcall(function()
			if
				J.autoFarmLoop
				and (
					not J.pureTweenFarm
					and (
						Qy == "WARP"
						and (
							not J.isBatchPlacing
							and (
								not J.teleporting
								and (
									not J.glidingToTarget
									and (not J.securingEgg and (not J.delivering and not J.isReturning))
								)
							)
						)
					)
				)
			then
				local P = S.Character
				local j = P and P:FindFirstChild("HumanoidRootPart")
				local Y = P and P:FindFirstChildOfClass("Humanoid")
				if j and Y then
					pcall(qy)
					local P = Sy()
					if not P then
						local P = by
						local j = Gy()
						if j and (J.autoFarmLoop and (Qy == "WARP" and by == P)) then
							if J.onTreadmill or Uy() then
								J.statusText = "[SnipeLoop] Target found! Getting off treadmill..."
								Ey()
								task.wait(0.08)
							end
							local Y = (j.Scale and j.Scale > 1.05) and string.format(" | %.1fx", j.Scale) or ""
							O(
								string.format(
									"[SnipeLoop] Starting Warp Snipe: %s | Zone: %s%s (Rank %d)",
									tostring(j.Category or "Egg"),
									tostring(j.Area or "Field"),
									Y,
									tonumber(j.Rank) or 1
								)
							)
							J.statusText =
								string.format("[SnipeLoop] Warping for %s%s...", tostring(j.Category or "Egg"), Y)
							local X = wy(j, P)
							if by ~= P or not J.autoFarmLoop or Qy ~= "WARP" then
								return
							end
							if X then
								pcall(qy)
								if J.autoGlide then
									J.statusText = "[SnipeLoop] Target secured! Tweening to Safe Line X=525..."
									xy(J.glideSpeed, P)
									pcall(qy)
									local j = oy()
									J.statusText = string.format("Stashed in Bag (%d Eggs). Next snipe...", j)
									O(
										string.format(
											"[SnipeLoop] Egg stashed in bag (%d total eggs). Hands-Free ready for next snipe...",
											j
										)
									)
								else
									J.statusText = "[SnipeLoop] Target secured! (Auto Return is OFF)"
									O("[SnipeLoop] Snipe successful! Staying at target (Auto Return is OFF).")
								end
								pcall(qy)
								J.isReturning = false
								J.delivering = false
								if ky("WARP") then
									return
								end
							else
								if by == P and (J.autoFarmLoop and Qy == "WARP") then
									V("[SnipeLoop] Snipe cycle failed. Resetting for next target...")
									if j and j.Uid then
										Ny[j.Uid] = os.clock() + 5
									end
									pcall(ly)
								end
							end
						else
							if os.clock() - dU > 5 then
								Ny = {}
								dU = os.clock()
							end
							if J.autoTreadmill and (not J.isBatchPlacing and not J.isHatching) then
								if not J.onTreadmill and not Uy() then
									J.statusText = "[AutoTreadmill] No targets. Mounting treadmill..."
									Fy(P)
								else
									J.statusText = "[AutoTreadmill] Running on treadmill (Waiting for eggs...)"
								end
							else
								J.statusText = "[SnipeLoop] Searching for targets..."
							end
						end
					end
				end
			end
		end)
		if not P then
			V("[SnipeLoop Loop Recovered]:", tostring(j))
			pcall(ly)
		end
		task.wait(0.08)
	end
end)
task.spawn(function()
	while J.alive do
		local P, j = pcall(function()
			if
				J.autoTreadmill
				and (
					not J.pureTweenFarm
					and (
						not J.autoFarmLoop
						and (
							not J.isBatchPlacing
							and (
								not J.isHatching
								and (
									not J.teleporting
									and (
										not J.glidingToTarget
										and (not J.securingEgg and (not J.delivering and not J.isReturning))
									)
								)
							)
						)
					)
				)
			then
				local P = S.Character
				local j = P and P:FindFirstChild("HumanoidRootPart")
				if j and not Sy() then
					if not J.onTreadmill and not Uy() then
						J.statusText = "[AutoTreadmill] Idle without farm. Mounting treadmill..."
						Fy()
					end
				end
			end
		end)
		task.wait(0.5)
	end
end)
task.spawn(function()
	while J.alive do
		pcall(function()
			if J.autoUpgradeTreadmill then
				kU()
			end
		end)
		task.wait(5)
		pcall(function()
			if J.autoBuyTrails then
				aU()
			end
		end)
		task.wait(5)
	end
end)
task.spawn(function()
	while J.alive do
		if J.autoHatch and (not J.securingEgg and (not J.teleporting and not J.isHatching)) then
			pcall(function()
				Ky(false)
			end)
		end
		task.wait(4)
	end
end)
task.spawn(function()
	while J.alive do
		if
			J.autoEquipBestPet
			and (not J.securingEgg and (not J.teleporting and (not J.isBatchPlacing and not J.glidingToTarget)))
		then
			pcall(function()
				fU(false)
			end)
		end
		task.wait(25)
	end
end)
local UU = nil
local function RU(P)
	pcall(function()
		if P:IsA("BasePart") then
			P.Material = Enum.Material.SmoothPlastic
			P.Reflectance = 0
			P.CastShadow = false
			if P:IsA("MeshPart") then
				P.TextureID = ""
				pcall(function()
					P.RenderFidelity = Enum.RenderFidelity.Performance
				end)
				pcall(function()
					P.CollisionFidelity = Enum.CollisionFidelity.Box
				end)
			end
		elseif P:IsA("SpecialMesh") then
			P.TextureId = ""
		elseif P:IsA("Decal") or P:IsA("Texture") or P:IsA("SurfaceAppearance") then
			P.Transparency = 1
		elseif P:IsA("ParticleEmitter") or P:IsA("Trail") or P:IsA("Smoke") or P:IsA("Fire") or P:IsA("Sparkles") then
			P.Enabled = false
		elseif P:IsA("Beam") then
			P.Enabled = false
		elseif P:IsA("Explosion") then
			P.Visible = false
		elseif P:IsA("Light") or P:IsA("PointLight") or P:IsA("SpotLight") or P:IsA("SurfaceLight") then
			P.Enabled = false
		elseif P:IsA("Highlight") and P.Name ~= "EggESP_Highlight" then
			P.Enabled = false
		end
	end)
end
local function uU()
	J.performanceMode = true
	pcall(function()
		local P = j:FindFirstChild("DiceHub_EggESP")
		if P then
			P:Destroy()
		end
		local Y = game:GetService("Lighting")
		Y.GlobalShadows = false
		Y.FogEnd = 9000000000
		Y.Brightness = 1
		Y.ClockTime = 14
		Y.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		for P, j in ipairs(Y:GetChildren()) do
			if
				j:IsA("PostEffect")
				or j:IsA("BloomEffect")
				or j:IsA("BlurEffect")
				or j:IsA("ColorCorrectionEffect")
				or j:IsA("SunRaysEffect")
				or j:IsA("DepthOfFieldEffect")
				or j:IsA("Atmosphere")
			then
				pcall(function()
					j.Enabled = false
				end)
			elseif j:IsA("Sky") then
				pcall(function()
					j.Parent = nil
				end)
			end
		end
		local X = workspace:FindFirstChildOfClass("Terrain")
		if X then
			pcall(function()
				X.Decoration = false
				X.WaterWaveSize = 0
				X.WaterWaveSpeed = 0
				X.WaterReflectance = 0
				X.WaterTransparency = 0
			end)
		end
		for P, j in ipairs(workspace:GetDescendants()) do
			RU(j)
		end
		if not UU then
			UU = workspace.DescendantAdded:Connect(function(P)
				if J.performanceMode then
					RU(P)
				end
			end)
		end
		pcall(function()
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = 1
			end
		end)
	end)
end
local function gU()
	J.performanceMode = false
	if UU then
		pcall(function()
			UU:Disconnect()
		end)
		UU = nil
	end
	pcall(function()
		local P = game:GetService("Lighting")
		P.GlobalShadows = true
		for P, j in ipairs(P:GetChildren()) do
			if
				j:IsA("PostEffect")
				or j:IsA("BloomEffect")
				or j:IsA("BlurEffect")
				or j:IsA("ColorCorrectionEffect")
				or j:IsA("SunRaysEffect")
				or j:IsA("DepthOfFieldEffect")
				or j:IsA("Atmosphere")
			then
				pcall(function()
					j.Enabled = true
				end)
			end
		end
		local j = workspace:FindFirstChildOfClass("Terrain")
		if j then
			pcall(function()
				j.Decoration = true
			end)
		end
	end)
end
local function rU()
	pcall(function()
		if typeof(getconnections) == "function" then
			for P, j in ipairs(getconnections(S.Idled)) do
				pcall(function()
					j:Disable()
				end)
			end
		end
	end)
end
local function sU()
	pcall(function()
		if typeof(getconnections) == "function" then
			for P, j in ipairs(getconnections(S.Idled)) do
				pcall(function()
					j:Enable()
				end)
			end
		end
	end)
end
local IU = {
	running = false,
	sessionStartCash = nil,
	lastCash = 0,
	lastTime = os.clock(),
	cashPerSec = 0,
	cachedHeadshot = nil,
	logoUrl = "https://iili.io/nBlqhKB.png",
	scriptStartTime = os.clock(),
}
function IU.formatNumber(P)
	if not P or P ~= P then
		return "0"
	end
	local j = math.abs(P)
	if j >= 1000000000000 then
		return string.format("%.2fT", P / 1000000000000)
	elseif j >= 1000000000 then
		return string.format("%.2fB", P / 1000000000)
	elseif j >= 1000000 then
		return string.format("%.2fM", P / 1000000)
	elseif j >= 1000 then
		return string.format("%.2fK", P / 1000)
	else
		return tostring(math.floor(P))
	end
end
function IU.getIncomeRate()
	local P = 0
	pcall(function()
		P = DU()
	end)
	if not IU.sessionStartCash then
		IU.sessionStartCash = P
		IU.lastCash = P
		IU.lastTime = os.clock()
		return 0
	end
	local j = os.clock() - IU.lastTime
	if j >= 1 then
		local Y = math.max(0, P - IU.lastCash)
		IU.cashPerSec = math.floor(Y / j)
		IU.lastCash = P
		IU.lastTime = os.clock()
	end
	return IU.cashPerSec
end
function IU.getStat(P)
	local j = nil
	pcall(function()
		if P == "speed" then
			local P = S and S:FindFirstChild("PlayerGui")
			if P then
				local Y = P:FindFirstChild("HUD")
				local X = Y and Y:FindFirstChild("BottomLeft", true)
				local M = X and X:FindFirstChild("Speed")
				local z = M and (M:FindFirstChild("Value") or M:FindFirstChildOfClass("TextLabel"))
				if z and (z:IsA("TextLabel") and z.Text ~= "") then
					j = (tostring(z.Text)):gsub("%s+", "")
				end
			end
		end
		if not j then
			local Y = S and S:FindFirstChild("leaderstats")
			if Y then
				if P == "moneys" then
					local P = Y:FindFirstChild("Money/s")
						or Y:FindFirstChild("Money/sec")
						or Y:FindFirstChild("Cash/s")
						or Y:FindFirstChild("Money")
					if P then
						j = P.Value
					end
				elseif P == "speed" then
					local P = Y:FindFirstChild("Speed") or Y:FindFirstChild("speed")
					if P then
						j = P.Value
					end
				end
			end
		end
		if not j then
			if P == "moneys" then
				j = S:GetAttribute("Money/s") or S:GetAttribute("MoneyPerSec") or S:GetAttribute("Income")
			elseif P == "speed" then
				j = S:GetAttribute("Speed")
			end
		end
	end)
	if j ~= nil then
		if type(j) == "number" then
			return IU.formatNumber(j)
		elseif type(j) == "string" and j ~= "" then
			return j
		end
	end
	if P == "moneys" then
		local P = IU.getIncomeRate()
		if P and P > 0 then
			return IU.formatNumber(P)
		end
		return "0"
	elseif P == "speed" then
		local P = 16
		pcall(function()
			local j = S.Character and S.Character:FindFirstChildOfClass("Humanoid")
			if j then
				P = math.floor(j.WalkSpeed)
			end
		end)
		return tostring(P)
	end
	return "0"
end
function IU.getPlayerHeadshot()
	if IU.cachedHeadshot then
		return IU.cachedHeadshot
	end
	local P = string.format(
		"https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420&format=png",
		S.UserId
	)
	pcall(function()
		local P = string.format(
			"https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=%d&size=420x420&format=Png&isCircular=false",
			S.UserId
		)
		local j = (syn and syn.request)
			or (http and http.request)
			or http_request
			or (Fluxus and Fluxus.request)
			or request
		if j then
			local Y = j({ Url = P, Method = "GET" })
			if Y and (Y.StatusCode == 200 or Y.status_code == 200) then
				local P = q:JSONDecode(Y.Body or Y.body)
				if P and (P.data and (P.data[1] and P.data[1].imageUrl)) then
					IU.cachedHeadshot = P.data[1].imageUrl
				end
			end
		elseif game.HttpGet then
			local j = game:HttpGet(P)
			local Y = q:JSONDecode(j)
			if Y and (Y.data and (Y.data[1] and Y.data[1].imageUrl)) then
				IU.cachedHeadshot = Y.data[1].imageUrl
			end
		end
	end)
	return IU.cachedHeadshot or P
end
function IU.sendHttpRequest(P, j)
	local Y = q:JSONEncode(j)
	local X = (syn and syn.request) or (http and http.request) or http_request or (Fluxus and Fluxus.request) or request
	if X then
		local j, M = pcall(function()
			return X({ Url = P, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = Y })
		end)
		if j and M then
			local P = M.StatusCode or M.status_code or 200
			if P >= 200 and P < 300 then
				return true, M
			else
				return false, "HTTP " .. (tostring(P) .. (": " .. tostring(M.Body or M.body or "")))
			end
		else
			return false, tostring(M)
		end
	end
	return false, "Executor does not support HTTP requests"
end
function IU.buildPayload(P)
	local j, Y = CU()
	local X = IU.getStat("moneys")
	local M = IU.getStat("speed")
	local z = math.floor(os.clock() - IU.scriptStartTime)
	local o = math.floor(z / 3600)
	local q = math.floor((z % 3600) / 60)
	local W = z % 60
	local O = string.format("%02dh %02dm %02ds", o, q, W)
	local V = "Active"
	pcall(function()
		if getCleanStatusText then
			V = getCleanStatusText("EN")
		elseif J.statusText then
			V = tostring(J.statusText)
		end
	end)
	local e = IU.getPlayerHeadshot()
	local v = {
		title = P and "\240\159\142\178 Dice Hub :: Webhook Connection Test"
			or "\240\159\142\178 Dice Hub :: Live Telemetry",
		color = P and 1096065 or 6514417,
		thumbnail = { url = e },
		author = { name = "Dice Hub Telemetry", icon_url = IU.logoUrl },
		fields = {
			{ name = "\240\159\145\164 Player", value = string.format("**%s** (@%s)", S.DisplayName, S.Name), inline = true },
			{ name = "\240\159\146\176 Current Cash", value = string.format("**%s**", j), inline = true },
			{ name = "\240\159\147\136 Money / Sec", value = string.format("**%s**", X), inline = true },
			{ name = "\226\154\161 Speed", value = string.format("**%s**", M), inline = true },
			{ name = "\226\143\177\239\184\143 Session Uptime", value = string.format("`%s`", O), inline = true },
			{ name = "\240\159\159\162 Farm Status", value = string.format("`%s`", V), inline = true },
		},
		footer = { text = "Dice Hub \226\128\162 Steal an Egg Live Monitor \226\128\162 2m Interval", icon_url = IU.logoUrl },
		timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
	}
	return { username = "Dice", avatar_url = IU.logoUrl, embeds = { v } }
end
function IU.send(P)
	if not J.webhookUrl or J.webhookUrl == "" or not J.webhookUrl:find("https://") then
		local P = TRANSLATIONS[currentLang] or TRANSLATIONS.EN
		safeNotify({
			Title = "Discord Webhook",
			Content = (P.Notifications and P.Notifications.WebhookUrlEmpty)
				or "Please enter a valid Webhook URL first!",
			Icon = "x-circle",
		})
		return false
	end
	local j = IU.buildPayload(P)
	local Y, X = IU.sendHttpRequest(J.webhookUrl, j)
	local M = TRANSLATIONS[currentLang] or TRANSLATIONS.EN
	if Y then
		if P then
			safeNotify({
				Title = "Discord Webhook",
				Content = (M.Notifications and M.Notifications.WebhookTestSent)
					or "Test Webhook sent! Check your Discord channel.",
				Icon = "check-circle",
			})
		end
		return true
	else
		V("[Dice Hub Webhook] Failed to send: " .. tostring(X))
		if P then
			safeNotify({
				Title = "Discord Webhook",
				Content = (M.Notifications and M.Notifications.WebhookTestFailed)
					or "Failed to send Webhook. Check URL or executor HTTP support.",
				Icon = "x-circle",
			})
		end
		return false
	end
end
function IU.getIntervalSeconds()
	return 120
end
function IU.startLoop()
	if IU.running then
		return
	end
	IU.running = true
	task.spawn(function()
		while J and (J.alive and J.webhookEnabled) do
			local P = 120
			local j = 0
			while j < P and (J and (J.alive and (J.webhookEnabled and IU.running))) do
				task.wait(5)
				j = j + 5
			end
			if not J.webhookEnabled or not J.alive or not IU.running then
				break
			end
			if J.webhookUrl and J.webhookUrl:find("https://") then
				pcall(function()
					IU.send(false)
				end)
			end
		end
		IU.running = false
	end)
end
function IU.stopLoop()
	IU.running = false
end
local hU = 0
Y.Heartbeat:Connect(function()
	local P = S.Character
	local j = P and P:FindFirstChild("HumanoidRootPart")
	if not j then
		return
	end
	local Y = j.Position
	if Y.Y < 45 then
		j.CFrame = CFrame.new(Y.X, 72, Y.Z)
		j.AssemblyLinearVelocity = Vector3.zero
		return
	end
	local X = os.clock()
	if X - hU < 0.1 then
		return
	end
	hU = X
	local M = P:FindFirstChildOfClass("Humanoid")
	if M and not (J and J.onTreadmill) then
		if M.PlatformStand then
			M.PlatformStand = false
			M:ChangeState(Enum.HumanoidStateType.Running)
		end
		if M.Sit and (J.pureTweenFarm or J.autoFarmLoop or J.isReturning or J.glidingToTarget) then
			M.Sit = false
			M:ChangeState(Enum.HumanoidStateType.Running)
		end
	end
	if (J.pureTweenFarm or J.autoFarmLoop) and not J.holdingEggForGuard then
		local j = false
		for P, Y in ipairs(P:GetChildren()) do
			if Y:IsA("Tool") then
				j = true
				break
			end
		end
		if j then
			qy()
		end
	end
	if
		J.pureTweenFarm
		or J.autoFarmLoop
		or J.teleporting
		or J.glidingToTarget
		or J.delivering
		or J.securingEgg
		or J.isReturning
	then
		return
	end
	if J.alive and (J.autoGlide and (Y.X > F and (Sy() and not Vy()))) then
		task.spawn(function()
			xy(J.glideSpeed)
			qy()
			J.isReturning = false
			J.delivering = false
		end)
	end
end)
local NU =
	"iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAedEVYdFNvZnR3YXJlAFBhaW50Lk5FVCB2My41LjEw/7R3GwAAA6BJREFUeN7tW01oE1EQnk0qih4sevCiF/Wg4kEPgqeCHsSDhyIeVIoHDx48KIKHIh48ePAgePBiPRQ8eBA8COJBD4L4B8WD4kHxov7cm2yT3WzeZjdps7t58CG72bebzPfevPlmdg3DMFwul8vlcv13qampWSKi82S2kxgiVpLZZ2T2G5lDZHaRmU9mDxEViOgqEZ1Np9N3V1ZWLlutFh1vNJvN5+12+4bf77+s/p5zIuKCiAgiGhcRLkRkCRkH+rYikYjlOE7G87w/wWBwLxKJbIeDk8mky3q31xG/37/FwR1Fq9V6Q0SX1N9tIuKNiKgiIo/bbrfb+zwez44qchRzHMcioh2Xy6Xb7fYDIsrqu5WIeBDRoohwJ2VlZaWRSCS2VNEdzZTL5ctEdF1V5Yj4QUQ8EXG73e51j8ejiojOa/V6/ZaI7tDfvUS0SUQJEXFeRNRUVVW5mZmZe/R7kZ2cTCZ1vV4/yXfO/4eQeC4iWqpQKJRkZWWl9XrdISJDRMKIyKqqqjIjI2Pj4uLiGef8lMvlYg4eE9E1VVVP9ff/c5z4n04Gg0F3PB7/TkR5dF6k4/F4v9frdc3NzbV1XW/R/2lEVBER91RVVV1TU8OHr1gsVpP198lkct5xnM/q73kiOq+O37G6uvrVdV2u1+vv6XkRkS8UCr3xeDybyuVydWVlZZlOp9v0/y/O+X41538j1b+/qKurW1bVjYg4b0xMTKyqPZ8gIs7pYx7e1/V6/bKa1xEi6k9OTnZVVVW/IqI7RLRJRHkikVhyHGdBVff9+/cf6LpOU1NTD/T3NBFxRkR00Xm1Xq/fV0U+JqK/RETJ7OzsM7vdzhw81nW9RURDRHSpWCze13Wd6/X6bVV0u6qq6mUkEtnSdV3S10z9vUtE3InpdPrB8vLybSLiTk5OTg1tQ7eP8+jo6Jqqwscikcj2wsLCGuf8FBFxJycnJ7sNDQ1rV1dXWzQ4JCKHqnK6XC5bVfS06rp+k6ry8ZWVFR4eHl4jIs4jIyN9hmF81HX9B1Xl9MTERD8RcfN4PDupVOq+67pP1H1bJpPpvb6+7hPRfVVVV0ZGRtiVlRWWSCReZ7PZX36//6Cvr48PDQ09y2azVzwez7Kqqk8556fdbvdnItpVVdUaGRmZoKqaoP6sUjKZ3B8YGGBd122qyu3j/Ojo6F1N034MDAyw6elpW1VVLhQKzH1HRkZ6m4qKiicikajlOI7ler3e9y6X643L5dqi/+NyuZ6rqvpOVdV/Kysr51wu17fW3w8AAAD//wMAe7/lQy8mR0AAAAAElFTkSuQmCC"
local function JU(P)
	if crypt and crypt.base64decode then
		return crypt.base64decode(P)
	end
	if base64_decode then
		return base64_decode(P)
	end
	if syn and (syn.crypt and (syn.crypt.base64 and syn.crypt.base64.decode)) then
		return syn.crypt.base64.decode(P)
	end
	local j = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	local Y = {}
	for P = 1, #j, 1 do
		Y[j:sub(P, P)] = P - 1
	end
	P = (P:gsub("[^" .. (j .. "=]"), "")):gsub("=", "")
	local X = {}
	for j = 1, #P, 4 do
		local M = Y[P:sub(j, j)] or 0
		local z = Y[P:sub(j + 1, j + 1)] or 0
		local o = Y[P:sub(j + 2, j + 2)]
		local q = Y[P:sub(j + 3, j + 3)]
		table.insert(X, string.char(bit32.bor(bit32.lshift(M, 2), bit32.rshift(z, 4))))
		if o then
			table.insert(X, string.char(bit32.bor(bit32.lshift(bit32.band(z, 15), 4), bit32.rshift(o, 2))))
			if q then
				table.insert(X, string.char(bit32.bor(bit32.lshift(bit32.band(o, 3), 6), q)))
			end
		end
	end
	return table.concat(X)
end
local mU = "Dice_Hub_Icon.png"
local HU = "rbxassetid://10734950309"
pcall(function()
	if writefile and (getcustomasset or getsynasset) then
		local P = getcustomasset or getsynasset
		if not (isfile and isfile(mU)) then
			writefile(mU, JU(NU))
		end
		HU = P(mU)
	end
end)
local bU = "EN"
local QU = {
	EN = {
		StatusTagReady = "Status: Ready",
		Tabs = { Farm = "Auto Farm", EggSelect = "Egg Selection", Character = "Character", Settings = "Settings" },
		EggSelect = {
			SecZones = "Target Zones",
			SecZonesDesc = "Select zones to steal regular eggs from (Secret+ bypasses this filter)",
			DropZonesTitle = "Selected Zones",
			DropZonesDesc = "Click to choose which zones to farm eggs from",
			SecRarities = "Target Rarities",
			SecRaritiesDesc = "Select egg rarities to target",
			DropRaritiesTitle = "Selected Rarities",
			DropRaritiesDesc = "Click to choose which rarities to collect",
			AlwaysSecretPlus = "Always Steal Secret+ Eggs",
			AlwaysSecretPlusDesc = "Collect Secret, Eternal, Divine eggs from any zone automatically",
		},
		Farm = {
			SecModes = "Auto Steal Modes",
			TweenTitle = "Auto Steal (Tween)",
			TweenDesc = "Smoothly fly to steal eggs continuously along the high-speed highway corridor",
			TeleportTitle = "Auto Steal (Teleport)",
			TeleportDesc = "Instantly warp to steal eggs in a rapid continuous loop",
			SingleTitle = "Single Steal (Teleport)",
			SingleDesc = "Teleport to steal 1 target egg and return to base",
			SecPlace = "Place & Hatch",
			PlaceTitle = "Place Eggs",
			PlaceDesc = "Fly home, place stashed eggs into open incubator stands and request hatch",
			AutoPlaceTitle = "Auto Place (Every 5)",
			AutoPlaceDesc = "Return home every 5 steals to deposit eggs",
			HatchTitle = "Auto Hatch",
			HatchDesc = "Continuously hatch ready eggs automatically from anywhere",
			ReturnTitle = "Auto Return",
			ReturnDesc = "Automatically fly back to safe area after stealing",
			AutoTreadmillTitle = "Auto Treadmill",
			AutoTreadmillDesc = "Run on base treadmill when no target eggs are spawned",
			UpgradeTreadmillTitle = "Auto Upgrade Treadmill",
			UpgradeTreadmillDesc = "Automatically upgrade base treadmill tier when you have enough cash",
			BuyTrailsTitle = "Auto Buy & Equip Trails",
			BuyTrailsDesc = "Automatically purchase and equip the best speed trail available",
			AutoEquipBestTitle = "Auto Equip Best Pet",
			AutoEquipBestDesc = "Automatically equips highest MPS pets after hatching and periodically",
			EquipBestTitle = "Equip Best Pet Now",
			EquipBestDesc = "Instantly equips best pets from your pen / inventory",
			HideNotEnoughMoneyTitle = "Hide 'Not Enough Money' UI",
			HideNotEnoughMoneyDesc = "Automatically suppress and hide the red 'Not enough money' game alert",
		},
		Character = {
			SecSafety = "Character & Safety",
			GodmodeTitle = "Godmode",
			GodmodeDesc = "Full immunity against map obstacles, traps, and hazards",
			UnstickTitle = "Get Unstuck",
			UnstickDesc = "Instantly break free from treadmills, seats, or map geometry",
			SecFlight = "Flight Settings",
			SpeedTitle = "Flight Speed",
			SpeedDesc = "Adjust cruise flight speed (studs/second)",
		},
		Settings = {
			SecDashboard = "Live Dashboard",
			DashTitle = "Live Dashboard",
			DashDesc = "Status: %s\nFarm Mode: %s\nCarried Eggs: %d\nFlight Speed: %d studs/s",
			SecBlacklist = "Zone Preferences",
			BlacklistToggleTitle = "Target Zone: %s",
			BlacklistToggleDesc = "Enable egg stealing in %s (Secret+ always collected)",
			SecUI = "UI Customization",
			TranspTitle = "Window Transparency",
			TranspDesc = "Adjust background transparency of the UI window (0% - 90%)",
			ThemeTitle = "Select Theme",
			SecPerformance = "Performance & Graphics",
			PerformanceTitle = "Ultra Potato Mode (Maximum FPS Boost)",
			PerformanceDesc = "Disables textures, meshes, lights, shadows, effects and particles for maximum FPS",
			Disable3DTitle = "Disable 3D Rendering (GPU Saver 95%)",
			Disable3DDesc = "Freezes 3D viewport rendering to drop GPU usage to ~1%. Perfect for overnight farming!",
			LangTitle = "Language",
			BtnTranslate = "Switch to Thai",
			DescTranslate = "Switch interface language to Thai",
			SecSystem = "System Controls",
			AntiAFKTitle = "Anti-AFK (Zero-Command Engine)",
			AntiAFKDesc = "Disables client Idled disconnect without sending any synthetic keystrokes or commands (100% BAC-safe)",
			ResetTitle = "Reset Character State",
			ResetDesc = "Clear internal states and unlock character movement",
			RejoinTitle = "Rejoin Server",
			RejoinDesc = "Reconnect to the same server automatically",
			UnloadTitle = "Unload Script",
			UnloadDesc = "Completely terminate all loops and close the interface",
			SecWebhook = "Discord Webhook Telemetry",
			WebhookUrlTitle = "Discord Webhook URL",
			WebhookUrlDesc = "Paste your Discord Channel Webhook URL here",
			WebhookUrlPlaceholder = "https://discord.com/api/webhooks/...",
			WebhookTogTitle = "Enable Webhook (Every 2 Mins)",
			WebhookTogDesc = "Periodically send live stats (Cash, Speed, Money/s) every 2 minutes",
			WebhookIntervalTitle = "Report Interval",
			WebhookIntervalDesc = "Choose how often progress reports are posted",
			WebhookTestTitle = "Send Test Webhook",
			WebhookTestDesc = "Test connection with custom 'Dice' branding",
		},
		Notifications = {
			PlaceStarted = "Flying back to base to place eggs...",
			PlaceDone = "Eggs placed on stands and hatch requested!",
			AutoPlaceStarted = "Auto Place (Every 5) enabled",
			AutoPlaceStopped = "Auto Place (Every 5) disabled",
			NoEggFound = "No eligible eggs found matching your filter",
			UnstickDone = "Unstick request sent successfully!",
			TweenStarted = "Auto Steal (Tween) activated",
			TweenStopped = "Auto Steal (Tween) deactivated",
			TeleportStarted = "Auto Steal (Teleport) activated",
			TeleportStopped = "Auto Steal (Teleport) deactivated",
			HatchStarted = "Auto Hatch enabled",
			HatchStopped = "Auto Hatch disabled",
			ReturnStarted = "Auto Return enabled",
			ReturnStopped = "Auto Return disabled",
			AutoEquipBestStarted = "Auto Equip Best Pet enabled",
			AutoEquipBestStopped = "Auto Equip Best Pet disabled",
			EquipBestSuccess = "Equipped best pets successfully!",
			AutoTreadmillStarted = "Auto Treadmill enabled (Runs when idle)",
			AutoTreadmillStopped = "Auto Treadmill disabled",
			UpgradeTreadmillStarted = "Auto Upgrade Treadmill enabled",
			UpgradeTreadmillStopped = "Auto Upgrade Treadmill disabled",
			BuyTrailsStarted = "Auto Buy Trails enabled",
			BuyTrailsStopped = "Auto Buy Trails disabled",
			HideNotEnoughMoneyStarted = "Hide 'Not Enough Money' alert enabled",
			HideNotEnoughMoneyStopped = "Hide 'Not Enough Money' alert disabled",
			GodmodeStarted = "Godmode enabled",
			GodmodeStopped = "Godmode disabled",
			PerformanceStarted = "Ultra Potato Mode enabled (Textures & effects removed)",
			PerformanceStopped = "Ultra Potato Mode disabled",
			Disable3DStarted = "3D Rendering disabled (GPU Saver Active)",
			Disable3DStopped = "3D Rendering restored",
			AntiAFKStarted = "Anti-AFK enabled (Double-Esc 10m & Mobile support)",
			AntiAFKStopped = "Anti-AFK disabled",
			WebhookStarted = "Discord Webhook telemetry enabled",
			WebhookStopped = "Discord Webhook telemetry disabled",
			WebhookTestSent = "Test Webhook sent! Check your Discord channel.",
			WebhookTestFailed = "Failed to send Webhook. Check URL or executor HTTP support.",
			WebhookUrlEmpty = "Please enter a valid Webhook URL first!",
			LangSwitched = "Language switched to English successfully!",
		},
	},
	TH = {
		StatusTagReady = "\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176: \224\184\158\224\184\163\224\185\137\224\184\173\224\184\161\224\184\151\224\184\179\224\184\135\224\184\178\224\184\153",
		Tabs = {
			Farm = "\224\184\163\224\184\176\224\184\154\224\184\154\224\184\159\224\184\178\224\184\163\224\185\140\224\184\161",
			EggSelect = "\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\184\155\224\184\163\224\184\176\224\185\128\224\184\160\224\184\151\224\185\132\224\184\130\224\185\136",
			Character = "\224\184\149\224\184\177\224\184\167\224\184\165\224\184\176\224\184\132\224\184\163",
			Settings = "\224\184\149\224\184\177\224\185\137\224\184\135\224\184\132\224\185\136\224\184\178",
		},
		EggSelect = {
			SecZones = "\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\185\130\224\184\139\224\184\153\224\185\128\224\184\155\224\185\137\224\184\178\224\184\171\224\184\161\224\184\178\224\184\162",
			SecZonesDesc = "\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\185\130\224\184\139\224\184\153\224\184\151\224\184\181\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163\224\185\132\224\184\155\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136 (\224\185\132\224\184\130\224\185\136\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154 Secret \224\184\130\224\184\182\224\185\137\224\184\153\224\185\132\224\184\155\224\184\136\224\184\176\224\185\132\224\184\161\224\185\136\224\184\170\224\184\153\224\185\130\224\184\139\224\184\153)",
			DropZonesTitle = "\224\185\130\224\184\139\224\184\153\224\185\128\224\184\155\224\185\137\224\184\178\224\184\171\224\184\161\224\184\178\224\184\162\224\184\151\224\184\181\224\185\136\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129",
			DropZonesDesc = "\224\184\132\224\184\165\224\184\180\224\184\129\224\185\128\224\184\158\224\184\183\224\185\136\224\184\173\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\185\130\224\184\139\224\184\153\224\184\151\224\184\181\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136",
			SecRarities = "\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154\224\184\132\224\184\167\224\184\178\224\184\161\224\184\171\224\184\178\224\184\162\224\184\178\224\184\129",
			SecRaritiesDesc = "\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154\224\184\132\224\184\167\224\184\178\224\184\161\224\184\171\224\184\178\224\184\162\224\184\178\224\184\129\224\184\130\224\184\173\224\184\135\224\185\132\224\184\130\224\185\136\224\184\151\224\184\181\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163\224\184\130\224\185\130\224\184\161\224\184\162",
			DropRaritiesTitle = "\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154\224\184\132\224\184\167\224\184\178\224\184\161\224\184\171\224\184\178\224\184\162\224\184\178\224\184\129\224\184\151\224\184\181\224\185\136\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129",
			DropRaritiesDesc = "\224\184\132\224\184\165\224\184\180\224\184\129\224\185\128\224\184\158\224\184\183\224\185\136\224\184\173\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154\224\184\132\224\184\167\224\184\178\224\184\161\224\184\171\224\184\178\224\184\162\224\184\178\224\184\129\224\184\151\224\184\181\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163\224\184\130\224\185\130\224\184\161\224\184\162",
			AlwaysSecretPlus = "\224\185\128\224\184\129\224\185\135\224\184\154\224\185\132\224\184\130\224\185\136 Secret+ \224\184\151\224\184\184\224\184\129\224\185\130\224\184\139\224\184\153\224\185\128\224\184\170\224\184\161\224\184\173",
			AlwaysSecretPlusDesc = "\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154 Secret, Eternal, Divine \224\184\151\224\184\177\224\184\153\224\184\151\224\184\181\224\185\132\224\184\161\224\185\136\224\184\167\224\185\136\224\184\178\224\184\136\224\184\176\224\185\128\224\184\129\224\184\180\224\184\148\224\184\151\224\184\181\224\185\136\224\185\130\224\184\139\224\184\153\224\185\131\224\184\148",
		},
		Farm = {
			SecModes = "\224\185\130\224\184\171\224\184\161\224\184\148\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			TweenTitle = "\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\154\224\184\180\224\184\153\224\185\128\224\184\163\224\185\135\224\184\167)",
			TweenDesc = "\224\184\154\224\184\180\224\184\153\224\185\132\224\184\155\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\185\129\224\184\165\224\184\176\224\185\128\224\184\129\224\185\135\224\184\154\224\185\131\224\184\170\224\185\136\224\184\129\224\184\163\224\184\176\224\185\128\224\184\155\224\185\139\224\184\178\224\184\173\224\184\162\224\185\136\224\184\178\224\184\135\224\184\149\224\185\136\224\184\173\224\185\128\224\184\153\224\184\183\224\185\136\224\184\173\224\184\135\224\184\149\224\184\178\224\184\161\224\184\151\224\184\178\224\184\135\224\184\148\224\185\136\224\184\167\224\184\153\224\184\132\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\184\170\224\184\185\224\184\135",
			TeleportTitle = "\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155)",
			TeleportDesc = "\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155\224\185\132\224\184\155\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\162\224\185\136\224\184\178\224\184\135\224\184\163\224\184\167\224\184\148\224\185\128\224\184\163\224\185\135\224\184\167\224\185\129\224\184\165\224\184\176\224\184\149\224\185\136\224\184\173\224\185\128\224\184\153\224\184\183\224\185\136\224\184\173\224\184\135",
			SingleTitle = "\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\185\131\224\184\154\224\185\128\224\184\148\224\184\181\224\184\162\224\184\167",
			SingleDesc = "\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155\224\185\132\224\184\155\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\185\128\224\184\155\224\185\137\224\184\178\224\184\171\224\184\161\224\184\178\224\184\162 1 \224\185\131\224\184\154\224\185\129\224\184\165\224\185\137\224\184\167\224\184\129\224\184\165\224\184\177\224\184\154\224\184\161\224\184\178\224\184\151\224\184\181\224\185\136\224\184\144\224\184\178\224\184\153\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181",
			SecPlace = "\224\184\153\224\184\179\224\184\170\224\185\136\224\184\135\224\185\129\224\184\165\224\184\176\224\184\159\224\184\177\224\184\129\224\185\132\224\184\130\224\185\136",
			PlaceTitle = "\224\184\167\224\184\178\224\184\135\224\185\132\224\184\130\224\185\136\224\185\131\224\184\153\224\184\163\224\184\177\224\184\135",
			PlaceDesc = "\224\184\154\224\184\180\224\184\153\224\184\129\224\184\165\224\184\177\224\184\154\224\184\154\224\185\137\224\184\178\224\184\153\224\185\129\224\184\165\224\184\176\224\184\153\224\184\179\224\185\132\224\184\130\224\185\136\224\185\131\224\184\153\224\184\149\224\184\177\224\184\167\224\185\132\224\184\155\224\184\167\224\184\178\224\184\135\224\184\154\224\184\153\224\185\129\224\184\151\224\185\136\224\184\153\224\184\159\224\184\177\224\184\129\224\184\151\224\184\181\224\185\136\224\184\167\224\185\136\224\184\178\224\184\135\224\185\129\224\184\165\224\185\137\224\184\167\224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\184\159\224\184\177\224\184\129\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181",
			AutoPlaceTitle = "\224\184\167\224\184\178\224\184\135\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\151\224\184\184\224\184\129 5 \224\184\159\224\184\173\224\184\135)",
			AutoPlaceDesc = "\224\184\129\224\184\165\224\184\177\224\184\154\224\184\154\224\185\137\224\184\178\224\184\153\224\184\151\224\184\184\224\184\129\224\184\132\224\184\163\224\184\177\224\185\137\224\184\135\224\184\151\224\184\181\224\185\136\224\184\130\224\185\130\224\184\161\224\184\162\224\184\132\224\184\163\224\184\154 5 \224\184\159\224\184\173\224\184\135\224\185\128\224\184\158\224\184\183\224\185\136\224\184\173\224\184\153\224\184\179\224\185\132\224\184\130\224\185\136\224\185\132\224\184\155\224\184\167\224\184\178\224\184\135",
			HatchTitle = "\224\184\159\224\184\177\224\184\129\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			HatchDesc = "\224\184\170\224\184\177\224\185\136\224\184\135\224\184\159\224\184\177\224\184\129\224\185\132\224\184\130\224\185\136\224\184\151\224\184\181\224\185\136\224\184\158\224\184\163\224\185\137\224\184\173\224\184\161\224\184\159\224\184\177\224\184\129\224\184\173\224\184\162\224\185\136\224\184\178\224\184\135\224\184\149\224\185\136\224\184\173\224\185\128\224\184\153\224\184\183\224\185\136\224\184\173\224\184\135\224\184\136\224\184\178\224\184\129\224\184\151\224\184\184\224\184\129\224\184\151\224\184\181\224\185\136",
			ReturnTitle = "\224\184\154\224\184\180\224\184\153\224\184\129\224\184\165\224\184\177\224\184\154\224\184\158\224\184\183\224\185\137\224\184\153\224\184\151\224\184\181\224\185\136\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162",
			ReturnDesc = "\224\184\154\224\184\180\224\184\153\224\184\129\224\184\165\224\184\177\224\184\154\224\185\128\224\184\130\224\185\137\224\184\178\224\184\158\224\184\183\224\185\137\224\184\153\224\184\151\224\184\181\224\185\136\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180\224\184\171\224\184\165\224\184\177\224\184\135\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\185\128\224\184\170\224\184\163\224\185\135\224\184\136",
			AutoTreadmillTitle = "\224\184\167\224\184\180\224\185\136\224\184\135\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			AutoTreadmillDesc = "\224\185\132\224\184\155\224\184\167\224\184\180\224\185\136\224\184\135\224\184\154\224\184\153\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\151\224\184\181\224\185\136\224\184\154\224\185\137\224\184\178\224\184\153\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180\224\185\128\224\184\161\224\184\183\224\185\136\224\184\173\224\185\132\224\184\161\224\185\136\224\184\161\224\184\181\224\185\132\224\184\130\224\185\136\224\184\149\224\184\178\224\184\161\224\184\151\224\184\181\224\185\136\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\185\128\224\184\129\224\184\180\224\184\148",
			UpgradeTreadmillTitle = "\224\184\173\224\184\177\224\184\155\224\185\128\224\184\129\224\184\163\224\184\148\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			UpgradeTreadmillDesc = "\224\184\173\224\184\177\224\184\155\224\185\128\224\184\129\224\184\163\224\184\148\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\151\224\184\181\224\185\136\224\184\154\224\185\137\224\184\178\224\184\153\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181\224\184\151\224\184\181\224\185\136\224\184\161\224\184\181\224\185\128\224\184\135\224\184\180\224\184\153\224\184\158\224\184\173",
			BuyTrailsTitle = "\224\184\139\224\184\183\224\185\137\224\184\173\224\185\129\224\184\165\224\184\176\224\185\131\224\184\170\224\185\136 Trail \224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			BuyTrailsDesc = "\224\184\139\224\184\183\224\185\137\224\184\173\224\185\128\224\184\170\224\185\137\224\184\153\224\184\151\224\184\178\224\184\135\224\185\128\224\184\158\224\184\180\224\185\136\224\184\161\224\184\132\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\185\129\224\184\165\224\184\176\224\184\170\224\184\167\224\184\161\224\185\131\224\184\170\224\185\136\224\184\173\224\184\177\224\184\153\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180\224\185\128\224\184\161\224\184\183\224\185\136\224\184\173\224\185\128\224\184\135\224\184\180\224\184\153\224\184\158\224\184\173",
			AutoEquipBestTitle = "\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			AutoEquipBestDesc = "\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\156\224\184\165\224\184\180\224\184\149\224\185\128\224\184\135\224\184\180\224\184\153/\224\184\167\224\184\180 \224\185\132\224\184\148\224\185\137\224\184\170\224\184\185\224\184\135\224\184\170\224\184\184\224\184\148\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180\224\184\171\224\184\165\224\184\177\224\184\135\224\184\159\224\184\177\224\184\129\224\185\132\224\184\130\224\185\136\224\185\129\224\184\165\224\184\176\224\184\149\224\184\165\224\184\173\224\184\148\224\185\128\224\184\167\224\184\165\224\184\178",
			EquipBestTitle = "\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181",
			EquipBestDesc = "\224\184\129\224\184\148\224\184\170\224\184\167\224\184\161\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\184\136\224\184\178\224\184\129\224\184\132\224\184\173\224\184\129/\224\184\129\224\184\163\224\184\176\224\185\128\224\184\155\224\185\139\224\184\178\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181\224\185\131\224\184\153 1 \224\184\132\224\184\165\224\184\180\224\184\129",
			HideNotEnoughMoneyTitle = "\224\184\139\224\185\136\224\184\173\224\184\153\224\185\129\224\184\136\224\185\137\224\184\135\224\185\128\224\184\149\224\184\183\224\184\173\224\184\153\224\185\128\224\184\135\224\184\180\224\184\153\224\185\132\224\184\161\224\185\136\224\184\158\224\184\173",
			HideNotEnoughMoneyDesc = "\224\184\154\224\184\165\224\185\135\224\184\173\224\184\129\224\185\129\224\184\165\224\184\176\224\184\139\224\185\136\224\184\173\224\184\153\224\184\130\224\185\137\224\184\173\224\184\132\224\184\167\224\184\178\224\184\161\224\184\170\224\184\181\224\185\129\224\184\148\224\184\135 'Not enough money' \224\184\136\224\184\178\224\184\129\224\184\149\224\184\177\224\184\167\224\185\128\224\184\129\224\184\161\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
		},
		Character = {
			SecSafety = "\224\184\132\224\184\167\224\184\178\224\184\161\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162\224\185\129\224\184\165\224\184\176\224\184\149\224\184\177\224\184\167\224\184\165\224\184\176\224\184\132\224\184\163",
			GodmodeTitle = "\224\185\130\224\184\171\224\184\161\224\184\148\224\184\173\224\184\161\224\184\149\224\184\176",
			GodmodeDesc = "\224\184\155\224\185\137\224\184\173\224\184\135\224\184\129\224\184\177\224\184\153\224\184\148\224\184\178\224\185\128\224\184\161\224\184\136\224\184\136\224\184\178\224\184\129\224\184\170\224\184\180\224\185\136\224\184\135\224\184\129\224\184\181\224\184\148\224\184\130\224\184\167\224\184\178\224\184\135\224\185\129\224\184\165\224\184\176\224\184\129\224\184\177\224\184\154\224\184\148\224\184\177\224\184\129 100%",
			UnstickTitle = "\224\185\129\224\184\129\224\185\137\224\184\149\224\184\177\224\184\167\224\184\149\224\184\180\224\184\148 / \224\184\165\224\184\135\224\184\136\224\184\178\224\184\129\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135",
			UnstickDesc = "\224\184\171\224\184\165\224\184\184\224\184\148\224\184\173\224\184\173\224\184\129\224\184\136\224\184\178\224\184\129\224\184\170\224\184\180\224\185\136\224\184\135\224\184\129\224\184\181\224\184\148\224\184\130\224\184\167\224\184\178\224\184\135\224\184\171\224\184\163\224\184\183\224\184\173\224\184\173\224\184\184\224\184\155\224\184\129\224\184\163\224\184\147\224\185\140\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181",
			SecFlight = "\224\184\129\224\184\178\224\184\163\224\184\149\224\184\177\224\185\137\224\184\135\224\184\132\224\185\136\224\184\178\224\184\129\224\184\178\224\184\163\224\184\154\224\184\180\224\184\153",
			SpeedTitle = "\224\184\132\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\184\129\224\184\178\224\184\163\224\184\154\224\184\180\224\184\153",
			SpeedDesc = "\224\184\155\224\184\163\224\184\177\224\184\154\224\184\132\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\185\131\224\184\153\224\184\129\224\184\178\224\184\163\224\184\154\224\184\180\224\184\153 (Studs/\224\184\167\224\184\180\224\184\153\224\184\178\224\184\151\224\184\181)",
		},
		Settings = {
			SecDashboard = "\224\185\129\224\184\148\224\184\138\224\184\154\224\184\173\224\184\163\224\185\140\224\184\148\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176\224\184\170\224\184\148",
			DashTitle = "\224\185\129\224\184\148\224\184\138\224\184\154\224\184\173\224\184\163\224\185\140\224\184\148\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176\224\184\170\224\184\148",
			DashDesc = "\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176: %s\n\224\185\130\224\184\171\224\184\161\224\184\148\224\184\159\224\184\178\224\184\163\224\185\140\224\184\161: %s\n\224\184\136\224\184\179\224\184\153\224\184\167\224\184\153\224\185\132\224\184\130\224\185\136\224\185\131\224\184\153\224\184\149\224\184\177\224\184\167: %d \224\184\159\224\184\173\224\184\135\n\224\184\132\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\184\129\224\184\178\224\184\163\224\184\154\224\184\180\224\184\153: %d Studs/\224\184\167\224\184\180",
			SecBlacklist = "\224\184\149\224\184\177\224\184\167\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\185\130\224\184\139\224\184\153\224\184\151\224\184\181\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163",
			BlacklistToggleTitle = "\224\184\130\224\185\130\224\184\161\224\184\162\224\185\131\224\184\153\224\185\130\224\184\139\224\184\153: %s",
			BlacklistToggleDesc = "\224\185\128\224\184\155\224\184\180\224\184\148/\224\184\155\224\184\180\224\184\148 \224\184\129\224\184\178\224\184\163\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\151\224\184\177\224\185\136\224\184\167\224\185\132\224\184\155\224\185\131\224\184\153\224\185\130\224\184\139\224\184\153 %s (\224\184\163\224\184\176\224\184\148\224\184\177\224\184\154 Secret+ \224\184\136\224\184\176\224\185\128\224\184\129\224\185\135\224\184\154\224\185\128\224\184\170\224\184\161\224\184\173)",
			SecUI = "\224\184\155\224\184\163\224\184\177\224\184\154\224\185\129\224\184\149\224\185\136\224\184\135\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135",
			TranspTitle = "\224\184\132\224\184\167\224\184\178\224\184\161\224\185\130\224\184\155\224\184\163\224\185\136\224\184\135\224\185\131\224\184\170\224\184\130\224\184\173\224\184\135\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135",
			TranspDesc = "\224\184\155\224\184\163\224\184\177\224\184\154\224\184\132\224\184\167\224\184\178\224\184\161\224\185\130\224\184\155\224\184\163\224\185\136\224\184\135\224\185\129\224\184\170\224\184\135\224\184\130\224\184\173\224\184\135\224\184\158\224\184\183\224\185\137\224\184\153\224\184\171\224\184\165\224\184\177\224\184\135\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135 (0% - 90%)",
			ThemeTitle = "\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\184\152\224\184\181\224\184\161\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135",
			SecPerformance = "\224\184\155\224\184\163\224\184\176\224\184\170\224\184\180\224\184\151\224\184\152\224\184\180\224\184\160\224\184\178\224\184\158\224\185\129\224\184\165\224\184\176\224\184\129\224\184\163\224\184\178\224\184\159\224\184\180\224\184\129",
			PerformanceTitle = "\224\185\130\224\184\171\224\184\161\224\184\148\224\184\160\224\184\178\224\184\158\224\184\129\224\184\178\224\184\129\224\184\130\224\184\177\224\185\137\224\184\153\224\184\170\224\184\184\224\184\148 (Ultra Potato Mode)",
			PerformanceDesc = "\224\184\165\224\184\148\224\184\129\224\184\163\224\184\178\224\184\159\224\184\180\224\184\129 \224\184\165\224\184\154 Texture \224\184\130\224\184\173\224\184\135\224\185\130\224\184\161\224\185\128\224\184\148\224\184\165 \224\184\155\224\184\180\224\184\148\224\185\128\224\184\135\224\184\178 \224\184\155\224\184\180\224\184\148\224\185\129\224\184\170\224\184\135\224\185\132\224\184\159 \224\185\129\224\184\165\224\184\176\224\184\155\224\184\180\224\184\148\224\185\128\224\184\173\224\184\159\224\185\128\224\184\159\224\184\129\224\184\149\224\185\140\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148\224\185\128\224\184\158\224\184\183\224\185\136\224\184\173\224\184\132\224\184\167\224\184\178\224\184\161\224\184\165\224\184\183\224\185\136\224\184\153\224\184\130\224\184\177\224\185\137\224\184\153\224\184\170\224\184\184\224\184\148",
			Disable3DTitle = "\224\184\155\224\184\180\224\184\148\224\185\128\224\184\163\224\184\153\224\185\128\224\184\148\224\184\173\224\184\163\224\185\140 3D / \224\184\136\224\184\173\224\184\148\224\184\179 (\224\184\155\224\184\163\224\184\176\224\184\171\224\184\162\224\184\177\224\184\148 GPU 95%)",
			Disable3DDesc = "\224\184\171\224\184\162\224\184\184\224\184\148\224\184\155\224\184\163\224\184\176\224\184\161\224\184\167\224\184\165\224\184\156\224\184\165\224\184\160\224\184\178\224\184\158 3D \224\184\165\224\184\148\224\184\160\224\184\178\224\184\163\224\184\176\224\184\129\224\184\178\224\184\163\224\185\140\224\184\148\224\184\136\224\184\173\224\185\128\224\184\171\224\184\165\224\184\183\224\184\173 1% \224\185\128\224\184\171\224\184\161\224\184\178\224\184\176\224\184\170\224\184\179\224\184\171\224\184\163\224\184\177\224\184\154\224\185\128\224\184\155\224\184\180\224\184\148\224\184\159\224\184\178\224\184\163\224\185\140\224\184\161\224\184\151\224\184\180\224\185\137\224\184\135\224\185\132\224\184\167\224\185\137\224\184\130\224\185\137\224\184\178\224\184\161\224\184\132\224\184\183\224\184\153 (\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135 UI \224\184\162\224\184\177\224\184\135\224\184\151\224\184\179\224\184\135\224\184\178\224\184\153\224\184\155\224\184\129\224\184\149\224\184\180)",
			LangTitle = "\224\184\160\224\184\178\224\184\169\224\184\178",
			BtnTranslate = "\224\185\128\224\184\155\224\184\165\224\184\181\224\185\136\224\184\162\224\184\153\224\185\128\224\184\155\224\185\135\224\184\153\224\184\160\224\184\178\224\184\169\224\184\178\224\184\173\224\184\177\224\184\135\224\184\129\224\184\164\224\184\169",
			DescTranslate = "\224\185\128\224\184\155\224\184\165\224\184\181\224\185\136\224\184\162\224\184\153\224\184\160\224\184\178\224\184\169\224\184\178\224\184\130\224\184\173\224\184\135\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148\224\185\128\224\184\155\224\185\135\224\184\153\224\184\160\224\184\178\224\184\169\224\184\178\224\184\173\224\184\177\224\184\135\224\184\129\224\184\164\224\184\169",
			SecSystem = "\224\184\136\224\184\177\224\184\148\224\184\129\224\184\178\224\184\163\224\184\163\224\184\176\224\184\154\224\184\154",
			AntiAFKTitle = "\224\184\155\224\185\137\224\184\173\224\184\135\224\184\129\224\184\177\224\184\153 AFK \224\185\128\224\184\149\224\184\176 (\224\184\129\224\184\148 Esc 2 \224\184\151\224\184\181 / \224\184\163\224\184\173\224\184\135\224\184\163\224\184\177\224\184\154\224\184\161\224\184\183\224\184\173\224\184\150\224\184\183\224\184\173)",
			AntiAFKDesc = "\224\184\129\224\184\148 Esc \224\185\128\224\184\155\224\184\180\224\184\148-\224\184\155\224\184\180\224\184\148\224\185\128\224\184\161\224\184\153\224\184\185\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180\224\184\151\224\184\184\224\184\129 10 \224\184\153\224\184\178\224\184\151\224\184\181 + \224\184\170\224\184\177\224\184\141\224\184\141\224\184\178\224\184\147 Touch \224\184\161\224\184\183\224\184\173\224\184\150\224\184\183\224\184\173 \224\184\163\224\184\181\224\185\128\224\184\139\224\185\135\224\184\149\224\184\149\224\184\177\224\184\167\224\184\153\224\184\177\224\184\154 20 \224\184\153\224\184\178\224\184\151\224\184\181 \224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162\224\185\132\224\184\161\224\185\136\224\185\129\224\184\149\224\184\176\224\185\128\224\184\129\224\184\161",
			ResetTitle = "\224\184\163\224\184\181\224\185\128\224\184\139\224\185\135\224\184\149\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176\224\184\149\224\184\177\224\184\167\224\184\165\224\184\176\224\184\132\224\184\163",
			ResetDesc = "\224\184\165\224\185\137\224\184\178\224\184\135\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176\224\184\160\224\184\178\224\184\162\224\185\131\224\184\153\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148\224\185\129\224\184\165\224\184\176\224\184\155\224\184\165\224\184\148\224\184\165\224\185\135\224\184\173\224\184\129\224\184\129\224\184\178\224\184\163\224\185\128\224\184\132\224\184\165\224\184\183\224\185\136\224\184\173\224\184\153\224\184\151\224\184\181\224\185\136\224\184\151\224\184\177\224\184\153\224\184\151\224\184\181",
			RejoinTitle = "\224\185\128\224\184\130\224\185\137\224\184\178\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140\224\185\131\224\184\171\224\184\161\224\185\136",
			RejoinDesc = "\224\185\128\224\184\138\224\184\183\224\185\136\224\184\173\224\184\161\224\184\149\224\185\136\224\184\173\224\184\129\224\184\165\224\184\177\224\184\154\224\185\128\224\184\130\224\185\137\224\184\178\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140\224\185\128\224\184\148\224\184\180\224\184\161\224\185\131\224\184\171\224\184\161\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			UnloadTitle = "\224\184\155\224\184\180\224\184\148\224\184\170\224\184\132\224\184\163\224\184\180\224\184\155\224\184\149\224\185\140\224\184\170\224\184\161\224\184\154\224\184\185\224\184\163\224\184\147\224\185\140",
			UnloadDesc = "\224\184\171\224\184\162\224\184\184\224\184\148\224\184\129\224\184\178\224\184\163\224\184\151\224\184\179\224\184\135\224\184\178\224\184\153\224\184\130\224\184\173\224\184\135\224\184\165\224\184\185\224\184\155\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148\224\185\129\224\184\165\224\184\176\224\184\155\224\184\180\224\184\148\224\184\171\224\184\153\224\185\137\224\184\178\224\184\149\224\185\136\224\184\178\224\184\135\224\184\173\224\184\162\224\185\136\224\184\178\224\184\135\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162",
			SecWebhook = "\224\184\163\224\184\176\224\184\154\224\184\154\224\185\129\224\184\136\224\185\137\224\184\135\224\185\128\224\184\149\224\184\183\224\184\173\224\184\153 Discord Webhook",
			WebhookUrlTitle = "\224\184\165\224\184\180\224\184\135\224\184\129\224\185\140 Discord Webhook URL",
			WebhookUrlDesc = "\224\184\167\224\184\178\224\184\135 URL \224\184\130\224\184\173\224\184\135 Webhook \224\184\171\224\185\137\224\184\173\224\184\135 Discord \224\184\151\224\184\181\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163\224\185\131\224\184\171\224\185\137\224\185\129\224\184\136\224\185\137\224\184\135\224\185\128\224\184\149\224\184\183\224\184\173\224\184\153",
			WebhookUrlPlaceholder = "https://discord.com/api/webhooks/...",
			WebhookTogTitle = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153\224\185\129\224\184\136\224\185\137\224\184\135\224\185\128\224\184\149\224\184\183\224\184\173\224\184\153 Webhook (\224\184\151\224\184\184\224\184\129 2 \224\184\153\224\184\178\224\184\151\224\184\181)",
			WebhookTogDesc = "\224\184\170\224\185\136\224\184\135\224\184\163\224\184\178\224\184\162\224\184\135\224\184\178\224\184\153\224\184\170\224\184\148 (\224\185\128\224\184\135\224\184\180\224\184\153, \224\184\132\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167, \224\185\128\224\184\135\224\184\180\224\184\153\224\184\149\224\185\136\224\184\173\224\184\167\224\184\180\224\184\153\224\184\178\224\184\151\224\184\181) \224\185\132\224\184\155\224\184\151\224\184\181\224\185\136 Discord \224\184\151\224\184\184\224\184\129 2 \224\184\153\224\184\178\224\184\151\224\184\181",
			WebhookIntervalTitle = "\224\184\163\224\184\176\224\184\162\224\184\176\224\185\128\224\184\167\224\184\165\224\184\178\224\184\170\224\185\136\224\184\135\224\184\163\224\184\178\224\184\162\224\184\135\224\184\178\224\184\153",
			WebhookIntervalDesc = "\224\185\128\224\184\165\224\184\183\224\184\173\224\184\129\224\184\163\224\184\173\224\184\154\224\185\128\224\184\167\224\184\165\224\184\178\224\184\151\224\184\181\224\185\136\224\184\149\224\185\137\224\184\173\224\184\135\224\184\129\224\184\178\224\184\163\224\185\131\224\184\171\224\185\137\224\184\170\224\185\136\224\184\135\224\184\163\224\184\178\224\184\162\224\184\135\224\184\178\224\184\153\224\184\132\224\184\167\224\184\178\224\184\161\224\184\132\224\184\183\224\184\154\224\184\171\224\184\153\224\185\137\224\184\178",
			WebhookTestTitle = "\224\184\151\224\184\148\224\184\170\224\184\173\224\184\154\224\184\170\224\185\136\224\184\135 Webhook \224\184\151\224\184\177\224\184\153\224\184\151\224\184\181",
			WebhookTestDesc = "\224\184\170\224\185\136\224\184\135\224\184\130\224\185\137\224\184\173\224\184\132\224\184\167\224\184\178\224\184\161\224\184\151\224\184\148\224\184\170\224\184\173\224\184\154\224\185\128\224\184\158\224\184\183\224\185\136\224\184\173\224\185\128\224\184\138\224\185\135\224\184\132\224\184\129\224\184\178\224\184\163\224\185\128\224\184\138\224\184\183\224\185\136\224\184\173\224\184\161\224\184\149\224\185\136\224\184\173 (\224\185\129\224\184\170\224\184\148\224\184\135\224\184\138\224\184\183\224\185\136\224\184\173 Dice \224\185\129\224\184\165\224\184\176\224\184\163\224\184\185\224\184\155\224\185\130\224\184\165\224\185\130\224\184\129\224\185\137)",
		},
		Notifications = {
			PlaceStarted = "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\154\224\184\180\224\184\153\224\184\129\224\184\165\224\184\177\224\184\154\224\184\154\224\185\137\224\184\178\224\184\153\224\185\128\224\184\158\224\184\183\224\185\136\224\184\173\224\184\153\224\184\179\224\185\132\224\184\130\224\185\136\224\185\132\224\184\155\224\184\167\224\184\178\224\184\135...",
			PlaceDone = "\224\184\167\224\184\178\224\184\135\224\185\132\224\184\130\224\185\136\224\184\154\224\184\153\224\185\129\224\184\151\224\185\136\224\184\153\224\184\159\224\184\177\224\184\129\224\185\129\224\184\165\224\184\176\224\185\128\224\184\163\224\184\180\224\185\136\224\184\161\224\184\159\224\184\177\224\184\129\224\185\128\224\184\163\224\184\181\224\184\162\224\184\154\224\184\163\224\185\137\224\184\173\224\184\162!",
			AutoPlaceStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\167\224\184\178\224\184\135\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\151\224\184\184\224\184\129 5 \224\184\159\224\184\173\224\184\135)",
			AutoPlaceStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\167\224\184\178\224\184\135\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			NoEggFound = "\224\185\132\224\184\161\224\185\136\224\184\158\224\184\154\224\185\132\224\184\130\224\185\136\224\184\151\224\184\181\224\185\136\224\184\149\224\184\163\224\184\135\224\184\149\224\184\178\224\184\161\224\185\128\224\184\135\224\184\183\224\185\136\224\184\173\224\184\153\224\185\132\224\184\130\224\185\131\224\184\153\224\184\130\224\184\147\224\184\176\224\184\153\224\184\181\224\185\137",
			UnstickDone = "\224\184\170\224\185\136\224\184\135\224\184\132\224\184\179\224\184\170\224\184\177\224\185\136\224\184\135\224\185\129\224\184\129\224\185\137\224\184\149\224\184\177\224\184\167\224\184\149\224\184\180\224\184\148\224\185\128\224\184\163\224\184\181\224\184\162\224\184\154\224\184\163\224\185\137\224\184\173\224\184\162!",
			TweenStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\154\224\184\180\224\184\153\224\185\128\224\184\163\224\185\135\224\184\167)",
			TweenStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\154\224\184\180\224\184\153\224\185\128\224\184\163\224\185\135\224\184\167)",
			TeleportStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155)",
			TeleportStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155)",
			HatchStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\159\224\184\177\224\184\129\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			HatchStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\159\224\184\177\224\184\129\224\185\132\224\184\130\224\185\136\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			ReturnStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\154\224\184\180\224\184\153\224\184\129\224\184\165\224\184\177\224\184\154\224\184\158\224\184\183\224\185\137\224\184\153\224\184\151\224\184\181\224\185\136\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162",
			ReturnStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\154\224\184\180\224\184\153\224\184\129\224\184\165\224\184\177\224\184\154\224\184\158\224\184\183\224\185\137\224\184\153\224\184\151\224\184\181\224\185\136\224\184\155\224\184\165\224\184\173\224\184\148\224\184\160\224\184\177\224\184\162",
			AutoEquipBestStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\163\224\184\176\224\184\154\224\184\154\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			AutoEquipBestStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\163\224\184\176\224\184\154\224\184\154\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			EquipBestSuccess = "\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\185\128\224\184\163\224\184\181\224\184\162\224\184\154\224\184\163\224\185\137\224\184\173\224\184\162\224\185\129\224\184\165\224\185\137\224\184\167!",
			AutoTreadmillStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\167\224\184\180\224\185\136\224\184\135\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180 (\224\184\151\224\184\179\224\184\135\224\184\178\224\184\153\224\185\128\224\184\161\224\184\183\224\185\136\224\184\173\224\184\167\224\185\136\224\184\178\224\184\135)",
			AutoTreadmillStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\167\224\184\180\224\185\136\224\184\135\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			UpgradeTreadmillStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\173\224\184\177\224\184\155\224\185\128\224\184\129\224\184\163\224\184\148\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			UpgradeTreadmillStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\173\224\184\177\224\184\155\224\185\128\224\184\129\224\184\163\224\184\148\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			BuyTrailsStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\139\224\184\183\224\185\137\224\184\173\224\185\129\224\184\165\224\184\176\224\185\131\224\184\170\224\185\136 Trail \224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			BuyTrailsStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\139\224\184\183\224\185\137\224\184\173\224\185\129\224\184\165\224\184\176\224\185\131\224\184\170\224\185\136 Trail \224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
			HideNotEnoughMoneyStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\139\224\185\136\224\184\173\224\184\153\224\185\129\224\184\136\224\185\137\224\184\135\224\185\128\224\184\149\224\184\183\224\184\173\224\184\153\224\185\128\224\184\135\224\184\180\224\184\153\224\185\132\224\184\161\224\185\136\224\184\158\224\184\173",
			HideNotEnoughMoneyStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\139\224\185\136\224\184\173\224\184\153\224\185\129\224\184\136\224\185\137\224\184\135\224\185\128\224\184\149\224\184\183\224\184\173\224\184\153\224\185\128\224\184\135\224\184\180\224\184\153\224\185\132\224\184\161\224\185\136\224\184\158\224\184\173",
			GodmodeStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\185\130\224\184\171\224\184\161\224\184\148\224\184\173\224\184\161\224\184\149\224\184\176",
			GodmodeStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\185\130\224\184\171\224\184\161\224\184\148\224\184\173\224\184\161\224\184\149\224\184\176",
			PerformanceStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\185\130\224\184\171\224\184\161\224\184\148\224\184\160\224\184\178\224\184\158\224\184\129\224\184\178\224\184\129\224\184\130\224\184\177\224\185\137\224\184\153\224\184\170\224\184\184\224\184\148 (\224\184\165\224\184\154 Texture \224\185\129\224\184\165\224\184\176\224\185\129\224\184\170\224\184\135\224\185\128\224\184\135\224\184\178)",
			PerformanceStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\185\130\224\184\171\224\184\161\224\184\148\224\184\160\224\184\178\224\184\158\224\184\129\224\184\178\224\184\129\224\184\130\224\184\177\224\185\137\224\184\153\224\184\170\224\184\184\224\184\148",
			Disable3DStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\185\130\224\184\171\224\184\161\224\184\148\224\184\155\224\184\163\224\184\176\224\184\171\224\184\162\224\184\177\224\184\148 GPU (\224\184\155\224\184\180\224\184\148\224\185\128\224\184\163\224\184\153\224\185\128\224\184\148\224\184\173\224\184\163\224\185\140 3D)",
			Disable3DStopped = "\224\184\132\224\184\183\224\184\153\224\184\132\224\185\136\224\184\178\224\184\129\224\184\178\224\184\163\224\185\129\224\184\170\224\184\148\224\184\135\224\184\156\224\184\165 3D \224\184\149\224\184\178\224\184\161\224\184\155\224\184\129\224\184\149\224\184\180\224\185\129\224\184\165\224\185\137\224\184\167",
			AntiAFKStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\155\224\185\137\224\184\173\224\184\135\224\184\129\224\184\177\224\184\153 AFK (\224\184\129\224\184\148 Esc 2 \224\184\151\224\184\181 \224\184\151\224\184\184\224\184\129 10 \224\184\153\224\184\178\224\184\151\224\184\181 + \224\184\163\224\184\173\224\184\135\224\184\163\224\184\177\224\184\154\224\184\161\224\184\183\224\184\173\224\184\150\224\184\183\224\184\173)",
			AntiAFKStopped = "\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 \224\184\155\224\185\137\224\184\173\224\184\135\224\184\129\224\184\177\224\184\153 AFK",
			WebhookStarted = "\224\185\128\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153\224\184\163\224\184\178\224\184\162\224\184\135\224\184\178\224\184\153 Discord Webhook \224\185\128\224\184\163\224\184\181\224\184\162\224\184\154\224\184\163\224\185\137\224\184\173\224\184\162",
			WebhookStopped = "\224\184\155\224\184\180\224\184\148\224\184\129\224\184\178\224\184\163\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153 Discord Webhook",
			WebhookTestSent = "\224\184\170\224\185\136\224\184\135 Webhook \224\184\151\224\184\148\224\184\170\224\184\173\224\184\154\224\184\170\224\184\179\224\185\128\224\184\163\224\185\135\224\184\136! \224\185\130\224\184\155\224\184\163\224\184\148\224\184\149\224\184\163\224\184\167\224\184\136\224\184\170\224\184\173\224\184\154\224\184\171\224\185\137\224\184\173\224\184\135 Discord \224\184\130\224\184\173\224\184\135\224\184\132\224\184\184\224\184\147",
			WebhookTestFailed = "\224\184\170\224\185\136\224\184\135 Webhook \224\185\132\224\184\161\224\185\136\224\184\170\224\184\179\224\185\128\224\184\163\224\185\135\224\184\136 \224\184\129\224\184\163\224\184\184\224\184\147\224\184\178\224\184\149\224\184\163\224\184\167\224\184\136\224\184\170\224\184\173\224\184\154 URL \224\184\171\224\184\163\224\184\183\224\184\173\224\184\159\224\184\177\224\184\135\224\184\129\224\185\140\224\184\138\224\184\177\224\184\153 HTTP \224\184\130\224\184\173\224\184\135\224\184\149\224\184\177\224\184\167\224\184\163\224\184\177\224\184\153",
			WebhookUrlEmpty = "\224\184\129\224\184\163\224\184\184\224\184\147\224\184\178\224\184\129\224\184\163\224\184\173\224\184\129\224\184\165\224\184\180\224\184\135\224\184\129\224\185\140 Webhook URL \224\184\129\224\185\136\224\184\173\224\184\153\224\184\151\224\184\148\224\184\170\224\184\173\224\184\154!",
			LangSwitched = "\224\185\128\224\184\155\224\184\165\224\184\181\224\185\136\224\184\162\224\184\153\224\184\160\224\184\178\224\184\169\224\184\178\224\185\128\224\184\155\224\185\135\224\184\153\224\184\160\224\184\178\224\184\169\224\184\178\224\185\132\224\184\151\224\184\162\224\185\128\224\184\163\224\184\181\224\184\162\224\184\154\224\184\163\224\185\137\224\184\173\224\184\162\224\185\129\224\184\165\224\185\137\224\184\167!",
		},
	},
}
local Pi = {}
local ji, Yi, Xi, Mi
local zi = { "Farm", "EggSelect", "Character", "Settings" }
local function oi(P)
	local j = (P == "TH")
	if J.delivering then
		return j
				and "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\167\224\184\178\224\184\135\224\185\132\224\184\130\224\185\136"
			or "Placing Egg"
	elseif J.securingEgg or J.holdingEggForGuard then
		return j
				and "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\171\224\184\162\224\184\180\224\184\154\224\185\132\224\184\130\224\185\136"
			or "Securing Egg"
	elseif J.teleporting then
		return j
				and "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155"
			or "Teleporting"
	elseif J.isReturning then
		return j
				and "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\154\224\184\180\224\184\153\224\184\129\224\184\165\224\184\177\224\184\154"
			or "Returning"
	elseif J.glidingToTarget then
		return j
				and "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\154\224\184\180\224\184\153\224\185\132\224\184\155\224\184\130\224\185\130\224\184\161\224\184\162"
			or "Stealing"
	elseif J.onTreadmill or (Uy and Uy()) then
		return j
				and "\224\184\173\224\184\162\224\184\185\224\185\136\224\184\154\224\184\153\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135"
			or "On Treadmill"
	elseif Qy == "TWEEN" and not J.isReturning then
		return j
				and "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\171\224\184\178\224\185\132\224\184\130\224\185\136"
			or "Searching"
	elseif Qy == "WARP" and not J.isReturning then
		return j
				and "\224\184\129\224\184\179\224\184\165\224\184\177\224\184\135\224\184\171\224\184\178\224\185\132\224\184\130\224\185\136"
			or "Searching"
	else
		return j
				and "\224\184\158\224\184\163\224\185\137\224\184\173\224\184\161\224\184\151\224\184\179\224\184\135\224\184\178\224\184\153"
			or "Ready"
	end
end
local function qi(P)
	pcall(function()
		if P:IsA("TextLabel") or P:IsA("TextButton") or P:IsA("TextBox") then
			P.AutoLocalize = false
		end
		for P, j in ipairs(P:GetDescendants()) do
			if j:IsA("TextLabel") or j:IsA("TextButton") or j:IsA("TextBox") then
				j.AutoLocalize = false
			end
		end
	end)
end
local function Si(P, j, Y)
	if not P then
		return
	end
	pcall(function()
		if j and P.SetTitle then
			P:SetTitle(j)
		end
		if Y and P.SetDesc then
			P:SetDesc(Y)
		end
	end)
	pcall(function()
		if P.UIElements then
			if j and (P.UIElements.Title and P.UIElements.Title:IsA("TextLabel")) then
				P.UIElements.Title.AutoLocalize = false
				P.UIElements.Title.Text = j
			end
			if Y and (P.UIElements.Desc and P.UIElements.Desc:IsA("TextLabel")) then
				P.UIElements.Desc.AutoLocalize = false
				P.UIElements.Desc.Text = Y
			end
		end
	end)
end
local function Wi(P, j, Y)
	pcall(function()
		if not P then
			return
		end
		if P.UIElements and (P.UIElements.Title and P.UIElements.Title:IsA("TextLabel")) then
			P.UIElements.Title.TextColor3 = j
		end
		if P.UIElements and P.UIElements.ButtonIcon then
			local Y = P.UIElements.ButtonIcon:FindFirstChildOfClass("ImageLabel") or P.UIElements.ButtonIcon
			if Y and Y:IsA("ImageLabel") then
				Y.ImageColor3 = j
			end
		end
		local X = nil
		if P.ButtonFrame and (P.ButtonFrame.UIElements and P.ButtonFrame.UIElements.Main) then
			X = P.ButtonFrame.UIElements.Main
		elseif P.ToggleFrame and (P.ToggleFrame.UIElements and P.ToggleFrame.UIElements.Main) then
			X = P.ToggleFrame.UIElements.Main
		elseif P.ElementFrame then
			X = P.ElementFrame
		elseif P.UIElements and P.UIElements.Main then
			X = P.UIElements.Main
		end
		if X and X:IsA("GuiObject") then
			local P = X:FindFirstChild("AccentCorner") or X:FindFirstChildOfClass("UICorner")
			if P then
				P:Destroy()
			end
			local M = X:FindFirstChild("DiceAccentStroke") or X:FindFirstChildOfClass("UIStroke")
			if M then
				M:Destroy()
			end
			local z = X:FindFirstChild("AccentSquircleOutline")
			if z then
				z:Destroy()
			end
			for P, j in ipairs(X:GetDescendants()) do
				if
					j:IsA("ImageLabel")
					and (string.find(tostring(j.Image), "117817408534198") or string.find(j.Name:lower(), "outline"))
				then
					j.Visible = false
					j.ImageTransparency = 1
				end
			end
			local o = Y
			if not o then
				local P, Y, X = j:ToHSV()
				o = Color3.fromHSV(P, math.clamp(Y * 0.4, 0.18, 0.45), 0.18)
			end
			X.ThemeTag = nil
			X.ImageColor3 = o
			X.ImageTransparency = 0.08
		end
	end)
end
local function Oi()
	Wi(Pi.togTween, Color3.fromRGB(0, 195, 255), Color3.fromRGB(24, 40, 46))
	Wi(Pi.togTeleport, Color3.fromRGB(168, 85, 247), Color3.fromRGB(36, 24, 46))
	Wi(Pi.btnPlaceEgg, Color3.fromRGB(16, 215, 130), Color3.fromRGB(24, 45, 36))
	Wi(Pi.togAutoPlaceEvery5, Color3.fromRGB(14, 165, 233), Color3.fromRGB(24, 38, 46))
	Wi(Pi.togGodmode, Color3.fromRGB(244, 63, 94), Color3.fromRGB(46, 24, 28))
	Wi(Pi.btnUnstick, Color3.fromRGB(249, 115, 22), Color3.fromRGB(46, 32, 24))
	Wi(Pi.btnReset, Color3.fromRGB(99, 102, 241), Color3.fromRGB(25, 26, 46))
	Wi(Pi.btnLangSettings, Color3.fromRGB(245, 180, 30), Color3.fromRGB(46, 38, 24))
end
local function Vi(P)
	local j = P or bU or "EN"
	local Y = QU[j] or QU.EN
	local X = { ji, Yi, Xi, Mi }
	local M = { "Farm", "EggSelect", "Character", "Settings" }
	for P, j in ipairs(X) do
		local X = M[P]
		local z = Y.Tabs[X] or X
		if j then
			j.Title = z
			pcall(function()
				if j.SetTitle then
					j:SetTitle(z)
				end
			end)
			pcall(function()
				if j.UIElements and j.UIElements.Main then
					for P, j in ipairs(j.UIElements.Main:GetDescendants()) do
						if j:IsA("TextLabel") then
							j.AutoLocalize = false
							j.Text = z
						end
					end
				end
				if j.UIElements and j.UIElements.TabItem then
					for P, j in ipairs(j.UIElements.TabItem:GetDescendants()) do
						if j:IsA("TextLabel") then
							j.AutoLocalize = false
							j.Text = z
						end
					end
				end
			end)
		end
	end
	pcall(function()
		if Window and (Window.TabModule and Window.TabModule.Tabs) then
			for P = 1, #zi, 1 do
				local j = Window.TabModule.Tabs[P]
				local X = zi[P]
				local M = Y.Tabs[X] or X
				if j and M then
					j.Title = M
					if j.UIElements and j.UIElements.Main then
						for P, j in ipairs(j.UIElements.Main:GetDescendants()) do
							if j:IsA("TextLabel") then
								j.AutoLocalize = false
								j.Text = M
							end
						end
					end
					if j.UIElements and j.UIElements.TabItem then
						for P, j in ipairs(j.UIElements.TabItem:GetDescendants()) do
							if j:IsA("TextLabel") then
								j.AutoLocalize = false
								j.Text = M
							end
						end
					end
				end
			end
		end
	end)
end
local function ei(P)
	local j = QU[P] or QU.EN
	Vi(P)
	Si(Pi.secModes, j.Farm.SecModes)
	Si(Pi.togTween, j.Farm.TweenTitle, j.Farm.TweenDesc)
	Si(Pi.togTeleport, j.Farm.TeleportTitle, j.Farm.TeleportDesc)
	Si(Pi.secPlace, j.Farm.SecPlace)
	Si(Pi.btnPlaceEgg, j.Farm.PlaceTitle, j.Farm.PlaceDesc)
	Si(Pi.togAutoPlaceEvery5, j.Farm.AutoPlaceTitle, j.Farm.AutoPlaceDesc)
	Si(Pi.togAutoHatch, j.Farm.HatchTitle, j.Farm.HatchDesc)
	Si(Pi.togAutoReturn, j.Farm.ReturnTitle, j.Farm.ReturnDesc)
	Si(Pi.togAutoTreadmill, j.Farm.AutoTreadmillTitle, j.Farm.AutoTreadmillDesc)
	Si(Pi.togAutoUpgradeTreadmill, j.Farm.UpgradeTreadmillTitle, j.Farm.UpgradeTreadmillDesc)
	Si(Pi.togAutoBuyTrails, j.Farm.BuyTrailsTitle, j.Farm.BuyTrailsDesc)
	Si(Pi.togAutoEquipBest, j.Farm.AutoEquipBestTitle, j.Farm.AutoEquipBestDesc)
	Si(Pi.btnEquipBest, j.Farm.EquipBestTitle, j.Farm.EquipBestDesc)
	if j.EggSelect then
		Si(Pi.secEggZones, j.EggSelect.SecZones, j.EggSelect.SecZonesDesc)
		Si(Pi.dropTargetZones, j.EggSelect.DropZonesTitle, j.EggSelect.DropZonesDesc)
		Si(Pi.secEggRarity, j.EggSelect.SecRarities, j.EggSelect.SecRaritiesDesc)
		Si(Pi.secEggRarities, j.EggSelect.SecRarities, j.EggSelect.SecRaritiesDesc)
		Si(Pi.dropTargetRarities, j.EggSelect.DropRaritiesTitle, j.EggSelect.DropRaritiesDesc)
		Si(Pi.togAlwaysSecret, j.EggSelect.AlwaysSecretPlus, j.EggSelect.AlwaysSecretPlusDesc)
	end
	Si(Pi.secSafety, j.Character.SecSafety)
	Si(Pi.togGodmode, j.Character.GodmodeTitle, j.Character.GodmodeDesc)
	Si(Pi.btnUnstick, j.Character.UnstickTitle, j.Character.UnstickDesc)
	Si(Pi.secFlight, j.Character.SecFlight)
	Si(Pi.sliderSpeed, j.Character.SpeedTitle, j.Character.SpeedDesc)
	Si(Pi.secDashboard, j.Settings.SecDashboard)
	Si(Pi.paraLiveDash, j.Settings.DashTitle)
	Si(Pi.secBlacklist, j.Settings.SecBlacklist)
	Si(Pi.secUI, j.Settings.SecUI)
	Si(Pi.dropLang, j.Settings.LangTitle)
	Si(Pi.sliderTransp, j.Settings.TranspTitle, j.Settings.TranspDesc)
	Si(Pi.dropTheme, j.Settings.ThemeTitle)
	Si(Pi.secPerformance, j.Settings.SecPerformance)
	Si(Pi.togPerformance, j.Settings.PerformanceTitle, j.Settings.PerformanceDesc)
	Si(Pi.togDisable3D, j.Settings.Disable3DTitle, j.Settings.Disable3DDesc)
	Si(Pi.secSystem, j.Settings.SecSystem)
	Si(Pi.togAntiAFK, j.Settings.AntiAFKTitle, j.Settings.AntiAFKDesc)
	Si(Pi.btnReset, j.Settings.ResetTitle, j.Settings.ResetDesc)
	Si(Pi.btnRejoin, j.Settings.RejoinTitle, j.Settings.RejoinDesc)
	Si(Pi.btnUnload, j.Settings.UnloadTitle, j.Settings.UnloadDesc)
	if Pi.secWebhook and Pi.secWebhook.SetTitle then
		Pi.secWebhook:SetTitle(j.Settings.SecWebhook)
	end
	Si(Pi.inpWebhookUrl, j.Settings.WebhookUrlTitle, j.Settings.WebhookUrlDesc)
	Si(Pi.togWebhook, j.Settings.WebhookTogTitle, j.Settings.WebhookTogDesc)
	Si(Pi.btnTestWebhook, j.Settings.WebhookTestTitle, j.Settings.WebhookTestDesc)
	Oi()
end
local function vi()
	local P = Instance.new("ScreenGui")
	P.Name = "Dice_LOADER_SCREEN"
	P.ResetOnSpawn = false
	P.DisplayOrder = 9999999
	P.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	P.AutoLocalize = false
	pcall(function()
		if syn and syn.protect_gui then
			syn.protect_gui(P)
			P.Parent = game:GetService("CoreGui")
		else
			P.Parent = S:FindFirstChild("PlayerGui") or game:GetService("CoreGui")
		end
	end)
	if not P.Parent then
		P.Parent = game:GetService("CoreGui")
	end
	local j = Instance.new("Frame")
	j.Name = "Card"
	j.Size = UDim2.fromOffset(336, 140)
	j.Position = UDim2.new(0.5, -168, 0.5, -70)
	j.BackgroundColor3 = Color3.fromRGB(16, 16, 22)
	j.BorderSizePixel = 0
	j.Parent = P;
	(Instance.new("UICorner", j)).CornerRadius = UDim.new(0, 14)
	local Y = Instance.new("UIStroke", j)
	Y.Color = Color3.fromRGB(0, 185, 255)
	Y.Thickness = 1.4
	Y.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	local M = Instance.new("TextLabel")
	M.Size = UDim2.new(1, -28, 0, 24)
	M.Position = UDim2.new(0, 14, 0, 14)
	M.BackgroundTransparency = 1
	M.Text = "Dice Hub"
	M.TextColor3 = Color3.fromRGB(245, 248, 255)
	M.TextSize = 18
	M.Font = Enum.Font.GothamBold
	M.TextXAlignment = Enum.TextXAlignment.Left
	M.AutoLocalize = false
	M.Parent = j
	local z = Instance.new("TextLabel")
	z.Size = UDim2.new(1, -28, 0, 16)
	z.Position = UDim2.new(0, 14, 0, 38)
	z.BackgroundTransparency = 1
	z.Text = "Steal an Egg Suite v42.71"
	z.TextColor3 = Color3.fromRGB(140, 150, 175)
	z.TextSize = 12
	z.Font = Enum.Font.Gotham
	z.TextXAlignment = Enum.TextXAlignment.Left
	z.AutoLocalize = false
	z.Parent = j
	local o = Instance.new("TextLabel")
	o.Size = UDim2.new(0, 50, 0, 24)
	o.Position = UDim2.new(1, -64, 0, 14)
	o.BackgroundTransparency = 1
	o.Text = "0%"
	o.TextColor3 = Color3.fromRGB(0, 255, 160)
	o.TextSize = 14
	o.Font = Enum.Font.GothamBold
	o.TextXAlignment = Enum.TextXAlignment.Right
	o.AutoLocalize = false
	o.Parent = j
	local q = Instance.new("Frame")
	q.Size = UDim2.new(1, -28, 0, 10)
	q.Position = UDim2.new(0, 14, 0, 74)
	q.BackgroundColor3 = Color3.fromRGB(25, 27, 38)
	q.BorderSizePixel = 0
	q.Parent = j;
	(Instance.new("UICorner", q)).CornerRadius = UDim.new(0, 5)
	local W = Instance.new("Frame")
	W.Size = UDim2.new(0, 0, 1, 0)
	W.BackgroundColor3 = Color3.fromRGB(0, 185, 255)
	W.BorderSizePixel = 0
	W.Parent = q;
	(Instance.new("UICorner", W)).CornerRadius = UDim.new(0, 5)
	local O = Instance.new("UIGradient", W)
	O.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 185, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 160)),
	})
	local V = Instance.new("TextLabel")
	V.Size = UDim2.new(1, -28, 0, 16)
	V.Position = UDim2.new(0, 14, 0, 94)
	V.BackgroundTransparency = 1
	V.Text = "Initializing Dice Hub..."
	V.TextColor3 = Color3.fromRGB(130, 140, 165)
	V.TextSize = 11
	V.Font = Enum.Font.Gotham
	V.TextXAlignment = Enum.TextXAlignment.Left
	V.AutoLocalize = false
	V.Parent = j
	task.spawn(function()
		for j = 1, 100, 1 do
			if not P.Parent then
				break
			end
			o.Text = tostring(j) .. "%"
			W.Size = UDim2.new(j / 100, 0, 1, 0)
			if j == 25 then
				V.Text = "Loading interface modules..."
			elseif j == 60 then
				V.Text = "Setting up auto-steal controllers..."
			elseif j == 85 then
				V.Text = "Syncing server telemetry..."
			elseif j == 100 then
				V.Text = "Ready!"
			end
			task.wait(0.008)
		end
	end)
	local function e(S)
		task.spawn(function()
			task.wait(0.9)
			local O = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
			(X:Create(j, O, { BackgroundTransparency = 1 })):Play();
			(X:Create(Y, O, { Transparency = 1 })):Play();
			(X:Create(M, O, { TextTransparency = 1 })):Play();
			(X:Create(z, O, { TextTransparency = 1 })):Play();
			(X:Create(o, O, { TextTransparency = 1 })):Play();
			(X:Create(q, O, { BackgroundTransparency = 1 })):Play();
			(X:Create(W, O, { BackgroundTransparency = 1 })):Play();
			(X:Create(V, O, { TextTransparency = 1 })):Play()
			task.wait(0.4)
			pcall(function()
				P:Destroy()
			end)
			if S then
				S()
			end
		end)
	end
	return e
end
local fi = {}
fi.Gui = Instance.new("ScreenGui")
fi.Gui.Name = "Dice_RESTORE_BAR"
fi.Gui.ResetOnSpawn = false
fi.Gui.DisplayOrder = 999999
fi.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
fi.Gui.AutoLocalize = false
pcall(function()
	if syn and syn.protect_gui then
		syn.protect_gui(fi.Gui)
		fi.Gui.Parent = game:GetService("CoreGui")
	else
		fi.Gui.Parent = S:FindFirstChild("PlayerGui") or game:GetService("CoreGui")
	end
end)
if not fi.Gui.Parent then
	fi.Gui.Parent = game:GetService("CoreGui")
end
fi.Btn = Instance.new("ImageButton")
fi.Btn.Name = "Dice_SquareLogoButton"
fi.Btn.Size = UDim2.fromOffset(46, 46)
fi.Btn.Position = UDim2.new(0, 20, 0, 20)
fi.Btn.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
fi.Btn.Active = true
fi.Btn.Selectable = true
fi.Btn.Visible = false
fi.Btn.ZIndex = 999999
fi.Btn.AutoLocalize = false
fi.Btn.Parent = fi.Gui;
(Instance.new("UICorner", fi.Btn)).CornerRadius = UDim.new(0, 10)
fi.Stroke = Instance.new("UIStroke", fi.Btn)
fi.Stroke.Color = Color3.fromRGB(0, 185, 255)
fi.Stroke.Thickness = 1.6
fi.Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
fi.Logo = Instance.new("ImageLabel", fi.Btn)
fi.Logo.Name = "LogoIcon"
fi.Logo.Size = UDim2.fromOffset(36, 36)
fi.Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
fi.Logo.AnchorPoint = Vector2.new(0.5, 0.5)
fi.Logo.BackgroundTransparency = 1
fi.Logo.Image = HU
fi.Logo.ImageColor3 = Color3.fromRGB(255, 255, 255)
fi.Logo.ZIndex = 1000000
(Instance.new("UICorner", fi.Logo)).CornerRadius = UDim.new(0, 8)
fi.isDragging = false
fi.dragStart = nil
fi.startPos = nil
fi.Btn.InputBegan:Connect(function(P)
	if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
		fi.isDragging = true
		fi.dragStart = P.Position
		fi.startPos = fi.Btn.Position
	end
end)
M.InputEnded:Connect(function(P)
	if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
		fi.isDragging = false
	end
end)
M.InputChanged:Connect(function(P)
	if
		fi.isDragging
		and (P.UserInputType == Enum.UserInputType.MouseMovement or P.UserInputType == Enum.UserInputType.Touch)
	then
		local j = P.Position - fi.dragStart
		fi.Btn.Position =
			UDim2.new(fi.startPos.X.Scale, fi.startPos.X.Offset + j.X, fi.startPos.Y.Scale, fi.startPos.Y.Offset + j.Y)
	end
end)
local function ni()
	J.alive = false
	pcall(gU)
	pcall(sU)
	pcall(function()
		Y:Set3dRenderingEnabled(true)
	end)
	pcall(function()
		local P = j:FindFirstChild("DiceHub_EggESP")
		if P then
			P:Destroy()
		end
	end)
	pcall(ly)
	pcall(qy)
	if fi and fi.Gui then
		pcall(function()
			fi.Gui:Destroy()
		end)
	end
	if J.gui then
		pcall(function()
			J.gui:Destroy()
		end)
	end
	pcall(function()
		for P, j in ipairs(game.CoreGui:GetChildren()) do
			if j.Name:find("Dice_") or j.Name:find("DesyncSniperUI") or j.Name:find("WindUI") then
				j:Destroy()
			end
		end
	end)
end
local function Ci()
	local P = vi()
	local j = nil
	pcall(function()
		j = (loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua")))()
	end)
	local function z(P)
		if not P then
			return
		end
		local Y = false
		if j and j.Notify then
			local X = pcall(function()
				j:Notify(P)
				Y = true
			end)
		end
		if not Y then
			pcall(function()
				(game:GetService("StarterGui")):SetCore(
					"SendNotification",
					{ Title = tostring(P.Title or "Dice Hub"), Text = tostring(P.Content or ""), Duration = 3 }
				)
			end)
		end
	end
	if j then
		pcall(function()
			local P = j.Notify
			if P then
				j.Notify = function(j, Y)
					local X = pcall(function()
						P(j, Y)
					end)
					if not X then
						pcall(function()
							(game:GetService("StarterGui")):SetCore(
								"SendNotification",
								{
									Title = tostring(Y and Y.Title or "Dice Hub"),
									Text = tostring(Y and Y.Content or ""),
									Duration = 3,
								}
							)
						end)
					end
				end
			end
		end)
		local o = workspace.CurrentCamera
		local q = o and o.ViewportSize or Vector2.new(1280, 720)
		local S = M.TouchEnabled and not M.KeyboardEnabled
		local W = S and math.clamp(q.X * 0.7, 440, 500) or 500
		local O = S and math.clamp(q.Y * 0.72, 280, 340) or 340
		local V = UDim2.fromOffset(W, O)
		local e = j:CreateWindow({
			Title = "Dice Hub",
			Author = "Steal An Egg V1",
			Folder = "Dice_StealAnEgg",
			Icon = HU,
			Theme = "Dark",
			IconSize = 28,
			Size = V,
			MinSize = Vector2.new(400, 240),
			MaxSize = Vector2.new(900, 600),
			Resizable = true,
			SideBarWidth = S and 140 or 160,
			ToggleKey = Enum.KeyCode.RightShift,
			IgnoreAlerts = true,
			Topbar = { Height = 44, ButtonsType = "Default" },
		})
		e.IgnoreAlerts = true
		pcall(function()
			if e.UIElements and e.UIElements.Main then
				e.UIElements.Main.Visible = false
			end
		end)
		local v = e:Tag({ Title = "Status: Ready", Color = Color3.fromRGB(0, 255, 160), Border = true })
		local f = 44
		local n = false
		local C = false
		local D = O
		task.spawn(function()
			task.wait(0.1)
			local P = e.UIElements and e.UIElements.Main
			if P then
				if P.AnchorPoint.Y ~= 0 then
					local j = P.Size.Y.Offset > 0 and P.Size.Y.Offset or O
					P.Position = UDim2.new(
						P.Position.X.Scale,
						P.Position.X.Offset,
						P.Position.Y.Scale,
						P.Position.Y.Offset - (j * P.AnchorPoint.Y)
					)
					P.AnchorPoint = Vector2.new(0.5, 0)
				end
				P.ClipsDescendants = false
				qi(P)
			end
		end)
		local function i()
			local P = e.UIElements and e.UIElements.Main
			if not P or C then
				return
			end
			C = true
			n = not n
			local j = e.UIElements.SideBarContainer
			local Y = e.UIElements.MainBar
			local M = P:FindFirstChild("Background")
			local z = P:FindFirstChild("Main")
			if P.AnchorPoint.Y ~= 0 then
				local j = P.Size.Y.Offset > 0 and P.Size.Y.Offset or D
				P.Position = UDim2.new(
					P.Position.X.Scale,
					P.Position.X.Offset,
					P.Position.Y.Scale,
					P.Position.Y.Offset - (j * P.AnchorPoint.Y)
				)
				P.AnchorPoint = Vector2.new(0.5, 0)
			end
			local o = P.Size.X.Scale
			local q = P.Size.X.Offset
			if n then
				if P.Size.Y.Offset > f then
					D = P.Size.Y.Offset
				end
				P.ClipsDescendants = true
				if M then
					M.ClipsDescendants = true
				end
				if z then
					z.ClipsDescendants = true
				end
				if j then
					j.Visible = false
				end
				if Y then
					Y.Visible = false
				end
				P.Visible = true
				if z then
					z.Visible = true
				end
				local S = X:Create(
					P,
					TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Size = UDim2.new(o, q, 0, f) }
				)
				S:Play()
				task.delay(0.25, function()
					C = false
				end)
			else
				P.Visible = true
				if z then
					z.Visible = true
				end
				local S = D or O
				if j then
					j.Visible = true
				end
				if Y then
					Y.Visible = true
				end
				if e.TabModule and e.TabModule.SelectedTab then
					pcall(function()
						e.TabModule:SelectTab(e.TabModule.SelectedTab)
					end)
				end
				local W = X:Create(
					P,
					TweenInfo.new(0.24, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
					{ Size = UDim2.new(o, q, 0, S) }
				)
				W:Play()
				task.delay(0.25, function()
					if not n then
						P.ClipsDescendants = false
						if M then
							M.ClipsDescendants = false
						end
						if z then
							z.ClipsDescendants = false
						end
						if j then
							j.Visible = true
						end
						if Y then
							Y.Visible = true
						end
						if e.TabModule and e.TabModule.SelectedTab then
							pcall(function()
								e.TabModule:SelectTab(e.TabModule.SelectedTab)
							end)
						end
					end
					C = false
				end)
			end
		end
		e.Close = function(P)
			i()
			local j = {}
			function j.Destroy(P)
				ni()
			end
			return j
		end
		local function K()
			if e.UIElements and e.UIElements.Main then
				(X:Create(fi.Btn, TweenInfo.new(0.12, Enum.EasingStyle.Quart), { Size = UDim2.fromOffset(42, 42) })):Play()
				task.wait(0.08)
				fi.Btn.Size = UDim2.fromOffset(46, 46)
				e.UIElements.Main.Visible = true
				fi.Btn.Visible = false
				if e.TabModule and e.TabModule.SelectedTab then
					pcall(function()
						e.TabModule:SelectTab(e.TabModule.SelectedTab)
					end)
				end
			end
		end
		local function y()
			if e.UIElements and e.UIElements.Main then
				e.UIElements.Main.Visible = false
				fi.Btn.Visible = true
			end
		end
		fi.Btn.MouseButton1Click:Connect(K)
		e.Destroy = function(P)
			y()
		end
		M.InputBegan:Connect(function(P, j)
			if not j and P.KeyCode == Enum.KeyCode.RightShift then
				if e.UIElements and e.UIElements.Main then
					if e.UIElements.Main.Visible then
						y()
					else
						K()
					end
				end
			end
		end)
		local function k(P)
			local j = math.clamp(tonumber(P) or 0, 0, 90)
			local Y = j / 100
			pcall(function()
				local P = e.UIElements and e.UIElements.Main
				if not P then
					return
				end
				if e.AcrylicPaint and e.AcrylicPaint.Frame then
					e.AcrylicPaint.Frame.Visible = (j == 0)
				end
				local X = P:FindFirstChild("Background")
				if X then
					if X:IsA("ImageLabel") then
						X.ImageTransparency = Y
					elseif X:IsA("Frame") then
						X.BackgroundTransparency = Y
					end
				end
			end)
		end
		local A = QU[bU] or QU.EN
		ji = e:Tab({ Title = A.Tabs.Farm, Icon = "solar:box-minimalistic-bold" })
		Yi = e:Tab({ Title = A.Tabs.EggSelect or "Egg Selection", Icon = "lucide:egg" })
		Xi = e:Tab({ Title = A.Tabs.Character, Icon = "solar:user-bold" })
		Mi = e:Tab({ Title = A.Tabs.Settings, Icon = "solar:settings-bold" })
		Pi.secModes = ji:Section({ Title = A.Farm.SecModes })
		local p = false
		local T = nil
		local B = nil
		Pi.togTween = ji:Toggle({
			Title = A.Farm.TweenTitle,
			Desc = A.Farm.TweenDesc,
			Icon = "solar:compass-bold",
			Value = J.pureTweenFarm,
			Callback = function(P)
				if p then
					return
				end
				if P then
					PU("TWEEN")
				else
					if Qy == "TWEEN" or J.pureTweenFarm then
						PU("NONE")
					end
				end
			end,
		})
		T = Pi.togTween
		Pi.togTeleport = ji:Toggle({
			Title = A.Farm.TeleportTitle,
			Desc = A.Farm.TeleportDesc,
			Icon = "solar:magic-stick-3-bold",
			Value = J.autoFarmLoop,
			Callback = function(P)
				if p then
					return
				end
				if P then
					PU("WARP")
				else
					if Qy == "WARP" or J.autoFarmLoop then
						PU("NONE")
					end
				end
			end,
		})
		B = Pi.togTeleport
		jU = function(P)
			pcall(function()
				if T and T.Set then
					p = true
					T:Set(P)
					p = false
				end
			end)
		end
		YU = function(P)
			pcall(function()
				if B and B.Set then
					p = true
					B:Set(P)
					p = false
				end
			end)
		end
		Pi.secPlace = ji:Section({ Title = A.Farm.SecPlace })
		Pi.btnPlaceEgg = ji:Button({
			Title = A.Farm.PlaceTitle,
			Desc = A.Farm.PlaceDesc,
			Icon = "solar:box-bold",
			Callback = function()
				task.spawn(function()
					z({ Title = "Steal An Egg V1", Content = QU[bU].Notifications.PlaceStarted, Icon = "loader" })
					J.statusText = "[Manual] Tweening to base..."
					Ay(J.glideSpeed, nil, true)
					z({ Title = "Steal An Egg V1", Content = QU[bU].Notifications.PlaceDone, Icon = "check-circle" })
				end)
			end,
		})
		Pi.togAutoPlaceEvery5 = ji:Toggle({
			Title = A.Farm.AutoPlaceTitle or "Auto Place (Every 5)",
			Desc = A.Farm.AutoPlaceDesc or "Return home every 5 steals, place & wait 5s",
			Icon = "solar:box-minimalistic-bold",
			Value = J.autoPlaceEvery5,
			Callback = function(P)
				J.autoPlaceEvery5 = P
				if not P then
					J.batchStealCount = 0
				end
				Q()
				local j = QU[bU] or QU.EN
				z({
					Title = "Auto Place (Every 5)",
					Content = P and (j.Notifications.AutoPlaceStarted or "Auto Place (Every 5) enabled")
						or (j.Notifications.AutoPlaceStopped or "Auto Place (Every 5) disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.togAutoHatch = ji:Toggle({
			Title = A.Farm.HatchTitle,
			Desc = A.Farm.HatchDesc,
			Icon = "solar:star-bold",
			Value = J.autoHatch,
			Callback = function(P)
				J.autoHatch = P
				Q()
				z({
					Title = "Auto Hatch",
					Content = P and QU[bU].Notifications.HatchStarted or QU[bU].Notifications.HatchStopped,
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.togAutoReturn = ji:Toggle({
			Title = A.Farm.ReturnTitle,
			Desc = A.Farm.ReturnDesc,
			Icon = "solar:undo-left-round-bold",
			Value = J.autoGlide,
			Callback = function(P)
				J.autoGlide = P
				Q()
				z({
					Title = "Auto Return",
					Content = P and QU[bU].Notifications.ReturnStarted or QU[bU].Notifications.ReturnStopped,
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.togAutoEquipBest = ji:Toggle({
			Title = A.Farm.AutoEquipBestTitle or "Auto Equip Best Pet",
			Desc = A.Farm.AutoEquipBestDesc or "Automatically equips highest MPS pets after hatching and periodically",
			Icon = "solar:cup-star-bold",
			Value = J.autoEquipBestPet,
			Callback = function(P)
				J.autoEquipBestPet = P
				Q()
				if P then
					task.spawn(function()
						pcall(fU)
					end)
				end
				local j = QU[bU] or QU.EN
				z({
					Title = (bU == "TH")
							and "\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148"
						or "Auto Equip Best Pet",
					Content = P and (j.Notifications.AutoEquipBestStarted or "Auto Equip Best Pet enabled")
						or (j.Notifications.AutoEquipBestStopped or "Auto Equip Best Pet disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.btnEquipBest = ji:Button({
			Title = A.Farm.EquipBestTitle or "Equip Best Pet Now",
			Desc = A.Farm.EquipBestDesc or "Instantly equips best pets from your pen / inventory",
			Icon = "solar:star-bold",
			Callback = function()
				task.spawn(function()
					local P = pcall(fU)
					z({
						Title = (bU == "TH")
								and "\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148"
							or "Equip Best Pet",
						Content = P
								and ((bU == "TH") and "\224\185\131\224\184\170\224\185\136\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140\224\185\128\224\184\165\224\184\181\224\185\137\224\184\162\224\184\135\224\184\151\224\184\181\224\185\136\224\184\148\224\184\181\224\184\151\224\184\181\224\185\136\224\184\170\224\184\184\224\184\148\224\185\128\224\184\163\224\184\181\224\184\162\224\184\154\224\184\163\224\185\137\224\184\173\224\184\162\224\185\129\224\184\165\224\185\137\224\184\167!" or "Equipped best pets successfully!")
							or "Failed to equip pets",
						Icon = P and "check-circle" or "x-circle",
					})
				end)
			end,
		})
		Pi.togAutoTreadmill = ji:Toggle({
			Title = A.Farm.AutoTreadmillTitle or "Auto Treadmill",
			Desc = A.Farm.AutoTreadmillDesc or "Run on base treadmill when no target eggs are spawned",
			Icon = "solar:running-bold",
			Value = J.autoTreadmill,
			Callback = function(P)
				J.autoTreadmill = P
				Py()
				ty()
				if not P and (J.onTreadmill or Uy()) then
					Ey()
				end
				local j = QU[bU] or QU.EN
				z({
					Title = "Auto Treadmill",
					Content = P
							and (j.Notifications.AutoTreadmillStarted or "Auto Treadmill enabled (Runs when idle)")
						or (j.Notifications.AutoTreadmillStopped or "Auto Treadmill disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.togAutoUpgradeTreadmill = ji:Toggle({
			Title = A.Farm.UpgradeTreadmillTitle or "Auto Upgrade Treadmill",
			Desc = A.Farm.UpgradeTreadmillDesc or "Automatically upgrade base treadmill tier when you have enough cash",
			Icon = "solar:double-alt-arrow-up-bold",
			Value = J.autoUpgradeTreadmill,
			Callback = function(P)
				J.autoUpgradeTreadmill = P
				Py()
				local j = QU[bU] or QU.EN
				z({
					Title = (bU == "TH")
							and "\224\184\173\224\184\177\224\184\155\224\185\128\224\184\129\224\184\163\224\184\148\224\184\165\224\184\185\224\185\136\224\184\167\224\184\180\224\185\136\224\184\135"
						or "Upgrade Treadmill",
					Content = P and (j.Notifications.UpgradeTreadmillStarted or "Auto Upgrade Treadmill enabled")
						or (j.Notifications.UpgradeTreadmillStopped or "Auto Upgrade Treadmill disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.togAutoBuyTrails = ji:Toggle({
			Title = A.Farm.BuyTrailsTitle or "Auto Buy & Equip Trails",
			Desc = A.Farm.BuyTrailsDesc or "Automatically purchase and equip the best speed trail available",
			Icon = "solar:fire-bold",
			Value = J.autoBuyTrails,
			Callback = function(P)
				J.autoBuyTrails = P
				Py()
				local j = QU[bU] or QU.EN
				z({
					Title = (bU == "TH") and "\224\184\139\224\184\183\224\185\137\224\184\173 Trail" or "Buy Trails",
					Content = P and (j.Notifications.BuyTrailsStarted or "Auto Buy Trails enabled")
						or (j.Notifications.BuyTrailsStopped or "Auto Buy Trails disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.secEggZones = Yi:Section({ Title = (A.EggSelect and A.EggSelect.SecZones) or "Target Zones" })
		local x = {
			"\240\159\159\163 Light Dark",
			"\240\159\159\161 Titan Temple",
			"\240\159\140\184 Cherry Blossom",
			"\240\159\140\140 Cosmic",
			"\240\159\166\150 Prehistoric",
			"\240\159\140\138 Abyss Ocean",
			"\240\159\140\139 Volcano",
			"\226\157\132\239\184\143 Snow",
			"\240\159\140\180 Jungle",
			"\240\159\143\156\239\184\143 Desert",
			"\240\159\146\167 Lake",
			"\240\159\140\178 Forest",
		}
		local c = {
			["\240\159\159\163 Light Dark"] = "Light Dark",
			["\240\159\159\161 Titan Temple"] = "Titan Temple",
			["\240\159\140\184 Cherry Blossom"] = "Cherry Blossom",
			["\240\159\140\140 Cosmic"] = "Cosmic",
			["\240\159\166\150 Prehistoric"] = "Prehistoric",
			["\240\159\140\138 Abyss Ocean"] = "Abyss Ocean",
			["\240\159\140\139 Volcano"] = "Volcano",
			["\226\157\132\239\184\143 Snow"] = "Snow",
			["\240\159\140\180 Jungle"] = "Jungle",
			["\240\159\143\156\239\184\143 Desert"] = "Desert",
			["\240\159\146\167 Lake"] = "Lake",
			["\240\159\140\178 Forest"] = "Forest",
		}
		local G = {
			["Light Dark"] = "\240\159\159\163 Light Dark",
			["Titan Temple"] = "\240\159\159\161 Titan Temple",
			["Cherry Blossom"] = "\240\159\140\184 Cherry Blossom",
			Cosmic = "\240\159\140\140 Cosmic",
			Prehistoric = "\240\159\166\150 Prehistoric",
			["Abyss Ocean"] = "\240\159\140\138 Abyss Ocean",
			Volcano = "\240\159\140\139 Volcano",
			Snow = "\226\157\132\239\184\143 Snow",
			Jungle = "\240\159\140\180 Jungle",
			Desert = "\240\159\143\156\239\184\143 Desert",
			Lake = "\240\159\146\167 Lake",
			Forest = "\240\159\140\178 Forest",
		}
		local a = {}
		for P, j in pairs(J.selectedZones or {}) do
			if j and G[P] then
				table.insert(a, G[P])
			end
		end
		Pi.dropTargetZones = Yi:Dropdown({
			Title = (A.EggSelect and A.EggSelect.DropZonesTitle) or "Selected Zones",
			Desc = (A.EggSelect and A.EggSelect.DropZonesDesc) or "Click to choose which zones to farm eggs from",
			Values = x,
			Value = a,
			Multi = true,
			Callback = function(P)
				local j = {}
				local function Y(P)
					if type(P) == "table" then
						P = P.Title or P.Name or P[1] or ""
					end
					local Y = tostring(P or "")
					local X = c[Y]
					if not X and (Y ~= "" and (Y ~= "true" and Y ~= "false")) then
						for P, j in ipairs(L) do
							if string.find(string.lower(Y), string.lower(j)) then
								X = j
								break
							end
						end
					end
					if X and l[X] then
						j[X] = true
					end
				end
				if type(P) == "table" then
					for P, j in pairs(P) do
						if type(j) == "string" or type(j) == "table" then
							Y(j)
						elseif type(P) == "string" and j == true then
							Y(P)
						end
					end
				elseif type(P) == "string" then
					Y(P)
				end
				J.selectedZones = j
				Py()
			end,
		})
		Pi.secEggRarity = Yi:Section({ Title = (A.EggSelect and A.EggSelect.SecRarities) or "Target Rarities" })
		local w = {
			"\240\159\145\145 Divine (Tier 6)",
			"\226\154\161 Eternal (Tier 5)",
			"\240\159\148\165 Secret (Tier 4)",
			"\226\156\168 Cosmic (Tier 3)",
			"\240\159\148\174 Mythic (Tier 2)",
			"\226\173\144 Legendary (Tier 1)",
			"\240\159\146\156 Epic",
			"\240\159\148\183 Rare",
			"\240\159\159\162 Uncommon",
			"\226\154\170 Common",
		}
		local Z = {
			["\240\159\145\145 Divine (Tier 6)"] = "Divine",
			["\226\154\161 Eternal (Tier 5)"] = "Eternal",
			["\240\159\148\165 Secret (Tier 4)"] = "Secret",
			["\226\156\168 Cosmic (Tier 3)"] = "Cosmic",
			["\240\159\148\174 Mythic (Tier 2)"] = "Mythic",
			["\226\173\144 Legendary (Tier 1)"] = "Legendary",
			["\240\159\146\156 Epic"] = "Epic",
			["\240\159\148\183 Rare"] = "Rare",
			["\240\159\159\162 Uncommon"] = "Uncommon",
			["\226\154\170 Common"] = "Common",
		}
		local t = {
			Divine = "\240\159\145\145 Divine (Tier 6)",
			Eternal = "\226\154\161 Eternal (Tier 5)",
			Secret = "\240\159\148\165 Secret (Tier 4)",
			Cosmic = "\226\156\168 Cosmic (Tier 3)",
			Mythic = "\240\159\148\174 Mythic (Tier 2)",
			Legendary = "\226\173\144 Legendary (Tier 1)",
			Epic = "\240\159\146\156 Epic",
			Rare = "\240\159\148\183 Rare",
			Uncommon = "\240\159\159\162 Uncommon",
			Common = "\226\154\170 Common",
		}
		local F = {}
		for P, j in pairs(J.selectedRarities or {}) do
			if j and t[P] then
				table.insert(F, t[P])
			end
		end
		Pi.dropTargetRarities = Yi:Dropdown({
			Title = (A.EggSelect and A.EggSelect.DropRaritiesTitle) or "Selected Rarities",
			Desc = (A.EggSelect and A.EggSelect.DropRaritiesDesc) or "Click to choose which rarities to collect",
			Values = w,
			Value = F,
			Multi = true,
			Callback = function(P)
				local j = {}
				local function Y(P)
					if type(P) == "table" then
						P = P.Title or P.Name or P[1] or ""
					end
					local Y = string.lower(tostring(P or ""))
					for P, X in ipairs(I) do
						if string.find(Y, string.lower(X)) then
							j[X] = true
							break
						end
					end
				end
				if type(P) == "table" then
					for P, j in pairs(P) do
						if type(j) == "string" or type(j) == "table" then
							Y(j)
						elseif type(P) == "string" and j == true then
							Y(P)
						end
					end
				elseif type(P) == "string" then
					Y(P)
				end
				J.selectedRarities = j
				Py()
			end,
		})
		Pi.secSafety = Xi:Section({ Title = A.Character.SecSafety })
		Pi.togGodmode = Xi:Toggle({
			Title = A.Character.GodmodeTitle,
			Desc = A.Character.GodmodeDesc,
			Icon = "solar:shield-check-bold",
			Value = false,
			Callback = function(P)
				if P then
					enableDesyncGodmode()
					z({ Title = "Godmode", Content = QU[bU].Notifications.GodmodeStarted, Icon = "shield-check" })
				else
					disableDesyncGodmode()
					z({ Title = "Godmode", Content = QU[bU].Notifications.GodmodeStopped, Icon = "shield-off" })
				end
			end,
		})
		Pi.btnUnstick = Xi:Button({
			Title = A.Character.UnstickTitle,
			Desc = A.Character.UnstickDesc,
			Icon = "solar:exit-bold",
			Callback = function()
				pcall(Ey)
				pcall(Ly)
				pcall(ly)
				z({ Title = "Unstick", Content = QU[bU].Notifications.UnstickDone, Icon = "check" })
			end,
		})
		Pi.secFlight = Xi:Section({ Title = A.Character.SecFlight })
		Pi.sliderSpeed = Xi:Slider({
			Title = A.Character.SpeedTitle,
			Desc = A.Character.SpeedDesc,
			Step = 25,
			Value = { Min = 100, Max = 1000, Default = J.glideSpeed or 600 },
			Callback = function(P)
				J.glideSpeed = P
				H(P)
			end,
		})
		Pi.secDashboard = Mi:Section({ Title = A.Settings.SecDashboard })
		Pi.paraLiveDash = Mi:Paragraph({
			Title = A.Settings.DashTitle,
			Desc = string.format(
				"Status: Ready\nFarm Mode: Idle\nCarried Eggs: 0\nFlight Speed: %d Studs/s",
				J.glideSpeed or 600
			),
		})
		Pi.secUI = Mi:Section({ Title = A.Settings.SecUI })
		Pi.dropLang = Mi:Dropdown({
			Title = A.Settings.LangTitle,
			Values = { "English", "\224\185\132\224\184\151\224\184\162" },
			Value = (bU == "EN" and "English" or "\224\185\132\224\184\151\224\184\162"),
			Callback = function(P)
				local j = (P == "\224\185\132\224\184\151\224\184\162") and "TH" or "EN"
				if j ~= bU then
					bU = j
					ei(bU)
					pcall(Py)
					z({
						Title = (bU == "TH") and "\224\184\160\224\184\178\224\184\169\224\184\178" or "Language",
						Content = QU[bU].Notifications.LangSwitched,
						Icon = "check-circle",
					})
				end
			end,
		})
		Pi.sliderTransp = Mi:Slider({
			Title = A.Settings.TranspTitle,
			Desc = A.Settings.TranspDesc,
			Step = 5,
			Value = { Min = 0, Max = 90, Default = 0 },
			Callback = function(P)
				k(P)
			end,
		})
		Pi.dropTheme = Mi:Dropdown({
			Title = A.Settings.ThemeTitle,
			Values = { "Dark", "Rose", "Plant", "Red", "Sky", "Purple" },
			Value = "Dark",
			Callback = function(P)
				pcall(function()
					j:SetTheme(P)
				end)
			end,
		})
		Pi.secPerformance =
			Mi:Section({ Title = (A.Settings and A.Settings.SecPerformance) or "Performance & Graphics" })
		Pi.togPerformance = Mi:Toggle({
			Title = (A.Settings and A.Settings.PerformanceTitle) or "Ultra Potato Mode (Maximum FPS Boost)",
			Desc = (A.Settings and A.Settings.PerformanceDesc)
				or "Disables shadows, textures, particles, and shaders for maximum FPS smoothness",
			Icon = "solar:bolt-bold",
			Value = J.performanceMode,
			Callback = function(P)
				J.performanceMode = P
				Py()
				if P then
					uU()
				else
					gU()
				end
				local j = QU[bU] or QU.EN
				z({
					Title = "Performance Mode",
					Content = P and (j.Notifications.PerformanceStarted or "Performance Mode enabled")
						or (j.Notifications.PerformanceStopped or "Performance Mode disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.togDisable3D = Mi:Toggle({
			Title = (A.Settings and A.Settings.Disable3DTitle) or "Disable 3D Rendering (GPU Saver 95%)",
			Desc = (A.Settings and A.Settings.Disable3DDesc)
				or "Freezes 3D viewport rendering to drop GPU usage to ~1%. Perfect for overnight farming!",
			Icon = "solar:monitor-camera-bold",
			Value = J.disable3D,
			Callback = function(P)
				J.disable3D = P
				Py()
				pcall(function()
					Y:Set3dRenderingEnabled(not P)
				end)
				local j = QU[bU] or QU.EN
				z({
					Title = "3D Rendering",
					Content = P and (j.Notifications.Disable3DStarted or "3D Rendering disabled (GPU Saver)")
						or (j.Notifications.Disable3DStopped or "3D Rendering restored"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.secWebhook = Mi:Section({ Title = (A.Settings and A.Settings.SecWebhook) or "Discord Webhook Telemetry" })
		Pi.inpWebhookUrl = Mi:Input({
			Title = (A.Settings and A.Settings.WebhookUrlTitle) or "Discord Webhook URL",
			Desc = (A.Settings and A.Settings.WebhookUrlDesc) or "Enter Discord Webhook URL for live stats tracking",
			Value = J.webhookUrl or "",
			Default = J.webhookUrl or "",
			Placeholder = (A.Settings and A.Settings.WebhookUrlPlaceholder) or "https://discord.com/api/webhooks/...",
			Callback = function(P)
				J.webhookUrl = (tostring(P or "")):gsub("%s+", "")
				Py()
			end,
		})
		Pi.togWebhook = Mi:Toggle({
			Title = (A.Settings and A.Settings.WebhookTogTitle) or "Enable Webhook Notifications",
			Desc = (A.Settings and A.Settings.WebhookTogDesc)
				or "Periodically send live stats & earnings reports to Discord",
			Icon = "solar:bell-bold",
			Value = J.webhookEnabled,
			Callback = function(P)
				J.webhookEnabled = P
				Py()
				if P then
					IU.startLoop()
				else
					IU.stopLoop()
				end
				local j = QU[bU] or QU.EN
				z({
					Title = "Discord Webhook",
					Content = P and (j.Notifications and j.Notifications.WebhookStarted or "Webhook tracking enabled")
						or (j.Notifications and j.Notifications.WebhookStopped or "Webhook tracking disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.btnTestWebhook = Mi:Button({
			Title = (A.Settings and A.Settings.WebhookTestTitle) or "Send Test Webhook",
			Desc = (A.Settings and A.Settings.WebhookTestDesc) or "Test connection with custom 'Dice' branding",
			Icon = "solar:send-bold",
			Callback = function()
				IU.send(true)
			end,
		})
		Pi.secSystem = Mi:Section({ Title = A.Settings.SecSystem })
		Pi.togAntiAFK = Mi:Toggle({
			Title = (A.Settings and A.Settings.AntiAFKTitle) or "Anti-AFK (Double-Esc 10m / Mobile)",
			Desc = (A.Settings and A.Settings.AntiAFKDesc)
				or "Double-Esc menu pulse every 10m + Mobile touch + PC jitter resets idle timer safely without Idled",
			Icon = "solar:shield-check-bold",
			Value = J.antiAFK,
			Callback = function(P)
				J.antiAFK = P
				Py()
				if P then
					rU()
				else
					sU()
				end
				local j = QU[bU] or QU.EN
				z({
					Title = "Anti-AFK",
					Content = P and (j.Notifications.AntiAFKStarted or "Safe Anti-AFK enabled")
						or (j.Notifications.AntiAFKStopped or "Safe Anti-AFK disabled"),
					Icon = P and "check-circle" or "x-circle",
				})
			end,
		})
		Pi.btnReset = Mi:Button({
			Title = A.Settings.ResetTitle,
			Desc = A.Settings.ResetDesc,
			Icon = "solar:restart-bold",
			Callback = function()
				pcall(ly)
				pcall(qy)
				z({ Title = "Reset State", Content = "Character state reset successfully", Icon = "check-circle" })
			end,
		})
		Pi.btnRejoin = Mi:Button({
			Title = A.Settings.RejoinTitle,
			Desc = A.Settings.RejoinDesc,
			Icon = "solar:logout-2-bold",
			Callback = function()
				z({ Title = "Rejoin Server", Content = "Reconnecting to server...", Icon = "loader" })
				task.spawn(function()
					local P = game:GetService("TeleportService")
					local j = game:GetService("Players")
					local Y = j.LocalPlayer
					local X = pcall(function()
						if #j:GetPlayers() > 1 and (game.JobId and game.JobId ~= "") then
							P:TeleportToPlaceInstance(game.PlaceId, game.JobId, Y)
						else
							P:Teleport(game.PlaceId, Y)
						end
					end)
					if not X then
						task.wait(0.5)
						pcall(function()
							P:Teleport(game.PlaceId, Y)
						end)
					end
				end)
			end,
		})
		Pi.btnUnload = Mi:Button({
			Title = A.Settings.UnloadTitle,
			Desc = A.Settings.UnloadDesc,
			Icon = "solar:trash-bin-trash-bold",
			Callback = function()
				ni()
			end,
		})
		Oi()
		task.spawn(function()
			local P = ""
			local j = nil
			local Y = ""
			while J.alive do
				pcall(function()
					local X = oy()
					local M = (bU == "TH")
					local z = oi(bU)
					if v then
						local Y = Color3.fromRGB(0, 255, 160)
						if J.securingEgg or J.teleporting then
							Y = Color3.fromRGB(249, 115, 22)
						elseif J.isReturning or J.glidingToTarget then
							Y = Color3.fromRGB(59, 130, 246)
						elseif J.delivering then
							Y = Color3.fromRGB(16, 185, 129)
						end
						local X = (M and "\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176: " or "Status: ")
							.. z
						if X ~= P or Y ~= j then
							P = X
							j = Y
							pcall(function()
								if v.SetTitle then
									v:SetTitle(X)
								end
								if v.SetColor then
									v:SetColor(Y)
								end
							end)
						end
					end
					if Pi.paraLiveDash and Pi.paraLiveDash.SetDesc then
						local P = M
								and "\224\184\171\224\184\162\224\184\184\224\184\148\224\184\158\224\184\177\224\184\129"
							or "Idle"
						if Qy == "TWEEN" then
							P = M
									and "\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136 (\224\184\154\224\184\180\224\184\153\224\185\128\224\184\163\224\185\135\224\184\167)"
								or "Auto Steal (Tween)"
						elseif Qy == "WARP" then
							P = M
									and "\224\184\130\224\185\130\224\184\161\224\184\162\224\185\132\224\184\130\224\185\136 (\224\184\167\224\184\178\224\184\163\224\185\140\224\184\155)"
								or "Auto Steal (Teleport)"
						end
						local j = M
								and "\224\184\170\224\184\150\224\184\178\224\184\153\224\184\176: %s\n\224\185\130\224\184\171\224\184\161\224\184\148\224\184\159\224\184\178\224\184\163\224\185\140\224\184\161: %s\n\224\184\136\224\184\179\224\184\153\224\184\167\224\184\153\224\185\132\224\184\130\224\185\136\224\185\131\224\184\153\224\184\149\224\184\177\224\184\167: %d \224\184\159\224\184\173\224\184\135\n\224\184\132\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\184\154\224\184\180\224\184\153: %d Studs/s"
							or "Status: %s\nFarm Mode: %s\nCarried Eggs: %d\nFlight Speed: %d Studs/s"
						local o = string.format(j, z, P, X, J.glideSpeed or 600)
						if o ~= Y then
							Y = o
							pcall(function()
								Pi.paraLiveDash:SetDesc(o)
							end)
						end
					end
				end)
				task.wait(1)
			end
		end)
		P(K)
		return
	end
	if J.gui then
		pcall(function()
			J.gui:Destroy()
		end)
		J.gui = nil
	end
	local o = Instance.new("ScreenGui")
	o.Name = "DesyncSniperUI_v41_5"
	o.ResetOnSpawn = false
	o.DisplayOrder = 99999
	o.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	o.AutoLocalize = false
	local q = S:FindFirstChild("PlayerGui") or game:GetService("CoreGui")
	pcall(function()
		if syn and syn.protect_gui then
			syn.protect_gui(o)
			o.Parent = game:GetService("CoreGui")
		else
			o.Parent = q
		end
	end)
	if not o.Parent then
		o.Parent = q
	end
	J.gui = o
	local W = Color3.fromRGB(15, 17, 24)
	local O = Color3.fromRGB(20, 24, 34)
	local V = Color3.fromRGB(22, 26, 38)
	local e = Color3.fromRGB(28, 33, 48)
	local v = Color3.fromRGB(45, 52, 75)
	local f = Color3.fromRGB(240, 243, 255)
	local n = Color3.fromRGB(140, 148, 170)
	local C = Color3.fromRGB(38, 43, 60)
	local D = Color3.fromRGB(150, 158, 180)
	local i = Color3.fromRGB(255, 255, 255)
	local K = 475
	local y = 46
	local k = false
	local A = Instance.new("Frame")
	A.Name = "MainFrame"
	A.Size = UDim2.new(0, 330, 0, K)
	A.Position = UDim2.new(0.04, 0, 0.22, 0)
	A.BackgroundColor3 = W
	A.BorderSizePixel = 0
	A.Active = true
	A.Draggable = true
	A.ClipsDescendants = true
	A.Parent = o
	local p = Instance.new("UICorner")
	p.CornerRadius = UDim.new(0, 12)
	p.Parent = A
	local T = Instance.new("UIStroke")
	T.Color = v
	T.Thickness = 1.4
	T.Parent = A
	local B = Instance.new("Frame")
	B.Name = "Header"
	B.Size = UDim2.new(1, 0, 0, 46)
	B.BackgroundColor3 = O
	B.BorderSizePixel = 0
	B.Parent = A;
	(Instance.new("UICorner", B)).CornerRadius = UDim.new(0, 12)
	local x = Instance.new("TextLabel")
	x.Size = UDim2.new(1, -90, 0, 22)
	x.Position = UDim2.new(0, 12, 0, 6)
	x.BackgroundTransparency = 1
	x.Text = "Dice Hub (Fallback)"
	x.TextColor3 = f
	x.TextSize = 14
	x.Font = Enum.Font.GothamBold
	x.TextXAlignment = Enum.TextXAlignment.Left
	x.AutoLocalize = false
	x.Parent = B
	local c = Instance.new("TextLabel")
	c.Size = UDim2.new(1, -90, 0, 14)
	c.Position = UDim2.new(0, 12, 0, 26)
	c.BackgroundTransparency = 1
	c.Text = "Steal an Egg v42.71"
	c.TextColor3 = Color3.fromRGB(0, 255, 160)
	c.TextSize = 11
	c.Font = Enum.Font.Gotham
	c.TextXAlignment = Enum.TextXAlignment.Left
	c.AutoLocalize = false
	c.Parent = B
	local G = Instance.new("TextButton")
	G.Size = UDim2.new(0, 28, 0, 28)
	G.Position = UDim2.new(1, -68, 0, 9)
	G.BackgroundColor3 = V
	G.Text = "-"
	G.TextColor3 = f
	G.TextSize = 16
	G.Font = Enum.Font.GothamBold
	G.AutoButtonColor = false
	G.Parent = B;
	(Instance.new("UICorner", G)).CornerRadius = UDim.new(0, 6)
	local a = Instance.new("TextButton")
	a.Size = UDim2.new(0, 28, 0, 28)
	a.Position = UDim2.new(1, -36, 0, 9)
	a.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
	a.Text = "X"
	a.TextColor3 = f
	a.TextSize = 12
	a.Font = Enum.Font.GothamBold
	a.AutoButtonColor = false
	a.Parent = B;
	(Instance.new("UICorner", a)).CornerRadius = UDim.new(0, 6)
	local w = Instance.new("ScrollingFrame")
	w.Size = UDim2.new(1, 0, 1, -46)
	w.Position = UDim2.new(0, 0, 0, 46)
	w.BackgroundTransparency = 1
	w.BorderSizePixel = 0
	w.ScrollBarThickness = 3
	w.ScrollBarImageColor3 = v
	w.CanvasSize = UDim2.new(0, 0, 0, 0)
	w.AutomaticCanvasSize = Enum.AutomaticSize.Y
	w.Parent = A
	local Z = Instance.new("UIListLayout")
	Z.SortOrder = Enum.SortOrder.LayoutOrder
	Z.Padding = UDim.new(0, 7)
	Z.Parent = w
	local t = Instance.new("UIPadding")
	t.PaddingTop = UDim.new(0, 8)
	t.PaddingBottom = UDim.new(0, 12)
	t.PaddingLeft = UDim.new(0, 10)
	t.PaddingRight = UDim.new(0, 10)
	t.Parent = w
	G.MouseButton1Click:Connect(function()
		k = not k
		G.Text = k and "+" or "-"
		(X:Create(
			A,
			TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
			{ Size = k and UDim2.new(0, 330, 0, y) or UDim2.new(0, 330, 0, K) }
		)):Play()
	end)
	a.MouseButton1Click:Connect(function()
		ni()
	end)
	local function F(P, j)
		local Y = Instance.new("Frame")
		Y.Size = UDim2.new(1, 0, 0, 20)
		Y.BackgroundTransparency = 1
		Y.LayoutOrder = j
		Y.Parent = w
		local X = Instance.new("TextLabel")
		X.Size = UDim2.new(1, 0, 1, 0)
		X.BackgroundTransparency = 1
		X.Text = P
		X.TextColor3 = Color3.fromRGB(0, 185, 255)
		X.TextSize = 11
		X.Font = Enum.Font.GothamBold
		X.TextXAlignment = Enum.TextXAlignment.Left
		X.AutoLocalize = false
		X.Parent = Y
		return Y
	end
	local function E(P, j, Y, M, z, o)
		local q = Instance.new("Frame")
		q.Size = UDim2.new(1, 0, 0, 52)
		q.BackgroundColor3 = V
		q.LayoutOrder = z
		q.Parent = w;
		(Instance.new("UICorner", q)).CornerRadius = UDim.new(0, 8)
		local S = Instance.new("TextLabel")
		S.Size = UDim2.new(1, -60, 0, 18)
		S.Position = UDim2.new(0, 10, 0, 8)
		S.BackgroundTransparency = 1
		S.Text = P
		S.TextColor3 = M or f
		S.TextSize = 13
		S.Font = Enum.Font.GothamBold
		S.TextXAlignment = Enum.TextXAlignment.Left
		S.AutoLocalize = false
		S.Parent = q
		local W = Instance.new("TextLabel")
		W.Size = UDim2.new(1, -60, 0, 16)
		W.Position = UDim2.new(0, 10, 0, 26)
		W.BackgroundTransparency = 1
		W.Text = j
		W.TextColor3 = n
		W.TextSize = 10
		W.Font = Enum.Font.Gotham
		W.TextXAlignment = Enum.TextXAlignment.Left
		W.AutoLocalize = false
		W.Parent = q
		local O = Instance.new("TextButton")
		O.Size = UDim2.new(0, 44, 0, 24)
		O.Position = UDim2.new(1, -54, 0.5, -12)
		O.BackgroundColor3 = Y and M or C
		O.Text = ""
		O.AutoButtonColor = false
		O.Parent = q;
		(Instance.new("UICorner", O)).CornerRadius = UDim.new(1, 0)
		local e = Instance.new("Frame")
		e.Size = UDim2.new(0, 18, 0, 18)
		e.Position = Y and UDim2.new(1, -21, 0.5, -9) or UDim2.new(0, 3, 0.5, -9)
		e.BackgroundColor3 = Y and i or D
		e.Parent = O;
		(Instance.new("UICorner", e)).CornerRadius = UDim.new(1, 0)
		local v = Y
		local function K(P)
			v = P
			local j = TweenInfo.new(0.18, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
			(X:Create(O, j, { BackgroundColor3 = v and M or C })):Play();
			(X:Create(
				e,
				j,
				{ Position = v and UDim2.new(1, -21, 0.5, -9) or UDim2.new(0, 3, 0.5, -9), BackgroundColor3 = v and i
					or D }
			)):Play()
		end
		O.MouseButton1Click:Connect(function()
			local P = not v
			K(P)
			o(P)
		end)
		return K
	end
	local function d(P, j, Y, X, M)
		local z = Instance.new("Frame")
		z.Size = UDim2.new(1, 0, 0, 48)
		z.BackgroundColor3 = V
		z.LayoutOrder = X
		z.Parent = w;
		(Instance.new("UICorner", z)).CornerRadius = UDim.new(0, 8)
		local o = Instance.new("TextLabel")
		o.Size = UDim2.new(1, -95, 0, 18)
		o.Position = UDim2.new(0, 10, 0, 6)
		o.BackgroundTransparency = 1
		o.Text = P
		o.TextColor3 = Y or f
		o.TextSize = 13
		o.Font = Enum.Font.GothamBold
		o.TextXAlignment = Enum.TextXAlignment.Left
		o.AutoLocalize = false
		o.Parent = z
		local q = Instance.new("TextLabel")
		q.Size = UDim2.new(1, -95, 0, 16)
		q.Position = UDim2.new(0, 10, 0, 24)
		q.BackgroundTransparency = 1
		q.Text = j
		q.TextColor3 = n
		q.TextSize = 10
		q.Font = Enum.Font.Gotham
		q.TextXAlignment = Enum.TextXAlignment.Left
		q.AutoLocalize = false
		q.Parent = z
		local S = Instance.new("TextButton")
		S.Size = UDim2.new(0, 78, 0, 30)
		S.Position = UDim2.new(1, -86, 0.5, -15)
		S.BackgroundColor3 = Y
		S.Text = "RUN"
		S.TextColor3 = Color3.fromRGB(255, 255, 255)
		S.TextSize = 11
		S.Font = Enum.Font.GothamBold
		S.AutoButtonColor = false
		S.Parent = z;
		(Instance.new("UICorner", S)).CornerRadius = UDim.new(0, 6)
		S.MouseButton1Click:Connect(M)
	end
	F("AUTO STEAL MODES", 10)
	local U = false
	local R = nil
	local u = nil
	R = E(
		"Auto Steal (Tween)",
		"Fly to steal eggs & auto stash into backpack",
		J.pureTweenFarm,
		Color3.fromRGB(0, 195, 255),
		11,
		function(P)
			if U then
				return
			end
			if P then
				PU("TWEEN")
			else
				if Qy == "TWEEN" or J.pureTweenFarm then
					PU("NONE")
				end
			end
		end
	)
	u = E(
		"Auto Steal (Teleport)",
		"Teleport to steal eggs in continuous loop",
		J.autoFarmLoop,
		Color3.fromRGB(168, 85, 247),
		12,
		function(P)
			if U then
				return
			end
			if P then
				PU("WARP")
			else
				if Qy == "WARP" or J.autoFarmLoop then
					PU("NONE")
				end
			end
		end
	)
	jU = function(P)
		pcall(function()
			if R then
				U = true
				R(P)
				U = false
			end
		end)
	end
	YU = function(P)
		pcall(function()
			if u then
				U = true
				u(P)
				U = false
			end
		end)
	end
	d(
		"Single Steal (Teleport)",
		"Teleport to steal 1 target egg and return",
		Color3.fromRGB(59, 130, 246),
		13,
		function()
			task.spawn(function()
				if Qy ~= "NONE" then
					PU("NONE")
					task.wait(0.2)
				end
				local P = Gy()
				if P then
					local j = wy(P, nil)
					if j then
						pcall(qy)
						if J.autoGlide then
							xy(J.glideSpeed)
							qy()
						end
					end
				end
			end)
		end
	)
	F("PLACE EGG", 20)
	d("Place Egg", "Tween home, place all carried eggs & hatch", Color3.fromRGB(16, 215, 130), 21, function()
		task.spawn(function()
			J.statusText = "[Manual] Depositing eggs..."
			By(J.glideSpeed)
			Ay()
			qy()
			J.isReturning = false
			J.delivering = false
		end)
	end)
	E(
		"Auto Place (Every 5)",
		"Return home every 5 steals, place & wait 5s",
		J.autoPlaceEvery5,
		Color3.fromRGB(14, 165, 233),
		22,
		function(P)
			J.autoPlaceEvery5 = P
			if not P then
				J.batchStealCount = 0
			end
			Q()
		end
	)
	E(
		"Auto Hatch",
		"Automatically hatch ready eggs continuously",
		J.autoHatch,
		Color3.fromRGB(16, 185, 129),
		22,
		function(P)
			J.autoHatch = P
			Q()
		end
	)
	E(
		"Auto Return",
		"Automatically return to safe area after stealing",
		J.autoGlide,
		Color3.fromRGB(245, 158, 11),
		23,
		function(P)
			J.autoGlide = P
			Q()
		end
	)
	E(
		"Auto Treadmill",
		"Run on base treadmill when no target eggs are spawned",
		J.autoTreadmill,
		Color3.fromRGB(168, 85, 247),
		24,
		function(P)
			J.autoTreadmill = P
			Q()
			ty()
			if not P and (J.onTreadmill or Uy()) then
				Ey()
			end
		end
	)
	E(
		"Auto Equip Best Pet",
		"Automatically equip best pets after hatching and periodically",
		J.autoEquipBestPet,
		Color3.fromRGB(16, 185, 129),
		25,
		function(P)
			J.autoEquipBestPet = P
			Q()
			if P then
				task.spawn(function()
					pcall(fU)
				end)
			end
		end
	)
	d("Equip Best Pet", "Instantly equip highest MPS pets from pen", Color3.fromRGB(34, 197, 94), 26, function()
		task.spawn(function()
			pcall(fU)
		end)
	end)
	F("CHARACTER & SAFETY", 30)
	E("Godmode", "Invincible against attacks and guards", false, Color3.fromRGB(244, 63, 94), 31, function(P)
		if P then
			enableDesyncGodmode()
		else
			disableDesyncGodmode()
		end
	end)
	d("Get Out Treadmill", "Instantly escape from treadmill or gear", Color3.fromRGB(249, 115, 22), 32, function()
		pcall(Ey)
		pcall(Ly)
		pcall(ly)
	end)
	F("CONTROLS & SETTINGS", 40)
	local g = Instance.new("Frame")
	g.Size = UDim2.new(1, 0, 0, 48)
	g.BackgroundColor3 = V
	g.LayoutOrder = 41
	g.Parent = w;
	(Instance.new("UICorner", g)).CornerRadius = UDim.new(0, 8)
	local r = Instance.new("TextLabel")
	r.Size = UDim2.new(1, -130, 0, 18)
	r.Position = UDim2.new(0, 10, 0, 6)
	r.BackgroundTransparency = 1
	r.Text = "Flight Speed"
	r.TextColor3 = f
	r.TextSize = 13
	r.Font = Enum.Font.GothamBold
	r.TextXAlignment = Enum.TextXAlignment.Left
	r.AutoLocalize = false
	r.Parent = g
	local N = Instance.new("TextLabel")
	N.Size = UDim2.new(0, 70, 0, 24)
	N.Position = UDim2.new(1, -80, 0.5, -12)
	N.BackgroundColor3 = W
	N.Text = string.format("%d Studs/s", J.glideSpeed or 600)
	N.TextColor3 = Color3.fromRGB(0, 255, 160)
	N.TextSize = 11
	N.Font = Enum.Font.GothamBold
	N.AutoLocalize = false
	N.Parent = g;
	(Instance.new("UICorner", N)).CornerRadius = UDim.new(0, 6)
	local m = Instance.new("TextButton")
	m.Size = UDim2.new(0, 24, 0, 24)
	m.Position = UDim2.new(1, -110, 0.5, -12)
	m.BackgroundColor3 = e
	m.Text = "-"
	m.TextColor3 = f
	m.TextSize = 14
	m.Font = Enum.Font.GothamBold
	m.Parent = g;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(0, 6)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0, 24, 0, 24)
	b.Position = UDim2.new(1, -138, 0.5, -12)
	b.BackgroundColor3 = e
	b.Text = "+"
	b.TextColor3 = f
	b.TextSize = 14
	b.Font = Enum.Font.GothamBold
	b.Parent = g;
	(Instance.new("UICorner", b)).CornerRadius = UDim.new(0, 6)
	m.MouseButton1Click:Connect(function()
		J.glideSpeed = math.max(100, (J.glideSpeed or 600) - 25)
		N.Text = string.format("%d Studs/s", J.glideSpeed)
		H(J.glideSpeed)
	end)
	b.MouseButton1Click:Connect(function()
		J.glideSpeed = math.min(1000, (J.glideSpeed or 600) + 25)
		N.Text = string.format("%d Studs/s", J.glideSpeed)
		H(J.glideSpeed)
	end)
	d("Reset Character State", "Clear velocity, cancel push & unfreeze", Color3.fromRGB(99, 102, 241), 42, function()
		pcall(ly)
		pcall(qy)
	end)
	d("Unload Script", "Destroy UI and stop all background loops", Color3.fromRGB(153, 27, 27), 43, function()
		ni()
	end)
	F("EGG SELECT (ZONES & RARITIES)", 45)
	local jy = Instance.new("TextButton")
	jy.Size = UDim2.new(1, 0, 0, 48)
	jy.BackgroundColor3 = V
	jy.LayoutOrder = 46
	jy.Text = ""
	jy.AutoButtonColor = false
	jy.Parent = w;
	(Instance.new("UICorner", jy)).CornerRadius = UDim.new(0, 8)
	local function Yy()
		local P = 0
		for j, Y in ipairs(L) do
			if J.selectedZones and J.selectedZones[Y] then
				P = P + 1
			end
		end
		return P
	end
	local Xy = Instance.new("TextLabel")
	Xy.Size = UDim2.new(1, -50, 0, 18)
	Xy.Position = UDim2.new(0, 10, 0, 6)
	Xy.BackgroundTransparency = 1
	Xy.Text = string.format("\240\159\147\141 Target Zones (%d/12 Active)", Yy())
	Xy.TextColor3 = Color3.fromRGB(0, 220, 255)
	Xy.TextSize = 13
	Xy.Font = Enum.Font.GothamBold
	Xy.TextXAlignment = Enum.TextXAlignment.Left
	Xy.AutoLocalize = false
	Xy.Parent = jy
	local My = Instance.new("TextLabel")
	My.Size = UDim2.new(1, -50, 0, 16)
	My.Position = UDim2.new(0, 10, 0, 26)
	My.BackgroundTransparency = 1
	My.Text = "Click to expand / collapse zone selection"
	My.TextColor3 = n
	My.TextSize = 10
	My.Font = Enum.Font.Gotham
	My.TextXAlignment = Enum.TextXAlignment.Left
	My.AutoLocalize = false
	My.Parent = jy
	local zy = Instance.new("TextLabel")
	zy.Size = UDim2.new(0, 30, 0, 30)
	zy.Position = UDim2.new(1, -38, 0.5, -15)
	zy.BackgroundTransparency = 1
	zy.Text = "\226\150\188"
	zy.TextColor3 = n
	zy.TextSize = 12
	zy.Font = Enum.Font.GothamBold
	zy.Parent = jy
	local Sy = Instance.new("Frame")
	Sy.Size = UDim2.new(1, 0, 0, 0)
	Sy.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
	Sy.LayoutOrder = 47
	Sy.Visible = false
	Sy.ClipsDescendants = true
	Sy.Parent = w;
	(Instance.new("UICorner", Sy)).CornerRadius = UDim.new(0, 8)
	local Wy = Instance.new("UIGridLayout")
	Wy.CellSize = UDim2.new(0.48, 0, 0, 32)
	Wy.CellPadding = UDim2.new(0.04, 0, 0, 6)
	Wy.SortOrder = Enum.SortOrder.LayoutOrder
	Wy.Parent = Sy;
	(Instance.new("UIPadding", Sy)).PaddingTop = UDim.new(0, 8)
	Sy.UIPadding.PaddingBottom = UDim.new(0, 8)
	Sy.UIPadding.PaddingLeft = UDim.new(0, 8)
	Sy.UIPadding.PaddingRight = UDim.new(0, 8)
	local Oy = {}
	for P, j in ipairs(L) do
		local Y = Instance.new("TextButton")
		Y.LayoutOrder = P
		Y.Font = Enum.Font.GothamBold
		Y.TextSize = 11
		Y.AutoButtonColor = false
		Y.AutoLocalize = false
		(Instance.new("UICorner", Y)).CornerRadius = UDim.new(0, 6)
		local function X()
			local P = J.selectedZones and J.selectedZones[j] == true
			if P then
				Y.BackgroundColor3 = s[j] or Color3.fromRGB(59, 130, 246)
				Y.TextColor3 = Color3.new(1, 1, 1)
				Y.Text = "\226\156\147 " .. j
			else
				Y.BackgroundColor3 = Color3.fromRGB(28, 32, 44)
				Y.TextColor3 = Color3.fromRGB(140, 150, 170)
				Y.Text = j
			end
		end
		X()
		Y.MouseButton1Click:Connect(function()
			if not J.selectedZones then
				J.selectedZones = {}
			end
			J.selectedZones[j] = not (J.selectedZones[j] == true)
			X()
			Py()
			Xy.Text = string.format("\240\159\147\141 Target Zones (%d/12 Active)", Yy())
		end)
		Y.Parent = Sy
		Oy[j] = Y
	end
	local Vy = false
	jy.MouseButton1Click:Connect(function()
		Vy = not Vy
		Sy.Visible = Vy
		Sy.Size = Vy and UDim2.new(1, 0, 0, 240) or UDim2.new(1, 0, 0, 0)
		zy.Text = Vy and "\226\150\178" or "\226\150\188"
	end)
	local function ey()
		local P = 0
		for j, Y in ipairs(I) do
			if J.selectedRarities and J.selectedRarities[Y] then
				P = P + 1
			end
		end
		return P
	end
	local vy = Instance.new("TextButton")
	vy.Size = UDim2.new(1, 0, 0, 48)
	vy.BackgroundColor3 = V
	vy.LayoutOrder = 48
	vy.Text = ""
	vy.AutoButtonColor = false
	vy.Parent = w;
	(Instance.new("UICorner", vy)).CornerRadius = UDim.new(0, 8)
	local fy = Instance.new("TextLabel")
	fy.Size = UDim2.new(1, -50, 0, 18)
	fy.Position = UDim2.new(0, 10, 0, 6)
	fy.BackgroundTransparency = 1
	fy.Text = string.format("\240\159\165\154 Target Rarities (%d/%d Active)", ey(), #I)
	fy.TextColor3 = Color3.fromRGB(255, 180, 0)
	fy.TextSize = 13
	fy.Font = Enum.Font.GothamBold
	fy.TextXAlignment = Enum.TextXAlignment.Left
	fy.AutoLocalize = false
	fy.Parent = vy
	local ny = Instance.new("TextLabel")
	ny.Size = UDim2.new(1, -50, 0, 16)
	ny.Position = UDim2.new(0, 10, 0, 26)
	ny.BackgroundTransparency = 1
	ny.Text = "Click to expand / collapse rarity selection"
	ny.TextColor3 = n
	ny.TextSize = 10
	ny.Font = Enum.Font.Gotham
	ny.TextXAlignment = Enum.TextXAlignment.Left
	ny.AutoLocalize = false
	ny.Parent = vy
	local Cy = Instance.new("TextLabel")
	Cy.Size = UDim2.new(0, 30, 0, 30)
	Cy.Position = UDim2.new(1, -38, 0.5, -15)
	Cy.BackgroundTransparency = 1
	Cy.Text = "\226\150\188"
	Cy.TextColor3 = n
	Cy.TextSize = 12
	Cy.Font = Enum.Font.GothamBold
	Cy.Parent = vy
	local Dy = Instance.new("Frame")
	Dy.Size = UDim2.new(1, 0, 0, 0)
	Dy.BackgroundColor3 = Color3.fromRGB(18, 20, 28)
	Dy.LayoutOrder = 49
	Dy.Visible = false
	Dy.ClipsDescendants = true
	Dy.Parent = w;
	(Instance.new("UICorner", Dy)).CornerRadius = UDim.new(0, 8)
	local iy = Instance.new("UIGridLayout")
	iy.CellSize = UDim2.new(0.48, 0, 0, 32)
	iy.CellPadding = UDim2.new(0.04, 0, 0, 6)
	iy.SortOrder = Enum.SortOrder.LayoutOrder
	iy.Parent = Dy;
	(Instance.new("UIPadding", Dy)).PaddingTop = UDim.new(0, 8)
	Dy.UIPadding.PaddingBottom = UDim.new(0, 8)
	Dy.UIPadding.PaddingLeft = UDim.new(0, 8)
	Dy.UIPadding.PaddingRight = UDim.new(0, 8)
	for P, j in ipairs(I) do
		local Y = Instance.new("TextButton")
		Y.LayoutOrder = P
		Y.Font = Enum.Font.GothamBold
		Y.TextSize = 11
		Y.AutoButtonColor = false
		Y.AutoLocalize = false
		(Instance.new("UICorner", Y)).CornerRadius = UDim.new(0, 6)
		local function X()
			local P = J.selectedRarities and J.selectedRarities[j] == true
			if P then
				Y.BackgroundColor3 = h[j] or Color3.fromRGB(249, 115, 22)
				Y.TextColor3 = Color3.new(1, 1, 1)
				Y.Text = "\226\156\147 " .. j
			else
				Y.BackgroundColor3 = Color3.fromRGB(28, 32, 44)
				Y.TextColor3 = Color3.fromRGB(140, 150, 170)
				Y.Text = j
			end
		end
		X()
		Y.MouseButton1Click:Connect(function()
			if not J.selectedRarities then
				J.selectedRarities = {}
			end
			J.selectedRarities[j] = not (J.selectedRarities[j] == true)
			X()
			Py()
			fy.Text = string.format("\240\159\165\154 Target Rarities (%d/%d Active)", ey(), #I)
		end)
		Y.Parent = Dy
	end
	local Ky = false
	vy.MouseButton1Click:Connect(function()
		Ky = not Ky
		Dy.Visible = Ky
		Dy.Size = Ky and UDim2.new(1, 0, 0, 160) or UDim2.new(1, 0, 0, 0)
		Cy.Text = Ky and "\226\150\178" or "\226\150\188"
	end)
	P(function()
		A.Visible = true
	end)
end
O("[+] Initializing Dice Hub x WindUI v42.71 (Steal an Egg Edition)...")
Ci()
task.spawn(function()
	task.wait(0.5)
	gy()
	uy(true)
	Ly()
	if S.Character then
		Iy(S.Character)
	end
	qy()
	O("[+] Auto Humanoid Swap & Rigid Joint Locking Active.")
end)
S.CharacterAdded:Connect(function(P)
	task.wait(0.6)
	if J.alive then
		ly()
		ty()
		Ly()
		gy()
		uy(true)
		Iy(P)
		qy()
	end
end)
if J.performanceMode then
	task.spawn(uU)
end
if J.disable3D then
	pcall(function()
		Y:Set3dRenderingEnabled(false)
	end)
end
if J.antiAFK then
	task.spawn(rU)
end
if J.webhookEnabled and (J.webhookUrl and J.webhookUrl:find("https://")) then
	task.spawn(IU.startLoop)
end
O("[+] Dice Hub v42.71 Ready! Ultra Lightweight & High-FPS Active!")
