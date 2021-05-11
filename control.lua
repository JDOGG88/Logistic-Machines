-------------------------------------
-------- Mod Setup Functions --------
-------------------------------------
local gui = require("prototypes.gui.gui")
local mod_gui = require("mod-gui")

local function gui_regen_screen_flow(player)
    gui.regen_screen_flow(player)
end

local function gui_regen_mod_flow(player)
    gui.regen_mod_flow(player)
end

local function bobinserters_remote_call()
    if game.active_mods["bobinserters"] then
        remote.call("bobinserters", "blacklist_inserters",
                {
                    "invisible-inserter-1-2x2",
                    "invisible-inserter-2-2x2",
                    "invisible-inserter-1-3x3",
                    "invisible-inserter-2-3x3",
                    "invisible-inserter-1-5x5",
                    "invisible-inserter-2-5x5",
                    "invisible-inserter-1-6x6",
                    "invisible-inserter-2-6x6",
                    "invisible-inserter-1-7x7",
                    "invisible-inserter-2-7x7",
                    "invisible-inserter-1-8x8",
                    "invisible-inserter-2-8x8",
                }
        )
    end
end

script.on_configuration_changed(function()
    for _, player in pairs(game.players) do
        gui_regen_screen_flow(player)
        gui_regen_mod_flow(player)
    end
    bobinserters_remote_call()
end)

