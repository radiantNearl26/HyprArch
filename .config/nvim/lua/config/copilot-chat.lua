require('copilot-chat').setup {
    -- model = 'gpt-4.1',       -- AI model to use
    temperature = 0.1,       -- Lower = focused, higher = creative
    auto_insert_mode = true, -- Enter insert mode when opening
    window = {
        layout = 'float',
        width = 0.5,        -- 50% of screen width
        height = 20,        -- Fixed height in rows
        border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
        title = '🤖 AI Assistant',
        zindex = 100,       -- Ensure window stays on top
    },

    headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
    },

    separator = '━━',
    auto_fold = true, -- Automatically folds non-assistant messages
    MyCustomPrompt = {
        prompt = 'Explain how it works.',
        system_prompt = 'You are very good at explaining stuff',
        description = 'My custom prompt description',
    },
}
