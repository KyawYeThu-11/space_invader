global.pause = true;
global.view_width = room_width;
global.view_height = room_height;

global.key_enter = vk_enter;
global.key_player_left = vk_left;
global.key_player_right = vk_right;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_player_shoot = vk_space;
global.key_up = vk_up;
global.key_down = vk_down;
global.background_music = snd_BGM_1
global.spr_player_skin = 0;

display_set_gui_size(global.view_width, global.view_height);

enum menu_page{
	main,
	settings,
	audio,
	controls,
	appearance,
	height
}

enum menu_element_type{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

// CREATE MENU PAGES
ds_main_menu = create_menu_page(
	["PLAY", menu_element_type.script_runner, resume_game],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["ACHIEVEMENTS", menu_element_type.script_runner, show_scoreboard],
	["EXIT", menu_element_type.script_runner, exit_game]
)

ds_settings = create_menu_page(
	["AUDIO", menu_element_type.page_transfer, menu_page.audio],
	["CONTROLS", menu_element_type.page_transfer, menu_page.controls],
	["APPEARANCE", menu_element_type.page_transfer, menu_page.appearance],
	["BACK", menu_element_type.page_transfer, menu_page.main]
)

ds_menu_audio = create_menu_page(
	["MASTER", menu_element_type.slider, change_volume, 1, [0, 1]],
	["SOUNDS", menu_element_type.slider, change_volume, 1, [0, 1]],
	["MUSIC", menu_element_type.slider, change_volume, 1, [0, 1]],
	["BGM", menu_element_type.shift, change_bgm, 0, ["Glory of the City", "Hot Spade", "Glorious Purpose", "The King", "Victory"]],
	["BACK", menu_element_type.page_transfer, menu_page.settings],
)

ds_menu_controls = create_menu_page(
	["LEFT", menu_element_type.input, "key_player_left", vk_left],
	["RIGHT", menu_element_type.input, "key_player_right", vk_right],
	["SHOOT", menu_element_type.input, "key_player_shoot", vk_space],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
)

ds_menu_appearance = create_menu_page(
	["SKIN", menu_element_type.shift, change_skin, 0, ["Ship A", "Ship B", "Ship C", "Ship D"]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
)

// current page
page = 0;

menu_pages = [ds_main_menu, ds_settings, ds_menu_audio, ds_menu_controls, ds_menu_appearance];

var i = 0, array_len = array_length(menu_pages);

repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;

audio_group_load(audiogroup_BGM);
audio_group_load(audiogroup_soundeffects);