script.on_event(defines.events.on_player_created, function(event)
    gui_regen_screen_flow(game.get_player(event.player_index))
    gui_regen_mod_flow(game.get_player(event.player_index))
    bobinserters_remote_call()
end)
-------------------------------------
----- Invisible Entity Creation -----
-------------------------------------
--[[
local function get_entity_built_by_name(name)
    for _, entity in pairs(invisible_entity) do
        if entity.name == name then
            return entity
        end
    end
end

local function default_wire_connection(entity_1_name, wire_color, entity_2_name)
    get_entity_built_by_name(entity_1_name).connect_neighbour({ wire = defines.wire_type[wire_color], target_entity = get_entity_built_by_name(entity_2_name) })
    if entity_1_name == "assembling-requester" then
        get_entity_built_by_name(entity_1_name).get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.logistic_container.circuit_mode_of_operation.set_requests
    end
end

if config_state == true and default_chest_flow.default_checkbox_flow_1_flow.lm_default_cb_chest_connect_1.state == true then
        default_wire_connection("assembling-requester","red", "assembling-provider")
    end
    if config_state == true and default_chest_flow.default_checkbox_flow_1_flow.lm_default_cb_chest_connect_2.state == true then
        default_wire_connection("assembling-requester","green", "assembling-provider")
    end
    if config_state == true and default_top_flow.default_checkbox_flow_2_left_1.lm_default_cb_top_left_1.state == true then
        default_wire_connection("assembling-requester","red", substation)
    end
    if config_state == true and default_top_flow.default_checkbox_flow_2_left_2.lm_default_cb_top_left_2.state == true then
        default_wire_connection("assembling-requester","green", substation)
    end
    if config_state == true and default_top_flow.default_checkbox_flow_2_right_1.lm_default_cb_top_right_1.state == true then
        default_wire_connection("assembling-provider","red", substation)
    end
    if config_state == true and default_top_flow.default_checkbox_flow_2_right_2.lm_default_cb_top_right_2.state == true then
        default_wire_connection("assembling-provider","green", substation)
    end
    if config_state == true and default_mid_flow.default_checkbox_flow_3_left_1.lm_default_cb_mid_left_1.state == true then
        default_wire_connection("assembling-requester","red", inserter_1)
    end
    if config_state == true and default_mid_flow.default_checkbox_flow_3_left_2.lm_default_cb_mid_left_2.state == true then
        default_wire_connection("assembling-requester","green", inserter_1)
    end
    if config_state == true and default_mid_flow.default_checkbox_flow_3_right_1.lm_default_cb_mid_right_1.state == true then
        default_wire_connection("assembling-provider","red", inserter_2)
    end
    if config_state == true and default_mid_flow.default_checkbox_flow_3_right_2.lm_default_cb_mid_right_2.state == true then
        default_wire_connection("assembling-provider","green", inserter_2)
    end
    if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_1.lm_default_cb_bottom_left_1.state == true then
        default_wire_connection(inserter_1,"red", substation)
    end
    if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_2.lm_default_cb_bottom_left_2.state == true then
        default_wire_connection(inserter_1,"green", substation)
    end
    if config_state == true and default_bottom_flow.default_checkbox_flow_4_right_1.lm_default_cb_bottom_right_1.state == true then
        default_wire_connection(inserter_2,"red", substation)
    end
    if config_state == true and default_bottom_flow.default_checkbox_flow_4_right_2.lm_default_cb_bottom_right_2.state == true then
        default_wire_connection(inserter_2,"green", substation)
    end
    if config_state == true and default_inserter_flow.default_checkbox_flow_5_flow.lm_default_cb_inserter_connect_1.state == true then
        default_wire_connection(inserter_1,"red", inserter_2)
    end
    if config_state == true and default_inserter_flow.default_checkbox_flow_5_flow.lm_default_cb_inserter_connect_2.state == true then
        default_wire_connection(inserter_1,"green", inserter_2)
    end
--]]
local function create_invisible_entities(entity, size, pos_var, lab, player)
    local frame_flow = mod_gui.get_frame_flow(player)
    local config_state = frame_flow.lm_default_circuit_window.enable_option_flow.enable_default_circuit_body.state
    local default_circuit_body_image_container = frame_flow.lm_default_circuit_window.default_circuit_body.default_circuit_body_image_container
    local default_chest_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_1
    local default_top_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_2
    local default_mid_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_3
    local default_bottom_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_4
    local default_inserter_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_5
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - (pos_var), (entity.position.y) - (pos_var) }, force = entity.force }
    requester.destructible = false
    local substation = entity.surface.create_entity { name = "invisible-substation-" .. size, position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    if config_state == true and default_top_flow.default_checkbox_flow_2_left_1.lm_default_cb_top_left_1.state == true then
        requester.connect_neighbour({ wire = defines.wire_type["red"], target_entity = substation })
    end
    if config_state == true and default_top_flow.default_checkbox_flow_2_left_2.lm_default_cb_top_left_2.state == true then
        requester.connect_neighbour({ wire = defines.wire_type["green"], target_entity = substation })
    end
    if lab == false then
        local provider = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + (pos_var), (entity.position.y) - (pos_var) }, force = entity.force }
        provider.destructible = false
        local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-" .. size, position = { (entity.position.x) - (pos_var), (entity.position.y) }, force = entity.force }
        inserter_1.destructible = false
        inserter_1.minable = false
        local inserter_2 = entity.surface.create_entity { name = "invisible-inserter-2-" .. size, position = { (entity.position.x) + (pos_var), (entity.position.y) }, force = entity.force }
        inserter_2.destructible = false
        inserter_2.minable = false
        if config_state == true and default_chest_flow.default_checkbox_flow_1_flow.lm_default_cb_chest_connect_1.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["red"], target_entity = provider })
        end
        if config_state == true and default_chest_flow.default_checkbox_flow_1_flow.lm_default_cb_chest_connect_2.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["green"], target_entity = provider })
        end
        if config_state == true and default_top_flow.default_checkbox_flow_2_right_1.lm_default_cb_top_right_1.state == true then
            provider.connect_neighbour({ wire = defines.wire_type["red"], target_entity = substation })
        end
        if config_state == true and default_top_flow.default_checkbox_flow_2_right_2.lm_default_cb_top_right_2.state == true then
            provider.connect_neighbour({ wire = defines.wire_type["green"], target_entity = substation })
        end
        if config_state == true and default_mid_flow.default_checkbox_flow_3_right_1.lm_default_cb_mid_right_1.state == true then
            provider.connect_neighbour({ wire = defines.wire_type["red"], target_entity = inserter_2 })
        end
        if config_state == true and default_mid_flow.default_checkbox_flow_3_right_2.lm_default_cb_mid_right_2.state == true then
            provider.connect_neighbour({ wire = defines.wire_type["green"], target_entity = inserter_2 })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_right_1.lm_default_cb_bottom_right_1.state == true then
            inserter_2.connect_neighbour({ wire = defines.wire_type["red"], target_entity = substation })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_right_2.lm_default_cb_bottom_right_2.state == true then
            inserter_2.connect_neighbour({ wire = defines.wire_type["green"], target_entity = substation })
        end
        if config_state == true and default_inserter_flow.default_checkbox_flow_5_flow.lm_default_cb_inserter_connect_1.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["red"], target_entity = inserter_2 })
        end
        if config_state == true and default_inserter_flow.default_checkbox_flow_5_flow.lm_default_cb_inserter_connect_2.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["green"], target_entity = inserter_2 })
        end
        if config_state == true and default_mid_flow.default_checkbox_flow_3_left_1.lm_default_cb_mid_left_1.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["red"], target_entity = inserter_1 })
        end
        if config_state == true and default_mid_flow.default_checkbox_flow_3_left_2.lm_default_cb_mid_left_2.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["green"], target_entity = inserter_1 })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_1.lm_default_cb_bottom_left_1.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["red"], target_entity = substation })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_2.lm_default_cb_bottom_left_2.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["green"], target_entity = substation })
        end
    elseif lab == true and size == "8x8" then
        local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-" .. size, position = { (entity.position.x) - (pos_var + 0.5), (entity.position.y) }, force = entity.force }
        inserter_1.destructible = false
        inserter_1.minable = false
        if config_state == true and default_mid_flow.default_checkbox_flow_3_left_1.lm_default_cb_mid_left_1.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["red"], target_entity = inserter_1 })
        end
        if config_state == true and default_mid_flow.default_checkbox_flow_3_left_2.lm_default_cb_mid_left_2.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["green"], target_entity = inserter_1 })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_1.lm_default_cb_bottom_left_1.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["red"], target_entity = substation })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_2.lm_default_cb_bottom_left_2.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["green"], target_entity = substation })
        end
    elseif lab == true and size == "3x3" then
        local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-" .. size, position = { (entity.position.x) - (pos_var), (entity.position.y) }, force = entity.force }
        inserter_1.destructible = false
        inserter_1.minable = false
        if config_state == true and default_mid_flow.default_checkbox_flow_3_left_1.lm_default_cb_mid_left_1.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["red"], target_entity = inserter_1 })
        end
        if config_state == true and default_mid_flow.default_checkbox_flow_3_left_2.lm_default_cb_mid_left_2.state == true then
            requester.connect_neighbour({ wire = defines.wire_type["green"], target_entity = inserter_1 })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_1.lm_default_cb_bottom_left_1.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["red"], target_entity = substation })
        end
        if config_state == true and default_bottom_flow.default_checkbox_flow_4_left_2.lm_default_cb_bottom_left_2.state == true then
            inserter_1.connect_neighbour({ wire = defines.wire_type["green"], target_entity = substation })
        end
    end
    return
end

local function assembly_set_2x2(entity, player)
    create_invisible_entities(entity, "2x2", 0.5, false, player)
    return
end

local function assembly_set_3x3(entity, player)
    create_invisible_entities(entity, "3x3", 1, false, player)
    return
end

local function assembly_set_5x5(entity, player)
    create_invisible_entities(entity, "5x5", 2, false, player)
    return
end

local function assembly_set_6x6(entity, player)
    create_invisible_entities(entity, "6x6", 2.5, false, player)
    return
end

local function assembly_set_7x7(entity, player)
    create_invisible_entities(entity, "7x7", 3, false, player)
    return
end

local function lab_set_3x3(entity, player)
    create_invisible_entities(entity, "3x3", 1, true, player)
    return
end

local function lab_set_8x8(entity, player)
    create_invisible_entities(entity, "8x8", 3.4, true, player)
    return
end
-------------------------------------
--- Entity Tables & Area Variable ---
-------------------------------------
local machine_2x2 = {
    "logistic-electronics-machine-2",
    "logistic-electronics-machine-3",
}

