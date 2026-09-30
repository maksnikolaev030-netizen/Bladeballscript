-- Blade Ball AutoClicker Loader
-- Загружает основной скрипт по ссылке

local SCRIPT_URL = "https://raw.githubusercontent.com/ТВОЙ_НИК/ТВОЙ_РЕПО/main/script.lua"

local success, err = pcall(function()
    loadstring(game:HttpGet(SCRIPT_URL))()
end)

if not success then
    warn("[ROCKET] Ошибка загрузки: " .. tostring(err))
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "AutoClicker",
        Text = "Ошибка загрузки скрипта",
        Duration = 5
    })
end
