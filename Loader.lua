--Its open src, idk why would u crack open src LOADER for my FREE scripts
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/eksotopro/holders/main/library.lua", true))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = NotifyLibrary.Notify

local Window = Library:CreateWindow("Zap Loader", Vector2.new(480, 220), Enum.KeyCode.RightBracket)
local Tab1 = Window:CreateTab("Scripts")
local ZaploaderSector = Tab1:CreateSector("Info", "left")
ZaploaderSector:AddLabel("Welcome to Zap Loader!")
ZaploaderSector:AddLabel("Thanks for using!")
ZaploaderSector:AddButton("Join Discord", function()
    setclipboard("https://discord.gg/zp")
    wait(0.1)
    local http_request = http_request or request or syn.request;
local a = {
    ['cmd'] = 'INVITE_BROWSER',
    ['args'] = {
        ["code"] = 'zp'
    },
    ['nonce'] = game:GetService('HttpService'):GenerateGUID(true)
}

http_request({
    Url = 'http://127.0.0.1:6463/rpc?v=1',
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json',
        ['Origin'] = 'https://discord.com'
    },
    Body = game:GetService('HttpService'):JSONEncode(a)
})
end)
local ScriptsSector = Tab1:CreateSector("Load Scripts", "right")
ScriptsSector:AddLabel("Select Script to load!")
ScriptsSector:AddDropdown('Choose Script', {"Zap", "Hoodsense"}, {"Zap"}, false, function(Name)
    if Name == "Zap" then
        Notify({
        Title = "Zap Loader",
        Description = "Loading Zap...",
        Duration = 3
        })
        wait(1)
loadstring(game:HttpGet('https://ekso.gq/raw/relases/zap-obfuscated.lua'))()
    elseif Name == "Hoodsense" then
        Notify({
        Title = "Zap Loader",
        Description = "Loading hooodsense...",
        Duration = 3
        })
        wait(1)
loadstring(game:HttpGet('https://ekso.gq/raw/relases/hoodsense-obfuscated.lua'))()
    end
end)