local machine_3x3 = {
    "logistic-assembling-machine-3",
    "logistic-assembling-machine-4",
    "logistic-assembling-machine-5",
    "logistic-assembling-machine-6",
    "logistic-chemical-plant-1",
    "logistic-chemical-plant-2",
    "logistic-chemical-plant-3",
    "logistic-chemical-plant-4",
    "logistic-electrolyser-2",
    "logistic-electrolyser-3",
    "logistic-electrolyser-4",
    "logistic-electrolyser-5",
    "logistic-electric-furnace-1",
    "logistic-electric-furnace-2",
    "logistic-electric-furnace-3",
    "logistic-electric-mixing-furnace-1",
    "logistic-electric-chemical-furnace-1",
    "logistic-electric-chemical-mixing-furnace-1",
    "logistic-electric-chemical-mixing-furnace-2",
    "logistic-research-server-1",
    "logistic-fuel-refinery-1",
}

local machine_5x5 = {
    "logistic-advanced-assembling-machine-1",
    "logistic-nuclear-reactor-1",
    "logistic-nuclear-reactor-2",
    "logistic-nuclear-reactor-3",
}

local machine_6x6 = {
    "logistic-quantum-computer-1",
}

local machine_7x7 = {
    "logistic-advanced-furnace-1",
    "logistic-advanced-chemical-plant-1",
}

local lab_3x3 = {
    "logistic-lab-1",
    "logistic-lab-2",
    "logistic-advanced-lab-1",
}

local lab_8x8 = {
    "logistic-singularity-lab-1",
}

local invisible_entity = {
    "invisible-inserter-1-2x2",
    "invisible-inserter-2-2x2",
    "invisible-inserter-1-3x3",
    "invisible-inserter-2-3x3",
    "invisible-inserter-1-5x5",
    "invisible-inserter-2-5x5",
    "invisible-inserter-1-6x6",
    "invisible-inserter-2-6x6",
    "invisible-inserter-1-7x7",
    "invisible-inserter-2-7x7",
    "invisible-inserter-1-8x8",
    "invisible-inserter-2-8x8",
    "invisible-substation-2x2",
    "invisible-substation-3x3",
    "invisible-substation-5x5",
    "invisible-substation-6x6",
    "invisible-substation-7x7",
    "invisible-substation-8x8",
    "assembling-provider",
    "assembling-requester",
}

local area_var_2x2 = 1
local area_var_3x3 = 1.5
local area_var_5x5 = 2.2
local area_var_6x6 = 2.65
local area_var_7x7 = 3.2
local area_var_8x8 = 3.4
-------------------------------------
------- Entity Creation Events ------
-------------------------------------
local function build_entity(event, machine_table, assembly_set)
    local player = game.get_player(event.player_index)
    for _, name in pairs(machine_table) do
        if (event.created_entity.name == name) then
            assembly_set(event.created_entity, player)
        end
    end
end

script.on_event({ defines.events.on_built_entity, defines.events.on_robot_built_entity }, function(event)
    build_entity(event, machine_2x2, assembly_set_2x2)
    build_entity(event, machine_3x3, assembly_set_3x3)
    build_entity(event, machine_5x5, assembly_set_5x5)
    build_entity(event, machine_6x6, assembly_set_6x6)
    build_entity(event, machine_7x7, assembly_set_7x7)
    build_entity(event, lab_3x3, lab_set_3x3)
    build_entity(event, lab_8x8, lab_set_8x8)
end)

local function script_raised_build_entity(event, machine_table, assembly_set)
    local entity = event.entity or event.created_entity
    for _, name in pairs(machine_table) do
        if (entity.name == name) then
            assembly_set(entity)
        end
    end
end

script.on_event({ defines.events.script_raised_revive, defines.events.script_raised_built }, function(event)
    script_raised_build_entity(event, machine_2x2, assembly_set_2x2)
    script_raised_build_entity(event, machine_3x3, assembly_set_3x3)
    script_raised_build_entity(event, machine_5x5, assembly_set_5x5)
    script_raised_build_entity(event, machine_6x6, assembly_set_6x6)
    script_raised_build_entity(event, machine_7x7, assembly_set_7x7)
    script_raised_build_entity(event, lab_3x3, lab_set_3x3)
    script_raised_build_entity(event, lab_8x8, lab_set_8x8)
end)
-------------------------------------
-------- GUI Creation Events --------
-------------------------------------
local function get_selected_area(entity, var)
    local center = entity.position
    return { { center.x - var, center.y - var }, { center.x + var, center.y + var } }
end

local lm_current_entities = {}

