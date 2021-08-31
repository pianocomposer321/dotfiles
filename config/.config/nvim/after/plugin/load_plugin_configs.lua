local function load_config(plugin_name, config_or_mappings)
    local plugin_name_formatted = plugin_name:match("(.-)%..+$")
    if plugin_name_formatted then plugin_name = plugin_name_formatted end
    if config_or_mappings == "config" then
        require("plugins/" .. plugin_name).setup()
    elseif config_or_mappings == "mappings" then
        require("mappings/" .. plugin_name)
    end
end


for plugin, vars in pairs(packer_plugins) do
    if vars.loaded and not vars.config then
        pcall(load_config, plugin, "config")
    end
    pcall(load_config, plugin, "mappings")
end

