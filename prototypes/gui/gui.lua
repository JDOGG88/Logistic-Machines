local mod_gui = require("mod-gui")
local gui = {}

gui.regen_mod_flow = function(player)
    gui.kill_mod_flow(player)
    local button_flow = mod_gui.get_button_flow(player)
    local button = button_flow.add {
        type = "sprite-button",
        name = "lm_default_circuit_button",
        style = mod_gui.button_style,
        tooltip = { "lm-gui.tooltip" },
        sprite = "lm_entity_sprite",
    }
    button.visible = true
    local frame_flow = mod_gui.get_frame_flow(player)
    local default_circuit_gui_frame = frame_flow.add {
        type = "frame",
        name = "lm_default_circuit_window",
        direction = "vertical",
    }
    default_circuit_gui_frame.visible = false
    local enable_option_flow = default_circuit_gui_frame.add {
        type = "flow",
        name = "enable_option_flow",
        direction = "horizontal",
    }
    enable_option_flow.add {
        type = "checkbox",
        name = "enable_default_circuit_body",
        state = false,
        caption = "Enable default circuit network configuration",
    }
    local default_circuit_body = default_circuit_gui_frame.add {
        type = "frame",
        name = "default_circuit_body",
        direction = "vertical",
        style = "inventory_frame",
    }
    default_circuit_body.visible = false
    local default_circuit_body_image_container = default_circuit_body.add { type = "empty-widget", name = "default_circuit_body_image_container", style = "lm_wire_map_container" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_sub_red", sprite = "lm_wire_rc_to_sub_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_sub_green", sprite = "lm_wire_rc_to_sub_green_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_sub_red", sprite = "lm_wire_pc_to_sub_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_sub_green", sprite = "lm_wire_pc_to_sub_green_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_sub_red", sprite = "lm_wire_rci_to_sub_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_sub_green", sprite = "lm_wire_rci_to_sub_green_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_pci_to_sub_red", sprite = "lm_wire_pci_to_sub_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_pci_to_sub_green", sprite = "lm_wire_pci_to_sub_green_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_pc_red", sprite = "lm_wire_rc_to_pc_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_pc_green", sprite = "lm_wire_rc_to_pc_green_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_rci_red", sprite = "lm_wire_rc_to_rci_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_rci_green", sprite = "lm_wire_rc_to_rci_green_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_pci_red", sprite = "lm_wire_pc_to_pci_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_pci_green", sprite = "lm_wire_pc_to_pci_green_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_pci_red", sprite = "lm_wire_rci_to_pci_red_disconnected", style = "lm_wire_map" }
    default_circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_pci_green", sprite = "lm_wire_rci_to_pci_green_disconnected", style = "lm_wire_map" }
    local default_circuit_body_image_container_flow = default_circuit_body_image_container.add { type = "flow", name = "default_circuit_body_image_container_flow", direction = "vertical" }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local default_circuit_body_flow_1 = default_circuit_body_image_container_flow.add { type = "flow", name = "default_circuit_body_flow_1", direction = "horizontal" }
    local default_circuit_body_flow_1_frame_container_left = default_circuit_body_flow_1.add { type = "empty-widget", style = "lm_circuit_window_button_container" }
    local default_requester_frame = default_circuit_body_flow_1_frame_container_left.add { type = "frame", style = "lm_default_circuit_sprite_frame" }
    default_requester_frame.add { type = "sprite", sprite = "item/logistic-chest-requester", style = "lm_default_circuit_sprite_frame_image" }
    default_circuit_body_flow_1.add { type = "empty-widget", style = "lm_circuit_window_flow_1_buffer_1" }
    local default_checkbox_flow_1_flow = default_circuit_body_flow_1.add { type = "flow", name = "default_checkbox_flow_1_flow", direction = "vertical" }
    default_checkbox_flow_1_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_1_top_buffer" }
    default_checkbox_flow_1_flow.add { type = "checkbox", name = "lm_default_cb_chest_connect_1", state = false }
    default_checkbox_flow_1_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_1_mid_buffer" }
    default_checkbox_flow_1_flow.add { type = "checkbox", name = "lm_default_cb_chest_connect_2", state = false }
    default_circuit_body_flow_1.add { type = "empty-widget", style = "lm_circuit_window_flow_1_buffer_2" }
    local default_circuit_body_flow_1_frame_container_right = default_circuit_body_flow_1.add { type = "empty-widget", style = "lm_circuit_window_button_container" }
    local default_provider_frame = default_circuit_body_flow_1_frame_container_right.add { type = "frame", style = "lm_default_circuit_sprite_frame" }
    default_provider_frame.add { type = "sprite", sprite = "item/logistic-chest-passive-provider", style = "lm_default_circuit_sprite_frame_image" }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local default_circuit_body_flow_2 = default_circuit_body_image_container_flow.add { type = "flow", name = "default_circuit_body_flow_2", direction = "horizontal" }
    default_circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_1" }
    local default_checkbox_flow_2_left_1 = default_circuit_body_flow_2.add { type = "flow", name = "default_checkbox_flow_2_left_1", direction = "vertical" }
    default_checkbox_flow_2_left_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_1" }
    default_checkbox_flow_2_left_1.add { type = "checkbox", name = "lm_default_cb_top_left_1", state = false }
    default_circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_2" }
    local default_checkbox_flow_2_left_2 = default_circuit_body_flow_2.add { type = "flow", name = "default_checkbox_flow_2_left_2", direction = "vertical" }
    default_checkbox_flow_2_left_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_2" }
    default_checkbox_flow_2_left_2.add { type = "checkbox", name = "lm_default_cb_top_left_2", state = false }
    default_circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_3" }
    local default_checkbox_flow_2_right_1 = default_circuit_body_flow_2.add { type = "flow", name = "default_checkbox_flow_2_right_1", direction = "vertical" }
    default_checkbox_flow_2_right_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_3" }
    default_checkbox_flow_2_right_1.add { type = "checkbox", name = "lm_default_cb_top_right_1", state = false }
    default_circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_4" }
    local default_checkbox_flow_2_right_2 = default_circuit_body_flow_2.add { type = "flow", name = "default_checkbox_flow_2_right_2", direction = "vertical" }
    default_checkbox_flow_2_right_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_4" }
    default_checkbox_flow_2_right_2.add { type = "checkbox", name = "lm_default_cb_top_right_2", state = false }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local default_circuit_body_flow_3 = default_circuit_body_image_container_flow.add { type = "flow", name = "default_circuit_body_flow_3", direction = "horizontal" }
    default_circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_1" }
    local default_checkbox_flow_3_left_1 = default_circuit_body_flow_3.add { type = "flow", name = "default_checkbox_flow_3_left_1", direction = "vertical" }
    default_checkbox_flow_3_left_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    default_checkbox_flow_3_left_1.add { type = "checkbox", name = "lm_default_cb_mid_left_1", state = false }
    default_circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_2" }
    local default_checkbox_flow_3_left_2 = default_circuit_body_flow_3.add { type = "flow", name = "default_checkbox_flow_3_left_2", direction = "vertical" }
    default_checkbox_flow_3_left_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    default_checkbox_flow_3_left_2.add { type = "checkbox", name = "lm_default_cb_mid_left_2", state = false }
    default_circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_3" }
    local default_circuit_body_flow_3_frame_container = default_circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_sprite_frame_container" }
    local default_substation_frame = default_circuit_body_flow_3_frame_container.add { type = "frame", style = "lm_circuit_sprite_frame" }
    default_substation_frame.add { type = "sprite", sprite = "item/substation", style = "lm_circuit_sprite_frame_image" }
    default_circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_4" }
    local default_checkbox_flow_3_right_1 = default_circuit_body_flow_3.add { type = "flow", name = "default_checkbox_flow_3_right_1", direction = "vertical" }
    default_checkbox_flow_3_right_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    default_checkbox_flow_3_right_1.add { type = "checkbox", name = "lm_default_cb_mid_right_1", state = false }
    default_circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_5" }
    local default_checkbox_flow_3_right_2 = default_circuit_body_flow_3.add { type = "flow", name = "default_checkbox_flow_3_right_2", direction = "vertical" }
    default_checkbox_flow_3_right_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    default_checkbox_flow_3_right_2.add { type = "checkbox", name = "lm_default_cb_mid_right_2", state = false }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local default_circuit_body_flow_4 = default_circuit_body_image_container_flow.add { type = "flow", name = "default_circuit_body_flow_4", direction = "horizontal" }
    default_circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_1" }
    local default_checkbox_flow_4_left_1 = default_circuit_body_flow_4.add { type = "flow", name = "default_checkbox_flow_4_left_1", direction = "vertical" }
    default_checkbox_flow_4_left_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_1" }
    default_checkbox_flow_4_left_1.add { type = "checkbox", name = "lm_default_cb_bottom_left_1", state = false }
    default_circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_2" }
    local default_checkbox_flow_4_left_2 = default_circuit_body_flow_4.add { type = "flow", name = "default_checkbox_flow_4_left_2", direction = "vertical" }
    default_checkbox_flow_4_left_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_2" }
    default_checkbox_flow_4_left_2.add { type = "checkbox", name = "lm_default_cb_bottom_left_2", state = false }
    default_circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_3" }
    local default_checkbox_flow_4_right_1 = default_circuit_body_flow_4.add { type = "flow", name = "default_checkbox_flow_4_right_1", direction = "vertical" }
    default_checkbox_flow_4_right_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_3" }
    default_checkbox_flow_4_right_1.add { type = "checkbox", name = "lm_default_cb_bottom_right_1", state = false }
    default_circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_4" }
    local default_checkbox_flow_4_right_2 = default_circuit_body_flow_4.add { type = "flow", name = "default_checkbox_flow_4_right_2", direction = "vertical" }
    default_checkbox_flow_4_right_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_4" }
    default_checkbox_flow_4_right_2.add { type = "checkbox", name = "lm_default_cb_bottom_right_2", state = false }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local default_circuit_body_flow_5 = default_circuit_body_image_container_flow.add { type = "flow", name = "default_circuit_body_flow_5", direction = "horizontal" }
    local default_circuit_body_flow_5_frame_container_left = default_circuit_body_flow_5.add { type = "empty-widget", style = "lm_circuit_window_button_container" }
    local default_inserter_1_frame = default_circuit_body_flow_5_frame_container_left.add { type = "frame", style = "lm_default_circuit_sprite_frame" }
    default_inserter_1_frame.add { type = "sprite", sprite = "item/stack-inserter", style = "lm_default_circuit_sprite_frame_image" }
    default_circuit_body_flow_5.add { type = "empty-widget", style = "lm_circuit_window_flow_5_buffer_1" }
    local default_checkbox_flow_5_flow = default_circuit_body_flow_5.add { type = "flow", name = "default_checkbox_flow_5_flow", direction = "vertical" }
    default_checkbox_flow_5_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_5_top_buffer" }
    default_checkbox_flow_5_flow.add { type = "checkbox", name = "lm_default_cb_inserter_connect_1", state = false }
    default_checkbox_flow_5_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_5_mid_buffer" }
    default_checkbox_flow_5_flow.add { type = "checkbox", name = "lm_default_cb_inserter_connect_2", state = false }
    default_circuit_body_flow_5.add { type = "empty-widget", style = "lm_circuit_window_flow_5_buffer_2" }
    local default_circuit_body_flow_5_frame_container_right = default_circuit_body_flow_5.add { type = "empty-widget", style = "lm_circuit_window_button_container" }
    local default_inserter_2_frame = default_circuit_body_flow_5_frame_container_right.add { type = "frame", style = "lm_default_circuit_sprite_frame" }
    default_inserter_2_frame.add { type = "sprite", sprite = "item/stack-inserter", style = "lm_default_circuit_sprite_frame_image" }
end

gui.regen_screen_flow = function(player)
    gui.kill_screen_flow(player)
    
    local main_gui_frame = player.gui.screen.add {
        type = "frame",
        name = "lm_entity_window",
        direction = "vertical",
    }
    main_gui_frame.visible = false
    main_gui_frame.auto_center = true
    local main_title_flow = main_gui_frame.add {
        type = "flow",
        name = "lm_main_title_flow",
        direction = "horizontal",
    }
    local main_title = main_title_flow.add {
        type = "label",
        name = "lm_main_title",
        style = "frame_title"
    }
    main_title.drag_target = main_gui_frame
    local main_title_filler = main_title_flow.add {
        type = "empty-widget",
        style = "lm_draggable_filler",
    }
    main_title_filler.drag_target = main_gui_frame
    main_title_flow.add {
        type = "sprite-button",
        name = "lm_main_close_button",
        style = "frame_action_button",
        sprite = "utility/close_white",
        hovered_sprite = "utility/close_black",
    }
    local body_flow = main_gui_frame.add {
        type = "flow",
        name = "lm_body_flow",
        direction = "horizontal",
    }
    local left_body_flow = body_flow.add {
        type = "flow",
        name = "lm_left_body_flow",
        direction = "vertical",
    }
    left_body_flow.add {
        type = "sprite-button",
        name = "lm_requester_chest_button",
        style = "lm_main_frame_button_sides",
        sprite = "item/logistic-chest-requester",
    }
    left_body_flow.add {
        type = "sprite-button",
        name = "lm_requester_chest_inserter_button",
        style = "lm_main_frame_button_sides",
        sprite = "item/stack-inserter",
    }
    local center_body_flow = body_flow.add {
        type = "flow",
        name = "lm_center_body_flow",
        direction = "vertical",
    }
    center_body_flow.add {
        type = "sprite-button",
        name = "lm_entity_button",
        style = "lm_main_frame_entity_button",
        sprite = "lm_entity_sprite",
    }
    center_body_flow.add {
        type = "sprite-button",
        name = "lm_circuit_button",
        style = "lm_main_frame_circuit_button",
        sprite = "lm_circuit_sprite",
    }
    local right_body_flow = body_flow.add {
        type = "flow",
        name = "lm_right_body_flow",
        direction = "vertical",
    }
    right_body_flow.add {
        type = "sprite-button",
        name = "lm_provider_chest_button",
        style = "lm_main_frame_button_sides",
        sprite = "item/logistic-chest-passive-provider",
    }
    right_body_flow.add {
        type = "sprite-button",
        name = "lm_provider_chest_inserter_button",
        style = "lm_main_frame_button_sides",
        sprite = "item/stack-inserter",
    }
    local main_footer_flow = main_gui_frame.add {
        type = "flow",
        name = "main_footer_flow",
        direction = "horizontal",
    }
    local main_footer_filler = main_footer_flow.add {
        type = "empty-widget",
        style = "lm_draggable_filler",
    }
    main_footer_flow.add {
        type = "label",
        caption = { "mod-setting-name.always-open-mod-gui-first" }
    }
    main_footer_flow.add {
        type = "checkbox",
        name = "lm_gui_open_option",
        state = true
    }
    main_footer_filler.drag_target = main_gui_frame
    ------------------------------------------------
    local circuit_gui_frame = player.gui.screen.add {
        type = "frame",
        name = "lm_circuit_network_config_window",
        direction = "vertical",
    }
    circuit_gui_frame.visible = false
    circuit_gui_frame.auto_center = true
    local circuit_title_flow = circuit_gui_frame.add {
        type = "flow",
        name = "lm_circuit_title_flow",
        direction = "horizontal",
    }
    local circuit_title = circuit_title_flow.add {
        type = "label",
        name = "lm_circuit_title",
        style = "frame_title"
    }
    circuit_title.drag_target = circuit_gui_frame
    local circuit_title_filler = circuit_title_flow.add {
        type = "empty-widget",
        style = "lm_draggable_filler",
    }
    circuit_title_filler.drag_target = circuit_gui_frame
    circuit_title_flow.add {
        type = "sprite-button",
        name = "lm_circuit_close_button",
        style = "frame_action_button",
        sprite = "utility/close_white",
        hovered_sprite = "utility/close_black",
    }
    local circuit_body = circuit_gui_frame.add {
        type = "frame",
        name = "circuit_body",
        direction = "vertical",
        style = "inventory_frame",
    }
    local circuit_body_image_container = circuit_body.add { type = "empty-widget", name = "circuit_body_image_container", style = "lm_wire_map_container" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_sub_red", sprite = "lm_wire_rc_to_sub_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_sub_green", sprite = "lm_wire_rc_to_sub_green_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_sub_red", sprite = "lm_wire_pc_to_sub_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_sub_green", sprite = "lm_wire_pc_to_sub_green_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_sub_red", sprite = "lm_wire_rci_to_sub_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_sub_green", sprite = "lm_wire_rci_to_sub_green_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_pci_to_sub_red", sprite = "lm_wire_pci_to_sub_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_pci_to_sub_green", sprite = "lm_wire_pci_to_sub_green_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_pc_red", sprite = "lm_wire_rc_to_pc_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_pc_green", sprite = "lm_wire_rc_to_pc_green_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_rci_red", sprite = "lm_wire_rc_to_rci_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rc_to_rci_green", sprite = "lm_wire_rc_to_rci_green_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_pci_red", sprite = "lm_wire_pc_to_pci_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_pc_to_pci_green", sprite = "lm_wire_pc_to_pci_green_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_pci_red", sprite = "lm_wire_rci_to_pci_red_disconnected", style = "lm_wire_map" }
    circuit_body_image_container.add { type = "sprite", name = "lm_wire_rci_to_pci_green", sprite = "lm_wire_rci_to_pci_green_disconnected", style = "lm_wire_map" }
    local circuit_body_image_container_flow = circuit_body_image_container.add { type = "flow", name = "circuit_body_image_container_flow", direction = "vertical" }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local circuit_body_flow_1 = circuit_body_image_container_flow.add { type = "flow", name = "circuit_body_flow_1", direction = "horizontal" }
    local circuit_body_flow_1_button_left = circuit_body_flow_1.add { type = "empty-widget", name = "circuit_body_flow_1_button_left", style = "lm_circuit_window_button_container" }
    circuit_body_flow_1_button_left.add { type = "sprite-button", name = "lm_requester_chest_button", sprite = "item/logistic-chest-requester", style = "lm_circuit_sprite_button" }
    circuit_body_flow_1.add { type = "empty-widget", style = "lm_circuit_window_flow_1_buffer_1" }
    local checkbox_flow_1_flow = circuit_body_flow_1.add { type = "flow", name = "checkbox_flow_1_flow", direction = "vertical" }
    checkbox_flow_1_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_1_top_buffer" }
    checkbox_flow_1_flow.add { type = "checkbox", name = "lm_cb_chest_connect_1", state = false }
    checkbox_flow_1_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_1_mid_buffer" }
    checkbox_flow_1_flow.add { type = "checkbox", name = "lm_cb_chest_connect_2", state = false }
    circuit_body_flow_1.add { type = "empty-widget", style = "lm_circuit_window_flow_1_buffer_2" }
    local circuit_body_flow_1_button_right = circuit_body_flow_1.add { type = "empty-widget", name = "circuit_body_flow_1_button_right", style = "lm_circuit_window_button_container" }
    circuit_body_flow_1_button_right.add { type = "sprite-button", name = "lm_provider_chest_button", sprite = "item/logistic-chest-passive-provider", style = "lm_circuit_sprite_button" }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local circuit_body_flow_2 = circuit_body_image_container_flow.add { type = "flow", name = "circuit_body_flow_2", direction = "horizontal" }
    circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_1" }
    local checkbox_flow_2_left_1 = circuit_body_flow_2.add { type = "flow", name = "checkbox_flow_2_left_1", direction = "vertical" }
    checkbox_flow_2_left_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_1" }
    checkbox_flow_2_left_1.add { type = "checkbox", name = "lm_cb_top_left_1", state = false }
    circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_2" }
    local checkbox_flow_2_left_2 = circuit_body_flow_2.add { type = "flow", name = "checkbox_flow_2_left_2", direction = "vertical" }
    checkbox_flow_2_left_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_2" }
    checkbox_flow_2_left_2.add { type = "checkbox", name = "lm_cb_top_left_2", state = false }
    circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_3" }
    local checkbox_flow_2_right_1 = circuit_body_flow_2.add { type = "flow", name = "checkbox_flow_2_right_1", direction = "vertical" }
    checkbox_flow_2_right_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_3" }
    checkbox_flow_2_right_1.add { type = "checkbox", name = "lm_cb_top_right_1", state = false }
    circuit_body_flow_2.add { type = "empty-widget", style = "lm_circuit_window_flow_2_buffer_4" }
    local checkbox_flow_2_right_2 = circuit_body_flow_2.add { type = "flow", name = "checkbox_flow_2_right_2", direction = "vertical" }
    checkbox_flow_2_right_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_2_top_buffer_4" }
    checkbox_flow_2_right_2.add { type = "checkbox", name = "lm_cb_top_right_2", state = false }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local circuit_body_flow_3 = circuit_body_image_container_flow.add { type = "flow", name = "circuit_body_flow_3", direction = "horizontal" }
    circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_1" }
    local checkbox_flow_3_left_1 = circuit_body_flow_3.add { type = "flow", name = "checkbox_flow_3_left_1", direction = "vertical" }
    checkbox_flow_3_left_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    checkbox_flow_3_left_1.add { type = "checkbox", name = "lm_cb_mid_left_1", state = false }
    circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_2" }
    local checkbox_flow_3_left_2 = circuit_body_flow_3.add { type = "flow", name = "checkbox_flow_3_left_2", direction = "vertical" }
    checkbox_flow_3_left_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    checkbox_flow_3_left_2.add { type = "checkbox", name = "lm_cb_mid_left_2", state = false }
    circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_3" }
    local circuit_body_flow_3_frame_container = circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_sprite_frame_container" }
    local substation_frame = circuit_body_flow_3_frame_container.add { type = "frame", style = "lm_circuit_sprite_frame" }
    substation_frame.add { type = "sprite", sprite = "item/substation", style = "lm_circuit_sprite_frame_image" }
    circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_4" }
    local checkbox_flow_3_right_1 = circuit_body_flow_3.add { type = "flow", name = "checkbox_flow_3_right_1", direction = "vertical" }
    checkbox_flow_3_right_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    checkbox_flow_3_right_1.add { type = "checkbox", name = "lm_cb_mid_right_1", state = false }
    circuit_body_flow_3.add { type = "empty-widget", style = "lm_circuit_window_flow_3_buffer_5" }
    local checkbox_flow_3_right_2 = circuit_body_flow_3.add { type = "flow", name = "checkbox_flow_3_right_2", direction = "vertical" }
    checkbox_flow_3_right_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_3_top_buffer" }
    checkbox_flow_3_right_2.add { type = "checkbox", name = "lm_cb_mid_right_2", state = false }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local circuit_body_flow_4 = circuit_body_image_container_flow.add { type = "flow", name = "circuit_body_flow_4", direction = "horizontal" }
    circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_1" }
    local checkbox_flow_4_left_1 = circuit_body_flow_4.add { type = "flow", name = "checkbox_flow_4_left_1", direction = "vertical" }
    checkbox_flow_4_left_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_1" }
    checkbox_flow_4_left_1.add { type = "checkbox", name = "lm_cb_bottom_left_1", state = false }
    circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_2" }
    local checkbox_flow_4_left_2 = circuit_body_flow_4.add { type = "flow", name = "checkbox_flow_4_left_2", direction = "vertical" }
    checkbox_flow_4_left_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_2" }
    checkbox_flow_4_left_2.add { type = "checkbox", name = "lm_cb_bottom_left_2", state = false }
    circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_3" }
    local checkbox_flow_4_right_1 = circuit_body_flow_4.add { type = "flow", name = "checkbox_flow_4_right_1", direction = "vertical" }
    checkbox_flow_4_right_1.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_3" }
    checkbox_flow_4_right_1.add { type = "checkbox", name = "lm_cb_bottom_right_1", state = false }
    circuit_body_flow_4.add { type = "empty-widget", style = "lm_circuit_window_flow_4_buffer_4" }
    local checkbox_flow_4_right_2 = circuit_body_flow_4.add { type = "flow", name = "checkbox_flow_4_right_2", direction = "vertical" }
    checkbox_flow_4_right_2.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_4_top_buffer_4" }
    checkbox_flow_4_right_2.add { type = "checkbox", name = "lm_cb_bottom_right_2", state = false }
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    local circuit_body_flow_5 = circuit_body_image_container_flow.add { type = "flow", name = "circuit_body_flow_5", direction = "horizontal" }
    local circuit_body_flow_5_button_left = circuit_body_flow_5.add { type = "empty-widget", name = "circuit_body_flow_5_button_left", style = "lm_circuit_window_button_container" }
    circuit_body_flow_5_button_left.add { type = "sprite-button", name = "lm_requester_chest_inserter_button", sprite = "item/stack-inserter", style = "lm_circuit_sprite_button" }
    circuit_body_flow_5.add { type = "empty-widget", style = "lm_circuit_window_flow_5_buffer_1" }
    local checkbox_flow_5_flow = circuit_body_flow_5.add { type = "flow", name = "checkbox_flow_5_flow", direction = "vertical" }
    checkbox_flow_5_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_5_top_buffer" }
    checkbox_flow_5_flow.add { type = "checkbox", name = "lm_cb_inserter_connect_1", state = false }
    checkbox_flow_5_flow.add { type = "empty-widget", style = "lm_circuit_window_checkbox_flow_5_mid_buffer" }
    checkbox_flow_5_flow.add { type = "checkbox", name = "lm_cb_inserter_connect_2", state = false }
    circuit_body_flow_5.add { type = "empty-widget", style = "lm_circuit_window_flow_5_buffer_2" }
    local circuit_body_flow_5_button_right = circuit_body_flow_5.add { type = "empty-widget", name = "circuit_body_flow_5_button_right", style = "lm_circuit_window_button_container" }
    circuit_body_flow_5_button_right.add { type = "sprite-button", name = "lm_provider_chest_inserter_button", sprite = "item/stack-inserter", style = "lm_circuit_sprite_button" }
    local circuit_footer_flow = circuit_gui_frame.add {
        type = "flow",
        direction = "horizontal",
    }
    local circuit_footer_filler = circuit_footer_flow.add {
        type = "empty-widget",
        style = "lm_draggable_filler",
    }
    circuit_footer_filler.drag_target = circuit_gui_frame
end

gui.kill_mod_flow = function(player)
    local button_flow = mod_gui.get_button_flow(player)
    local frame_flow = mod_gui.get_frame_flow(player)
    if button_flow.lm_default_circuit_button then
        button_flow.lm_default_circuit_button.destroy()
    end
    if frame_flow.lm_default_circuit_window then
        frame_flow.lm_default_circuit_window.destroy()
    end
end

gui.kill_screen_flow = function(player)
    local main_gui_frame = player.gui.screen
    if main_gui_frame.lm_entity_window then
        main_gui_frame.lm_entity_window.destroy()
    end
    if main_gui_frame.lm_circuit_network_config_window then
        main_gui_frame.lm_circuit_network_config_window.destroy()
    end
end

return gui
