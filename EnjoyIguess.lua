local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local MainWindow = Library.CreateLib("Wheres The Baby", "BloodTheme")

local MainTab = MainWindow:NewTab("Main")
local MiscTab = MainWindow:NewTab("Misc")
local CreditsTab = MainWindow:NewTab("Credits")
local CreditsSection = CreditsTab:NewSection("Gui Made By Cxmplexe")
local MainSection = MainTab:NewSection("Character")
local StuffSection = MiscTab:NewSection("Player")
local CrazySection = MainTab:NewSection("Server")
MainSection:NewButton("Become Parent", "Turns you into a Parent", function()
    local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = BrickColor.new(21)
}

workspace.GameStuff.FE.TeamChange:FireServer(unpack(args))
end)
MainSection:NewButton("Become Baby", "Turns you into a Baby", function()
    local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = BrickColor.new(23)
}

workspace.GameStuff.FE.TeamChange:FireServer(unpack(args))
end)
StuffSection:NewSlider("Walkspeed", "Sets your Walkspeed", 200, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
StuffSection:NewSlider("Jumppower", "Sets your Jumppower", 200, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
StuffSection:NewSlider("Health", "Sets your Health", 0, 100, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.Health = s
end)

CrazySection:NewDropdown("Select Mode", "Selects what Mode to vote", {"1", "2", "3", "4", "5", "6"}, function(currentOption)
    local args = {
    [1] = (currentOption),
    [2] = math.huge
}

workspace.GameStuff.Votes.Vote:FireServer(unpack(args))
end)
MainSection:NewTextBox("Kill Player", "Kills A Player, doesnt work on yourself", function(txt)

    local LPlayer = (txt)

    local args = {
        [1] = game:GetService("Players").LocalPlayer,
        [2] = game:GetService("Players")[LPlayer].Character,
        [3] = math.huge
    }

    workspace.GameStuff.FE.Interact:FireServer(unpack(args))

end)
MainSection:NewTextBox("Heal Player", "Heals A Player, doesnt work on yourself", function(txt)
        
    local WPlayer = (txt)

    local args = {
        [1] = game:GetService("Players").LocalPlayer,
        [2] = game:GetService("Players").SuperBigFOLTFan.Character,
        [3] = -100
    }

    workspace.GameStuff.FE.Interact:FireServer(unpack(args))

end)
MainSection:NewTextBox("Annoy/UnAnnoy", "Annoys or stops Annoying A Player", function(txt)
        
    local APlayer = (txt)

    local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = game:GetService("Players")[APlayer].Character.Torso
}

workspace.GameStuff.FE.Grab:FireServer(unpack(args))
end)
MainSection:NewTextBox("pick up Baby", "Picks A Baby Up, Needs Baby Grabber", function(txt)
        
    local PPlayer = (txt)


local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = game:GetService("Players")[PPlayer].Character.Head,
    [3] = Vector3.new(166.5107879638672, 41.18710708618164, -9.594354629516602),
    [4] = Vector3.new(166.5107879638672, 41.18710708618164, -9.594354629516602)
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Baby Grabber").ToolUse:FireServer(unpack(args))

end)




print("just printing this so I can say its more than 100 Lines LAMO Now go fucking annoy some players ;)")