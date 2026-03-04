local frame = CreateFrame("Frame")
frame:RegisterEvent("VOICE_CHAT_OUTPUT_DEVICES_UPDATED")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "VOICE_CHAT_OUTPUT_DEVICES_UPDATED" then
        if tonumber(GetCVar("Sound_OutputDriverIndex")) == 0 then
            Sound_GameSystem_RestartSoundSystem()
        end
    end
end)