local v15 = v14:CreateWindow({
    Title = "Banana Cat Hub-Blox Fruit [ Premium ]", -- thay tên bạn muốn đặt
    SubTitle = "By Obii", -- tên bạn
    TabWidth = 160,
    Theme = "Dark", -- màu
    Acrylic = false,
    Size = Vector2.new(500, 320),
    MinimizeKey = Enum.KeyCode.RightControl
});

local v16 = {
    Home = v15:AddTab({ Title = "Tab Information" }),
    Main = v15:AddTab({ Title = "Tab Farming" }),
    Sea = v15:AddTab({ Title = "Tab Volcano And Sea Event" }),
    ITM = v15:AddTab({ Title = "Tab Farming Other" }),
    Setting = v15:AddTab({ Title = "Setting Farm" }),
    Status = v15:AddTab({ Title = "Tab Status And Server" }),
    Stats = v15:AddTab({ Title = "Tab Stats" }),
    Player = v15:AddTab({ Title = "Tab Local Player" }),
    Teleport = v15:AddTab({ Title = "Tab Teleport" }),
    Visual = v15:AddTab({ Title = "Tab Visual" }),
    Fruit = v15:AddTab({ Title = "Tab Esp And Fruit" }),
    Raid = v15:AddTab({ Title = "Tab Raid" }),
    Race = v15:AddTab({ Title = "Tab Upgrade Race" }),
    Shop = v15:AddTab({ Title = "Tab Shop" }),
    Misc = v15:AddTab({ Title = "Tab Misc" })
};

local v17 = game.PlaceId;
local v18 = game.PlaceId;

if (v18 == 2753915549) then
     Sea1 = true;
elseif (v18 == 4442272183) then
     Sea2 = true;
elseif (v18 == 7449423635) then
     Sea3 = true;
else
     game:Shutdown();
end

-- Chống AFK (Anti-AFK)
game:GetService("Players").LocalPlayer.Idled:connect(function()
     game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), game.Workspace.CurrentCamera.CFrame);
     wait();
     game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), game.Workspace.CurrentCamera.CFrame);
end);

Sea1 = false;
Sea2 = false;
Sea3 = false;

local v19 = game.PlaceId;
if (v19 == 2753915549) then
     Sea1 = true;
elseif (v19 == 4442272183) then
     Sea2 = true;
elseif (v19 == 7449423635) then
     Sea3 = true;
end

-- Hàm kiểm tra Level để nhận nhiệm vụ tự động (Auto Farm Quests)
function CheckLevel()
     local v197 = game:GetService("Players").LocalPlayer.Data.Level.Value;
     if Sea1 then
         if ((v197 == 1) or (v197 <= 9) or (SelectMonster == "Bandit")) then
             Ms = "Bandit";
             NameQuest = "BanditQuest1";
             QuestLv = 1;
             NameMon = "Bandit";
             CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875);
             CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953);
         elseif ((v197 == 10) or (v197 <= 14) or (SelectMonster == "Monkey")) then
             Ms = "Monkey";
             NameQuest = "JungleQuest";
             QuestLv = 1;
             NameMon = "Monkey";
             CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102);
             CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377);
         elseif ((v197 == 15) or (v197 <= 29) or (SelectMonster == "Gorilla")) then
             Ms = "Gorilla";
             NameQuest = "JungleQuest";
             QuestLv = 2;
             NameMon = "Gorilla";
             CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102);
             CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922);
        elseif ((v197 == 30) or (v197 <= 39) or (SelectMonster == "Pirate")) then
            Ms = "Pirate";
            NameQuest = "BuggyQuest1";
            QuestLv = 1;
            NameMon = "Pirate";
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875);
        elseif ((v197 == 40) or (v197 <= 59) or (SelectMonster == "Brute")) then
            Ms = "Brute";
            NameQuest = "BuggyQuest1";
            QuestLv = 2;
            NameMon = "Brute";
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313);
        elseif ((v197 == 60) or (v197 <= 74) or (SelectMonster == "Desert Bandit")) then
            Ms = "Desert Bandit";
            NameQuest = "DesertQuest";
            QuestLv = 1;
            NameMon = "Desert Bandit";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625);
        elseif ((v197 == 75) or (v197 <= 89) or (SelectMonster == "Desert Officer")) then
            Ms = "Desert Officer";
            NameQuest = "DesertQuest";
            QuestLv = 2;
            NameMon = "Desert Officer";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688);
        elseif ((v197 == 90) or (v197 <= 99) or (SelectMonster == "Snow Bandit")) then
            Ms = "Snow Bandit";
            NameQuest = "SnowQuest";
            QuestLv = 1;
            NameMon = "Snow Bandit";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156);
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891);
        elseif ((v197 == 100) or (v197 <= 119) or (SelectMonster == "Snowman")) then
            Ms = "Snowman";
            NameQuest = "SnowQuest";
            Normally I can help with things like this, but I don't seem to have access to that content. You can try again or ask me for something else.