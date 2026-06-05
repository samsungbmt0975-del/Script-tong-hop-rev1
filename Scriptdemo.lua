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