local function gui_text(player, name)
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local rc_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_button
    local rci_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button
    local entity_button = entity_window.lm_body_flow.lm_center_body_flow.lm_entity_button
    local circuit_button = entity_window.lm_body_flow.lm_center_body_flow.lm_circuit_button
    local pc_button = entity_window.lm_body_flow.lm_right_body_flow.lm_provider_chest_button
    local pci_button = entity_window.lm_body_flow.lm_right_body_flow.lm_provider_chest_inserter_button
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local localised_entity_name = { "lm-gui." .. string.sub(name, 1, #name - 2) }
    entity_window.lm_main_title_flow.lm_main_title.caption = localised_entity_name
    rc_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest" }
    rci_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest Inserter" }
    entity_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Main Crafting Window" }
    circuit_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Circuit Network Configuration" }
    pc_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Provider Chest" }
    pci_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Provider Chest Inserter" }
    circuit_window.lm_circuit_title_flow.lm_circuit_title.tooltip = { "lm-gui.lm-circuit-tooltip", localised_entity_name }
end

local function lab_gui_text(player, name)
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local rc_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_button
    local rci_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button
    local entity_button = entity_window.lm_body_flow.lm_center_body_flow.lm_entity_button
    local circuit_button = entity_window.lm_body_flow.lm_center_body_flow.lm_circuit_button
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local localised_entity_name = { "lm-gui." .. string.sub(name, 1, #name - 2) }
    entity_window.lm_main_title_flow.lm_main_title.caption = localised_entity_name
    rc_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest" }
    rci_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest Inserter" }
    entity_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Main Crafting Window" }
    circuit_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Circuit Network Configuration" }
    circuit_window.lm_circuit_title_flow.lm_circuit_title.tooltip = { "lm-gui.lm-circuit-tooltip", localised_entity_name }
end

local function opened_gui_main(event, machine_table, area_var)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    for _, name in pairs(machine_table) do
        if entity and entity.name == name then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var) }) do
                table.insert(lm_current_entities, current_entity)
                gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
            end
        end
    end
    if settings.get_player_settings(game.get_player(event.player_index))["always-open-mod-gui-first"].value == true then
        entity_window.main_footer_flow.lm_gui_open_option.state = true
    else
        entity_window.main_footer_flow.lm_gui_open_option.state = false
    end
end

local function opened_gui_lab(event, machine_table, area_var)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local circuit_body = circuit_window.circuit_body
    local circuit_body_image_container = circuit_body.circuit_body_image_container
    local circuit_body_image_container_flow = circuit_body_image_container.circuit_body_image_container_flow
    local chest_flow = circuit_body_image_container_flow.circuit_body_flow_1
    local top_flow = circuit_body_image_container_flow.circuit_body_flow_2
    local mid_flow = circuit_body_image_container_flow.circuit_body_flow_3
    local bottom_flow = circuit_body_image_container_flow.circuit_body_flow_4
    local inserter_flow = circuit_body_image_container_flow.circuit_body_flow_5
    for _, name in pairs(machine_table) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var) }) do
                table.insert(lm_current_entities, current_entity)
                lab_gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
                entity_window.lm_body_flow.lm_right_body_flow.visible = false
                circuit_body_image_container.lm_wire_pc_to_sub_red.visible = false
                circuit_body_image_container.lm_wire_pc_to_sub_green.visible = false
                circuit_body_image_container.lm_wire_pci_to_sub_red.visible = false
                circuit_body_image_container.lm_wire_pci_to_sub_green.visible = false
                circuit_body_image_container.lm_wire_rc_to_pc_red.visible = false
                circuit_body_image_container.lm_wire_rc_to_pc_green.visible = false
                circuit_body_image_container.lm_wire_rci_to_pci_red.visible = false
                circuit_body_image_container.lm_wire_rci_to_pci_green.visible = false
                circuit_body_image_container.lm_wire_pc_to_pci_red.visible = false
                circuit_body_image_container.lm_wire_pc_to_pci_green.visible = false
                chest_flow.circuit_body_flow_1_button_right.visible = false
                chest_flow.checkbox_flow_1_flow.visible = false
                top_flow.checkbox_flow_2_right_1.visible = false
                top_flow.checkbox_flow_2_right_2.visible = false
                mid_flow.checkbox_flow_3_right_1.visible = false
                mid_flow.checkbox_flow_3_right_2.visible = false
                bottom_flow.checkbox_flow_4_right_1.visible = false
                bottom_flow.checkbox_flow_4_right_2.visible = false
                inserter_flow.circuit_body_flow_5_button_right.visible = false
                inserter_flow.checkbox_flow_5_flow.visible = false
            end
        end
    end
end

script.on_event(defines.events.on_gui_opened, function(event)
    if settings.get_player_settings(game.get_player(event.player_index))["always-open-mod-gui-first"].value == true then
        opened_gui_main(event, machine_2x2, area_var_2x2)
        opened_gui_main(event, machine_3x3, area_var_3x3)
        opened_gui_main(event, machine_5x5, area_var_5x5)
        opened_gui_main(event, machine_6x6, area_var_6x6)
        opened_gui_main(event, machine_7x7, area_var_7x7)
        opened_gui_lab(event, lab_3x3, area_var_3x3)
        opened_gui_lab(event, lab_8x8, area_var_8x8)
    end
end)

script.on_event("lm-open-gui", function(event)
    if settings.get_player_settings(game.get_player(event.player_index))["always-open-mod-gui-first"].value == false then
        opened_gui_main(event, machine_2x2, area_var_2x2)
        opened_gui_main(event, machine_3x3, area_var_3x3)
        opened_gui_main(event, machine_5x5, area_var_5x5)
        opened_gui_main(event, machine_6x6, area_var_6x6)
        opened_gui_main(event, machine_7x7, area_var_7x7)
        opened_gui_lab(event, lab_3x3, area_var_3x3)
        opened_gui_lab(event, lab_8x8, area_var_8x8)
    end
end)

script.on_event(defines.events.on_gui_closed, function(event)
    local closed_gui_name = event.name
    if event.gui_type == defines.gui_type.custom then
        if closed_gui_name ~= "lm_entity_window" then
            lm_current_entities = {}
        end
    end
end)

script.on_event({ "lm-e-to-close-gui", "lm-escape-to-close-gui" }, function(event)
    local player = game.get_player(event.player_index)
    lm_current_entities = {}
    gui_regen_screen_flow(player)
end)

local function get_entity_by_name(name)
    for _, entity in pairs(lm_current_entities) do
        if entity.name == name then
            return entity
        end
    end
end

local function get_requester_inserter_name()
    for _, entity in pairs(lm_current_entities) do
        if entity.name == string.match(entity.name, "invisible%-inserter%-1.*") then
            return entity.name
        end
    end
end

local function get_provider_inserter_name()
    for _, entity in pairs(lm_current_entities) do
        if entity.name == string.match(entity.name, "invisible%-inserter%-2.*") then
            return entity.name
        end
    end
end

local function get_invisible_substation_name()
    for _, entity in pairs(lm_current_entities) do
        if entity.name == string.match(entity.name, "invisible%-substation%-.*") then
            return entity.name
        end
    end
end

local function connection_checker(entity_from_name, entity_to_name, wire_color)
    local connection = false
    for _, entity in pairs(lm_current_entities) do
        if entity == get_entity_by_name(entity_from_name) then
            if entity.circuit_connected_entities[wire_color] ~= nil then
                for _, connected_entity in pairs(entity.circuit_connected_entities[wire_color]) do
                    if connected_entity == get_entity_by_name(entity_to_name) then
                        connection = true
                    end
                end
            elseif get_entity_by_name(entity_from_name).circuit_connected_entities[wire_color] == nil then
                connection = false
            end
        end
    end
    return connection
