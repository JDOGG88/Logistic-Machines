local function create_sprite(name)
    local cs = {}
    cs.type = "sprite"
    cs.name = "lm_wire_" .. name
    cs.filename = "__Logistic-Machines__/graphics/gui/" .. name .. ".png"
    cs.width = 500
    cs.height = 500
    cs.flags = { "gui-icon" }
    return cs
end

data:extend({
    create_sprite("rc_to_sub_red_connected"),
    create_sprite("rc_to_sub_red_disconnected"),
    create_sprite("rc_to_sub_green_connected"),
    create_sprite("rc_to_sub_green_disconnected"),
    create_sprite("pc_to_sub_red_connected"),
    create_sprite("pc_to_sub_red_disconnected"),
    create_sprite("pc_to_sub_green_connected"),
    create_sprite("pc_to_sub_green_disconnected"),
    create_sprite("rci_to_sub_red_connected"),
    create_sprite("rci_to_sub_red_disconnected"),
    create_sprite("rci_to_sub_green_connected"),
    create_sprite("rci_to_sub_green_disconnected"),
    create_sprite("pci_to_sub_red_connected"),
    create_sprite("pci_to_sub_red_disconnected"),
    create_sprite("pci_to_sub_green_connected"),
    create_sprite("pci_to_sub_green_disconnected"),
    create_sprite("rc_to_pc_red_connected"),
    create_sprite("rc_to_pc_red_disconnected"),
    create_sprite("rc_to_pc_green_connected"),
    create_sprite("rc_to_pc_green_disconnected"),
    create_sprite("rc_to_rci_red_connected"),
    create_sprite("rc_to_rci_red_disconnected"),
    create_sprite("rc_to_rci_green_connected"),
    create_sprite("rc_to_rci_green_disconnected"),
    create_sprite("pc_to_pci_red_connected"),
    create_sprite("pc_to_pci_red_disconnected"),
    create_sprite("pc_to_pci_green_connected"),
    create_sprite("pc_to_pci_green_disconnected"),
    create_sprite("rci_to_pci_red_connected"),
    create_sprite("rci_to_pci_red_disconnected"),
    create_sprite("rci_to_pci_green_connected"),
    create_sprite("rci_to_pci_green_disconnected"),
    {
        type = "sprite",
        name = "lm_entity_sprite",
        filename = "__Logistic-Machines__/graphics/gui/entity-config.png",
        width = 214,
        height = 214,
        flags = { "gui-icon" }
    },
    {
        type = "sprite",
        name = "lm_circuit_sprite",
        filename = "__Logistic-Machines__/graphics/gui/circuit-network-config.png",
        width = 64,
        height = 64,
        flags = { "gui-icon" }
    },
    {
        type = "custom-input",
        name = "lm-open-gui",
        key_sequence = "CONTROL + SHIFT + mouse-button-1",
        consuming = "none"
    },
    {
        type = "custom-input",
        name = "lm-e-to-close-gui",
        key_sequence = "E",
        consuming = "none"
    },
    {
        type = "custom-input",
        name = "lm-escape-to-close-gui",
        key_sequence = "ESCAPE",
        consuming = "none"
    },
})

local style = data.raw["gui-style"].default

style.lm_main_frame_entity_button_cannot_build = {
    type = "button_style",
    parent = "button",
    width = 150,
    height = 150,
    left_click_sound = { filename = "__core__/sound/cannot-build.ogg", volume = 1 }
}
style.lm_circuit_sprite_button_cannot_build = {
    type = "button_style",
    parent = "button",
    width = 100,
    height = 100,
    left_click_sound = { filename = "__core__/sound/cannot-build.ogg", volume = 1 }
}
style.lm_main_frame_button_sides_cannot_build = {
    type = "button_style",
    parent = "button",
    width = 100,
    height = 125,
    left_click_sound = { filename = "__core__/sound/cannot-build.ogg", volume = 1 }
}

