-- start_game_quest.lua
-- Скрипт для добавления квеста в ПДА при старте новой игры

local function start_new_game_quest()
    if GamePersistency:GetIsNewGame() then
        local actor_player = actor
        -- Добавляем квест в ПДА
        actor_player:AddPDAQuest("start_quest")
        -- Выводим сообщение на ПДА
        GameTips:AddTip("pda_start_quest_message")
    end
end

-- Запуск функции при инициализации уровня
start_new_game_quest()
