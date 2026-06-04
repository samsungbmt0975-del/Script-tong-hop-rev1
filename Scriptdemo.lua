loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Mod.DZX Roblox",
         Animation = "Tiktok:Mod.DZX"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id= 115886332900987",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Blox Fruit"})
     local Tab2o = MakeTab({Name = "Script 99 Night in the forest"})
     local Tab3o = MakeTab({Name = "Script linh tinh "})
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
  end
  })
  
  AddButton(Tab1o, {
     Name = "Neru Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NeroHubClub/AutoMythicFruitFinder/refs/heads/main/NeroHubFruitFinder"))()
  end
  })
  
  AddButton(Tab1o, {
     Name = "Teddy Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()
  end
  })
  
  AddButton(Tab2o, {
     Name = "Toasty Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/nouralddin-abdullah/ToastyHub-XD/refs/heads/main/hub-main.lua"))()
  end
  })

  AddButton(Tab1o, {
     Name = "Mod.DZX Hub",
    Callback = function()
	  -- this script created at https://lambloxfruitscript.vercel.app/
getgenv().ScriptTitle = "Mod.DZX Hub"
getgenv().ScriptSubTitle = "TikTok:Mod.DZX"
getgenv().ScriptImage = "https://i.ibb.co/wZ9yTMTv/file-0000000046007209be1734a414952ac0.jpg"
getgenv().ScriptAuthorName = "Mod.DZX"
getgenv().ScriptAuthorSubTitle = "Author Info"
loadstring(game:HttpGet("https://raw.githubusercontent.com/hoannhatz/Script/refs/heads/main/EZScript.lua"))()
  end
  })

  AddButton(Tab1o, {
     Name = "Andepzai Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()
  end
  })

  AddButton(Tab1o, {
     Name = "PMT Hub",
    Callback = function()
      loadstring(game:HttpGet("https://xhider.xyz/raw/pmtrieu04102012/PMThub"))()
  end
  })

  AddButton(Tab3o, {
     Name = "Fly gui by chatgpt",
    Callback = function()
      local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local plr = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local flying = false
local speed = 50
local bv, bg

-- GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "FlyGui"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 220, 0, 120)
frame.Position = UDim2.new(0.5, -110, 0.5, -60)
frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
frame.Active = true
frame.Draggable = true

local toggle = Instance.new("TextButton", frame)
toggle.Size = UDim2.new(0, 200, 0, 40)
toggle.Position = UDim2.new(0,10,0,10)
toggle.Text = "FLY OFF"

local box = Instance.new("TextBox", frame)
box.Size = UDim2.new(0, 200, 0, 40)
box.Position = UDim2.new(0,10,0,60)
box.Text = "50"
box.PlaceholderText = "Speed (1-500)"

local connection

local function startFly()
	if flying then return end
	flying = true

	bv = Instance.new("BodyVelocity")
	bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	bv.Parent = hrp

	bg = Instance.new("BodyGyro")
	bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	bg.P = 10000
	bg.Parent = hrp

	connection = RunService.RenderStepped:Connect(function()
		local cam = workspace.CurrentCamera
		local move = Vector3.zero

		if UIS:IsKeyDown(Enum.KeyCode.W) then move += cam.CFrame.LookVector end
		if UIS:IsKeyDown(Enum.KeyCode.S) then move -= cam.CFrame.LookVector end
		if UIS:IsKeyDown(Enum.KeyCode.A) then move -= cam.CFrame.RightVector end
		if UIS:IsKeyDown(Enum.KeyCode.D) then move += cam.CFrame.RightVector end
		if UIS:IsKeyDown(Enum.KeyCode.Space) then move += Vector3.new(0,1,0) end
		if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then move -= Vector3.new(0,1,0) end

		if move.Magnitude > 0 then
			bv.Velocity = move.Unit * speed
		else
			bv.Velocity = Vector3.zero
		end

		bg.CFrame = cam.CFrame
	end)
end

local function stopFly()
	flying = false
	if connection then connection:Disconnect() end
	if bv then bv:Destroy() end
	if bg then bg:Destroy() end
end

toggle.MouseButton1Click:Connect(function()
	if flying then
		stopFly()
		toggle.Text = "FLY OFF"
	else
		startFly()
		toggle.Text = "FLY ON"
	end
end)

box.FocusLost:Connect(function()
	local n = tonumber(box.Text)
	if n then
		speed = math.clamp(n,1,500)
		box.Text = tostring(speed)
	end
end)
  end
  })