style.lm_draggable_filler = {
    type = "empty_widget_style",
    parent = "draggable_space",
    minimal_width = 10,
    top_padding = 20,
    height = 25,
    horizontally_stretchable = "on",
}
style.lm_main_frame_entity_button = {
    type = "button_style",
    parent = "button",
    name = "lm_main_frame_entity_button",
    width = 150,
    height = 150,
}
style.lm_main_frame_circuit_button = {
    type = "button_style",
    parent = "button",
    width = 150,
    height = 100,
}
style.lm_main_frame_button_sides = {
    type = "button_style",
    parent = "button",
    width = 100,
    height = 125,
}
style.lm_wire_map_container = {
    type = "empty_widget_style",
    width = 550,
    height = 550,
}
style.lm_wire_map = {
    type = "image_style",
    width = 530,
    height = 530,
    top_padding = 15,
    left_padding = 15,
    stretch_image_to_widget_size = true
}
----------------------------------
style.lm_circuit_window_flow_1_buffer_1 = {
    type = "empty_widget_style",
    width = 160,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_1_top_buffer = {
    type = "empty_widget_style",
    width = 15,
    height = 28,
}
style.lm_circuit_window_checkbox_flow_1_mid_buffer = {
    type = "empty_widget_style",
    width = 15,
    height = 28,
}
style.lm_circuit_window_flow_1_buffer_2 = {
    type = "empty_widget_style",
    width = 125,
    height = 100,
}
----------------------------------
style.lm_circuit_window_flow_2_buffer_1 = {
    type = "empty_widget_style",
    width = 120,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_2_top_buffer_1 = {
    type = "empty_widget_style",
    width = 15,
    height = 60,
}
style.lm_circuit_window_flow_2_buffer_2 = {
    type = "empty_widget_style",
    width = 15,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_2_top_buffer_2 = {
    type = "empty_widget_style",
    width = 15,
    height = 15,
}
style.lm_circuit_window_flow_2_buffer_3 = {
    type = "empty_widget_style",
    width = 180,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_2_top_buffer_3 = {
    type = "empty_widget_style",
    width = 15,
    height = 15,
}
style.lm_circuit_window_flow_2_buffer_4 = {
    type = "empty_widget_style",
    width = 15,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_2_top_buffer_4 = {
    type = "empty_widget_style",
    width = 15,
    height = 60,
}
----------------------------------
style.lm_circuit_window_flow_3_buffer_1 = {
    type = "empty_widget_style",
    width = 28,
    height = 100,
}
style.lm_circuit_window_flow_3_buffer_2 = {
    type = "empty_widget_style",
    width = 28,
    height = 100,
}
style.lm_circuit_window_flow_3_buffer_3 = {
    type = "empty_widget_style",
    width = 100,
    height = 100,
}
style.lm_circuit_window_flow_3_buffer_4 = {
    type = "empty_widget_style",
    width = 124,
    height = 100,
}
style.lm_circuit_window_flow_3_buffer_5 = {
    type = "empty_widget_style",
    width = 28,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_3_top_buffer = {
    type = "empty_widget_style",
    width = 15,
    height = 55,
}
----------------------------------
style.lm_circuit_window_flow_4_buffer_1 = {
    type = "empty_widget_style",
    width = 120,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_4_top_buffer_1 = {
    type = "empty_widget_style",
    width = 15,
    height = 35,
}
style.lm_circuit_window_flow_4_buffer_2 = {
    type = "empty_widget_style",
    width = 15,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_4_top_buffer_2 = {
    type = "empty_widget_style",
    width = 15,
    height = 80,
}
style.lm_circuit_window_flow_4_buffer_3 = {
    type = "empty_widget_style",
    width = 180,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_4_top_buffer_3 = {
    type = "empty_widget_style",
    width = 15,
    height = 80,
}
style.lm_circuit_window_flow_4_buffer_4 = {
    type = "empty_widget_style",
    width = 15,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_4_top_buffer_4 = {
    type = "empty_widget_style",
    width = 15,
    height = 35,
}
----------------------------------
style.lm_circuit_window_flow_5_buffer_1 = {
    type = "empty_widget_style",
    width = 160,
    height = 100,
}
style.lm_circuit_window_checkbox_flow_5_top_buffer = {
    type = "empty_widget_style",
    width = 15,
    height = 18,
}
style.lm_circuit_window_checkbox_flow_5_mid_buffer = {
    type = "empty_widget_style",
    width = 15,
    height = 28,
}
style.lm_circuit_window_flow_5_buffer_2 = {
    type = "empty_widget_style",
    width = 125,
    height = 100,
}
----------------------------------
style.lm_circuit_window_button_container = {
    type = "empty_widget_style",
    width = 100,
    height = 100,
    top_padding = 15,
    left_padding = 15,
}
style.lm_circuit_sprite_button = {
    type = "button_style",
    parent = "button",
    width = 100,
    height = 100,
}
style.lm_circuit_sprite_frame_container = {
    type = "empty_widget_style",
    width = 110,
    height = 110,
    top_padding = 10,
    left_padding = 10,
}
style.lm_circuit_sprite_frame = {
    type = "frame_style",
    width = 110,
    height = 110,
}
style.lm_circuit_sprite_frame_image = {
    type = "image_style",
    width = 90,
    height = 90,
    stretch_image_to_widget_size = true
}