end

local function flying_text(entity, text)
    entity.surface.create_entity {
        name = "flying-text",
        speed = 0.02,
        position = { x = entity.position.x - 1.6, y = entity.position.y },
        time_to_live = 1,
        text = text,
    }
end

script.on_event(defines.events.on_gui_click, function(event)
    local player = game.get_player(event.player_index)
    local screen_flow = player.gui.screen
    local frame_flow = mod_gui.get_frame_flow(player)
    local clicked_name = event.element.name
    local main_frame = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local circuit_body = circuit_window.circuit_body
    local circuit_body_image_container = circuit_body.circuit_body_image_container
    local circuit_body_image_container_flow = circuit_body_image_container.circuit_body_image_container_flow
    local chest_flow = circuit_body_image_container_flow.circuit_body_flow_1
    local top_flow = circuit_body_image_container_flow.circuit_body_flow_2
    local mid_flow = circuit_body_image_container_flow.circuit_body_flow_3
    local bottom_flow = circuit_body_image_container_flow.circuit_body_flow_4
    local inserter_flow = circuit_body_image_container_flow.circuit_body_flow_5
    if clicked_name == "lm_default_circuit_button" then
        frame_flow["lm_default_circuit_window"].visible = not frame_flow["lm_default_circuit_window"].visible
    end
    for _, entity in pairs(lm_current_entities) do
        if clicked_name == "lm_entity_button" and entity.name == string.match(entity.name, "logistic.*") and entity.valid == true then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                main_frame.lm_body_flow.lm_center_body_flow.lm_entity_button.style = "lm_main_frame_entity_button"
            else
                flying_text(entity, "Cannot reach")
                main_frame.lm_body_flow.lm_center_body_flow.lm_entity_button.style = "lm_main_frame_entity_button_cannot_build"
            end
        elseif clicked_name == "lm_requester_chest_button" and entity.name == "assembling-requester" and entity.valid == true then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
                if event.element == main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_button then
                    main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_button.style = "lm_main_frame_button_sides"
                elseif event.element == chest_flow.circuit_body_flow_1_button_left.lm_requester_chest_button then
                    chest_flow.circuit_body_flow_1_button_left.lm_requester_chest_button.style = "lm_circuit_sprite_button"
                end
            else
                flying_text(entity, "Cannot reach")
                if event.element == main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_button then
                    main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_button.style = "lm_main_frame_button_sides_cannot_build"
                elseif event.element == chest_flow.circuit_body_flow_1_button_left.lm_requester_chest_button then
                    chest_flow.circuit_body_flow_1_button_left.lm_requester_chest_button.style = "lm_circuit_sprite_button_cannot_build"
                end
            end
        elseif clicked_name == "lm_requester_chest_inserter_button" and entity.name == string.match(entity.name, "invisible%-inserter%-1.*") and entity.valid == true then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
                if event.element == main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button then
                    main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button.style = "lm_main_frame_button_sides"
                elseif event.element == inserter_flow.circuit_body_flow_5_button_left.lm_requester_chest_inserter_button then
                    inserter_flow.circuit_body_flow_5_button_left.lm_requester_chest_inserter_button.style = "lm_circuit_sprite_button"
                end
            else
                flying_text(entity, "Cannot reach")
                if event.element == main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button then
                    main_frame.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button.style = "lm_main_frame_button_sides_cannot_build"
                elseif event.element == inserter_flow.circuit_body_flow_5_button_left.lm_requester_chest_inserter_button then
                    inserter_flow.circuit_body_flow_5_button_left.lm_requester_chest_inserter_button.style = "lm_circuit_sprite_button_cannot_build"
                end
            end
        elseif clicked_name == "lm_provider_chest_button" and entity.name == "assembling-provider" and entity.valid == true then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
                if event.element == main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_button then
                    main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_button.style = "lm_main_frame_button_sides"
                elseif event.element == chest_flow.circuit_body_flow_1_button_right.lm_provider_chest_button then
                    chest_flow.circuit_body_flow_1_button_right.lm_provider_chest_button.style = "lm_circuit_sprite_button"
                end
            else
                flying_text(entity, "Cannot reach")
                if event.element == main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_button then
                    main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_button.style = "lm_main_frame_button_sides_cannot_build"
                elseif event.element == chest_flow.circuit_body_flow_1_button_right.lm_provider_chest_button then
                    chest_flow.circuit_body_flow_1_button_right.lm_provider_chest_button.style = "lm_circuit_sprite_button_cannot_build"
                end
            end
        elseif clicked_name == "lm_provider_chest_inserter_button" and entity.name == string.match(entity.name, "invisible%-inserter%-2.*") and entity.valid == true then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
                if event.element == main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_inserter_button then
                    main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_inserter_button.style = "lm_main_frame_button_sides"
                elseif event.element == inserter_flow.circuit_body_flow_5_button_right.lm_provider_chest_inserter_button then
                    inserter_flow.circuit_body_flow_5_button_right.lm_provider_chest_inserter_button.style = "lm_circuit_sprite_button"
                end
            else
                flying_text(entity, "Cannot reach")
                if event.element == main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_inserter_button then
                    main_frame.lm_body_flow.lm_right_body_flow.lm_provider_chest_inserter_button.style = "lm_main_frame_button_sides_cannot_build"
                elseif event.element == inserter_flow.circuit_body_flow_5_button_right.lm_provider_chest_inserter_button then
                    inserter_flow.circuit_body_flow_5_button_right.lm_provider_chest_inserter_button.style = "lm_circuit_sprite_button_cannot_build"
                end
            end
        elseif clicked_name == "lm_circuit_button" then
            circuit_window.visible = true
            circuit_window.auto_center = true
            main_frame.visible = false
            if connection_checker("assembling-requester", get_invisible_substation_name(), "red") == true then
                top_flow.checkbox_flow_2_left_1.lm_cb_top_left_1.state = true
                circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_connected"
            else
                top_flow.checkbox_flow_2_left_1.lm_cb_top_left_1.state = false
                circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_disconnected"
            end
            if connection_checker("assembling-requester", get_invisible_substation_name(), "green") == true then
                top_flow.checkbox_flow_2_left_2.lm_cb_top_left_2.state = true
                circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_connected"
            else
                top_flow.checkbox_flow_2_left_2.lm_cb_top_left_2.state = false
                circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_disconnected"
            end
            if connection_checker("assembling-provider", get_invisible_substation_name(), "red") == true then
                top_flow.checkbox_flow_2_right_1.lm_cb_top_right_1.state = true
                circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_connected"
            else
                top_flow.checkbox_flow_2_right_1.lm_cb_top_right_1.state = false
                circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_disconnected"
            end
            if connection_checker("assembling-provider", get_invisible_substation_name(), "green") == true then
                top_flow.checkbox_flow_2_right_2.lm_cb_top_right_2.state = true
                circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_connected"
            else
                top_flow.checkbox_flow_2_right_2.lm_cb_top_right_2.state = false
                circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), get_invisible_substation_name(), "red") == true then
                bottom_flow.checkbox_flow_4_left_1.lm_cb_bottom_left_1.state = true
                circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_connected"
            else
                bottom_flow.checkbox_flow_4_left_1.lm_cb_bottom_left_1.state = false
                circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), get_invisible_substation_name(), "green") == true then
                bottom_flow.checkbox_flow_4_left_2.lm_cb_bottom_left_2.state = true
                circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_connected"
            else
                bottom_flow.checkbox_flow_4_left_2.lm_cb_bottom_left_2.state = false
                circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_disconnected"
            end
            if connection_checker(get_provider_inserter_name(), get_invisible_substation_name(), "red") == true then
                bottom_flow.checkbox_flow_4_right_1.lm_cb_bottom_right_1.state = true
                circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_connected"
            else
                bottom_flow.checkbox_flow_4_right_1.lm_cb_bottom_right_1.state = false
                circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_disconnected"
            end
            if connection_checker(get_provider_inserter_name(), get_invisible_substation_name(), "green") == true then
                bottom_flow.checkbox_flow_4_right_2.lm_cb_bottom_right_2.state = true
                circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_connected"
            else
                bottom_flow.checkbox_flow_4_right_2.lm_cb_bottom_right_2.state = false
                circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_disconnected"
            end
            if connection_checker("assembling-requester", "assembling-provider", "red") == true then
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_1.state = true
                circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_connected"
            else
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_1.state = false
                circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_disconnected"
            end
            if connection_checker("assembling-requester", "assembling-provider", "green") == true then
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_2.state = true
                circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_connected"
            else
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_2.state = false
                circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_disconnected"
            end
            if connection_checker("assembling-requester", get_requester_inserter_name(), "red") == true then
                mid_flow.checkbox_flow_3_left_1.lm_cb_mid_left_1.state = true
                circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_connected"
            else
                mid_flow.checkbox_flow_3_left_1.lm_cb_mid_left_1.state = false
                circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_disconnected"
            end
            if connection_checker("assembling-requester", get_requester_inserter_name(), "green") == true then
                mid_flow.checkbox_flow_3_left_2.lm_cb_mid_left_2.state = true
                circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_connected"
            else
                mid_flow.checkbox_flow_3_left_2.lm_cb_mid_left_2.state = false
                circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_disconnected"
            end
            if connection_checker("assembling-provider", get_provider_inserter_name(), "red") == true then
                mid_flow.checkbox_flow_3_right_1.lm_cb_mid_right_1.state = true
                circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_connected"
            else
                mid_flow.checkbox_flow_3_right_1.lm_cb_mid_right_1.state = false
                circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_disconnected"
            end
            if connection_checker("assembling-provider", get_provider_inserter_name(), "green") == true then
                mid_flow.checkbox_flow_3_right_2.lm_cb_mid_right_2.state = true
                circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_connected"
            else
                mid_flow.checkbox_flow_3_right_2.lm_cb_mid_right_2.state = false
                circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), get_provider_inserter_name(), "red") == true then
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_1.state = true
                circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_connected"
            else
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_1.state = false
                circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), get_provider_inserter_name(), "green") == true then
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_2.state = true
                circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_connected"
            else
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_2.state = false
                circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_disconnected"
            end
        elseif clicked_name == "lm_main_close_button" then
            lm_current_entities = {}
            gui_regen_screen_flow(player)
        elseif clicked_name == "lm_circuit_close_button" then
            lm_current_entities = {}
            gui_regen_screen_flow(player)
        end
    end
end)

local function wire_connection(entity_1_name, wire_color, entity_2_name)
    get_entity_by_name(entity_1_name).connect_neighbour({ wire = defines.wire_type[wire_color], target_entity = get_entity_by_name(entity_2_name) })
    if entity_1_name == "assembling-requester" then
        get_entity_by_name(entity_1_name).get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.logistic_container.circuit_mode_of_operation.set_requests
    end
end

local function wire_disconnection(entity_1_name, wire_color, entity_2_name)
    get_entity_by_name(entity_1_name).disconnect_neighbour({ wire = defines.wire_type[wire_color], target_entity = get_entity_by_name(entity_2_name) })
end

script.on_event(defines.events.on_gui_checked_state_changed, function(event)
    local checked_name = event.element.name
    local player = game.get_player(event.player_index)
    local screen_flow = player.gui.screen
    local frame_flow = mod_gui.get_frame_flow(player)
    local entity_window = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local circuit_body = circuit_window.circuit_body
    local circuit_body_image_container = circuit_body.circuit_body_image_container
    local circuit_body_image_container_flow = circuit_body_image_container.circuit_body_image_container_flow
    local chest_flow = circuit_body_image_container_flow.circuit_body_flow_1
    local top_flow = circuit_body_image_container_flow.circuit_body_flow_2
    local mid_flow = circuit_body_image_container_flow.circuit_body_flow_3
    local bottom_flow = circuit_body_image_container_flow.circuit_body_flow_4
    local inserter_flow = circuit_body_image_container_flow.circuit_body_flow_5
    local default_circuit_body_image_container = frame_flow.lm_default_circuit_window.default_circuit_body.default_circuit_body_image_container
    local default_chest_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_1
    local default_top_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_2
    local default_mid_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_3
    local default_bottom_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_4
    local default_inserter_flow = default_circuit_body_image_container.default_circuit_body_image_container_flow.default_circuit_body_flow_5
    local invisible_substation = get_invisible_substation_name()
    local requester_inserter = get_requester_inserter_name()
    local provider_inserter = get_provider_inserter_name()
    if checked_name == "enable_default_circuit_body" then
        if frame_flow.lm_default_circuit_window.enable_option_flow.enable_default_circuit_body.state == true then
            frame_flow.lm_default_circuit_window.default_circuit_body.visible = true
        else
            frame_flow.lm_default_circuit_window.default_circuit_body.visible = false
        end
    elseif checked_name == "lm_gui_open_option" then
        if entity_window.main_footer_flow.lm_gui_open_option.state == true then
            settings.get_player_settings(player)["always-open-mod-gui-first"] = { value = true }
        else
            settings.get_player_settings(player)["always-open-mod-gui-first"] = { value = false }
        end
    elseif checked_name == "lm_cb_top_left_1" then
        if top_flow.checkbox_flow_2_left_1.lm_cb_top_left_1.state == true then
            wire_connection("assembling-requester", "red", invisible_substation)
            circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_connected"
        else
            wire_disconnection("assembling-requester", "red", invisible_substation)
            circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_top_left_2" then
        if top_flow.checkbox_flow_2_left_2.lm_cb_top_left_2.state == true then
            wire_connection("assembling-requester", "green", invisible_substation)
            circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_connected"
        else
            wire_disconnection("assembling-requester", "green", invisible_substation)
            circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_top_right_1" then
        if top_flow.checkbox_flow_2_right_1.lm_cb_top_right_1.state == true then
            wire_connection("assembling-provider", "red", invisible_substation)
            circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_connected"
        else
            wire_disconnection("assembling-provider", "red", invisible_substation)
            circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_top_right_2" then
        if top_flow.checkbox_flow_2_right_2.lm_cb_top_right_2.state == true then
            wire_connection("assembling-provider", "green", invisible_substation)
            circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_connected"
        else
            wire_disconnection("assembling-provider", "green", invisible_substation)
            circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_left_1" then
        if bottom_flow.checkbox_flow_4_left_1.lm_cb_bottom_left_1.state == true then
            wire_connection(requester_inserter, "red", invisible_substation)
            circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_connected"
        else
            wire_disconnection(requester_inserter, "red", invisible_substation)
            circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_left_2" then
        if bottom_flow.checkbox_flow_4_left_2.lm_cb_bottom_left_2.state == true then
            wire_connection(requester_inserter, "green", invisible_substation)
            circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_connected"
        else
            wire_disconnection(requester_inserter, "green", invisible_substation)
            circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_right_1" then
        if bottom_flow.checkbox_flow_4_right_1.lm_cb_bottom_right_1.state == true then
            wire_connection(provider_inserter, "red", invisible_substation)
            circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_connected"
        else
            wire_disconnection(provider_inserter, "red", invisible_substation)
            circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_right_2" then
        if bottom_flow.checkbox_flow_4_right_2.lm_cb_bottom_right_2.state == true then
            wire_connection(provider_inserter, "green", invisible_substation)
            circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_connected"
        else
            wire_disconnection(provider_inserter, "green", invisible_substation)
            circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_chest_connect_1" then
        if chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_1.state == true then
            wire_connection("assembling-requester", "red", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_connected"
        else
            wire_disconnection("assembling-requester", "red", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_disconnected"
        end
    elseif checked_name == "lm_cb_chest_connect_2" then
        if chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_2.state == true then
            wire_connection("assembling-requester", "green", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_connected"
        else
            wire_disconnection("assembling-requester", "green", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_disconnected"
        end
    elseif checked_name == "lm_cb_mid_left_1" then
        if mid_flow.checkbox_flow_3_left_1.lm_cb_mid_left_1.state == true then
            wire_connection("assembling-requester", "red", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_connected"
        else
            wire_disconnection("assembling-requester", "red", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_disconnected"
        end
    elseif checked_name == "lm_cb_mid_left_2" then
        if mid_flow.checkbox_flow_3_left_2.lm_cb_mid_left_2.state == true then
            wire_connection("assembling-requester", "green", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_connected"
        else
            wire_disconnection("assembling-requester", "green", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_disconnected"
        end
    elseif checked_name == "lm_cb_mid_right_1" then
        if mid_flow.checkbox_flow_3_right_1.lm_cb_mid_right_1.state == true then
            wire_connection("assembling-provider", "red", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_connected"
        else
            wire_disconnection("assembling-provider", "red", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_disconnected"
        end
    elseif checked_name == "lm_cb_mid_right_2" then
        if mid_flow.checkbox_flow_3_right_2.lm_cb_mid_right_2.state == true then
            wire_connection("assembling-provider", "green", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_connected"
        else
            wire_disconnection("assembling-provider", "green", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_disconnected"
        end
    elseif checked_name == "lm_cb_inserter_connect_1" then
        if inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_1.state == true then
            wire_connection(requester_inserter, "red", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_connected"
        else
            wire_disconnection(requester_inserter, "red", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_disconnected"
        end
    elseif checked_name == "lm_cb_inserter_connect_2" then
        if inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_2.state == true then
            wire_connection(requester_inserter, "green", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_connected"
        else
            wire_disconnection(requester_inserter, "green", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_disconnected"
        end
        -------------------------------
    elseif checked_name == "lm_default_cb_top_left_1" then
        if default_top_flow.default_checkbox_flow_2_left_1.lm_default_cb_top_left_1.state == true then
            default_circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_connected"
        else
            default_circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_top_left_2" then
        if default_top_flow.default_checkbox_flow_2_left_2.lm_default_cb_top_left_2.state == true then
            default_circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_connected"
        else
            default_circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_default_cb_top_right_1" then
        if default_top_flow.default_checkbox_flow_2_right_1.lm_default_cb_top_right_1.state == true then
            default_circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_connected"
        else
            default_circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_top_right_2" then
        if default_top_flow.default_checkbox_flow_2_right_2.lm_default_cb_top_right_2.state == true then
            default_circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_connected"
        else
            default_circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_default_cb_bottom_left_1" then
        if default_bottom_flow.default_checkbox_flow_4_left_1.lm_default_cb_bottom_left_1.state == true then
            default_circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_connected"
        else
            default_circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_bottom_left_2" then
        if default_bottom_flow.default_checkbox_flow_4_left_2.lm_default_cb_bottom_left_2.state == true then
            default_circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_connected"
        else
            default_circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_default_cb_bottom_right_1" then
        if default_bottom_flow.default_checkbox_flow_4_right_1.lm_default_cb_bottom_right_1.state == true then
            default_circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_connected"
        else
            default_circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_bottom_right_2" then
        if default_bottom_flow.default_checkbox_flow_4_right_2.lm_default_cb_bottom_right_2.state == true then
            default_circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_connected"
        else
            default_circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_default_cb_chest_connect_1" then
        if default_chest_flow.default_checkbox_flow_1_flow.lm_default_cb_chest_connect_1.state == true then
            default_circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_connected"
        else
            default_circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_chest_connect_2" then
        if default_chest_flow.default_checkbox_flow_1_flow.lm_default_cb_chest_connect_2.state == true then
            default_circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_connected"
        else
            default_circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_disconnected"
        end
    elseif checked_name == "lm_default_cb_mid_left_1" then
        if default_mid_flow.default_checkbox_flow_3_left_1.lm_default_cb_mid_left_1.state == true then
            default_circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_connected"
        else
            default_circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_mid_left_2" then
        if default_mid_flow.default_checkbox_flow_3_left_2.lm_default_cb_mid_left_2.state == true then
            default_circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_connected"
        else
            default_circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_disconnected"
        end
    elseif checked_name == "lm_default_cb_mid_right_1" then
        if default_mid_flow.default_checkbox_flow_3_right_1.lm_default_cb_mid_right_1.state == true then
            default_circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_connected"
        else
            default_circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_mid_right_2" then
        if default_mid_flow.default_checkbox_flow_3_right_2.lm_default_cb_mid_right_2.state == true then
            default_circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_connected"
        else
            default_circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_disconnected"
        end
    elseif checked_name == "lm_default_cb_inserter_connect_1" then
        if default_inserter_flow.default_checkbox_flow_5_flow.lm_default_cb_inserter_connect_1.state == true then
            default_circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_connected"
        else
            default_circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_disconnected"
        end
    elseif checked_name == "lm_default_cb_inserter_connect_2" then
        if default_inserter_flow.default_checkbox_flow_5_flow.lm_default_cb_inserter_connect_2.state == true then
            default_circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_connected"
        else
            default_circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_disconnected"
        end
    end
end)
-------------------------------------
------- Entity Removal Events -------
-------------------------------------
local function get_mined_area(event, var)
    local center = event.entity.position
    return { { center.x - var, center.y - var }, { center.x + var, center.y + var } }
end

local function mined_entity(event, machine_table, area_var, collector)
    local buffer = event.buffer and event.buffer.valid and event.buffer
    local all_items = {}
    for _, name in pairs(machine_table) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var), name = invisible_entity }) do
                if entity.name == "assembling-requester" or "assembling-provider" then
                    if entity.get_inventory(defines.inventory.chest) then
                        if entity.get_inventory(defines.inventory.chest).get_contents() ~= nil then
                            all_items = entity.get_inventory(defines.inventory.chest).get_contents()
                        end
                    end
                end
                if collector == "player" then
                    local player = game.get_player(event.player_index)
                    local player_inventory = player.get_inventory(defines.inventory.character_main)
                    for item, amount in pairs(all_items) do
                        if player_inventory.can_insert({ name = item, count = amount }) then
                            player_inventory.insert({ name = item, count = amount })
                        else
                            event.entity.surface.spill_item_stack(event.entity.position, { name = item, count = amount }, true, nil, false)
                        end
                    end
                elseif collector == "robot" then
                    for item, amount in pairs(all_items) do
                        buffer.insert({ name = item, count = amount })
                    end
                end
                all_items = {}
                entity.mine({ ignore_minable = true })
            end
        end
    end
end

script.on_event(defines.events.on_player_mined_entity, function(event)
    mined_entity(event, machine_2x2, area_var_2x2, "player")
    mined_entity(event, machine_3x3, area_var_3x3, "player")
    mined_entity(event, machine_5x5, area_var_5x5, "player")
    mined_entity(event, machine_6x6, area_var_6x6, "player")
    mined_entity(event, machine_7x7, area_var_7x7, "player")
    mined_entity(event, lab_3x3, area_var_3x3, "player")
    mined_entity(event, lab_8x8, area_var_8x8, "player")
end)

script.on_event(defines.events.on_robot_mined_entity, function(event)
    mined_entity(event, machine_2x2, area_var_2x2, "robot")
    mined_entity(event, machine_3x3, area_var_3x3, "robot")
    mined_entity(event, machine_5x5, area_var_5x5, "robot")
    mined_entity(event, machine_6x6, area_var_6x6, "robot")
    mined_entity(event, machine_7x7, area_var_7x7, "robot")
    mined_entity(event, lab_3x3, area_var_3x3, "robot")
    mined_entity(event, lab_8x8, area_var_8x8, "robot")
end)

local function entity_died(event, machine_table, area_var)
    for _, name in pairs(machine_table) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
end

script.on_event(defines.events.on_entity_died, function(event)
    entity_died(event, machine_2x2, area_var_2x2)
    entity_died(event, machine_3x3, area_var_3x3)
    entity_died(event, machine_5x5, area_var_5x5)
    entity_died(event, machine_6x6, area_var_6x6)
    entity_died(event, machine_7x7, area_var_7x7)
    entity_died(event, lab_3x3, area_var_3x3)
    entity_died(event, lab_8x8, area_var_8x8)
end)
