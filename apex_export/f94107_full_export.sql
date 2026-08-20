prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.3'
,p_default_workspace_id=>134464438266823600717
,p_default_application_id=>94107
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MYLAB2026'
);
end;
/
 
prompt APPLICATION 94107 - Steam Nexus
--
-- Application Export:
--   Application:     94107
--   Name:            Steam Nexus
--   Date and Time:   09:11 Thursday August 20, 2026
--   Exported By:     NIYAZBEK
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     18
--       Items:                   25
--       Validations:              2
--       Processes:               18
--       Regions:                 40
--       Buttons:                 22
--       Dynamic Actions:          2
--     Shared Components:
--       Logic:
--         Items:                  2
--         Computations:           1
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             16
--       Security:
--         Authentication:         2
--         Authorization:          2
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   4
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.3
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_MYLAB2026')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Steam Nexus')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'STEAM-NEXUS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8AA02557C83EB0446E369D1FF0ABE00070A72C83E62B2B4426D5E79F90E1CD8A'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(167781227872192561691)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Steam Nexus'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_modernization_available=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Steam Nexus'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260517083408Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NIYAZBEK'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>'15769613531668'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_navigation_list_id=>wwv_flow_imp.id(161107315965451470857)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Steam-style global theme for Oracle APEX Universal Theme user pages. */',
'',
':root {',
'  --steam-bg: #0d1117;',
'  --steam-panel: #16202d;',
'  --steam-panel-2: #1e2d3e;',
'  --steam-border: #2a475e;',
'  --steam-accent: #66c0f4;',
'  --steam-accent-2: #4b8ec5;',
'  --steam-green: #a4d007;',
'  --steam-text: #c7d5e0;',
'  --steam-muted: #8f98a0;',
'  --steam-input: #0f1923;',
'  --steam-danger: #e07070;',
'}',
'',
'html,',
'body,',
'.t-PageBody,',
'.t-Body,',
'.t-Body-main,',
'.t-Body-content {',
'  background-color: var(--steam-bg) !important;',
'  background-image:',
'    radial-gradient(ellipse 85% 45% at 50% -10%, rgba(30, 80, 130, 0.48), transparent 68%),',
'    linear-gradient(180deg, rgba(13, 17, 23, 0), rgba(13, 17, 23, 0.92) 34rem) !important;',
'  color: var(--steam-text) !important;',
'}',
'',
'.t-Header,',
'.t-Body-nav,',
'.t-Footer {',
'  background: #111923 !important;',
'  border-color: var(--steam-border) !important;',
'}',
'',
'.t-Header-branding,',
'.t-Header-logo-link,',
'.t-Header .t-Button,',
'.t-TreeNav .a-TreeView-label,',
'.t-Breadcrumb-label {',
'  color: var(--steam-text) !important;',
'}',
'',
'.t-Body-title {',
'  background: transparent !important;',
'  border-bottom: 1px solid rgba(102, 192, 244, 0.18) !important;',
'}',
'',
'.t-Body-title h1,',
'.t-Region-title,',
'.a-IRR-headerLabel,',
'.t-Card-title {',
'  color: var(--steam-accent) !important;',
'  font-family: Rajdhani, "Segoe UI", Arial, sans-serif !important;',
'  font-weight: 700 !important;',
'  letter-spacing: 0.06em !important;',
'}',
'',
'.t-Region,',
'.t-Login-region,',
'.a-IRR-container,',
'.a-IG,',
'.t-Card-wrap {',
'  background: linear-gradient(160deg, var(--steam-panel-2), var(--steam-panel)) !important;',
'  border: 1px solid var(--steam-border) !important;',
'  border-radius: 6px !important;',
'  box-shadow: 0 18px 50px rgba(0, 0, 0, 0.24) !important;',
'}',
'',
'.t-Region-header {',
'  background: rgba(13, 17, 23, 0.34) !important;',
'  border-color: rgba(102, 192, 244, 0.18) !important;',
'}',
'',
'.t-Region-body,',
'.t-Card-body,',
'.a-IRR-content {',
'  color: var(--steam-text) !important;',
'}',
'',
'.a-IRR-table,',
'.a-IRR-table tr,',
'.a-IRR-table td,',
'.a-IRR-table th,',
'.a-IG-contentContainer,',
'.a-GV-table,',
'.a-GV-table td,',
'.a-GV-table th {',
'  background-color: transparent !important;',
'  border-color: rgba(42, 71, 94, 0.78) !important;',
'  color: var(--steam-text) !important;',
'}',
'',
'.a-IRR-table th,',
'.a-GV-table th,',
'.a-IRR-header {',
'  background: #101a24 !important;',
'}',
'',
'.a-IRR-table tr:hover td,',
'.a-GV-table tr:hover td {',
'  background: rgba(102, 192, 244, 0.08) !important;',
'}',
'',
'.t-Form-label,',
'.t-Form-itemText,',
'.t-Form-optionLabel,',
'.t-Form-fieldContainer label {',
'  color: var(--steam-muted) !important;',
'  font-size: 0.78rem !important;',
'  font-weight: 700 !important;',
'  letter-spacing: 0.04em !important;',
'  text-transform: uppercase !important;',
'}',
'',
'.apex-item-text,',
'.apex-item-textarea,',
'.apex-item-select,',
'.apex-item-group,',
'input[type="text"],',
'input[type="password"],',
'input[type="email"],',
'input[type="number"],',
'select,',
'textarea {',
'  background-color: var(--steam-input) !important;',
'  border: 1px solid var(--steam-border) !important;',
'  border-radius: 4px !important;',
'  color: var(--steam-text) !important;',
'}',
'',
'.apex-item-text:focus,',
'.apex-item-textarea:focus,',
'.apex-item-select:focus,',
'input:focus,',
'select:focus,',
'textarea:focus {',
'  border-color: var(--steam-accent) !important;',
'  box-shadow: 0 0 0 3px rgba(102, 192, 244, 0.15) !important;',
'  outline: none !important;',
'}',
'',
'.t-Button--hot,',
'.t-Button--success,',
'.a-Button--hot {',
'  background-color: #2a6099 !important;',
'  background-image: linear-gradient(180deg, var(--steam-accent-2), #2a6099) !important;',
'  border-color: transparent !important;',
'  color: #d2e3f3 !important;',
'  font-family: Rajdhani, "Segoe UI", Arial, sans-serif !important;',
'  font-weight: 700 !important;',
'  letter-spacing: 0.08em !important;',
'  text-transform: uppercase !important;',
'}',
'',
'.t-Button--hot:hover,',
'.t-Button--success:hover,',
'.a-Button--hot:hover {',
'  background-image: linear-gradient(180deg, #5fa0d8, #3575b5) !important;}'))
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(161107317146205470860)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107310564020470852)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'15760450289445'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107310813070470852)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'15760450289533'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107311281058470852)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'15760450289558'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107311561613470853)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>'15760450289606'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107311840303470853)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'15760450289669'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107312122505470853)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'15760450289706'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107312498258470853)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'15760450289747'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107312749811470854)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'15760450289771'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107313071088470854)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'15760450289807'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107313303462470854)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'15760450289844'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107313639064470854)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'15760450289892'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107313922805470855)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'15760450289934'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107314270688470855)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'15760450289956'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(161107314520474470855)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'15760450289999'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(161107317146205470860)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'15760450294303'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(161107329172312470880)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(161107329606530470880)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(161107329172312470880)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(161107330095503470881)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(161107329172312470880)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(161107315965451470857)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:PUbK_7WPHTs6n662Jpry2YLcBI0c-ApLpgieM8snt88'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074107Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(167789965086670805448)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Admin Catalog'
,p_static_id=>'admin-catalog'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
,p_created_on=>wwv_flow_imp.dz('20260511094146Z')
,p_updated_on=>wwv_flow_imp.dz('20260511094146Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(167806423550331169594)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Admin Dashboard'
,p_static_id=>'admin-dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260512181225Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168217108408101771115)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Cart'
,p_static_id=>'cart'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
,p_created_on=>wwv_flow_imp.dz('20260512113350Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113350Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168202307099949517264)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Catalog'
,p_static_id=>'catalog'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20260512105131Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105131Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168205317926352589243)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Game Detail'
,p_static_id=>'game-detail'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
,p_created_on=>wwv_flow_imp.dz('20260512110331Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110331Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(167816203682229420546)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Game management'
,p_static_id=>'game-management'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(161107327665684470877)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168157413870022334196)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Home'
,p_static_id=>'home-2'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20260512092313Z')
,p_updated_on=>wwv_flow_imp.dz('20260512092313Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168203161537205553748)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Home'
,p_static_id=>'home-3'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
,p_created_on=>wwv_flow_imp.dz('20260512105736Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105736Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168154682430177248678)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'LOAD_G_USER_ID'
,p_static_id=>'load-g-user-id'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20260512090858Z')
,p_updated_on=>wwv_flow_imp.dz('20260512090858Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(161111033937067177282)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Main'
,p_static_id=>'main'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20260422055422Z')
,p_updated_on=>wwv_flow_imp.dz('20260422055422Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(161111532454727199564)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Main Window'
,p_static_id=>'main-window'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(167789095484515433150)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20260422055805Z')
,p_updated_on=>wwv_flow_imp.dz('20260511093829Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168224264325328233476)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'My Library'
,p_static_id=>'my-library'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
,p_created_on=>wwv_flow_imp.dz('20260512115306Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115306Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168173116445613246816)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Profile'
,p_static_id=>'profile'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'70'
,p_created_on=>wwv_flow_imp.dz('20260512100627Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100627Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(968939004837921564)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Purchases'
,p_static_id=>'purchases'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'90'
,p_created_on=>wwv_flow_imp.dz('20260517074107Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074107Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168197629322742414723)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Reviews'
,p_static_id=>'reviews'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'80'
,p_created_on=>wwv_flow_imp.dz('20260512103426Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103426Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(168231541174226067094)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Transaction history'
,p_static_id=>'transaction-history'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'60'
,p_created_on=>wwv_flow_imp.dz('20260512122310Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122310Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/shared_components/navigation/lists/transaction_history
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(168236033640617492183)
,p_name=>'Transaction History'
,p_static_id=>'transaction-history'
,p_version_scn=>'15768284853491'
,p_created_on=>wwv_flow_imp.dz('20260512123613Z')
,p_updated_on=>wwv_flow_imp.dz('20260512123613Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B80000134149444154785EED9D097C95C5B5C0CFDC7B93DCEC7BC84280B0561216D9412D20D9AC0AF6F9406D4BBC581FB5DA1FFA6A2988985C288F22BCDA6A7DB68F5FD1';
wwv_flow_imp.g_varchar2_table(2) := '4B40ADE509585A2009FBD6864576D997848410B271B3DCE4E62EDF9BB9706B80BBCEF7DDE4BBE1CCEF971F0A7366CE9CF967E6CC3733670860420B88B00011218BA26801408010025116408044990F85112064409405102051E643610408191065010448';
wwv_flow_imp.g_varchar2_table(3) := '94F950180142064459000112653E14468090015116408044990F85112064409405102051E643615902A4DD39490535F18A889EA06C3482526D8E560AEA66856054291E842E2341662B690BB3B6A91A2C11416069AC000BC4D758B5937799E5D6FEAE0548';
wwv_flow_imp.g_varchar2_table(4) := '00A22DD60C224AEB5810C858BAB53B0604184A8D14203743C9441F13B5D10941104A098183824551AACDD69DA37F2774957E9D0AD0D2CDB3E2DB55D6F100C25805216368AB47D386477655E3BB49BD7ADA8987A82D4BC14A4A0541B95F9BBBAABEB3DAD6';
wwv_flow_imp.g_varchar2_table(5) := '7900D1D166D1B6BCA9F477E59740C884CE6AE00356CF7E8108CBB4530AFFDE59A392CF019A7D7876404A43BB868E3ABFA09D39F001EBD02E6AAE40A735B2A2322AA870E5A895265F2AE15380966CCF4BB108E42B3AEA8CF46523B06CA716381C60527C6F';
wwv_flow_imp.g_varchar2_table(6) := 'C1F73EA9F1958D7C069076DBACC144B01653C5537CA53C96EB91052E11254CCB7F7CF5698F727B99C92700694BF21E2540FE860EB297BDE1BBEC7AFACB3C2D3F7BCD6EA9AB901CA03B23CF21AA6888D4CA6279A22C60A023D118A947224901D26E9A1D42';
wwv_flow_imp.g_varchar2_table(7) := 'D44606CF60514D4561DF584080D38231688CF6E99506A92A9014A045C51A1D10E145A994C3727C600181AC2EC8D6D155B13449328016176B34F41BC427D2A885A5F8D2024420B3F2B3753A29EA9004A0F70E4C0F6E328454D2E57AB4144A61193EB740BD';
wwv_flow_imp.g_varchar2_table(8) := 'D016942AC55426094074F479858E3E7FF079B3B102C92C4047A19FD251E88F620B140FD0ED2D8A33006490586550BE532D70A6207375BAD82D0FD10069B7697289206CE9D4A6636592584020E4096DA66EAB98C24403B4A84443151072C42881B25D6501';
wwv_flow_imp.g_varchar2_table(9) := '525490A5CB1553BB2880B43B356A62165AA8020FC4412F318696A9AC353CD410F6F309EB5A79F51307508966123DCBB493B77294EB7A0B501776B2364BB78B571351002D2ED1CC1740F8356FE528D7F516A07B966FE567E996F16A220A20EAFF6CA4FECF';
wwv_flow_imp.g_varchar2_table(10) := '34DECA514E0E16205F513FE8195E4DC400441695BCC8CE99C4F2568E72B2B0407541D6EA445E4DB801BAE340733B5FBC0AA39CF416082042DC82CCC23A9E92F901DAA089226142034FA528232F0B100B64E4E7F21D38E30668E9B6BC5893406AE5650AD4';
wwv_flow_imp.g_varchar2_table(11) := '86C70284DE90C9CFD4B163385E276E80B4453313884251ED758D28203B0B085698A8CD59BD8747317E808A5F4A26C452C95329CAC8CB0262B634B8015AB27B56AAA5DD5A2E2F53A0365C16B092A90539BA4D3CB2DC00FDAA68669A55A1B8CC5329CAC8CB';
wwv_flow_imp.g_varchar2_table(12) := '0202589FD566AD59CFA3153F40DB5FEC67B5C2459E4AFD45C66A11C0A06F83D0E8607A4FCF5FB4E6D093C08FE8D18E4F3924F923D577F711C862B642ED353DB03F03D52A88ED194121EA9E14D1600D33B5D9856B11201E0B389031B75BA0AEA2112C162B';
wwv_flow_imp.g_varchar2_table(13) := 'C4C724404DFDCD6E0D1102241138AC18064F6D851ED8F43574D07048ED9106272E1E816BD7CB21205009B1A991A05074AF910801920820365DD594DFB2C193316028F44EEAF7AF928F9E3B08D7AB2BEF8C4491DDCA2742802400881A116ACAF460365960';
wwv_flow_imp.g_varchar2_table(14) := '409F4130B0D7FD77234B4FEE83DA861A080E0B84E8A470096A954711089004FD5057D90846830952125361F8C0510E4BB458CDF08F637B40DFAC87F09860088FED1EB7B71120910035D519A0A9BE15E2A2E360EC90C75C966632B7C39E23DBA1CDD806B1';
wwv_flow_imp.g_varchar2_table(15) := '29111014E2FFD1F810201100998C66EAF7E821302010268ECE84405590DBD21A9A6AE1C0D1BDA0542A20212DCAEF97F70890DB2E779C81BA3DD4EFB965F37BC60D7F046223123C2EE97CD969B850761E426818D5A81E611ECBC9312302C4D92B8DB50668';
wwv_flow_imp.g_varchar2_table(16) := '6E68853E3DD320BDEF70AF4BD9FBF50E68A4FE90BF4F650890D75D0FB62FCC37AF344050A01A268DC902A542E575294D063DEC39BC0354014A48E813E5B5BC5C0410208E9EB855DD0C061AC57CF4D0F19010C57D2418EC53597462180487BBF79F3854F5';
wwv_flow_imp.g_varchar2_table(17) := 'B90802E4A58999CF73F3EA2D2FA55C67F7E7510801F21285861BCDD0DA64F452CA7D76E64C33A7DADF1202E4458F31DFA79AFA3E71910990FFDCFF7821E93C6BB3510F6FAF7E19947EEA0B21405E60D05843575EB75A61FA240D3C36F0492F245D675DBB';
wwv_flow_imp.g_varchar2_table(18) := 'F703387866AF5FAEC810200F3160FB5D372E3500FBF3DD593A080E08F550D27DB62B7567E0B75FE6833A34106292FD6B9F0C0172DFBFB61C6DCDED505FD50413864C86E7C7BFEA52AABEE52694D75F007D4B03C4862740DFF8C11012E8FA83E1927573E0';
wwv_flow_imp.g_varchar2_table(19) := '66431524F58FF1ABAFD308908700D997EEAF3C3D0F062739DE306545ED3BBF05D6EDFAF8AE37942242A36056F61BD02F3EDD696D9B8F7D065B0F6E8018BA53AFA63BF6FE9210200F7BAAFA72033DEB6385FFFEF1A710A074DCC1E76F9E800F37FE0A42D4';
wwv_flow_imp.g_varchar2_table(20) := 'A13074E04888098F85EBB5D7E0F8B9C3A00E0C86852F7C00E1418E3F1A5EAD3B07EF7DB9104223D5109920DDF4E861F3B8B321401E98CEFEED6768FF91F0F2E3F39D4ABCBBE14DA8AAAD8067263E0F3161DFEE8D5DACFA06761D2986C9239E80EF8F7AC9';
wwv_flow_imp.g_varchar2_table(21) := 'A9FC5B85B3C06869F5AB2FD308900700B1AFCE6C0AFBB7EFCE8449DF99EA50C26469873757FD1092E252E0C971D3EFCAC3CE02ADD9FA47488AEF0973A7AD705AE3AA1DCBE1F8C54390D82FC66F8EBE22401E00645FBEBF3AF56DF84EA2E38D538F008AA3';
wwv_flow_imp.g_varchar2_table(22) := '003DE31CA02DC73F872DA5EBFD6A398F00790010BB65616C35C1A21F7D04D121F14E25566C9C0B9535E5308D4E61B10EA6B089C373E0D9312F3B953F56BE1F3EDEFA3B888C0F85D028B5079A757D1604C8833E600E74803208966B0A5DE63E7BE3187CF4';
wwv_flow_imp.g_varchar2_table(23) := 'D7FF826075080CA3475B3B3AD181016A78E785F721421DE3B48CEBFAABB0EC8BB97EE54823401E005475A10EE2A31361E1F4DFBBCDED68191F4997F17959736040C21097F28D6DF5B0B0F0277EF5411101728B04C0750A50EFC4BEF0E6D4773DC80D50D7';
wwv_flow_imp.g_varchar2_table(24) := '520DD7EA2F7AF52191156C34B7C1DC8F6742507080ED36AB3F2404C84D2F59AD6C0BA31E06F5CA80D7720B7CDEA773564EB75D428CEFED1F87CC10207700D18B82372ED7C3907E23E13FA638FF06241559EC5B509BD9003DD2FCE3F12204C81D407746A0';
wwv_flow_imp.g_varchar2_table(25) := '81BDD2E167B95AA938715A0E1B81FCE9801902E40112CC07EA959806BF98BADC83DCFC59CC1613FC7CD50F700A7367427F0BEFC27C20766DE79D191FBA6B9AA87F6787CB16D0C365ECC221BBADE10F09472037BDC4226EB0CB83EC1CD007B3D7F9B44F2B';
wwv_flow_imp.g_varchar2_table(26) := '6E5D86E57F99679BC2E27AF947240F04C805126C1395058A621137582AF8E187101BDAC363886A9BAB202E2CC9E3FC47CBF7C1275BDFB7E50F08BA1D984AEEE160102027DD6B8B3246471E16282A222CD27609D0D55ED8BDC51CBCB203D696FC01E6CD58';
wwv_flow_imp.g_varchar2_table(27) := '0E2951691E41B4F5C417B0F99FFF07E16111D0D4DCE81781A91020075DDB3144DD43FDD26D00951E3F004F4D780EB233FEDD2318B69D5E0F7FDDFFB957D07D54B418CE969D84EC094FC2A94BC73AC414926F883C04E81E1C3AC2D3BFF74018D43B1DD871';
wwv_flow_imp.g_varchar2_table(28) := '8CADFB36D1B83F9E2FE579007A9D2EE14343C361E2C84C9B565F9F2D85AA9BD7651D980A01EA00107394ED81A2ECF0D8FF79DFD11DA06FD2C36F5C9C48ECC8A2B7005DAD3B4B4F24BE037D52E85DFB7EDF1E19397CFA0054D755CB36301502D4A1D7ED97';
wwv_flow_imp.g_varchar2_table(29) := '06D352FBC2E0B461778D4DE7CBBF810B57CFC14F9F9E0F0F258D743B8D790BD0DF8F7D0A450737C2187A5D3AFE9EEBD2A527F7D2E866B5B6A3AEECC8AB9C120274A73758843116692C293E09463C34EEBE3EB2074318973E117EF0C8CFDCF6A1B700E57F';
wwv_flow_imp.g_varchar2_table(30) := '361B9A5B9B20E791A7EF2B9B4DA17BBFDE0986D616DB168742299F409D08D09DEEB21F1A9B322E871E80771C7E6ED7A162DBAA6CE9CC55A052BA8E2EE60D40D71A2EC18A75F32135B9370CED3FC2219C55F515F0F5A943B20B8F8700D1EEB2EFB8C746C5';
wwv_flow_imp.g_varchar2_table(31) := 'C2B8A1DF753ABA5CAC380BE72E9F014DEE1C18D1CB75383B6F005A57BA12F61E2F7119A8CAEEC8B3EF43F1F423A35C1202447BA2BDD56C8BEF7CAFE37C6F27B59B8D50726033F44D1E006F3CB5D4651F7A0A50ABA905E67DA2A19F0A22E0B111535C9679';
wwv_flow_imp.g_varchar2_table(32) := 'E0F86E68D0D743F200F9BC148A00D12E6BA5B74E1BE8ADD3F4FE19D087C2E12AB1EF33659557E09733DE859E517D9D66F514A0DD67FF065FEE590D23D24741526CAACBBAEDF1A6991FA4542964310821400C201AAE85ADC032060CA101C2FBBBEC1883B1';
wwv_flow_imp.g_varchar2_table(33) := '197696964046DF876176E602510019CDADB0E8F3D76CDF991E1F9BEB168863E70F43E58D6BB67B636CBF4C0E0901F21220D669A72F1F87AB159761CE3305D03F21C3613F7A3202D9B72E46648C86A4989E6E794080EE98486EC739BC1981581358BCE71D';
wwv_flow_imp.g_varchar2_table(34) := 'A545F412A1F38B82DBE956C657742BE3357A976C9083BB640D861A2858FB2A444746C3846193DCC2C3322040DD0420D68CB2AA8B70EAC249786AFC0CC81E72F74D54F6EFEE46A0DF6E7A0BAED0321E1D351922433C3BFF8C0075138098CF728C064CB851';
wwv_flow_imp.g_varchar2_table(35) := '53656BD1DCE9CB2035FADBC755DC01B4FD9B0DF0D5BECF6CB203E87EDB40BADFE6494280BA014046532B1C3C79801EEFB87DDCA2BDCD0C5161D1F0E6F77F0D91C1DF2EAF9D8D401768048FDFD3081EF65514DBBC4D4A48B6BDB1A150B8768C11203F07A8';
wwv_flow_imp.g_varchar2_table(36) := 'A9B5911EEBD807C676A32D2C2F0BCF6BD0D3C00B379B21312619FE73DAD27F452E73045095BE0CDE5BFF36184D46DBC7401617B19E6E9F300823C3A36074C67808A237589D2504C88F0162D1C38E9C3A0856FA507A445C0884D1B750EDC91E7C8A5D3ECC';
wwv_flow_imp.g_varchar2_table(37) := '7BFC75880F4BBECF07BA58730A74C5EF4363CB2DDBF3061D23B2DAE5D5416A183BEC5108533B0E738700F9294057AE5F806F2E9EB2859E63310C1DBDB2637FF2C99D2FE3ECA927F66C027B3E41A554C1A821631DBEBD8100F92140272ED0272BABCA6D3E';
wwv_flow_imp.g_varchar2_table(38) := '0BBB29A1A2B7469DA566FAEC13DBD567E78A986FC37ED82D53429FB9643F21F428067B70CE5962B2F5D79B6CF2E9F4D5C33E1D5E3DC4657C07ABF9C37720F6ADE7C89952A8A3E77098B31C43E1F1E680BBFD1D313662B1E8AB9E26DBA3BDD42F62F0DD7B';
wwv_flow_imp.g_varchar2_table(39) := 'B80C4720998F403DE212E9873DBA92A27ECEE56B97A0DDD4CEFD24132F40CC44EC7480DDB9669BACC93D6EEF915DAFAEB01DEEC7AD8CA299695685E2B2A7BF95BECED7D64243F8D2A9A363620FC245D01380AEA61C577AD97D1A31CF39B12991BD86C8A6';
wwv_flow_imp.g_varchar2_table(40) := 'B48EE981DF4C5DB27B56AAA5DD5AEE6B303C2D9FF54F0B8D402FD0DF7CE62807D29BA16CDA1293D85D3206A6D8F72F183CCC3732192D7464144045CF03F1422DA63DCE6405B03EABCD5AB39EA76CEE7395DAE2979209B154F2548A32F2B28040C813DA4C';
wwv_flow_imp.g_varchar2_table(41) := 'DD561EADF8012A9A9940148A6A9E4A51465E16A0EEE2446DCEEA3D3C5A7103B4745B5EAC4920B53C95A28CBC2C40A7FC31F999BA433C5A7103A4DDA089226142034FA528232F0B100B64E4E7AE3ECDA3153F403BA7871173C8DDCB1E1E0D50A6CB2D2010';
wwv_flow_imp.g_varchar2_table(42) := '653F6DE6C75C2B6A110069D4C42CB47679EB5101D116105424493B597783A7207E80B45A0579E44A0BAD545ED72C79ACF060CBB455460745AC1CB5D2C463066E8058658B4AF2760190893C15A38C5C2C20EC2EC82A9CC4AB8D4880345AFA65CCF7717379';
wwv_flow_imp.g_varchar2_table(43) := '5B87721E58802C2AC8D2D17EE44BA200D2966826111076F2558D5272B000FD6E3F599BA5A333095F1207D04E9B23CD96F2E807F1D9BFABA5DAA8031D4D1DE8365E45440174DB0FD2FC994E63CFF12A80725D6901F2059DBE9E17A3816880E834368E4E63';
wwv_flow_imp.g_varchar2_table(44) := 'FF10A304CA768D05E8F4359E4E5FFF1453BB68806E8F4279540932568C2228DBD916104AE9EAEBFE204A5EAA2109408B8B34CF0B0AE1732FEBC6EC5D680162252FE4E7E8A8FB212E49029076E7241531F5BE0204DC5F0E17A72F4A4B63814A4155D6473B';
wwv_flow_imp.g_varchar2_table(45) := '7997596C71920074671A9B46A7B18D621542F94EB080954C2DC8D16D92A226C900B241B44DF33B7AE2EE752914C3327C640142DE2FC8D4BD2155E9920234FBF0EC809406E37EAADC68A914C47224B4008123955141E379F7BD1C69222940AC02ED164D1F';
wwv_flow_imp.g_varchar2_table(46) := 'A2128ED2FFF42C5C8584F6C1A25C5AA05AA9508D5D386555999476921C20A6DCE292BC870581ACA74E751F2995C5B2782D2094118B755A7EEEDAE3BC253893F30940AC3276E4D52C903FD3CB12B763FE63EA120B1022ECA07753662CC82CACF385023E03';
wwv_flow_imp.g_varchar2_table(47) := '88293BFD2FD395E9D1211FD24A5EF185F258A61B0B10F8CDA97AC3BC7533D6D1FB44BE493E05C8AEF2E262CD2B0211D8235A9EDF0FF64D7B1F9452DB8108790599855FF8BAC19D02106BC492ED7929560BF9B140E065FABFAE63E1FABAD5DDB57C012A28';
wwv_flow_imp.g_varchar2_table(48) := '387FA21772FFB4704A61A7DCD9EB3480EC7DC6A6B58CA8E0A934D4C54FE82E7E36FDFB4ED7A19BF163010136532BFEEFA906C3565F4E578EECD6A59DB7AC6476649BD5388C3A7A0F03281EA6BF3DEC918987E88FB83BC9DD8C900ECD615B0F67E8C2E4A8';
wwv_flow_imp.g_varchar2_table(49) := '02C851102C470349F0B1F9592BF55DD5E42E05C859A35714CD0C6D09340783392044A954050B167388D5AA0C0685F060F85056D2AE50585A895265B05868247395C910DAAE6A9D9BB3865D629055922540B2B2102AE3D20208100222CA02089028F3A130';
wwv_flow_imp.g_varchar2_table(50) := '02840C88B2000224CA7C288C002103A22C800089321F0A2340C880280B2040A2CC87C208103220CA02089028F3A13002840C88B2000224CA7C288C002103A22CF0FF19EE2B18157D9F4E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(161107318545867470865)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C070000175B49444154785EED5D09785455963E64DF2B3B246425240610C22A24ECA0D0EED0B6DAEEA86DB7DADA8E7CED820BEAE8A82DADAD3DDAD39F0B888E0CAD368E38';
wwv_flow_imp.g_varchar2_table(2) := 'B688201121EC4B88862D249085903D95A4B254B6B9E7BE54F11292AAF76EBD02F2DE397E7E14D43DF7BEFB9FF3D7BBDB3977C80BDFDDD50D248480411118420430A8E5A9DB1C0122003982A111200218DAFCD4792200F980A111200218DAFCD4792200F9';
wwv_flow_imp.g_varchar2_table(3) := '80A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4';
wwv_flow_imp.g_varchar2_table(4) := '792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A1112002';
wwv_flow_imp.g_varchar2_table(5) := '18DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD4792200F980A111200218DAFCD47922C005F281CE8E2EA82E36030C01888C3781A797C7057A1263374B04B800';
wwv_flow_imp.g_varchar2_table(6) := 'F6EF68EF849A9206E8ECECE2AD7B7A7A40447C0878797B5E80A73176934480F36CFF0E6B2754979AA1ABB3BB57CB1E9E432032CE045E3E4482F3691222C07944BBBDAD036A4A1BA0AB4B72FE40FF40FEA7A5C5C2FFF4F01802117121E0EDEB751E9FCAD8';
wwv_flow_imp.g_varchar2_table(7) := '4D1101CE93FDAD2DCCF9CB1AA0BBFBACF34FCB98C15BCF39F823B4B436F3CF43864824F0F123129C0FD31001CE03CAE8FC38ECB109FEF2A3F3FBF904F07F6AB536F72601FBB708361CF2F12712B8DB3C440037238C135E5CED910F7BE4CE6F6BBE2F0970';
wwv_flow_imp.g_varchar2_table(8) := '381495184AAB436EB60F11C08D00E370A7EA9419900428FEBEFE90357136F879FBF7DB6A6B7B0B6CDF97CDDE08ADFC7B5C158A4A34F16111897B102002B807575E6B758919ACAD1DFCB3A78727CC98340782FC431CB6D8D4DA08DBF66E81CE2E8934BEFE';
wwv_flow_imp.g_varchar2_table(9) := 'DE7C4E40E21E048800EEC115EA2B9AA0B9A18DD73E84FD97397E068485442A6AADC65C01BB0EED383B610EF5035394B46244A22D0244006DF1E4B559EA5BC15C252D6DA24C1C3D196222E355B554525108878EE6DA7542A38320C0E4ABAA0E2AEC1C0122';
wwv_flow_imp.g_varchar2_table(10) := '80738C5495C0B5FE2A3CE2D023A9896990963846551DB6C2F94587A0A8E4845D372A2194ED11D0469910980328110134441397F8AB4ED5DB27BD61A670C8CA98C55A109BC47643375B1EFD01EA1BEAF8534A93E2503629D6F0A10D5E1511404307C0610F';
wwv_flow_imp.g_varchar2_table(11) := '0E7F50BCBDBC61F694CBC1D7DBCFA5165AD8CAD0D6DD9BA0A3539A4C0785F94348A4B47F40E23A024400D731E435B435B7F39D5E9B4CCB980E11A6684D6AAFAA2B87DD793BED75E1E951DA29D6045A2002688023AEF75716D5DB4F77A624A4427AD2A51A';
wwv_flow_imp.g_varchar2_table(12) := 'D47CB68A9F0B73E1646921FF073C3A1D9D144643210D1026026800A27CC933242804664E9CAF41ADBDABE8EAEE84AD7B37DB0FCE059AD8D268342D8DBA0A3411C04504FBAEFAE066972930CCC55AFB57AF6DA8841D07B7DBBFA45521D7612602B888A17C';
wwv_flow_imp.g_varchar2_table(13) := 'B7373E2611C6A54E74B146C7EAB9C7F7426979092FE417E803E1B1C16E6D4FEF9513015CB0706B93156ACB1B790D5E9E5E306FDA42F0F6F471A146E7AAD6F636D8B27BA37D55088368E8D4A873DC062A410410C70E2A4F9E5DF3CF489F0071D1492ED4A6';
wwv_flow_imp.g_varchar2_table(14) := '5C55BE4B8CC133510926E5CA54B21702440041876836B7417D6593A0B6B66A6131C1E01FE4DE378FB64F7CF1D4460410B005EEF85614D59E13D72B5095262AB82C3A34D93D136F4D1EF022AE840820601C8B991D76AB3C7BD84DA00ACD55E82D20062911';
wwv_flow_imp.g_varchar2_table(15) := '400037F9D8FFDE2B1F858CF82C815A5C57C92DC9810FBEF90BAF087786718798441D0244007578F53AF210E41F0C2FDDF61ECBE670614E687674B5C3736BEE87C666E90806ED0BA834262B4E04508959EDE94668B558B9D6D59937C2C2B137A9AC41DBE2';
wwv_flow_imp.g_varchar2_table(16) := '1B0EFD03FEB5F3735E6940882F840E0DD2B6019DD746045061604C675851241D4DC628AF7FBFE3EF60F20F575183F645CD2D35B0FCE307D8C1E96E7EE87A684A38CF2F44A20C012280329C78A986AA6668AA6FE19F275D920977CD5EAA42DB7D45576E59';
wwv_flow_imp.g_varchar2_table(17) := '01078FEFE60D844404405078FF41F7EE7B82C15B33114085ED2A0AEBEC273EFFB0E8391819ADED894F158FD2ABE8B1CA43F0F6FFBEC8FF8D36C6D4A148045088577B5B270B75ACE7A503FD82E0953B5729D4EC5DACAAE934EC3CFE3D9456154159D529FE';
wwv_flow_imp.g_varchar2_table(18) := 'E5F0A844888F1E0199A9F32122709850BD4FACBE0B5ADAA4EC72B82740D9A695C1480450861334D6B640638DE4605347CF82DB663CAC50F36CB14D3FAF83F5DBFFC7A1DE8D73EE86996957A9AEFBA3AD7F81BD4772B81E05D02B878F08A0102BF9A9CF7B';
wwv_flow_imp.g_varchar2_table(19) := 'AEFC37181F3F5DA1A654ECCB7DAB61F3BEFF53A473FDF45B60FE985F2A2A6B2BB4EFE40FB07AE3DBFCAF744A54397444000558615AC333276AED255F5DB20A027C942F37EE3D990D1F6D7CC7AE1F1B15075346CF602B48D2F10573732DECCEDF06E5D565';
wwv_flow_imp.g_varchar2_table(20) := 'F6320F5CB70C460D537EB4BAA9CD0C4FADFE0DD7C74C72C3D86A1005CF3B372E11C039463CC115467DA18C8C4B873F5C254D3895CA339FDC070D1669FE9096940E33C72C3C27DD2186556ECDFB168E171FE1E58647C5C3138BDF50DA042FF7FAFA27E1D4';
wwv_flow_imp.g_varchar2_table(21) := '19298D4AC4F010F00DF056A56FC4C24400055697873C5E3FE356983F7AB1022DA94861F5617873DD72FED9D7DB176E9E7F0FF878F59FE0AAADA315FEB17915E0997F94E5B7FD2744AA98147F9BF7297CBDE333AE1BCC964283D9922889630488000A3C04';
wwv_flow_imp.g_varchar2_table(22) := '135D61E823CAC38B96436AF458055A52919C828DB0F6FBF7F8E7E4E12360FE84EB1CEA6E3EB01E8ACAA4E077B5E78C0E97EF87FFFAEA15AE4BF3006526220228C0A9FC780DDB6795E4A53BDF85103FE5478FB38FAC87755B3FE6BA53C6644146F2650E5B';
wwv_flow_imp.g_varchar2_table(23) := 'DC7F6207EC3FBC8B97B961D65D303BFD1A054F2815A9B554C2F39FFC9E7FC6245AD149A18A758D5A9008E0C4F298DA1C4F7FA288ACFFEF29DA021F7FF737AEAFF60D70E782876072D26C55BEB9F4835B59B8643BD789198913613A16E10840228013F792';
wwv_flow_imp.g_varchar2_table(24) := 'C7FD8E4A1A070F2C7856954396D517C29F3E7D82EBF8FAF8C14DF39680AF57FFD9E2AC1D6DB076F34AFB1C60D9AF5F8798900455EDBDF5F5D370A2EC18D7C15049BA6FCC317C440027EE25DF00BB7CF2B570DDC43B553924167E7EEDFD50DB50C3F594AE';
wwv_flow_imp.g_varchar2_table(25) := '020D0D8B81A76FFCABEAB63EDBF52EFC98FB1DD7C393A178429464600488004EBCA3EE4C13B4344AAB32775CF1204C499EABDA9F0E146F83551BDEB2EB29DA07B896ED03C428DF07B055BEEDD837F069F64AFED7A0509647348A56821C198C08E0C49D31';
wwv_flow_imp.g_varchar2_table(26) := 'DF27E6FD4451BB3925AF7AFDFE8F60D3DEAF149167F1CCDB61EEA8EB1595ED5B28B764078B1293F60F283EC0398444002718C98F403C7AC38B901C91EE1CD5014A6C666781BE747216E89679BF85CC915708B771B42217DEF9F225AE4F4BA1CE61240238';
wwv_flow_imp.g_varchar2_table(27) := 'C108F3FDB7B3DBDD519EBC7905C49A929CA3EAA044454309EC2EC886E2CA427E1AD4C3C303E2878E80F8C824C84CBB02C202A25CAABFB8F638FCF9F3A7781D1427EC1C4A2280138C30020C23C1509EBFFD1D080FD026E5B973D38895C0E3D62FAE79842B';
wwv_flow_imp.g_varchar2_table(28) := '7BFB48176A900C8C0011C08977E02138DB1DBFAF2E59C90EC15DDCB9381BDBEAE1E9D5F7F15E797AB27C4123946FDA199128440027563FCD76816DF2D67D9F5EF41B4BD6CE36F8E307B7F347C64D30DC0C23A13780B00FC88F41BCF19B35E0E571719FB0';
wwv_flow_imp.g_varchar2_table(29) := 'C454294BDFBF552200FB3F263542B8EF4650A43780132B9717D4DAEFEB1D0C43208BB511967D780FEF156687C0B800127A0308FBC099C2B339409FBF8D4D82032FEE49708DA5025EF8E4219A0328B438BD019C00254F83B8ECE63F438C295121B417A658';
wwv_flow_imp.g_varchar2_table(30) := '597D113B7BF4386F9C4E843AB70111C009465A6E84393787EB254E54E5C35B5F3CC72BA27D00E77812019C60244F85F8DBAB1F834B873B3ECFEF1C72F796901F85C03B03306B3409CD01847D407E16E897B3EE8039E98E23BA841BD2487173FE17F0E5B6';
wwv_flow_imp.g_varchar2_table(31) := '35BC363A0AE11C547A0338C0481E0B8CC5A68F9D0737673EE01CD50B5862CDF6B761E7CF3FD89F800EC43936061160007CFA3A3F1613C90871BEB9F006CB0C71B2273384AD6D22010D8154F9617FCE8F158884440ED470436B2DBCF6CF27F866D5E3BF5A';
wwv_flow_imp.g_varchar2_table(32) := '01C1BEDA9CD9796CD5EDD0D6935542DE3691A07F4BD01BA00F2E7D9D7FF8B078283B23DDCB8BF21F77BDA789B3661FF98A05CB7FC4EBFCD5EC2530EB92AB5591B4BFC2B5CD2C28FEBFA5A07894B89878FB9DC2F87722C1B9A811016498F475FEF8980418';
wwv_flow_imp.g_varchar2_table(33) := 'CB2EBEDE9DB70DAAEBAA79C9DF5DF3388C899DE2B2B3CA27AB6A730D0DD4F8C192EDB0F29B37F9D791615170D9D8E990777C3F949417DB558804BDD12302F4E0D1D7F913629360ECC8F1ECDB2150507A048E161EE625175CB608AE197FDB454980757B56';
wwv_flow_imp.g_varchar2_table(34) := '42F6816FF8B3A58F1805292C8B1DB0842E790507A1F8F44922413F5623023050FA3A7F725C328C1E91C19D1FA5A6A10A761EDCC63FA70CBF041EB95A8AB87245DCF10678ED8B3FB2B4EB52CAF5AC0933212C38B2E711BB21BF30178A4A8B88047D8C6678';
wwv_flow_imp.g_varchar2_table(35) := '02F475FE948491909ED43BF31BE6D9D998F3353F14E7E9E105AFDDBD1ABC3D5DBB985A6B02B4B5B7C063ABA48C15787DD3C219D7B267ED7D79DF91937970A2B8C0EE0281263F304507BAC2E341AF6B680234D5B54043B594F31F2535310DD212C7F46BD4';
wwv_flow_imp.g_varchar2_table(36) := '9C83D950D720DD0FF6C8E21720256AB44BC6D79A0087CFB0B488EBA5B48811A111306DDCAC7E9FEFD8A99FE1F829296F108A292A100243FBCF53E452070789B2610980991E7097D7EEFC4997405AC2C04E7DA2EC281C3991CF8BCF9D78152C9E7CB74B26';
wwv_flow_imp.g_varchar2_table(37) := 'D69A006B77FC0D72F2B6F0671A35F25218119B3AE0F31D2BCE87E3278FDABF377226694312808D64A012637D3BA558DF38B6D4999136D9A143B7B459E0FB5D1B79197E3FF0EDEF83C7100F61126849001CA23DB97A09583BA4EB5BE74E5D0001BE8E8736';
wwv_flow_imp.g_varchar2_table(38) := '078FEE81B28A525E1EAF538A4E0A33E47D0286244013BBEEA8A1E7BAA3A0C060983DE972458EBCEDC0F7606E34F3B20F2F7A9665891EA748AFBF425A12E0A7B2DDF0EED72B783361216190357E8EA2E7CADEB3112C2D165ED6A843214312401EE83E61CC';
wwv_flow_imp.g_varchar2_table(39) := '64888D8857E43045A78F437EC14FBCEC8C71F3E1A669F72BD27337013EFCE175D87F74276F664CEA38488A4951F45CB862947B783F2FEBE1C9A2C746182F7ACC7004B0B6744075A9F42BEEEFEB0FF3A6FE4291B360A1166B337CBFF35B49D7C71F5EBAE3';
wwv_flow_imp.g_varchar2_table(40) := '7DE1D520ADDE00166B030B81BCD7DE87CBB3AE1C30F96E7F1DDDB4F35FD06695523F1A3199AEE10880AB3EB8FA83929290C2963CD50D637272D96A90595A0DBA65DE7D2C8BDB02C5049217D48A00F26C739161913075EC4C55CF935770C0BE498637CAE0';
wwv_flow_imp.g_varchar2_table(41) := 'CD324612C311401EE195397E3A8487A88BF13D5D5D0207F2F7721F191A1E0B4FDDF0A650AA142D08D0D9D501CBD7FC0E1A9BA5D5ACC9975EC69E69B82AFFADAC2B873D79D2F009EF14C315212389E108208FF19D9FF90BF0F356F78BD7DDDDC55683BE85';
wwv_flow_imp.g_varchar2_table(42) := '566B2BF79307AF7B0AD2874D50ED335A10607FF18FF0E1062985BA349C5BC83EA9BB10C3D2DA08D9BB37F13A8C18436C3802C8F3FC5C356B11DF35552BF2C9F0E8E40CB8FF8A67D456015A10E0D5758FC2E96A692973EC251990C0728CAA157C8B6CD826';
wwv_flow_imp.g_varchar2_table(43) := '65AD3662222DC311409EE9EDEA59CA6F7B943B16AEBB6FDEB9815D45245D9CF7D88DAF407CD84855BEE72A01F2CBF7C2DFBFFA136FD3C7DB87FFFAE3310D11F97AEB1776B5588325D2220288780CD3919FAB4966BBAE8F5EF3B2AA9A5C2140675727BCFC';
wwv_flow_imp.g_varchar2_table(44) := 'F92350555FC1DB4C4B4E87D4F851AADA97172602084337F814B5780360AFF1F0D9A61D1BEC00DC7BE552C888CF540C882B04C829F8965DBDFA3E6FCBCBD30BE64E5B083E2E1CCE23022836DBE02FA815011009F95C203C24129E61777A79792ACB1D2A4A';
wwv_flow_imp.g_varchar2_table(45) := '8016AB055E58FB7B686E95767045C7FEF4069010A021900B9CEE66C1265BF76E82A6E6265E8B9AB429A204905FB5141C14023327CE139AC813018800203A09963B4F5D6335E41CF8B16738E20DCB6FFD2B84FADB025106669708014AEB0A61C5674F32DA';
wwv_flow_imp.g_varchar2_table(46) := '49D776CF9834074C81AEE7FFA721900BBF82834D55CB2190ADEF870A58DCED6929122B3D712C3CB870B95358D412A08B4D7C5F5DB714CED49EE675C7C724C23816AFAC851001B4407190D4E10E02F43D5F7FC702769D6A92E3EB54D5126013BB606FBDEC';
wwv_flow_imp.g_varchar2_table(47) := '82BD3416BF90EA207E418D3988006AD01AE465B524000E45FA665D4078F0A0DCF25BDF86409F818F15A82100DEFBF5F2DAA580CB9F72B165AD10D9CCA33900CD015C9A03E066D8BEFC9DF6742908275E4861BB4F2C2D7E0C3CB0F0D973E2726D8EA79400';
wwv_flow_imp.g_varchar2_table(48) := 'D68E567863FD32FB8EAFBC0DAC0B0FC04D1A3D4DF1EA537FBF5FF40618E4BFEA6A1E5F8B37001E8BDE75683B587A567FB07DCCB713C2E26BAB4ED6DB23CDB22E9D0BBFCE7AB0DFC75342000CC2FF60CB6B70A8403A7C87915B78EB634395059A1BA423CC';
wwv_flow_imp.g_varchar2_table(49) := '288101413075DC74F6E611BB159E08A0C683067959570950DF54CB4E4FEE006BBB147E88228FA66A6F63F106C5E69E751A801BE72C819969E7667D534280EF7EFA277C95B396B7812796221342C1DB57CAF460A96F053323824DF038C494B199101AA43E';
wwv_flow_imp.g_varchar2_table(50) := 'A8850830C89D5ACDE3BB42808A9A32D8CF8E4277B113A1DC29D92D8C6131413C0DB95C2C66E69C959273E2F8FC211E3ED93BD58A3302C8B33C603DA1D1411060F2EDD54EABC50A75E54DF63BCC304679E2E8C9303442DD916822801A0F1AE465C508D00D';
wwv_flow_imp.g_varchar2_table(51) := '274A5956889EEC700801DEC11BCECECEDB7E91FBC222BF5803BFBB69CE3D303E310B827C4DBCE84004686A33C3C15339F069F64A7B958E2EBA686FEB845A96DDC216E08F4AA35246C30896C04BA910019422A583726A0980BFF6B9C7F6C1E99E0C0A0801';
wwv_flow_imp.g_varchar2_table(52) := 'DEC01E1167E271B403098EDF2B8BCECE0744A1933236843A0CBAE9EAEC861A16E6D96E3DBB4A143B348E65BA98A42873051140D43A83504F0D01DA3BADB0EFA71D5063AEB5F714873B38ECC1E18F33E968EF048C40430715115CF1894C30F14015678284';
wwv_flow_imp.g_varchar2_table(53) := 'C3E1100E8B6C12610A675162594E57888800CED0D5D1F74A09D0CCF200E14A4F734FDA10842028D49FADF4A85B69C165510B8B41C679815222E0F02A80656BC38C6D4802358213639C20DB24D03F102E632B448EF2041101D4203CC8CB2A21009EEFC138';
wwv_flow_imp.g_varchar2_table(54) := 'D9F68E767B6FFB9B84BA024523CB4BD4C8F213A160203A06A46B25CDE636A8AF940EE8A1787B793312640DB8424404D00AF941508F3302149F2984BC63B9F69EE050273C3698078C6B29EE24003E27A67EC489380E8D6C328E854DC6F713364904D0D2B2';
wwv_flow_imp.g_varchar2_table(55) := '17795DFD11A0B1D90C758D352C7D782134591AED3DC009286649F062935EADC5DD04C0E7ED609362CC7FDAD9212DDBA26026BCE4B81408374542909F74852A11406BEB5EC4F5C909E0E831F192E9F0D810872B3DAE74F37C10009F8FAF103112E0069D12';
wwv_flow_imp.g_varchar2_table(56) := 'A1986025280DE2324A0880934FDCDD75A7C8F39386B0F17F909B1352F59D1C0FD43722803BAD7E11D42DCF0C677B1C1CEA78FB7A817FB00FF8B1DBD5952C71BADA151C965415D7F39D625CEAC46770B7E07CA0A5D10AAD4D56FE46900F8DB06DAD27E3EE';
wwv_flow_imp.g_varchar2_table(57) := 'EE8F16F51B2E24520BD0A80EFD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD2040';
wwv_flow_imp.g_varchar2_table(58) := '04D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD';
wwv_flow_imp.g_varchar2_table(59) := '204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA92702081001044023';
wwv_flow_imp.g_varchar2_table(60) := '15FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104402315FD204004D08F2DA9270208100104';
wwv_flow_imp.g_varchar2_table(61) := '402315FD204004D08F2DA9270208FC3F4DF9E2C894147C610000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(161107318936321470865)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000200049444154785EED9D097C1445BEC7FF3D93FBE60A842B844390FB3E158C2401DD55D77DABA220445CDDFBB9EB5B9E3719F076D7F77CFB3C567C6A88BABAA278';
wwv_flow_imp.g_varchar2_table(2) := 'AD0A24082AF77DDF57428490903B999C33FDAA669CC92484303DD3DDD3DDF3ABCF673FB8D055F5FF7FABFA37D575FC4B2024100081A0252004ADE7701C0440802000E8042010C404200041DCF8701D042000E8032010C404200041DCF8701D042000E803';
wwv_flow_imp.g_varchar2_table(3) := '2010C404200041DCF8701D042000E8032010C404200041DCF8701D042000E8032010C404200041DCF8701D042000E8032010C404200041DCF8701D042000E8032010C404200041DCF8701D042000E8032010C404200041DCF8701D042000E8032010C404';
wwv_flow_imp.g_varchar2_table(4) := '200041DCF8701D042000E8032010C404200041DCF8701D042000E8032010C404200041DCF8701D042000E8032010C404200041DCF8701D048256009ECBBD3FBE516C186E37D130B2B3FF093494C118CABA444F740B4313B820121D27128F99C874DC2ED0';
wwv_flow_imp.g_varchar2_table(5) := '11B2D111CBACEC2386F6FA32CE195E009EFDD75D9D1AC24386990461A89DBDE826F6A2B30E80173D187B7B473E0B54CE7E0876B01F826D4C1CB68B21A6AD96D4EC22A36332AC00F05FF806B1F1663289B79248B358434619BD31E19FAC04ECACB49D248A';
wwv_flow_imp.g_varchar2_table(6) := 'AB041256EFAFB06E5971FB0A9BAC3568A03043098065CDC29E82A9F92641147ECE7EE55319DF500D308609C620709E8D0C5E672383D78D34323084005872E7F7652AFD0CEB6777B2FF998CD1DFE08546093489227DCC3AD9CB8B33966FD4A88D5E9BA56B';
wwv_flow_imp.g_varchar2_table(7) := '01787AD5BCA426B3F951E6C4FDCCE330AFBDC6832020030181C4AF58318F2F4ECFD92D437101294297026059979940CDE263CCF8DF316A910121874A41C049807D6DD24A51302DB6A4BD7D486F507425009675B7C5989A22FF5D1484450C7482DE60C35E';
wwv_flow_imp.g_varchar2_table(8) := '4313B089A2F8FCB9CE119665E39735E9C553DD08806575E6104110BF66CB34FDF4021776062581DD26B2CF7D22FD9DC37AF05E170260597BCF54C16EFF9A018DD30354D818F404AC2209775BD2B3576A9D84E6056049DE82B9EC2BEB2D0612937C5AEF4D';
wwv_flow_imp.g_varchar2_table(9) := 'B0CF9380C8F6103C929591F3BC96B168570098842EC95DF0341BF23FA26580B00D043A22C0660873A8DC7A9FE5F6158D5A24A55901589297F91C53D087B4080D3681801402EC25FBDCBE31E5568BC5C277176A2A695200D82FFF3D8C121FF62381803108';
wwv_flow_imp.g_varchar2_table(10) := '08F44A56DAF2DF6BCD19CD09C0D2BCF9534451F89681C2365EADF516D8E31F0141783E2B2DFB61FF0A9137B7A604E0C9359983EC82B889B9D8555E37511A086883806017EE5C3C2BFB036D58436C8A4D23C9F2D5DC3821346407336790464C821920203F';
wwv_flow_imp.g_varchar2_table(11) := '0176ECD864B38F7B62D63BA7E52F5C7A899A1080FB77DC1FDAABACE14B2647E9D25D400E10D01B0171AB585E375D0B2B039A1080A56B327F2D0AE26B7A6B46D80B02BE1260A7571F599C9EFD9CAFF9E5CA177001F871E8CF423451A25C4EA11C10D00181';
wwv_flow_imp.g_varchar2_table(12) := '6AB65368B8253DA72090B6065C0096E4665AD881AAAC404240DD20101802C23FB3D2B3E704A66E67AD011500CBEABB13059389FFFA638F7F207B01EA0E1C0141C8604B83B9813220A002B0644DE6DF49107F1528E7512F08049E80B8352B3D6772A0EC08';
wwv_flow_imp.g_varchar2_table(13) := '980058BECEEC2784882798E3E640398F7A41400B04D8B19729ECE4E09640D812300160DFFE6C33847847209C469D20A02D02819B0B088800B0905E3D8466F15CA0E720B4D509604D101368169B9A532C37BE57A83683800800D6FDD56E66D4A77D02C212';
wwv_flow_imp.g_varchar2_table(14) := 'B6226051DBCE8008001BFEAF62C37F7E590712088080838078944D060E511B86EA02F0FC8685B1F575B68BCC5144F851BBB5519FA609B053B0632C19D97BD43452750160C3FF4CB6EDF76D359D445D20A00B0201382EACBA0060F8AF8BAE082303414010';
wwv_flow_imp.g_varchar2_table(15) := 'F766A5E58C56B36A550500C37F359B1675E990805DB48574B3CC7EB34C2DDB551580A5AB33E78826F17DB59C433D20A03702ECD29B5B2D69D99FAA65B7AA0280ADBF6A352BEAD12D0141F81F7636E08F6AD9AFAE00E4CE5FCFCE1FCD50CB39D40302BA23';
wwv_flow_imp.g_varchar2_table(16) := 'A0F23C80CA02B0A088354877DD350A0C0601F508D8C4106B822575458D1A55AA2600FC465FB6FDB75C0DA7500708E899809AFB01D41380DCCCC9EC3EF5CD7A6E18D80E026A10503372B07A02C0E2FEB1DB7D11F74F8D1E843AF44D40C50D41AA09005B01';
wwv_flow_imp.g_varchar2_table(17) := '788905FF7840DF2D03EB41400D02C267EC60D0CF54A9498D4A781D4B72E7B30340020E00A9051CF5E897808A2B01EA8D0072B102A0DF1E09CB552670212B7D790F35EA545300D84DC9482000025E1068640210C19E53FC9D810078D11A780404D4262086';
wwv_flow_imp.g_varchar2_table(18) := 'E4875A52D7372B5D2F044069C2281F047C2020965BC3D5B83A0C02E043E3200B08284D40AC0F8FB6DCB4CCAA743D1000A509A37C10F0810004C00768C8020246210001304A4BC20F10F0814094DD1EB368D63BB53E649594059F009270E16110508740AD';
wwv_flow_imp.g_varchar2_table(19) := 'D51CF7C22D6F552B5D1B044069C21A2EBFB9C946A25DA4D0F0100D5B199CA6B18B42E2D94521554A7B0F01509AB046CB6FB03651D9B96A124591E213A3293A9EEF3B41D20A81700A4F78387D59A5D2F640009426ACC1F21D2FFF0F55ADB6994104B4D550';
wwv_flow_imp.g_varchar2_table(20) := '10006DB58761AC69EFE577390711D04E334300B4D31686B1A4BEB6D131EC77A5B0D0308A0C8FA4CA9A9691665C97288AE91C69189FF5EA080440AF2DA751BBF9CB5FCEBFF97FB42F3C2C9CA68E994E6121E1B465EFF7AD45A02B13814E10814036250420';
wwv_flow_imp.g_varchar2_table(21) := '90F40D56777D0DFBE53FDFF2CBEF78F9474FA7A8881887A7CDB6A64B4420968D0462311208584F8000040CBDB12A6EAC6FA6D2B39597FCF247853B5F7E576A4F0412BAC750545CB8B180E8C41B08804E1A4ACB66F275FE8B059564676BFD3CB5FDE56F6B';
wwv_flow_imp.g_varchar2_table(22) := '7B7B22D0A5571C8547856AD94D43DA06013064B3AAE7147FE94BF22BC8D66C77546A369B69DA9819141B15DFA1118DCD0DB461D77AAAAB771E44339904EADA379E4242CDEA198F9A0802804EE03301B6B7874A0B2B890FFF5D69F2E869D4252ED1AB326B';
wwv_flow_imp.g_varchar2_table(23) := 'EBAB69C3CEF56C6EC099DF1C62A26E7D13C864566DDB8857761AF9210880915B5761DFCA8B6AA8AEBAC15DCBE8ABC751AF6E7D25D55A567D9136EFFEDE9D876F17EEDA279E046880248EBE3E0C01F0955C90E7AB29ABA3AAD296381203FA0EA221FD86FB';
wwv_flow_imp.g_varchar2_table(24) := '44E55CE959DA7D70873B6F644C18754A8AF5A92C6492460002208D179E6604F890FF229BF177A5EE5D7BD0F8A153FC627334FF009DC83FEE2EA3538F188A8CC5CA805F50BDC80C01F002121E6921C00FF594E457129FF9E729222C82664C48A310B3FF33';
wwv_flow_imp.g_varchar2_table(25) := 'F81BF7ACA78A2AE7B58E7C52B05B7282635E004939021000E5D81AB2E48A0B3564AD6AF9EEBF66DC0C8A8FEE2C8BAFF54D75F4EDB63CF7A4605884733E004939021000E5D81AAEE4B67BFC870C1846037A5D25AB9F172B8A68EBBE96BB5D71664056BC97';
wwv_flow_imp.g_varchar2_table(26) := '1406015096AF614AB7DB442A3E53EEDEECD3B553579A34E25A45FC3B747A2F9D3E7BCA51365F0CE8CA960643C3B13F4009D8100025A81AB04C7EBA8F8F005C296DCA6C0A0F55E6208FDD6EA3F5DB73A9AEA1CE511DDF1C94D82FC1805403EF120420F06D';
wwv_flow_imp.g_varchar2_table(27) := 'A0790BDACEFA2B31F46F0BA1B8EC1C6D3FB0D5FDD70989ECBC403C5605E4EE2C1000B9891AB0BC12B6CFBFA9C1B95B2F2A228A5227AA73F9F2F6839BA8B8F482A35EBE3BB07B4A676C1092B97F410064066AB4E2EAD811DF728F23BE13474EA16E09AA5C';
wwv_flow_imp.g_varchar2_table(28) := '284BF58D56FA66CB6AF709434C08CADFBB2000F233355489174E97BB0FFA2476E94E13864D55D5BF630587E8F899A3CE5100DB1B9098D2C9F127923C042000F270346429D6CA06AA28AE71FB1617C38EECB28D3F6A261B3B28545659E6AE32262192E2BA';
wwv_flow_imp.g_varchar2_table(29) := '45A96982A1EB820018BA797D778E9FF4BB70BA8CF8F29F9612FFEDE7A300EC1094A7552000F270345C29B515F55459A2F88D513E718B4E88A0F86ED13EE545A6D6042000E811ED12283E53E1DEEF3FB8EF701AD277644049159515D2D643DFB9E702BAF7';
wwv_flow_imp.g_varchar2_table(30) := 'EFC456043017E06FA34000FC2568C0FC3CA67F29BBD0C3951E9DF322F5889376CE5F6E2C4DB6467A34E75E6A68AA77148D7D01F2108600C8C3D150A578EEFA1BD46728FDE186259AF0EFF35D3994B7E30B872DD81D284F934000E4E1689852786C3FBEF4';
wwv_flow_imp.g_varchar2_table(31) := 'E74AF7FF64110DEF355113FE95598BC9F2EEEFDCB674ED1D4F6191B870D49FC68100F843CF8079AB4AAC5453E1DC839F10D38996DEB54C535EBEB1F639DA7F72A7C326440EF2BF692000FE333454094527D9D2DF8FE1BD7F3EFD6EBA6EC8CD9AF2EFE885';
wwv_flow_imp.g_varchar2_table(32) := 'BDF4CA674FB96DEAD1BF338288FAD14210003FE0192D6BDBC9BFE732DFA6A8B0D6177B68C1E7273FFC3D955438CF08E05211FF5A0402E01F3F43E5F61CFE5FD57718FD7EB6C567FF6A1A2AE940E136DA777A3B1516E75343631DF5ED318086F51B4323FB';
wwv_flow_imp.g_varchar2_table(33) := '4CA6CED1DE850E6FCF804F7764D337BBBEC46780CFADD3921102200344A314E1B9F6EFCFF0FF9F9B5FA38DFBBFE910CB8801E368DEF43F5064A8F40D3D478AF6D0AB9F3FED289FEF05481A284F4832A3B4A3143F2000526819F8D9B6B3FF8FDCF1574A8A';
wwv_flow_imp.g_varchar2_table(34) := '4F96ECF1CBAB2C74ACE0A057F97A74EE490FFEEC598A0891B6B7BFD1D6408BDE9CE73E25886BC5BCC2DDEE431000DFD9192AA7E7D6DFF8E8047A72EE1B92FDFB72CF3F68F5B64FDCF992BAF6A261FD4751BF4467DCC0E2CAF374387F0F1D2F709EEEE369';
wwv_flow_imp.g_varchar2_table(35) := 'C2D5D3E8EE6BFF28B9AE656B9FA503277739F2E18090647CEE0C1000DFD9192A27DFF9C7270179BA76543ADD36E97E49FEF16FFEC796FFD2FDAB7C55F2509A3E22A3DD320EE4EFA42DFB5B6E03F265B4B1E1D8D7F4E1FAB71CE5635390A4A66AF53004C0';
wwv_flow_imp.g_varchar2_table(36) := '777686CA79EE78A9DB1F5F36FFAC3DF4097DB6E11F8E3262A362E9B6D47BC8245C3EA67FDEAECFE9CC3967E0CFD4B137D0ADE3174AE25952738E9EFCC703EE3CDD714250123FD7C310009FB0192B5373A38D8AD90DBFAEF4F4823728365C5A10CEFFFD6A';
wwv_flow_imp.g_varchar2_table(37) := '311D2F3CEC2862D2886B6844F2F80E2115969EA1559B3F753CD32DA13B3D71FBCB92A13EBC3C93AC0DCE138B9D7BC652447498E432823D030420D87B00F39F5FF0C92FFAE4293A22869E9DFFB6642A9E6BF3E9936EA2E46E033A2CA3AAAE923E5CDB52CF';
wwv_flow_imp.g_varchar2_table(38) := '8BF7BE47A166692FB0E78423C285496E32470608806FDC0C95ABEA22DBFE5BEEDCFE3B247904FD76D662C9FE3DF3D10354C422F9F2E48D00D43654D3FBB96FBAEBF145003ED9F136ADDBF595A30C7E8F20BF4F10491A010880345E867CDA7302306DFC4D';
wwv_flow_imp.g_varchar2_table(39) := '74F3D8F992FD7C83CDCAEFFF71567EE4A0B13471F0F40ECB38597498D6ED58ED78C6D75587ADA7F2E8BDBCD71D658486991D7709224923000190C6CB904F5F38C5027FDAEC0EDFEECEF82D4DE8972AD9CF8DC757D13FD7397FD1C342C3684EDABD1466BE';
wwv_flow_imp.g_varchar2_table(40) := '7C1CFFCF36BE4F25E5CEEDBCD78C4CA3DB27FF4A729D674A8FD27F7DFCB83B5FD2C02E081B2E912204402230A33DCE0FFEF00340AEB4E8B6E7A84FA78EBFDFDB63606DACA1C5EFFE9A1A9B9D1787A6F4EA4FD347CE6EF7BB7EDBD1EF69DF71E7893E9EFE';
wwv_flow_imp.g_varchar2_table(41) := 'F3F6E7A977427FC968EB9A6AE9A1B733DDF9BAE10A31C90C21009291192B4353838D4A0A5A56009EBF27DBA7EDB99CCAEAFD1FD2979B57B8014547C6D098C113A853AC73DFBF957DF7EF3FB1938ACB9CBFFC3C8D1F3295E64FFF93CF509F78EF3EAAAC75';
wwv_flow_imp.g_varchar2_table(42) := 'DA8F9500E9182100D299192A47635D335D2CAC74FBF4B7FB5B5E605F1C7D75F5523A92BFDFABAC8EADC0B7B0ADC0A1D2B6027B16FEC2277FA6C2927CC75FE164A057D85B3D040190CECC50393CAFFCF67509D013088FDDB762CB32DA72F0DB0E39F97318';
wwv_flow_imp.g_varchar2_table(43) := 'C8B3E0975765B1B307871C7FC52305F388C148DE13800078CFCA904F7A5EFDE5EB869CF6C09C2E3D4C7B4E6DA173A50574A1EC076A6A6EA25EDD926958F2581A953C851D07EE260BCF37D7BD407B8F6F779415DB258A623B2B7363B12CC66AB010088006';
wwv_flow_imp.g_varchar2_table(44) := '1B454D933C6FFFE9DB2385FE7CF30B6A56EF775D1F6C7E9536ED5FE72807F70548C7090190CECC5039F80620BE1188277F838004028C67A4E0A8B870C73C0092F7042000DEB332E493D5A556AA2E73EE021C356802DD9BFA9FBAF233F7C0C7F4C5A60F1C';
wwv_flow_imp.g_varchar2_table(45) := '36F3B3007C2500C97B021000EF5919F2C95602309009C0F5FA1280BC832BE973B6A90802E05BF78400F8C6CD30B96AD8AF7F151B05E8F513E08B5DEF50EE8ECF1DF6234CB8F46E090190CECC50393CE700FA74EF478B6EF98BAEFCFB70CBDF69C3BEB54E';
wwv_flow_imp.g_varchar2_table(46) := '01C08120C96D0701908CCC58196A2BD92DC0C5CE33F5722E03AA4569F9B7FF453B8F6E7654171DCF6E0D4E941E64542D5BB5580F04408BADA2A24DF5358D5476BEDAF902F9180B4045732FA9EAEFB94FD1A1D37B1D7FCFF700F0BD0048DE13800078CFCA';
wwv_flow_imp.g_varchar2_table(47) := '904F36D6B3ADC067E5DB0AAC36A4173F7F88F28B9CA1C5F8AF3F1F0520794F0002E03D2B433ED9361CB865EE2B7E5DDAA136A40796DDE60E44DA398985058B911655486D7BB5561F04406B2DA2B23DFCFB9FCF03B8D21F7EF6040D4A1CA9B215BE555755';
wwv_flow_imp.g_varchar2_table(48) := '5F4E8FE7B4442F0E8B08A12EECC66076570892970420005E8232E26315176AC85AE53CBFEF4A73AEBF8FA60E6C3F9CB7D618F0F306FFFD71EBF065100169AD040190C6CB304FB7F7F273E7668EFB29DD326E81AC7EF29B7C1A9BEB29263C5ED672B79DFE';
wwv_flow_imp.g_varchar2_table(49) := '86DECD7DED92329D2210E7B8360CA96302108020EC21977BF9398AE1FDC7D0FD698FCA46E5878AD3F4B7CF2C54D760255FEE1BE8C8907FED7E97D66CFFACDD472002DE352104C03B4E8679AAEDCB1F131543BD93FAD29193CE33F5B15171F4F4BC9668BD';
wwv_flow_imp.g_varchar2_table(50) := 'FE3AFECDA14FE9D30DEF398A1937780A2D98F1A0BF45BAF37B061F49EED58FACF5562A292D76FF3B44E0CAA821005766649827DA7BF9A78C99414D4D0DB47E5B9EDBCFC577FD8DBAC624C9E2B7E78D41A3074DA485A98B64299717F2E7B7E6B24F8B4647';
wwv_flow_imp.g_varchar2_table(51) := '7963874FA0A4CEBD69C7A1CD74E16291BB8ED0F010EADA079F0397830E0190AD3B6ABB207EF107BF00C4956263E268F2A86B59E45EE7B2D9EA8D5F50B3ADD9F1DFF3337E4FE3FBCD90C521A504A0A0EC04FDF5A347DC36CE9C329B8516730603810878DF';
wwv_flow_imp.g_varchar2_table(52) := '741000EF59E9F6C9F65EFE29ECE5F7BC8967D791AD74BED879B1C7B411D7D31D537E238BBF4A09C0B747FE451F7FB7DC6163447804CD9C74432B7B771EDE424525E73112B8422B420064E9E6DA2DA4EDB03F3E369E268DBCE69270DDF9E74FD081E3CE60';
wwv_flow_imp.g_varchar2_table(53) := '9EDD3B27D163BFF89B2C4E2925009EA1C0FAF44CA69103C75E62AFA7A8F17F747E0E609F80272808802CDD5C9B85789EF4E316F2979F0FFB434CA197185C595B4E1B76AE77FFBD2F1784B647C15300C65C3589EEB9EECFB2C07A38875D0C5AEF3CC4346A';
wwv_flow_imp.g_varchar2_table(54) := 'C818EA9DD8AFDD72DB8A004E0CB6C6040190A53B6AAF90066B13F12BBF5C293E3681BDFCD7B4FBF2BB9EC9DDFC2535363927D5E65CFF4BB6216896DF8E293102385EBC8FFEF7D327DDB6CD9C3C8B22C22E7F0868EFB1ED545854D8C202D183DD2C20007E';
wwv_flow_imp.g_varchar2_table(55) := '7771ED15208A44174E9791DDC6FE83A5F0B0709A3E6E26BBB2EBF25775F1E70E9EDC43677E38EDC833A8F7D5F4871B97FAED9C1202F0E196D7590C00E7AA45A7B84E3475F47557B473D39EF5545E55EE7EAE7B4A27328798AE98CFE80F40000CD8C29E51';
wwv_flow_imp.g_varchar2_table(56) := '7EB87BD78C9BC12EE0EC7C454FCBAB2FD2A6DDDFBB9F7B66C1FFF9BD7B4F09017868F902C7C6229E465C358AFAF6B8F2B5620D4DF5F4DD8EB5EE110E3E059CCD0C01B8E26BA1AF0744F6F3CF2FFBE477FEF1D4AF570A0D1B30DA6B27D66EF99AEA1B9D87';
wwv_flow_imp.g_varchar2_table(57) := '83EE48BD97A60D9AED75DEF61E945B008E14EDA1573F7FDA5D55FAD41B292CA4E3918DEBE1820BA768FF5167EC009E70972004C0AFCEADC5CCFC700F9FF977A5B4A937507888F767E48F9CD94F270B4E38B20FE875153DF0939697CD177FE59E047C7FD3';
wwv_flow_imp.g_varchar2_table(58) := '2BB4F9C07AE70BDC2591260E9B26C9AC6FB6ADA63AB66390A7984E9114D735B80388600420A9FB68FFE1B273D5C4AFFBE2A9778F3E34EAAAF1928CAEB296D3F73B9C2F184F8FCE79917AC4F5955486E7C3728E006A1BABE9D1EC85EEF3FFA3AF1EC76E1B';
wwv_flow_imp.g_varchar2_table(59) := '9266DBC91F8EB16DCF071D2686849A29B15F82CFBE19212304C008ADE8E1C3F91365C43F03789A307C1225B20B38A5A6EF76ADA5EA1AE70AC2D411A93467CA6FA516E17E5E4E01F0BC03C06C3653DA941B3A5CD568CFE8DAFAEA56DB9E837D321002E073';
wwv_flow_imp.g_varchar2_table(60) := 'D7D65EC6B6D17D664DFB2985982F5DF3BF92E5E72E9EA5DD8776B81F7B36F34D8A0E8BBB52B676FF5D4E0178ECDD7BA9DAEA14A681C957D1E0E4613ED994B7E52B6A68746E8B0EF62BC521003E75216D666A6A68A6928296F87E3F997EABCF86AEDDFC15';
wwv_flow_imp.g_varchar2_table(61) := 'D5B343423CDD38F917347BE41D3E952597006C3FB38EDE59F3AAC3067ECA7F26FBF50F0FF57E6EC3D3F80DBBD751657585E3AF121263282ADEBB49449F00683C130440E30D24C53CCFCD3F116CED7FE6E41BA5646FF5ACE7D6601E2D78E9DCD72FD93EEC';
wwv_flow_imp.g_varchar2_table(62) := '4DE1724D023EB7F241E223139EFAF6EC4723068EF1A6FA769FF13C2710C7A208C704F18DC210009FBB91F6327A5EF5CDCFF9CF189FEEB391367B33E56DFEDA7D42F0E6697752DAB09F4B2E4F8E11C0AE82EF297B55CBD984EB26A6B110E6BEDF01B8E7D8';
wwv_flow_imp.g_varchar2_table(63) := '0EFAA1C82926C1BE12000190DCA5B59BC15300A299005CE78700702F8F171CA263678E3A1C0E0B09A32C163138365CDAACB9BF02D0646BA4251FFC8EAA6A9D43F6A4C49E3476C824BF1AA1950024B0A5C06EC1BB140801F0AB2B692BB3DC02D06C6FA275';
wwv_flow_imp.g_varchar2_table(64) := '5BD7B877CF5D33328D6E9FFC2B494EFB2B009E977FF28A5327A65314FB24F12741005AE84100FCE9491ACB2BB70070F7CE169FA67D47F6B83D7DFCAE972831A697D79EFB2300D50D15F4F8F2FBDCEBFE297D06D0D014FF4396430020005E77603D3DA884';
wwv_flow_imp.g_varchar2_table(65) := '0070FFBF67FB02AA7EDC1730247904FD7656EB50DC1D31F26712F083CDAFD2A6FDEB9C9F20A161943A2943F2BA7F7BB6410020007A7AAFBDB6552901A8A829A58DBBBE73DB21256498AF238053170FD34B2B5B84A6A333FF5E03FAF141080004406A9FD1';
wwv_flow_imp.g_varchar2_table(66) := 'C5F34A0900777EDFF19D74F67C8183436458242DBEEB65AF3607F92200FC0E81673EFA1395555D74D417C7E2175E3B76A66C6D00018000C8D699B454909202505A55425BF66C70BBEB6D741F5F04E0931D6FD1BA5D5FBBEB1A3E680425270D940DF55EB6';
wwv_flow_imp.g_varchar2_table(67) := '0C58E85A06C42A40C2C3E9CB5A768FC946B97541AA5DD1B224778173237C1026A50480C709D8B66FB37B4F800BED7D37FE078DE83DB943D25205A0A0EC388BF67BE9C52423068FA6BEDD536469558C00300290A52369AD10393702B97C3B575240BB0FEF';
wwv_flow_imp.g_varchar2_table(68) := '6CD7D598C8587AF8B6BF525CC4E5838D4899046C68AEA317562EA2928A0BEDD697D2BB3F0DED3FCA6FECD8080401F0BB1369B100B905E068FE413A917FAC95ABB16CDB6C4D79BDFBC4614ACF41F4A79F3E73591C5246006FAC7D96F69FDCE52EAB6D5DFC';
wwv_flow_imp.g_varchar2_table(69) := '1F7A744BA2D183C793D914E27313400020003E771E2D6794EB13C06EB7D1EEA3DB5BC5D5E7176D764A8AA188E830AAAF69A4B2F3D56E141D1D19F65600D61FF982567E97E32ED3B545B7B9D146A5855564B3D95B84213A8E85369FE6F361207C024000B4';
wwv_flow_imp.g_varchar2_table(70) := 'FC1EFB6C9B1C02C063E76D3FB0D97D5A8E1B63320BD4A5573C8BAB6F76DBD6F6BE817969BFA189FDAFBFC4766F0420BFEC18BDF8D163EEBCFC4E3F1EBFDF957870531EE1989F7674A588B0089A386A1AC5464A3FA60C018000F8FC926939A3BF9F00352C';
wwv_flow_imp.g_varchar2_table(71) := '58C6D6BD1BA8BEC1191390A7D0303375EE157749045D1E73E462410535B15F68577AF0DF9EA27E5D06B74274A53980CABA52FACBCA87D85E7FE74434179BC4E44E8E3F3D130F72527EBEC61DED88FF1B0F0AC2839E7489EF2EA959F009000190D461F4F2';
wwv_flow_imp.g_varchar2_table(72) := 'B03F02505A554C3BF66F6D35D3CF87FB7CD8CF87FFED251E80A48489802BFC387F66D6C45B6960D230771CC2ED27BEA5EFF7E63AB20FEA7335DD3471AEE3BFF9219FC2D253B46ADB4A77845FFEF7FC979F8F002E97AA4AAC545351D7EA9F870D1A49FD92';
wwv_flow_imp.g_varchar2_table(73) := '0678DD4C10000880D79D454F0FFA2A0005452C5AEEB19668B9DCE7E884088A6717685C2935D635D3C542799691BD0DCE61AD64814F8B5B029F721B937BA7D0F0FEDE453F86004000AED4AF75F9EFBE08C0A1537BE974E1A956FEC627465374BCF7D17678';
wwv_flow_imp.g_varchar2_table(74) := '10D272168CD49F0D183C3A2F9FF8F336F1E027E56C22D215FE9CE74BEC9C4863874EBAE20A01040002E06D3FD3D57352048007FCD875782B159716BB7DE4437D1E232F3C4A7A1C41FE39C0EF226CAA6F66937536F732614700F9503F84CD31F0D106BFB8';
wwv_flow_imp.g_varchar2_table(75) := '536A72AC10B0C9415EB72BF16BCF278D98CA56082E2F2610000880D4BEA68BE7BD5D056868AAA3ADFB3651756DCBDD8166B389BAF48E73BC9072A6EA522B559739BFD9F99C02171839537B2B04FC2AB4894C04E2A2DB0F5E82550008809C7D5033657923';
wwv_flow_imp.g_varchar2_table(76) := '0095D60ADACE5E7E57545C6E3CFFF5EDC266FADBCEBCCBE198D202C06DE42B121545D5C4FDF74C1346B0B0E89D2E0D8B8EB300100039FAB6E6CAE8E81380C7C33F577CD61DE2CB65BC73A63F96CDF42BE38E1A02E0B2BCEA225B21609F219EA96F5232BB';
wwv_flow_imp.g_varchar2_table(77) := '1E6D00C546B5EC2BC02700044099DE1EE0523D05C06C62EBF7095D1CDFE2553595EEB05E9E26AA1110534D01E0BED55537507951EB1502FEF721E6108A8F4B20936072F0708D80D46010E06ED161F50809A6E5D691685BDB2DBA97CB6E320994D09D6DEB';
wwv_flow_imp.g_varchar2_table(78) := '8D09935883F4C7F9F73F17019E94980368CF22BE63905F91E639397839CB2100E1380E2CBD5B6B3347DB9B81DA5AC9BFF1A362231C71F095F8DE6F8F8AE75D057C5F019FF15723F179016B653DD556D4537353CB6EC5B675F3B90F5F563DD4F0418D3A30';
wwv_flow_imp.g_varchar2_table(79) := '025083B28A75F0A5B1F67EF9F80BEFCB529B1CA6F35F6491ADD485454A5FEA93A37E2D3291C32F39CA8000C841116580804E09D45ACD712FDCF256CBD14E85FC50688EF9526B83392290426D87620D4C20CA6E8F5934EB9D5AA55D8400284D18E583800F';
wwv_flow_imp.g_varchar2_table(80) := '04C4FAF068CB4DCB9CB3B40A2608808270513408F84A0002E02B39E403010310104384484B6A764B0008857CC2084021B0281604FC2120965BC32DB7AF68BD87DA9F022F931702A00054140902FE1210D352CC16C1D2729CD2DF0221000A1144B120203F';
wwv_flow_imp.g_varchar2_table(81) := '8186ACF4E5AAECCC52710430FF0C91902C3F2B940802462320E667A5E7F453C32B3505603D1380196A38853A4040DF04C46F99005CA7860FEA09C09AF9D9EC6CEB02359C421D20A06F02C23FB3D2B3E7A8E1837A02909B69612122B2D4700A758080AE09';
wwv_flow_imp.g_varchar2_table(82) := '08C2F35969D90FABE1836A02605993992908E2DB6A38853A4040CF0404BB70E7E259D91FA8E1839A02309A09C06E359C421D20A06702A25DB8DA322BFB881A3EA82700168B4998769A8784F13EC6B41A04500708688B8055DC98126BB128BF0780BBAD9A';
wwv_flow_imp.g_varchar2_table(83) := '00F0CA96E4CEDFC2AA9CA42DDEB00604B44440DCCA560026AB6591BA029097F912909E181B000005AA494441540B86F7805ACEA11E10D01D0151783D2B23FBD76AD9ADAA002C5D9D39473489EFABE51CEA0101BD111044E1378B33B2FFAE96DDAA0A8065';
wwv_flow_imp.g_varchar2_table(84) := 'CDC29E82602B54FBD3432D98A80704FC24C082459B7B5B32DE3AE767395E67575500300FE075BBE0C1602420887BB3D272BCBB4955263EAA0BC0D2DCCC8745129F95C97E140302C621A0E206201734D505C0B23A738860120F1BA7D5E00908C843402461';
wwv_flow_imp.g_varchar2_table(85) := '8A253D9BAD94A997541700C76740DEFC3D240AA3D47313358180E609148821F9032CA9EB9BD5B4342002C03E03FEC83E03FE5B4D47511708689B80B0841D00B2A86D634004C0B2EECEAE4273D819E66CB4DA0EA33E10D0208166F68338C0929E53A0B66D';
wwv_flow_imp.g_varchar2_table(86) := '011100C767C09A4C763C58C4F160B55B1CF5699080F019FBF5FF59200C0B98002C5D356F946836EF644E9B03E138EA0401AD1060937FA96CF26F7D20EC09980060141088E6469DDA2320AC66BFFEB30365574005C092B7B0BF20DA8E611410A8E647BD81';
wwv_flow_imp.g_varchar2_table(87) := '2620903072717AF6FE40D9115001C0282050CD8E7AB5412070DFFE2EFF032E004FAD9DDFCB6617F631833A6BA351600508A842A0D664A2514FCC5C7E5295DA2E5349C00580DBB594850B13112E2C90FD0075AB4C40ED537F97734F1302E0F814C85DF02F';
wwv_flow_imp.g_varchar2_table(88) := 'F6C74F546E075407028120B0915DFC714D202A6E5BA76604009F025AE80EB04105029A18FA6B660EC013F892BCCC741631E84BF677A12A3404AA0001B509D859FFFE455646CE276A57ACF94F0097816C3EE0D76C3EE035AD00821D20201701B6E4F727B6';
wwv_flow_imp.g_varchar2_table(89) := 'E4F7925CE5C9518E663E01DA8C04103B508ED64519DA212008FFC32EFBF8A3760C725AA2490120B637D29237FF19A698AADC8EA2B546813D062320D027E286945FA815EA5B0A3D6D0AC08F1E207A9094A6C4B3DA24207C26D687DD65B96999558BF6695A';
wwv_flow_imp.g_varchar2_table(90) := '003830B63CF81BF6C72B9A1DAD68B1556193360888F42C5BEE7B8C8DB3456D1874A9159A17006EB265CD820C41A01CF69FDDB50A12768180078146F6D22FCC4A5BFE9ED6A9E8420038C4A7F37ED9DD2636E53029CDD03A54D817D404F68BA27DA125E39D';
wwv_flow_imp.g_varchar2_table(91) := '1D7AA0A01B0170C06493834B7233E7B140222FB0FFD7430F806163D01068626BFCCFFDD039E2C965E39735E9C56B7D09C08F542D5FCD8DA31073962008FFCEFE2A442FB061A72109B0CB3CE863B2DB1EB1CC7EF784DE3CD4A500B8205B56CD1BC884E031';
wwv_flow_imp.g_varchar2_table(92) := '41A4791002BD753DFDDBCB5E9EF56C58FAE0E2F41CDD5E7BAF6B018010E8FF25D2A1070DCCE68FD88FCE6B8B33966FD4A1FDAD4C368400B83C7A6AEDBDC936BBED1E22FB1CB6C769B0DE1B07F66B8AC029F6B2BC660F69CCB6A4BE7F515396F9618CA104';
wwv_flow_imp.g_varchar2_table(93) := 'C09383654D26BB634DBC932D1FDEC0FE7E841F8C903578099C65E1BABF1004D3A76C1B6FAE11311856003C1BEB2FABEF8EAE350B53581086496C643081CDD68E63EBB4BD8DD8A0F0C92F02B5AC5FB048D5429E68A72F2C19D97BFC2A4D0799834200DA6B';
wwv_flow_imp.g_varchar2_table(94) := '8767BEBAA75B93D9365E3009E3D8BF8F63FB0BFAB33FF9D262A20EDA0D26FA47805FBF5DCC5EF47C76F2742FBBA66EAFD924EE0D74782EFF5CF22D77D00A4047B82CEB2C6C69F14C08D5849928A6DC4475ECCF86505378D746416C0831F9861AB9D42020';
wwv_flow_imp.g_varchar2_table(95) := '8437DB1B9AC3448A6CB25B2F848BDD229AECE6D87A7B5521D90E12D956DCBEC2A6861D7AA90302A09796829D20A0000108800250512408E8850004402F2D053B41400102100005A0A24810D00B0108805E5A0A768280020420000A40459120A017021000';
wwv_flow_imp.g_varchar2_table(96) := 'BDB414EC04010508400014808A2241402F0420007A6929D809020A1080002800154582805E084000F4D252B013041420000150002A8A0401BD108000E8A5A560270828400002A000541409027A210001D04B4BC14E10508000044001A8281204F4420002';
wwv_flow_imp.g_varchar2_table(97) := 'A09796829D20A0000108800250512408E8850004402F2D053B41400102100005A0A24810D00B0108805E5A0A768280020420000A40459120A017021000BDB414EC04010508400014808A2241402F0420007A6929D809020A10F87F101D70D33B78223A00';
wwv_flow_imp.g_varchar2_table(98) := '00000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(161107319227429470866)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000255494441545847ED954F68D3501CC7BF49FFA476B6EB3ABB2A75DA8EE2EA265D0F9BCA40512FE21F10D945B7C32E431061470F2A882078F1200AEA790CF12082';
wwv_flow_imp.g_varchar2_table(2) := '0C2F6A114426D5C3E6466D3B57A25B37D96C4BFFD82C4DD6C4F60D0F050F49681121B9FC782479DF4F3E79EFF7A85BAF4765FCC38BD2017403BA81FFDA403957211D847118347712CD7D40284A08790FA1D6C566D908183BAD094213409913B1CF1584D3';
wwv_flow_imp.g_varchar2_table(3) := 'EE22A1D9C24F2CA4E7C06C33A986D004905BE5D0E9F6D5852DAFB370ECB2361F802F09183D7C15BE1D81BA30361DC344E42E18AB3A0BAA0D480513AE9D7B800DB184C7AF6E83028DCB276FC06C6070676A1CB46D539505D5007B981E0C0F8E63ADB08CB7';
wwv_flow_imp.g_varchar2_table(4) := 'B11724EC44CF7974D83C989CBE875439DE5C80036D47703634424222C93068DA8001DF31329E9A99403437DD5C8060DB519C0E0DFF35E4E5E72798CFBE6B1E0057E0B1DF35808B835748489ECF92DA6A71923AF9FE3E163233B0DA19C5108AD7406DEFEF';
wwv_flow_imp.g_varchar2_table(5) := '6DED86208AB874FC3A0960D3715014056F7B37193F7A7313164B0B96F209C5BB4131005DB2A0CF7F10AB9914CE0447C8A2FB964990E01AC04A8E45F8CB33B89D1ECC263F42B6F28A2C2806B0553AE0DF1D802457C095CA18EA1FAB33F0F4C343381CF6AA';
wwv_flow_imp.g_varchar2_table(6) := '111A8BA9388A86F54603B8AB005BAA63DFE770AAEF02CC460BF905BFF83CC2F3CF11F006C9FDC554A20AB0D678802E8F1F89A5288A721A2227A377673F0989FEF804530B0D1BED42A0B317C995AF8D07103274F56B2550DB2B309AB78EDFF28648EA9F43';
wwv_flow_imp.g_varchar2_table(7) := '6853A8402E19214B14CCED52630D289A4DC3438A17A186B915BDA203E8067403BF01028D0B7047B8441C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(161107318223877470864)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/steam_nexus_icon_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000003C0000003C00806000000FAD6109B000000206348524D00007A26000080840000FA00000080E8000075300000EA6000003A98000017709CBA513C00000006624B474400FF00FF00FFA0BDA7930000000774';
wwv_flow_imp.g_varchar2_table(2) := '494D4507EA050B0A0A1880FE6F3F0000002574455874646174653A63726561746500323032362D30352D31315431303A31303A32342B30303A303083C2F6C20000002574455874646174653A6D6F6469667900323032362D30352D31315431303A31303A';
wwv_flow_imp.g_varchar2_table(3) := '32342B30303A3030F29F4E7E0000002874455874646174653A74696D657374616D7000323032362D30352D31315431303A31303A32342B30303A3030A58A6FA1000080004944415478DAECDD757814E7DEC6F1FB99DD8D3B160382BB06D74091A285526A';
wwv_flow_imp.g_varchar2_table(4) := 'D4A850A742DD7BEA54A850A1050A2D2E8562C5DD1D0A14D7109C2844779FF78F9EF6E5B4406CB3BFD9DDFB735DB9CE79DFB364BE332421BF9D99670022222222222222222222222222222222222222222222222222222222222222222222222222222222';
wwv_flow_imp.g_varchar2_table(5) := '2222222222222222222222A22251D201444444A6131F6F0B3D971364C9D34176ABB22965846AED30AC40B8D68605CA11A21DF05106021D50FE0ADA0F00B4367C9446E0BF3E9FD221D0CA72ADCD29A52F6BADB2FFF167F2A074FA5FFFA77618970DC391AD';
wwv_flow_imp.g_varchar2_table(6) := 'B54A530A790A3AC5EE40AE3690618135D38EBC2CBB4D655872756EEAF1DF530068E9C348444464361C808988C833C5C7DB4A9F7594B1EBDCD24A5922B576948152A150088543850208877284012A14C07F3FF45FFF778074BE135C0290F2F787D629308C';
wwv_flow_imp.g_varchar2_table(7) := '1468A4003A45412543EB140029760B920DBB3E67B53ACE9D3BBAFB2C0087743C11115149E0004C4444EEC4285DBE51A4D6F6F276A868A51CD14AA9325AA38C02223550061A65A05016408474AC9B7268E09C02CE6AE08C52EA8CD638AB94E38C863AAD1C';
wwv_flow_imp.g_varchar2_table(8) := 'FA9CC3A24EFB287BD2B9A3BB4F4BC7121111150607602222320B2322BA6E8CB65A2B28E81868470CA02A68A81868C440E9F200A20058A543E96FD90012012442E338148E032A11863A01BBFDB8C34062EAF1DF93A523898888FEC2019888885CA65CB9FA';
wwv_flow_imp.g_varchar2_table(9) := '8139365D592B543680CA1A46154057864265685402E023DD484E9701E8E3803AA4A10E2A380E291807EDB01F4C3D51FA18B03C4F3A908888BC070760222272AE3A757C22D27DAAC261AFA5156A42A306A0AA40E9CA0022A5F3C8547201750CD007017548';
wwv_flow_imp.g_varchar2_table(10) := '2B7D5029E380254F1F387F32FC308763222272360EC04444543455ABFA46E40456B5C3515B41D5515AD5D6D095355047017ED279E4F672019C80C61E05B55B1B7A8F86DE1D6EA4EF3E7AF46896741C1111B9270EC04444948F046B4485E41A5AEBFAD0AA';
wwv_flow_imp.g_varchar2_table(11) := '01141A6AA00E8058E932F24A3900F62B608FD67A8F368C3D56C3FEFB85A3BFEF0757AF2622A27C70002622A2BF45546D1EA273B2EA3BA06A2B87AE038578008DE0198F0522CF9603E02034B6C0D05B14D4964047C096C4C47599D2614444641E1C808988';
wwv_flow_imp.g_varchar2_table(12) := 'BC54585CC330ED4053433B9A6AA8A6D06804858AD25D444E940B85DDD0D806A5B72B8D6D96CCECEDE7CFEF4B970E232222191C808988BC417CBC2DF45C4E7D05D5060E15FFDF33BB350118D26944020E4363CD5F678A9383F33662F7EE1CE92822222A79';
wwv_flow_imp.g_varchar2_table(13) := '1C8089883C50A9B87A35ED76A315946A09AD9BE2CF7B76F9FC5CA2ABCB00B05943AD53C0069B2577C3B9A3BB4F4B47111191F3710026227277F1F1B688D3B9F10E43B506745B40B50250463A8BC8AD691CD30AEB94D2EB60B7AC4839B9ED7770912D2222';
wwv_flow_imp.g_varchar2_table(14) := 'B7C7019888C8CD9429532728CFDFDAD001B4560EB481423B0021D25D441E2E03D0EBA18C351A6A756A70CE4A5E364D44E47E38001311995C99327582F27C8DB650968E1ABA238006002CD25D445E2E43016B00BD124AAD4CF6B9B409070F664B471111D1';
wwv_flow_imp.g_varchar2_table(15) := 'F571002622329BAA557DC3B2825A42E98E003A026806C0269D4544D7950985F54AEBC50E5816A69ED8B615BC649A88C8743800131189EB6F0989DDD7C462A0A3D6E808A8D600FCA5AB88A838F40505B5C4A1F52265B32C4A39B2ED987411111171002622';
wwv_flow_imp.g_varchar2_table(16) := '121114D9A88CC547272887EE05851E0022A49B88A8441D561A8B1D865A0CD817A71EFF3D593A8888C81B710026227289FE96F0E8032D1CCAD14D29E3464037067F061379AB3C286C500E3D4FC33237E5E4B61DD2414444DE82BF7C11119590A0C846652C';
wwv_flow_imp.g_varchar2_table(17) := '169DA094EE05A0278070E9262232218D335058A8B59AED9393FBDBB973BB33A49388883C1507602222270AAD50AFB272A85E50AA3F345A0230A49B88C8AD6442E935D09863684CBF787267A27410119127E1004C44542CFD2DE115F6B78443DDA4A16F02';
wwv_flow_imp.g_varchar2_table(18) := '504DBA88883C8606D4560073E0D0BFA624EDD8261D4444E4EE3800131115525C5C9C5F724E781B65387A01E80F204ABA8988BCC23100BF2A0353938FEF5803404B071111B91B0EC044440550AE5CFDC02C1FD5131AFD01DC082050BA8988BCDA0905CC80';
wwv_flow_imp.g_varchar2_table(19) := '724C4F39F1FB6AF099C3444405C2019888E85AE2E2FCC273423A6B43F5D7405F0041D2494444FFA62F28A879CAA1A72687DB1760F7EE1CE9222222B3E2004C4474A5B838BFB0BCD06E5AE35628F404875E22722BFA02805F148C092989DB578267868988';
wwv_flow_imp.g_varchar2_table(20) := 'FE07076022A23A757CC2D27C6E84D6B76AA0378060E9242222273809AD2741EB09A9493BB74AC710119901076022F25AA1151AC72B87FD1E0D75078032D23D44442546E328949AECD08ED1E92777EC97CE212292C2019888BC4A4474DDF276C37227A01E';
wwv_flow_imp.g_varchar2_table(21) := '001F5944445E48017B34F44FB916EB4F978F6D3925DD4344E44A1C8089C8E38556A8170EBB71AB32D4DD5AA315F8B38F880800EC001642EB31A9FE977EC5C183D9D2414444258DBF041291874AB086954FEDAE35EE05740F00BED2454444267651414DD0';
wwv_flow_imp.g_varchar2_table(22) := '0EFB8FBC5F98883C19076022F228575CE2FC18800AD23D4444EEE6AF4BA4EDB9FAC78C333BCF4AF710113913076022727F55ABFA866606F5868141D0B801FCD94644E40C390A58A8357E4A8DB4CCC4962DB9D2414444C5C55F1289C86D85C7D6ABA7613C';
wwv_flow_imp.g_varchar2_table(23) := 'A8A1EE021021DD4344E4A914700A5A8D3274EEF71793769D90EE21222A2A0EC044E456CA95AB1F986533EE00F02080E6D23D44445EC6AE35E64219DFA6256E5D08C0211D444454181C8089C82D84C436AEAAA01F04F443E0D95E22223338A9809179B98E';
wwv_flow_imp.g_varchar2_table(24) := '6F78AF3011B90B0EC0446466466874A38ECAD04F69A007F8338B88C88C72A0F02BECEAFBD4A46D4B0068E92022A26BE12F9344643A41E5EA97B5588D07A1F030B8923311913BD905A5BEF1CBB1FF74E6CCCE4BD2314444FFC40198884C2338BA612B8B81';
wwv_flow_imp.g_varchar2_table(25) := 'C734700BF8DC5E222277960C60A4B2ABAF534E6D3B261D4344F4170EC04424CD088FAEDFC361182F0368291D4344444EE550C03CED505FA4266D5B2C1D4344C401988844942E5D2338C7CFFF7E00CF00A828DD434444254CA9AD4AEB11A9D6B09F707479';
wwv_flow_imp.g_varchar2_table(26) := '96740E1179270EC044E45261710DE3EC79EA1105FD308030E91E222272318D3350F8CE91A7BECE38BDED9C740E1179170EC044E41221318D5BC0703C0B8D9B0158A47B8888489ACE82C21805EB27A927B61C92AE2122EFC00198884A92115CBE616FA5F1';
wwv_flow_imp.g_varchar2_table(27) := '02787F2F11115D9D1D5A4F353486A624EDD8261D43449E8D03301195042334A6613FADD49B00EA48C71011919B5058A3EDEAA3F4A4ADB3A55388C83371002622E7A95AD5372433F83628BC06A09A740E1111B92BB50D5A7F9E76B2EA7860AA5DBA86883C';
wwv_flow_imp.g_varchar2_table(28) := '070760222AB6FF5FD159BD00205ABA8788883CC621407F95660D1BC195A389C81938001351910545362A6358D5E3801E0C205CBA8788883CD609407F9A06FFEF91B82E533A8688DC170760222AB4C04A75CB59F2AC2F42AB87010448F710119177D040A2';
wwv_flow_imp.g_varchar2_table(29) := '82FA28CD1A3292678489A82838001351810547C79786E1784E014F82832F1111C939AB80CF52E1F725CF08135161700026A27C0547C79756867E02D0CF000891EE212222FAAFB30AF82CD0617C9594B4E5B2740C11991F076022BAA6E09866A594CA7B92';
wwv_flow_imp.g_varchar2_table(30) := '832F111199DC39057CCA419888F2C3019888FE2538A6592918B94394564F003A58BA878888A8804E43A977D342B27FC0EEDD39D23144643E1C8089E86F65CAD409CAF6F57916C010F08C2F1111B9AF23D07833EDE4B6F1001CD23144641E1C808908888F';
wwv_flow_imp.g_varchar2_table(31) := 'B7859ED10335F4DB0022A5738888889C42E30F05FD66EAC9EDD30068E91C2292C70198C8BB19A1310DFB69A53E0050453A868888A864E80D4A1BAFA49EDCBA54BA848864710026F252A1D18D3A69430D057423E916222222975058AC8097534F6CDB2C9D';
wwv_flow_imp.g_varchar2_table(32) := '4244323800137999E0E886ADA1F021946A23DD42444424400398AEA05E4E4BDC7A503A86885C8B03309197088EAE5F03CA32140ABDA55B8888884C20074A7FAD74EEBB6989BB2F4AC710916B700026F270A115EA853BF2AC2F42E16900BED23D44444426';
wwv_flow_imp.g_varchar2_table(33) := '930C858FD2FDD23FC7C183D9D2314454B238001379AAF8785BF0193D105ABF0BA08C740E1111919969E0B801BC9E7672DBCFE08AD1441E8B033091070A8C6ED4C930F005346A4BB7101111B917BD011A43D293B6AF912E2122E7E3004CE44142A3E31B3B';
wwv_flow_imp.g_varchar2_table(34) := '94E353402548B7101111B931AD80692A2FEFC5D4333B8F48C71091F3700026F2000115E3A32C79FA7D00F70030A47B8888883C44A6D6F828C3F01D8AC47599D23144547C16E900222A8E046B486CA92795D6D3013407DFD422222272269B5248F085E35E';
wwv_flow_imp.g_varchar2_table(35) := 'BF90C80BD9E9A77748071151F1F0976522371514DB244169C75700EA4AB71011117989A5DA621F9C717CC76EE910222A1A0EC0446EC63FB6418C555B3E0070B7740B11119117CAD55A7FEB93E5F3FAC58B1BD2A46388A870380013B98BF8785BC8193CA6';
wwv_flow_imp.g_varchar2_table(36) := 'B57E0740B0740E111191973BA5A05FE2639388DC0B07602237101213DF43437F0EA0AA740B111111FD8FD50E389EBC7472FB76E91022CA1F07602213F38F6E5ADEAAECC301F4966E212222A26BCA03D4970179B96F9C39B3F392740C115D1B0760227332';
wwv_flow_imp.g_varchar2_table(37) := '82631B3F088D4FC0CB9D898888DC4592867E2AE3E4B669D2214474751C80894C2630A66143036A04A09A49B71011115191CCB16AF57872D296E3D22144F4BFF81C602293888E8E0F4070F43B4AA931802A2FDD434444444556DDA130C83734D29E93D676';
wwv_flow_imp.g_varchar2_table(38) := '3DB0878B64119904CF00139940704CE39E008603A828DD42444444CEA3A0B643A987D312376F946E21220EC044A2FC631BC458B4E54B00374BB71011115189C953C0577E39D96F9C3BB73B433A86C89B71002692A102631ADDADA03E07102E1D43444444';
wwv_flow_imp.g_varchar2_table(39) := '254F0347A18D419792362F926E21F2561C80895C2C2CB2615C9EC5F8014027E9162222221231D550BE8FA425AEBB281D42E46DB8081691EBA8E0D8C6831C4ACD0450533A86888888C4D4D1B0DFE31B5CEE604EFAE97DD23144DE846780895C20B442D3CA';
wwv_flow_imp.g_varchar2_table(40) := '76BB7D24800ED22D444444642A5315AC8FA69FDC78413A84C81B18D201441ECE088E6D3C28CF6EDF090EBF444444F46FFD35727707C536EA271D42E40D780698A8840455685A47DB1DA314D05CBA85888888DCC254D81D8F679CDE764E3A84C853F10C30';
wwv_flow_imp.g_varchar2_table(41) := '91F319C1D18D9F87DDB185C32F11111115427F588C5DC1D14D7A4B8710792A9E01267222BFA84615AD8631064082740B111111B92F05FDB36FB6FFE3E7CFAF49976E21F2241C80899C242826BE3F8011E0737D898888C80934705429E3BE8CC44D2BA45B';
wwv_flow_imp.g_varchar2_table(42) := '883C050760A2620A8A6C54068631020A7DA55B888888C8E338A0313C2320F5051C3C982D1D43E4EE3800131543606CE31B9556A300444BB71011119147DBA561DC7DE9E4A6EDD22144EECC221D40E496A2E3038282A33F51505F020891CE212222228F57';
wwv_flow_imp.g_varchar2_table(43) := '56410FF40D8DCECD496BB31ED8A3A58388DC11CF00131552486C7C7387C6040095A55B888888C82B2DB76BE39ECCA44D27A44388DC0D1F834454702A3036FE2987C64A70F825222222390916E5F83D28BAF16DD22144EE866780890A20A85CFDB2CAE233';
wwv_flow_imp.g_varchar2_table(44) := '562B7DA3740B111111D15F14F4CFE95A3D82A42D97A55B88DC010760A27C044637E90CE89FA01029DD4244444474157F40E9DB2F256EDD291D4264765C048BE85AAA56F50DF4ABF41E14BE8542B0740E111111D1359401D4409FD0E88CDCB4531BA46388';
wwv_flow_imp.g_varchar2_table(45) := 'CC8C678089AE2238BA490D87D2130134926E212222222A28A531C3307C1E4C4B5C7751BA85C88CB80816D13F0446371EE8507A0B38FC121111919BD10A7DED3A676B707493D6D22D4466C44BA089FE121D1F101812FD3D947A13808F740E111111511185';
wwv_flow_imp.g_varchar2_table(46) := '69857B7C42A2F372D34FAD918E2132135E024D042024B66135BBB64C03505FBA85888888C889E65A94CF3DBC249AE84F1C80C9EB0544C7F7510A3F0208936E212222222A01271C0AFD3313B770812CF27ABC049ABC58823530BAD4FB4AE12B007ED23544';
wwv_flow_imp.g_varchar2_table(47) := '4444442524540177FB8446A7739568F2763C034C5EC93FA679AC05F6291ABAA5740B11111191CB688CBF64CF7D1867765E924E2192C00198BC4E604CD31BA0F57800E5A45B8888888804EC550E754BC6E94DBBA543885C8D8F41226F620445C7BF0DAD17';
wwv_flow_imp.g_varchar2_table(48) := '82C32F11111179AF9ADAD0EB82A29BDE261D42E46A3C034C5E21BC727C684E96310ED03DA55B888888884C43E1F34B27839E0796E749A710B9020760F278C131CDAA3BB46326805AD22D4444444426B452D973FA679CD979563A84A8A4F11268F2680131';
wwv_flow_imp.g_varchar2_table(49) := '8D7B3AB4632338FC121111115D4B3B6DF1D91C10D5AC8974085149E3004C9E4A0546C7BFA8B4F12B8050E91822222222932BAF946355604C937BA443884A122F81268F1311D13C24C7CF3E56037DA45B88888888DC8FFAF25252DCB3C054BB740991B371';
wwv_flow_imp.g_varchar2_table(50) := '00268F121CDDA4860398015EF24C444444540C6A81D59A7547EAF1DF93A54B889C890330798C8098C63DB53626282058BA85888888C8DD29E803CA61ED93717AC31EE9162267E13DC0E4110263E287401B3339FC12111111398786AA6637ECEB03A29BF6';
wwv_flow_imp.g_varchar2_table(51) := '926E2172168B740051F1245803A24B7D05A857C13774888888889C4A01BE006EB70547ABDCF4A4E5D23D44C5C54BA0C96D85C4B68CC875E44E534007E91622222222CFA7465E8E723C862D5B72A54B888A8A0330B925DFD8E6D50C877DB6026A48B71011';
wwv_flow_imp.g_varchar2_table(52) := '1111790B0D2CF1B166F7E7E258E4AE380093DB098C6ED2590353008449B71011111179A18316A0677AD2E67DD2214485C57B26C9AD0444351DA481B9E0F04B44444424A5AA1D581B14DB24413A84A8B0380093BB3002A39B7E01A54700B049C710111111';
wwv_flow_imp.g_varchar2_table(53) := '79B90887030B0263E2EF950E212A0CAE024DE617DBD23F20A8DC6400F749A710111111D1DF2C80EA630B89F2CD4D3FB5543A86A820780F30995A486CCB883C47EEAF00DA48B710111111D135684CBBEC1B74378E2ECF924E21BA1E0EC0645A7EE59A5656';
wwv_flow_imp.g_varchar2_table(54) := '16CCE34ACF44444444E6A7A197F9F9E9BEC987B7A44AB7105D0B07603225FFD826CD9443CD065056BA85888888880A486197D6E89E99B4E984740AD1D570112C329D80E8263729875A060EBF44444444EE45A3AE02D607C6346B209D4274351C80C95402';
wwv_flow_imp.g_varchar2_table(55) := 'A29A3E04A8690002A45B88888888A848A2B5D6CBFCA29AB6930E21FA270EC06416CA3FBAE98750F81E80553A86888888888A25DC5058E01FD3E416E910A22BF131486402FD2D01D181DF2960B0740911111111398D5541F5F7098ECDCC4D3FB9463A8608';
wwv_flow_imp.g_varchar2_table(56) := 'E0004CD2E212FC0202CE4D0630403A85888888889C4E01E86C0D8EF1CB4B4FE2B382491C07609253A64E50003053033DA45388888888A844B5F1098E89CB4DAF3E0738EA908E21EFC501984484C4B68C300CCB7C00EDA55B88888888C8251ADA8273EAE7';
wwv_flow_imp.g_varchar2_table(57) := '950B98898B17EDD231E49DF81C607239BFA8461595B22E005043BA85888888885C6E4966EEE53E38B73B433A84BC0F076072299FA816B52CCABE004079E9162222222212A2B1D16AA8EEE927375E904E21EFC201985CC63F36BE391CC63C0011D22D4444';
wwv_flow_imp.g_varchar2_table(58) := '4444246EBB9167DC78E9EC8633D221E43D3800934BF845356B6B283D470321D22D44444444641A471C1647E7EC135B0E4987907730A403C8F3F94637EFA2949ECFE19788888888FEA192613796FB44B5A8251D42DE816780A94405C434EBA1B59E06C04F';
wwv_flow_imp.g_varchar2_table(59) := 'BA85888888884CEB9C61189D2E256ED8291D429E8D6780A9C4F8C734BD556B3D031C7E89888888E8FACA381C8EE501914D9B4A879067E3004C25C23FBAD99DD0180FC026DD42444444446E215C1B58E81FD3BC857408792E0EC0E47401514D0701FA6700';
wwv_flow_imp.g_varchar2_table(60) := '56E91622222222722B61D08EF9FED14D5B49879067E23DC0E45401D1CD1FD7D05F815F5B44444444547497B442EFAC931B974A879067E11960721AFFE8662F68E8E1E0F04B44444444C513A83466F9C534EB281D429E85033039857F4CB367007C24DD41';
wwv_flow_imp.g_varchar2_table(61) := '444444441E235069CC0B886EDA4B3A843C0707602A36FF98A643A0F199740711111111791C5F0D353520A6590FE910F20CBC54958AC53FAAF9D3801E26DD41444444441E2D4739D0EFF2998D73A443C8BD7100A622F38F6AFE14A03F97EE2022222222AF';
wwv_flow_imp.g_varchar2_table(62) := '90ADB4A3EFE5D39B7F930E21F7C501988AC437AAD9C30AF816FC1A2222222222D7B90CAD7A669DDEB04C3A84DC1387172A34BFA8E68300FD1DF8F54344444444AE77195A77CF3ABD69857408B91F2E824585E21BD9FC710EBF444444442428004ACDF22F';
wwv_flow_imp.g_varchar2_table(63) := 'D7A2B97408B91F0E3154607E91CDEE85C268F08D132222222212A61452954377BE7C7AD326E916721F1C80A940FCA39ADEACA12603B04AB71011111111018006522C509D2E9FDAB045BA85DC030760CA976FB9663D9505BF40C326DD4244444444F40FE7';
wwv_flow_imp.g_varchar2_table(64) := '1C5A77C839BD69B77408991F0760BA2EBF72CD3AC2C05C007ED22D4444444444D770562B47BBECA4CDFBA443C8DC3800D335F9976BD15C1B8E450082A55B8888888888F2715C29DD263369D309E910322F2E664457E513DBBCBE361CF3C0E19788888888';
wwv_flow_imp.g_varchar2_table(65) := 'DC4305ADD56FC131CD4A498790797100A67FF18D6D5ECDB0EB050022A45B88888888880AA14EAE43CD43E9D63C894357C50198FE875FB96695945D2F031029DD42444444445478BA999F2DEF1754ADEA2B5D42E6C30198FE161C1D5F1A067E031023DD42';
wwv_flow_imp.g_varchar2_table(66) := '444444445474BA937F46F81420818FF0A4FF61910E2093888E0F3060990FA0A1740A1111111151B12955C31A9C5B292FE3E4AF00B4740E990357812600F136BF28EB6C005DA54B88888888889C4969353CF3F4FA27A53BC81C7806980CBFA80A3F03E823';
wwv_flow_imp.g_varchar2_table(67) := '1D4244444444E4740ACDACC1B139791927574BA7903C0EC05ECE37AAC5A70A7848BA8388888888A80475B406953F969791B85D3A8464F112682FE61FDDFC25ADF181740711111111518953C8D55AF7CA3EB57181740AC9E100ECA5FCA29ADFA5819FC0AF';
wwv_flow_imp.g_varchar2_table(68) := '0122222222F21EE90E65B4CF4D5AB74D3A846470F8F142BE91CD7A40A99900B82C3C11111111791785534A5B5A669D5A7B4C3A855C8F03B097B145B7686C68BD024090740B1111111191088D8336F8B4CA38BDEA9C740AB996211D40AEE31FDB32C6D0FA';
wwv_flow_imp.g_varchar2_table(69) := '5770F825222222226FA65035C7C8998DE8F800E914722D0EC0DE22A2798823CF310F40AC740A111111119134A5D1DCD7619904F4E79371BC08FFB2BD42BCCD37CC98058596D2254444444444A6A1540D6B504AB83DE3E46FD229E41A1C80BD806F54C5AF';
wwv_flow_imp.g_varchar2_table(70) := '01DC2ADD4144444444643A4A35B78694BF684F4FDC289D42258F03B087F3896CFEBA52785EBA8388888888C8C4BA580363B6DA2F9DDC2F1D42258BAB407B309FE816B729AD27827FCF4444444444F949D716B4C949DCB0533A844A0E07230FE517D5ACAD';
wwv_flow_imp.g_varchar2_table(71) := '061601CA57BA8588888888C84D1CB3DAD1FCD2D90D67A443A8647015680FE45BB6551507D40C0EBF4444444444855231D7C00CC425F8498750C9E000EC694AB70E86C5315301A5A4538888888888DC8D5268E99793F51378B5AC47E222589EC5F00D899A';
wwv_flow_imp.g_varchar2_table(72) := '0A85B6D22144444444446EAC8E252846DB334EAE900E21E7E200EC417CA39B0F05D440E90E222222222277A7946A6F092E7FD09E91F8BB740B390F4FEB7B08BFC896F768A5C74A77101111111179902CC38184CC33EB37488790737000F600FE31AD5A3A';
wwv_flow_imp.g_varchar2_table(73) := '1C8E6500B8E8151111111191332975CA30D0343371DD49E9142A3E0EC06E2EA07CEBE8BC3CFB460031D22D44444424C366B32228C01F001010E00F1F1F1B002028C01F1997330100191997909767479EDD8EF48CCBD2C944EE45EB753941111D70F0B76C';
wwv_flow_imp.g_varchar2_table(74) := 'E9142A1E0EC0EE2CB6A5BF8F5DAF00D0543A858888888A2F28D01F15CB472126AA2C4A478421223C14A5C24310111E8AD2116128532A0C1111A128151E0A7F7F3F84850441A9A2FF3A979E711979763B9293D370FE620A2E5C4CC185E4B4FFFE672ACE9D';
wwv_flow_imp.g_varchar2_table(75) := '4FC6F98B29B8989C8613496770F2D459E4E5D9A50F13910C85313949EBB9DE8E9BE300ECBE944F748B49D0B8553A848888880AC666B3A272C518542C1F854A15A251B17C14E2CAFFF73F2B44A174449874E275E5E6E62131E90C8E9E38F5E7C7F1A4BF3F';
wwv_flow_imp.g_varchar2_table(76) := '0E1F4FC2D97317A513894A94867A24F7D4BA11D21D54741C80DD944F748B17A0F19174071111115D5D7868306AD7A88C46F56BA256F5B83FFF7BBD1AF0F7F3DC253B52D332B07BDF61ECD977187FEC3F8A6D3BF762FBAEFDB8F4DFCBB089DC9E42AE431B';
wwv_flow_imp.g_varchar2_table(77) := '9DF24EAD5D299D4245C301D80DF9956BD6D161180B0058A55B88888808888E2C83D6CD1AA059E33AA857BB2AEAD5AE6AFAB3B9AE62B73B70F0C809FCBEE72076EE3980F55B7661F3B63D1C8AC96D69E08CD5D04D324F6E48946EA1C2E300EC66FCA39B96';
wwv_flow_imp.g_varchar2_table(78) := '77382C5B345046BA858888C81B592C066A548D43E3FA35D0B2597DB46ED600B5AA5792CE722B76BB03FB0F1DC39A8D3BB06EE34EAC5CB70DC7134F4B671115C6D61CAB6A83C4757C27C7CD7000762755BBF9FA6424AF0217BD2222227219A5141AD5AB81';
wwv_flow_imp.g_varchar2_table(79) := '2E1D5AA075F30668D1A41E428203A5B33CCEE1A327B176D34EAC5AB7150B96ADC7A9D3E7A59388F2A17ECE39BDEE1EE90A2A1C0EC06EC437AAC50F5AE341E90E2222224F171116820E6D9BA063BBA6E8DEA935A22379E195AB1D397612F316ADC19C45AB';
wwv_flow_imp.g_varchar2_table(80) := 'B17ADD76E4E4E64A2711FD8B867E3CF7F4866FA43BA8E03800BB095B54CB8795D6DF497710111179A2BFCEF276EDD8125D3BB644B3C67560B118D259F45FA9691958B27223162C5DC7B3C36436B90E874AC83BBB6EAD7408150C076037608B6CD94C41AF';
wwv_flow_imp.g_varchar2_table(81) := '04E0B9CB4612111109A85DA332FAF5EA883B6EEE8A2A9562A573A880FED87F04E3A6FE86F1D37EE3304C667022C7C86D8CA42DFC6274031C804D2EA85CABB239CAB10500FF552622227282BF86DEDBFA7646B5CA15A473A8181C0E07D66FD985E9B39762';
wwv_flow_imp.g_varchar2_table(82) := 'EAAF8B71E6EC05E924F2525A6171EEA9F2370253EDD22D747D1C80CDCDB045B598AF343A4B87101111B9B31A552BE2F69BBBE096DE9D50BD0A875E4F64B73BB062CD164C9DB51833E62C43726ABA7412791B85D7734EAD7F573A83AE8F03B089F944B678';
wwv_flow_imp.g_varchar2_table(83) := '13C05BD21D444444EEC8D7C7869E5DDBE2C1BBFAA043DB26508ABFF6788BEC9C5CCC59B00A23C7CDC4B2559BA1B5964E22EFE05086EE969DB461A174085D1BFF2530296B64CBF606F4120016E9162222227752A36A45DC735B0FDC77672F948E0893CE21';
wwv_flow_imp.g_varchar2_table(84) := '61070E1FC79889733076D21C9C3B9F2C9D431E4E0367AD56D5383371DD49E916BA3A0EC026F4DFFB7EB70188966E21222272077EBE3EE8D1A50D1EBCAB0F3AB66B2A9D432694939B8BD9F37956985C627D4EA9F4F6D8BD3B473A84FE8D03B0F9F0BE5F22';
wwv_flow_imp.g_varchar2_table(85) := '22A2028A2C571A4F3CD01F0FDED317E1A1C1D239E426F61F3A8E2FBE9B887153E7212B9B330A399F063ECB3DBD7E887407FD1B076093F9F3BE5FF59674071111919955AD5C1E8F0DBC050FDC7D13FC7C7DA473C84D9DBB9082B113E7E0AB919371FA0C57';
wwv_flow_imp.g_varchar2_table(86) := '9026A7D23070734ED2BA99D221F4BF38009B8835B24582825A0CDEF74B44447455AD9B35C0734FDC85EE9D5A71512B729AEC9C5C4C9BB5041F7E3116FB0E1E93CE21CF916C51AA51D6A9B5FCA23211FECB6116659B97F3318C6D1A88924E2122223213C3';
wwv_flow_imp.g_varchar2_table(87) := '30704BEF8E78FE89BBD1A04E35E91CF2600E8703B3E6AFC4C7C3C761D3B63DD239E41956E59E8EEDC0E7039B07076073306C912D1701E8281D424444642637B46B8A0F5E7F1C0DEB56974E212FB364E526BCFADEB7D8BA73AF740AB9390DFD56DEE9F56F';
wwv_flow_imp.g_varchar2_table(88) := '4B77D09F38009B80B55C8B579452EF497710111199C50DED9AE2DD571E457C839AD229E4C5B4D698B7782DDEFAE87BECD87D403A87DC9743C3E894777ACD32E910E2002CCE16D5BA09B4630D00AEE04144445EAF75B30678FBA54168D7B291740AD1DF1C';
wwv_flow_imp.g_varchar2_table(89) := '0E0766CC5D8E373EFC1E070E1F97CE2137A481C43C8BBD214E6EE46A6BC238004B2A573FD0A682B6029AD775111191576B1E5F07EFBFF638DAB668289D42744D7979768C9BFA1BDEFE78244E9E3A2B9D436E460173734EAFEB05800FA116C4D58605D982';
wwv_flow_imp.g_varchar2_table(90) := '2BFF00E006E90E222222295191A531F4CD27F1E5FB4310579EEB4092B919868186F5AA63D03D7D101C14888D5B772127374F3A8BDC47754B5085B38E8C139BA443BC19CF000BF1896C758B869E2ADD41444424C1C766C3C3F7F5C55B2F0C42705080740E';
wwv_flow_imp.g_varchar2_table(91) := '5191249D3E87D7DEFF0EE3A7CD87D63CA94705920587A545EED9D53BA443BC150760017E51AD2ADA1D7A3B14C2A45B8888885CAD47973618F6CED388AB102D9D42E4149BB6EDC1B3AF0FC3862DBBA553C83DECC9B5A20912D7654A8778235E02ED7A860A';
wwv_flow_imp.g_varchar2_table(92) := '8A9D01052E6B4944445EA561DDEA183FE21DBCF0E4DD080B0D96CE21729A98A832B8EFF69E888D2E8B4DDBF6E0D265CE35745D652C1A418E8CC4F9D221DE8803B08B59235BBCA1A0EE93EE20222272157F3F5FBCFDE2C318F5C56B88ABC0FB7CC93329A5';
wwv_flow_imp.g_varchar2_table(93) := 'D0A87E0D3C30A037B2B2B3B179FB1FBC2C9AAEA7B9115C7E832323F1A07488B7E125D02E642DDBAAA532F44A0056E9162222225768DBA221BEFDE42554AF52413A85C8A5566FD88147867C80FD87F8D824BA167522D7CFA73E8E2E4F912EF1263C03EC2A';
wwv_flow_imp.g_varchar2_table(94) := 'D1F1011658E70328239D42444454D2C24282F0D9BBCFE0F3F79E45E98830E91C2297AB101B898177F682CD66C5BA4DBFC3E170482791F9845A721DE51D974EFC221DE24D3800BB882D306E18806ED21D44444425AD479736983DFE53B46FD5184AF16233';
wwv_flow_imp.g_varchar2_table(95) := 'F25E36AB15ED5B3546AF2E6DB175E75E249D3E2F9D4466A350DF1A18BBD77E29912BA8B908FF5572016BB99637288545E0F12622220F56AE4C04BE1EFA027ADFD84E3A85C874F2F2EC18F6DD44FCE7E31F909D932B9D4366A29162B5E4D5CF4CDA74423A';
wwv_flow_imp.g_varchar2_table(96) := 'C51B70202B69E1F1A1365FDF9D0078F313111179ACCEED9B61E417AF21AA5C29E9142253DBB3EF08EE7EEC2DFCBE876B1FD1151416E59E5ADB1500574E2B61BC04BA84D9C2E24600AABD740711115149F0F3F5C1D0B79EC4E7EF3D83E0A000E91C22D32B';
wwv_flow_imp.g_varchar2_table(97) := '533A1CF7DEDE03199732B169DB1EE91C328F2A96A0D8738E8CC44DD2219E8E67804B906FB9D6BD1D4AFF2ADD41444454126AD7A8849FBF790BF56A57954E21724B8B566CC4834FBD8B53672E48A790395C362C46A3EC93ABF74B877832433AC063452794';
wwv_flow_imp.g_varchar2_table(98) := 'D60A23A4338888889C4D298507EFBA096B7F1BC9E197A8183AB76F864D8BC7A27BA756D229640E010EBB632CD09F57E996201EDC12620B8C1903E8E6D21D444444CE54B67438A68C7E1F831FBA15361B1F6B4F545C8101FEB8AD6F6784850661F9EAADB0';
wwv_flow_imp.g_varchar2_table(99) := 'F37149DE2ED6129C96ECC8485C2F1DE2A978097409F029D7F20EADD404E90E222222676A54AF06A68E7E1F156223A553883CD2D69DFB70EB03AFE078E269E91412A52F190ED520FBECDA43D2259E8897403B5B744269ADD4E7D219444444CE7457FF6E58';
wwv_flow_imp.g_varchar2_table(100) := '3EEB5B0EBF4425A871FD1A58377F143AB66D229D42A254A0C3D023C19395258297403B992D307A14005EFA4C44441EC1D7C786E11F3D8FB75F7C08362B2F79262A6981017EB8BD6F17E4E4E662EDC69DD2392446C55982CA9F71649CD82C5DE269F8AE82';
wwv_flow_imp.g_varchar2_table(101) := '1359225BF5308039D21D444444CE101355169347BE87668D6B4BA71079A5293317E3E1211FE0D2E52CE91412A12F59B4A57ED699D587A54B3C092F81769688E6210AF84E3A838888C8193AB66D824D8BC770F82512746B9F4E5835E77B54A9142B9D4222';
wwv_flow_imp.g_varchar2_table(102) := '54A05D397E004F5A3A15076027B1D92C9F28803F9D8888C8EDDD77474FCC1EFF294A47844AA71079BDBAB5AA60ED6F23D1BE5523E91492D1D156AEE540E9084FC277139CC01AD92641C1B1143C9E4444E4C69452786DC8FD787DC8FDD22944F40F39B9B9';
wwv_flow_imp.g_varchar2_table(103) := '18F4CC0798307D81740AB95EAAD562AF9B797243A2748827E0C0565CD1F1013E0EBF1D00AA4AA71011111595AF8F0DDF0F7B05B7DFDC593A8588AE416B8DF73EFB11EF7C325A3A855C4DE1D79C536BFA48677802AE025D4CB6C04A1F28A89ED21D444444';
wwv_flow_imp.g_varchar2_table(104) := '451511168299E33E468FCEADA55388E83A945268D7AA112A968FC4FC25EBE07038A493C8756A5A822BEEB4671CDF2B1DE2EE7806B8186C91AD9A2AA875E01B094444E4A62A558CC6ACF19FA07A950AD229445408CB566DC66D0FBE86D4B40CE914721995';
wwv_flow_imp.g_varchar2_table(105) := '9893A76BE3FC9A74E91277C645B08AACBF45418D00875F22227253CD1AD7C6AAB9DF73F82572431DDA36C1D2995F2326AAAC740AB98C8EB559F01FE90A77C701B8887CCB9D7A020097E3232222B7D4B64543CC9D340C654A8549A7105111D5AD5505CB67';
wwv_flow_imp.g_varchar2_table(106) := '7DC3C7247911A530D856AE4D73E90E77C64BA08B20B04C4264AE256F2FA0F97C082222723B5D3A34C794D1EFC3DFCF573A85889CE0CCD98BE876DBD3D8BDF7B0740AB982C28E9C53B626C0F23CE91477C433C045906BC9FD92C32F1111B9A3EE9D5B61EA';
wwv_flow_imp.g_varchar2_table(107) := '8F1F70F825F220E5CA4660C1D42FD0A04E35E91472058D06BE51B94F4867B82B9E012E24DFE8565DB443F1016C4444E4766EEDD309A3BF7C0D369B553A85884A404A5A066E1AF01CD66FDE259D42252FDD62C9ABCD6703171ECF001746D56EBEDAA1BE92';
wwv_flow_imp.g_varchar2_table(108) := 'CE2022222AAC0706F4C6D8AFDFE0F04BE4C1C24282306FF2E7E8D0365E3A854A5EB03DCFFAA574843BE20AC685E0E353EE4D00374B7710111115C6A3F7F7C3971F0E8161F07D6F224FE763B3E2E69E1DB079FB1F38722C493A874A92422D4B60F9EDF64B';
wwv_flow_imp.g_varchar2_table(109) := '27F649A7B8135E025D40BE65DA55D316FB4E007ED22D4444440575F7ADDDF0FDB09739FC127999CCAC6CF4BE730856AEDB2E9D4225EB448E0EAC85330B2F4987B80BFE6B58400E4BDEB7E0F04B44446EA46F8F048CF88CC32F9137F2F7F3C5F4B11FA149';
wwv_flow_imp.g_varchar2_table(110) := 'C35AD22954B2CAFBA84B2F4847B8139E012E009FE8B6B743EB89D21D44444405D5B34B1B4CFAE11DDEF34BE4E552D232D0F596C1D8BEEB80740A959C2CC3813A596756F3395805C0B784F3131D1F00AD3F94CE2022222AA88E6D9B60FC88B739FC1211C2';
wwv_flow_imp.g_varchar2_table(111) := '42823067E267A859ADA2740A951C3F87A13F938E70171C80F3E1A3FD5F01C09F184444E4165A36A98BA9A3DF879FAF8F740A11994499526198376918E22A4449A750895137F946B6EE265DE10E7809F475F8956B53D961603778EF2F1111B981260D6BE1';
wwv_flow_imp.g_varchar2_table(112) := 'B7C9C310121C289D42442674F8E84974ECFB044E9D392F9D422541AB833941417571F0B76CE91433E36390AEC30829FF23A0EA4A77101111E527AE4214164EFD0211E121D22924282B3B07E9972E232B3B0767CE5E44724A3A5252D3E1D00E64E7E4426B';
wwv_flow_imp.g_varchar2_table(113) := 'CD4BE3BD5878580812DAC463D22F0B91939B279D43CEA61061C9CB4DB7A71F5F239D62663C037C0D7E316D6F7038F462E90E2222A2FC84870663C5EC6F51A32AEFD8F13479797624269DC5D1E3A770E444124E9C3C830B175371EE420ACE5D48C1858BA9';
wwv_flow_imp.g_varchar2_table(114) := 'B8909C8A0B1753915B8881C6623110111E8AD211A128151E8A52117FFEF7D2A5C210135516952A4421AE42142A968F82AF8F4DFA309093CD5FB20EFD06BE8CBC3CBB740A395F86C562AF9999B8EEA47488597100BEAA04AB4F54DE36003CFB4B4444A6E6';
wwv_flow_imp.g_varchar2_table(115) := '63B361EEC44FD1AE5523E9142A86CCAC6CECD977043BF71CC4EF7B0E61CFBE2338723C09894967458714A514A2CA9546E58AD1A8553D0E756B5541BDDA5550B766158486F0527B773662EC4C0C7EF953E90C2A1913724EAD1E201D61561C80AFC237AAED';
wwv_flow_imp.g_varchar2_table(116) := '331A5C498D8888CC4D2985515FBC8A01B774954EA142C8CBB363E79E8358B7E977ACDFBC0B3B761FC4C1232760B73BA4D30A25AE4214EAD5AA82E6F175D0AA597DC437A8C9C5D7DCCC4BEF7C8361DFF2499F1E483BA0DBE79D5AB34A3AC48C3800FF4350';
wwv_flow_imp.g_varchar2_table(117) := 'B95665730C631F8030E9162222A2EB79E3B907F0EAB3F74967503E727273B176C3EF58B5613BD66CD8894DDBF620E352A67496D3F9FAD8D0B87E0DB46C560F6D9B3744FBD68D1118C07544CDCCE17060C0236FE29739CBA553C8F9B6E79C5A1D0FC0BDDE';
wwv_flow_imp.g_varchar2_table(118) := '5973010EC0FFE01BD566A4061E90EE202222BA9EDBFA74C2D8AFDF8052FCA7DC8CCE9EBB88452B3661EEA23558BC622352D32E4927B99CD56A41F3C675D0BD732B746CDB048DEBD7904EA2ABC8CACEC18DFD9FC2BACDBBA453C8C934704FEEA9D53F4B77';
wwv_flow_imp.g_varchar2_table(119) := '980DFFD5BC824F6CDBFAB0EBADE0EAD8444464626D9A37C06F5386C1C7C6C589CC64F7DEC3983A6B2966CD5F85DD7B0F4BE7984E5C8528F4ECD206B7F4EE8816F175F8E68D899CBB908256DD1EC2F1C4D3D229E45C2773546675246DB92C1D6226FCC973';
wwv_flow_imp.g_varchar2_table(120) := '059FA8B60B00DD45BA838888E85ACA958DC08605A31055AEB4740A013876E234E62C5C8D9FA7FC866DBFEF97CE711B315165D0B74702FAF5EA80964DEA721836811DBB0FA07DAF479199C547C87A98D7724EAD7E4F3AC24CF8D3E6BF7CA3DA76D5D0F3A5';
wwv_flow_imp.g_varchar2_table(121) := '3B888888AEC566B362E1B42FD1AA693DE914AF969A760913A72FC08F13E760FBAE03D2396EAF725C0CEEBDAD3BEEBDBD3BDFD811F6E3C4397864C847D219E45C19D65C55FDF2F955A7A443CC8203F09F0C9FA8B69B01F019124444645A5FBCF70C1E19D8';
wwv_flow_imp.g_varchar2_table(122) := '573AC36B6DDDB90FA3C6CDC6C45F16E2D2E52CE91C8F631806125A37C68377F5C24DDDDAC16AE51D69121E7BFE638C1A3F5B3A839C48013F649F5A3548BAC32C380003B045B77B40693D52BA838888E85A06DCD215A3BF7C553AC3EB6465E760DCD4F9F8';
wwv_flow_imp.g_varchar2_table(123) := '66F474ECDE7B443AC76BC44697C5A07B6EC243F7DC8488B010E91CAF929D938B8E7D1EC7E6ED7BA553C879EC70A846396756FE2E1D62061C80635BFAFBD8ADFB0094974E212222BA9A7AB5AA60E59C6F11E0CF47CAB8CAF98BA91833710E868F9C8E5367';
wwv_flow_imp.g_varchar2_table(124) := 'CE4BE778ADC0003FDC7173173CF5F0ADA85EA582748ED7484C3A8B165D1FC4B90B29D229E4245A61696ED2AA1BA43BCCC0EB07609FC8B66F40E16DE90E2222A2AB090F0DC6BAF93FA052C568E914AF70F8E8497C3E62327E9AFC1B170332118BC540DF1E';
wwv_flow_imp.g_varchar2_table(125) := 'ED31E4B13BF938251759B67A0B7ADC3104763B1F23EB29147063F6A9550BA43BA479F5CD1581656F28E730EC9300F84AB71011115DCDCFDFBE89164DEA4A6778BCE389A7F1D27FBEC1A3CF7F8C8D5BF7202FCF2E9D4457D05A63CFBEA3183DFECF85C76A';
wwv_flow_imp.g_varchar2_table(126) := 'D58843B93211D2591EAD52856828A5B062ED36E914721ADDD09ED1FC7B608F962E91E4D503B01152FE3300ADA43B888888AEE6C1BB7AE3D947EF90CEF068E7CE27E3FD613F61E093EF62D3F63FE070F06C97D9ED3F741C3FFC3C0B5B77EEE7205CC25A37';
wwv_flow_imp.g_varchar2_table(127) := 'AF8F55EBB6E3189F0FEC2154592328FD9023E3F80EE912D1A3201D20C537BA750DAD8D5D00ACD22D444444FF54BD4A05AC5F30128101BCEFB724A4A65DC2075F8CC5773FCEE0A5CE6ECC623170C7CD5DF0CECB0F213AB28C748E473A76E2349A761E88D4';
wwv_flow_imp.g_varchar2_table(128) := 'B44BD229E41C4773222ED6C0EEDD39D22152BCF60CB025B8E23780E283148988C874AC560B7E19FB212A5588924EF1380E870313A62FC4CDF7BD84252B36F3526737A7B5C6CE3D07F1C34FB3909E7119CDE3EBC0C7C7269DE551C2428310135516BFFEB6';
wwv_flow_imp.g_varchar2_table(129) := '523A859C23CC9AE57FD69E7E7CA3748814AF1C807D62DBD687437D092F3E034E4444E6F59F9706E1D69BB858A7B3AD5CB71DB73EF01ABEFF69269FE3EB6172F3F2B076D3EF183F6D014A970A43BD5A55A0147FCD73967AB5ABE0E0E113D8B5F7B0740A39';
wwv_flow_imp.g_varchar2_table(130) := '81029ADAFDCA7F87CB27BCF22CB057FE64F0896A3B174077E90E2222A27F6AD7B221164CFD1C866148A7788C33672F62C81B5F62EAACA5D229E422ED5A36C4D7439FE3A3939C28252D034D3BDD8FE3BC1FD853BC9A736AD5FBD21112BC6E00B646B76963';
wwv_flow_imp.g_varchar2_table(131) := '68B54ABA838888E89FC24282B069F16854888D944EF118D3672FC3E0973FC3F98BA9D229E462369B154F0DBA0D6FBE703F7C6CBC2CDA19D66CDC89CEFD06F3D1489E402135C7C8AB8CC47517A5535CCDEB2E81B604551CAB8038E90E2222A27FFAE6E3E7';
wwv_flow_imp.g_varchar2_table(132) := 'D1B64543E90C8F70F4F829DCF9F09BF8E4EB09B89CC945AEBC91C3E1C0DA4DBF63EEC2B5685CBF06A2234B4B27B9BD0A31E590713913EB36ED924EA1E2F3B3382CB0671C5B2C1DE26A5E7506D837B27D37283D4FBA838888E89F3A2734C3EC091F4B67B8';
wwv_flow_imp.g_varchar2_table(133) := '3DAD35BE1B3303AFBD3782F7F9D2DF2C16034F3F7C1BDE7CF1019E0D2EA6CB99596872C3401C3E9A249D42C597691846F5CC93CB13A5435CC99BCE002B5B70C5710062A443888888AE14E0EF87993F7F88F0B060E914B776EE7C32EE7EEC3F18FEC334E4';
wwv_flow_imp.g_varchar2_table(134) := 'E6E649E7908968ADB16ED32ECC9ABF0AAD9BD547D932E1D2496ECB66B3A25EADAA18377581740A159F4DC3E16F4F3F3E573AC495BC6600F6896C7B0B947A46BA838888E89FDE7FFD1174EDD8423AC3AD2D5EB109BD063C8F6D3BF74BA790899D3B9F829F';
wwv_flow_imp.g_varchar2_table(135) := '26FF86E0E040346D548B2B451751C5F291389E781A3B761F944EA1E252AAA1D5BFCA04FBA523C9D2292EDB65E900D7E86FF18D3AB30B404DE9122222A22B356D540BCB677D038B85AB3E174556760E5E7CFB6B7C3FF65768ADA573C88DF4ECD21A233E7B';
wwv_flow_imp.g_varchar2_table(136) := '11A52242A553DCD2C59434346C7F0FCE9EF39AB9C9636985B139492BEF93EE7015AF3803EC17556A00A00649771011115DC96AB560DA98F7B9384F119D3C750E370D7801B3E6AF964E2137B4FFD0094C9EB118AD9AD6454C5419E91CB7E3EFE78BD898B2';
wwv_flow_imp.g_varchar2_table(137) := '98316785740A159302EA5943CB4FB2A71FBF20DDE20A5E3000F7B758822F4D02C0DF2E8888C8545E1C7C376EEFDB493AC32DAD5AB71DDD6F1F8203874E48A7901B4BCFB88C09D31622B26C041AD5AB2E9DE376EAD4A8841DBB0E62FFA1E3D229543C8676';
wwv_flow_imp.g_varchar2_table(138) := '20C89E71FC57E91057F0F84BA07DA2DBDFA1B49E20DD41444474A5AA9562B179E98FF0F3F5914E712B5A6B7CF6ED24BCF1C1F77C162939D543F7DC844FDF7992AB4417D2C953E7D0A0DDDDC8B894299D42C5638705B5B213571E900E29699E7E06D8B006';
wwv_flow_imp.g_varchar2_table(139) := '571C0FA09C74081111D195BEFFFC25D4AE51493AC3AD6465E760E013EF62F80FD378BF2F39DDD61DFBB074D516F4ECD20A8101FED2396E232438100EADB17CCD56E9142A1E031A01F68C63B3A4434A9A479F01F6896C77AB52982CDD41444474A50E6DE2';
wwv_flow_imp.g_varchar2_table(140) := 'F1DB94CFA433DCCAC59434F41FF82AD66CD8299D421E2EAE42147E1D371435AA56904E711B59D93968D0EE6E1C3B715A3A858A432157D91D35B3CEAC3E2C9D52B2BBE9B9946F64BBED50A82F1D424444F417ABD5820D0B47A14E4D9EFD2DA883471271D3';
wwv_flow_imp.g_varchar2_table(141) := '801770E8E849E9145389080B4199D2612815118A52E1A188080F41E9885028A5E0EB6B83BFBFDFFFBC3E25251D009099958D0BC969B8989C8A0B175371EE420ACE9CBD88EC9C5CE95D328D88B0104C19FD2EDAB468209DE236A6CF5E8E010FBF299D41C5';
wwv_flow_imp.g_varchar2_table(142) := 'A646669F5AF190744589EEA1744049F1896A77B302A64B771011115DE991817DF1F97B4F4B67B88D759B7E47BFFB5EC1C5E434E914114181FEA85DB312EAD7AE8A1A552B20AE4214E22A44A1626C244282039DB61DAD354E9DB980A3C74FE1D889533874';
wwv_flow_imp.g_varchar2_table(143) := '34097BF61DC1CEDD0771F858121C0EEFBBDFDAD7C78611C35EE2427585D0E9E6C158BD7E877406158742AEB2A346D6999547A4534A6E173D93F28B6ABF4943C74B87101111FD253C3418BBD74E40447888748A5B98B7682DEE1CF426B2B273A4535CC26A';
wwv_flow_imp.g_varchar2_table(144) := 'B5A061DD6A68D9B41E5A34A98B46F5AA23AE42240C43F619D1972E6761CFBE23D8B46D0FD66FDA8D351B77E2E4A973D287CB259452F8F8ED27F0C483B748A7B885EDBB0EA0D58D83BCF20D13CFA27FC83EB5CA631F21EB9103B04F74879B9476CC94EE20';
wwv_flow_imp.g_varchar2_table(145) := '2222BAD227FFE12FD205F5CB9C15B8EFF1779193EBB997E52AA550AF566574EDD81C9DDA37459346B51018E057FC4FEC02894967B162CD362C5CB6118B566CF2F833F46FBFF4205E1C7C9774865B78F4B98FF1E384B9D219541C0AB9CAAE3DF62CB0470E';
wwv_flow_imp.g_varchar2_table(146) := 'C07F9EFD4513E90E2222A2BFD4AC56119B168F82CD66954E31BD09D316E2A1673EF4C8C71CF9D86CE894D004BD6F6C83AE1D9B23AA5C69E9A462B3DB1DD8B27D2F7E5BB20ED3672FC77E0F7D36F30B4F0EC07F5EF6E85B239DE2ECB964D46D7317D2D22F';
wwv_flow_imp.g_varchar2_table(147) := '49A75071287C9B9DB4E231E98C92D9350FE31BD5A12BE0982FDD41444474A5C9A3DEC14DDDDA4A6798DEC89F6761F0CB9F7BD4259456AB051DDBC6E396DE1DD0EBC636080F0D964E2A513BF71CC2B45F9762EAAC6538722C493AC7A91E7FA01F3EF9CF13';
wwv_flow_imp.g_varchar2_table(148) := '50CAE37E8576AAF787FD84FF7C3C5A3A838A27CB92EBA87CF9FCAA53D221CEE671DFBDBED1ED9742A38374071111D15F1AD5AB8EB5F347F097E67C8CFC79169E7C6998C73CE3B752C5680CBCB307EEB9F54644962B259DE3725A6BAC5CBB1DA3C7CFC1CC';
wwv_flow_imp.g_varchar2_table(149) := '792B3D6695E9C7EEBF199FBD3B583AC3D4D2D22FA1668B3B3CFED2784FA780F7B34EAD7855BAC3D92CD201CE648B6CDF5401EF4B771011115DE9DB4F9E47B52AE5A5334C6DC2B48578F4F94FDC7EF8350C03BD6F6C83CFDE1D8C8FDF7E1C6D5A34405050';
wwv_flow_imp.g_varchar2_table(150) := '80749608A514E22A44A16F8FF678F8DE3E285B261C078F24222535433AAD58366DFB03D9D939E8D8966BAD5E8BAFAF0F343496AEDA229D42C5A150DF6EADF62DB20E674BA73877B73C886F54BB6980EA27DD414444F497260D6B62D5DC6F79F6F73A66CD';
wwv_flow_imp.g_varchar2_table(151) := '5F8D3B07BD89BC3CBB744A91F9FAD870CB4D1DF1C2930350A36A05E91CD372381C98BF6403867E351EEB37EF92CE29162E8C757D972E67A156CB3B70F65CB2740A158756CF679F5EFE8974863379CC1960DF9836D5A18DE1F0B0A19E8888DCDB0F9FBF84';
wwv_flow_imp.g_varchar2_table(152) := 'CA7131D219A6357FC97ADCF1D09BC8CDCB934E299290E0403CF7C49D183FE22DDCDEB7134A47844A27999A520AD5AA94C77D77744742EB4638967806C74E9C96CE2A92E5ABB7223C2C18CD1AD7964E31251F9B15168B058B966F924EA1E250A86F2F5DE9';
wwv_flow_imp.g_varchar2_table(153) := '6BA41C75CF1FD257DD250FE11BD5FE07000F4A77101111FDA54D8B0658FCCB17D219A6B57EF32E74BB750832B3DCEFEABAC0003F3C725F5F0C79FC0E3ED7B99856ACD986B7868EC2BA4DEE7746582985D15FBE823BFA75964E31A5CCAC6CD46E3900A7CE';
wwv_flow_imp.g_varchar2_table(154) := '9C974EA162504A3D9495B47CA47487B378C419E0C03209910E03A301F0D9124444641AA3BE780515CB474A6798D2A1A327D1EDD6216EF7A8148BC5C08377F7C29451EFA277B736F0F7F7954E727B7115A270DF1DDDD1A4614D6CDF7500E72FA64A2715CA';
wwv_flow_imp.g_varchar2_table(155) := 'FC25EBD1A679037EAF5F85CD6A859FAF0DF3976E904EA1E2A969CF38F60D00F75EA4E1BF3CE20CB06F74FBA1D0785EBA838888E82F1DDBC663DEE44FA5334CE962721ADAF77A1C070EBBD7F36213DA34C6C76F3F8E7AB5AA48A778ACDCDC3C7CFFD3AF78';
wwv_flow_imp.g_varchar2_table(156) := 'F79331484E4D97CE29B088B0102C9B359CF77F5F45764E2EEAB6BE0B274E9E914EA162D0306EC939B56CBA74873318D201C516D13C04C020E90C2222A22B3DF7C49DD209A6949D938BFEF7BFE656C36F6C74594C1EF50EE64FF98CC36F09B3D9AC78FC81';
wwv_flow_imp.g_varchar2_table(157) := '7ED8BD763C1EB8AB97DB2C1E7731250D7DEE7E09E7CE73C1A77FF2F5B161F0A0FED219544C061C2F4A37386F5FDC9C8F9FFF63D0E08A134444641AF56B57E12352AEE1E1678762CD869DD219056218061E19D817DB968FC14DDDDA4AE7789588F0107C3D';
wwv_flow_imp.g_varchar2_table(158) := '7408164DFF1CD52ABBC723C48E1C4B42BF81AF7ACCF38E9DE9BE3BBA232C24483A838A41034DFD22DB7790EE700637BF0738DE660DF2190F80AB4F101191697CF0FAA3A8579B670AFFE9CBEFA762D8B793A4330AA446D50A983AFA5D3C74776FF8FAD8A4';
wwv_flow_imp.g_varchar2_table(159) := '73BC5685D848DC3FA0271C0E07366CDD0387C3DCB7209E3C750E67CE5E44CF2EADA5534CC5D7C786E49474B75CE88CFE47B83DE3987BFC10BF0EF7B8AEE41A7CA2120628609C74071111D15FA2234B63EF8689F0B1715DC62BADDFBC1B9DFB3D8DDC5CF3';
wwv_flow_imp.g_varchar2_table(160) := '3F496340FF2EF8F283671018E0279D4257D8B46D2FEE7BFC5D1C3A7A523A255FDF7EF21C06DED9433AC3544E9DB9801ACD6E478E1BFC0CA06BD250AA5676D2B27DD221C5E1D697401BD083A51B888888AEF4C483FD38FCFEC3E93317FE7CD6AFC97FF12D';
wwv_flow_imp.g_varchar2_table(161) := '5D2A0CD3C7BE87515FBCCCE1D7849A36AA89F50BBFC70377F5944EC9D7D3AF7C81CDDBF74A67984A54B952E8DFA7A37406158F82763C261D51FC9D7053FED11D5A3BB45E2DDD414444F497E0A0001CD83C99F7BA5D2127370F9D6F7E1A1BB6EC964EB9AE';
wwv_flow_imp.g_varchar2_table(162) := '0E6D1A63ECD7AFA16C9970E9142A80493396E0F1E73FC1A5CB59D229D7543EA62CD6CD1F81D2A5C2A4534CE3F73F0EA359A707A1B5B92F65A7EB4ACFCEB29647F262F77A5ED915DCF60CB0069E926E202222BA12177AF9B7D7DFFFDED4C3AF520ACF3E76';
wwv_flow_imp.g_varchar2_table(163) := '3BE64CFC98C3AF1BB9BDEF0D5831FB6B54898B914EB9A61327CFE281A73EE4B077857AB52A738140F717ECEB677F403AA238DC72112CFFE84E15B4767C0B371EE08988C8B3582C067EFAE675847200FEDBD2555BF0F42B5FC0ACBFFF0705FAE3C7AF5EC1';
wwv_flow_imp.g_varchar2_table(164) := '930FDD02C370DB8BE2BC56D932E118D0BF0BF6EC3B8A038713A573AEEAD0919328151182A68D6A49A79846D9D2E198387D917406154F4D7B46D3AF803D26FDE97E7D6E39403A607F02006FB0222222D3E8DAB1392AC49693CE308D8BC9697860F007A65D';
wwv_flow_imp.g_varchar2_table(165) := 'B53726AA0C96CD1A8E7EBD12A453A818C2428230EDC777F1CCA3B749A75CD3ABEF7E8F3DFB8E4A679846A7F64D50392E5A3A838AA7A24FD4F99BA4238ACAFD06E0E85E014A3BDCFAB43B1111791E775898C79506BF3C0CA7CE5C90CEB8AABAB52A63C5EC';
wwv_flow_imp.g_varchar2_table(166) := 'E1A857ABB2740A39816118F8E0F547F0ED27CFC16A35DFC58D9959D9B8EB91B791959D239D620A4A29DC7B7B77E90C2A260587DBDE8EEA7603B0AF237DA0868A90EE202222FA4B74646974EDD05C3AC334C64C9C8769B3964B675C55D78ECDB1ECD7AF10';
wwv_flow_imp.g_varchar2_table(167) := '1B5D563A859C6CE09D3D3075F4BB080AF4974EF9973DFB8EE28D0F464A6798C6BDB7DD68CA372BA830543B5B64FBA6D21545E16E03B082C293D21144444457BAF7F66EFC65EEBF4E9FB98097DEFE563AE3AA6EE99D80693FBE8BE0A000E9142A21DD3AB5';
wwv_flow_imp.g_varchar2_table(168) := 'C0FCA99F21222C583AE55F868F9C86759B764967984264B952E876430BE90C2A26A5F084744351B8D500EC1BDDBE13801AD21D4444447F514AE1EE5B6F94CE308DC12F7F8E94B40CE98C7FB9BDEF0D1833FC35D8F88C668FD7A4614DCC9BF2A9E91E3FE4';
wwv_flow_imp.g_varchar2_table(169) := '70683C32E46364E7E44AA798C2FD0378DB88BB5350B70545B62D23DD51586E350043AB47A513888888AEC4055DFEDFF4D9CB316BFE6AE98C7F79E89EDE18FDD52B3C4BEF451AD6AD8685D38621B25C29E994FFB1EFE0717CFCD504E90C53E8D2A11962A2';
wwv_flow_imp.g_varchar2_table(170) := 'DC6E76A2FFE59B6358074A471496DB0CC001A5DB4641816F15111191A9F02CC69F52D32EE1F937BF96CEF897BB6FBB115F7EF0340CC36D7EE52127A95D230E0BA70D33DDF39D877E390E7FEC3F269D21CE623170EFEDDDA433A89894763C0CBCE5563F60';
wwv_flow_imp.g_varchar2_table(171) := 'DDE6A1777ED11DDF02F49BD21D4444447F295B261C07374F86CDCACB6A1F7DEE138C99384F3AE37FDCD6F7068CFEF2153EE3D7CB6DFFFD006EBC7508524D74697ECBA675B164C61750CABBBF368F279E41AD96779AF6716954305AEB6ED9A796CF97EE28';
wwv_flow_imp.g_varchar2_table(172) := '283799D613AC807E50BA828888E84AB7F44AE0F00B60EB8E7DF869F26FD219FFA3D78D6D30F2F39738FC121AD6AB86993F7F80C0003FE994BFADDBB40B93672C91CE105721B61C5A37AF2F9D41C56428F5887443A17AA5030AC23F4AF5061023DD414444';
wwv_flow_imp.g_varchar2_table(173) := '74A55B7A77904E10A7B5C60B6F7F63AA3338AD9AD5C34FDFBCC67B7EE96F2D9AD4C1F8116F99EA6BE2D5F7BEC7A5CB59D219E2FAF54A904EA062D2404FBFA88E15A53B0ACA2D0660ADC0C5AF8888C85462A2CAA0797C1DE90C71537F5D86351B7E97CEF8';
wwv_flow_imp.g_varchar2_table(174) := '5BE58AD1983CF26DF8F9FA48A790C974EDD80C5FBCFFB474C6DF924E9FC767DF4C92CE10D7AF677B53BD3141456281D2F74B471494E90760DFF21DAB00E828DD41444474A57EBD12BCFEF2DACCAC6CBCFEC10FD2197F8B080FC1CC711F9AEEF137641EF7';
wwv_flow_imp.g_varchar2_table(175) := '0FE881A71EBE553AE36FC3BE9D8C63274E4B67882A5D2A0C6D5B3490CEA0E27B08F1F136E9888230FD008C3CFD985B7412119157E9D7ABBD7482B82F464CC5F1C433D21900009BD58A29A3DE41B5CAB1D2296472EFBFF630BA776A299D01E0CF3791DEF8';
wwv_flow_imp.g_varchar2_table(176) := '70A47486385E06ED11A2FC93427A4B471484B907CBD896FE4AE15EE90C2222A22BC5469745D346B5A43344A5A465E0F3EFA64867FCED83371E41EBE6F5A433C80D1886C298AF5F458DAA15A45300FC791BC1CE3D87A43344F5E9DE960B0A7A00ADE0168B';
wwv_flow_imp.g_varchar2_table(177) := '61997A00F6B3FBDE0CC05C4F30272222AFD7FFA60E5EFFF8924FBF9E689AC7CADCDAA7231E7FE066E90C7223C141011837E20D53AC0CADB5C6BB9F8E95CE10552A2214096D1A496750F1DDE01BDBAE9A74447E4C3D004329B7B9999A8888BC47BF9E09D2';
wwv_flow_imp.g_varchar2_table(178) := '09A2CE9D4FC1773FCE94CE0000D4A95909DF7CFC9C7406B9A1BA352B63F847CF4A670000E62C5883AD3BF6496788E265D01E41296D19281D911FD30EC07E9109710012A43B888888AE543EA62C1A37A82E9D21EA93AF2722E352A67406FC7C7D30E6EB57';
wwv_flow_imp.g_varchar2_table(179) := '4D71168FDCD3ED3777C29DB77496CE80D61AFFF9E447E90C51BDBAB686C562DAD1840A4AE31EA0BFA997F536EF5799A1069ABA8F8888BC52970ECDBCFAF2E7D3672FE0879F6649670000DE79F921D4AD59593A83DCDCB0779F425C8528E90C2C58BA111B';
wwv_flow_imp.g_varchar2_table(180) := 'B6EC91CE1013111E82260D6B4A6750F1C5F8465EE8221D713D261D30DF32002E7E454444E6D3B54333E904515FFD301D9959D9D219B8A15D3C1E7F90F7FD52F1850407E0C7AF5E31C5B3683F193E413A4154172FFFF9EA2994A14D7D19B429DFC2F68DBE';
wwv_flow_imp.g_varchar2_table(181) := 'A1B3825E28DD41444474259BD58AC45D3310121C209D2222E35226AA35BD0329A9E9A21DA1C181D8BA7C34A2234B4B1F12F220AF7F30129F0C9F28DA60180ADB96FF88EA55CA4B1F0E115BB6EF439B1E8F496750F1E5D8E088494F5A7E5E3AE46A4C7906';
wwv_flow_imp.g_varchar2_table(182) := '58C1DCEF1A101191776AD5ACAED70EBF003066C23CF1E11700DE7D7510875F72BAD786DC2BFE68248743E3CBEFA7491F0A318DEA574799D261D219547C3E3930EE908EB816F30DC0953B8502E8239D414444F44FDE7C799EDDEEC0373FCE90CE409B16F5';
wwv_flow_imp.g_varchar2_table(183) := 'F1C05D3DA433C803F9FAD8F0D5874F8BDFE33F6ECA029C397B51FA7088300C851BDAC54B67907398F684A6E90660DF2CFB0000FED21D444444FFD4B94353E9043133E7ADC49163A7441BFC7C7DF0F5D067C50714F25C6D5B36C0BDB7DF28DA909D938BEF';
wwv_flow_imp.g_varchar2_table(184) := '4DB2D09C84AE1D9A4B27901328A051604C4243E98EAB31DD00AC6098F6DD022222F25ED191A551B76625E90C31DF8C963FFBFBE4A05BBCF6DE48729D775F7908A12141A20D3FFC3C1B39B979D2874244A7F6F1300CBEC9E5091C30EE936EB81A530DC03E';
wwv_flow_imp.g_varchar2_table(185) := 'E512EA02BA8974071111D13F754E68EAB5671EF71E388EB51B77893644962D85E79F30ED2D65E4414A4584E2B567EF116D38773E057317AE953E14224A970A43A3FADEFDAC754FA13506A04E7F1FE98E7F32D5006C588C01D20D44444457D3AE6503E904';
wwv_flow_imp.g_varchar2_table(186) := '31A3C7CF954EC07F5E7E00C141DEBB0019B9D62303FBA0768D38D1863113E7491F06316D5B78EFCF5B0F53DAFFE2F95ED211FF64A6015801B85D3A828888E86A5A34AD239D20223B271713A62F126D6858AF1A06DCD245FA509017B15A2D78E79587441B';
wwv_flow_imp.g_varchar2_table(187) := '16AFD88CE38967A40F8588964DBCF3E7AD277218E65B0DDA3403B05F54C7B600E2A43B888888FEA96C997054AE182D9D21E2D779AB70E162AA68C35B2FDCCF7B02C9E5BA776A81D6CDEB896DDFE1D0183BE937E9C320A275F37A5E7BCB89A7515AF7088B';
wwv_flow_imp.g_varchar2_table(188) := '4B0893EEB892690660188A973F13119129B56C5A573A41CC9889B2BF80378FAF8DAE1DBDF7F15324EB55E17B817F9A3C1F0E87963E0C2E572A221455E2BCF34D470FE49795A36E968EB8923906E03AFD7DA0753FE90C2222A2AB69DDCC3B07E033672F62';
wwv_flow_imp.g_varchar2_table(189) := 'E5BAEDA20D6F3CCF8743909C0E6D1A8BDEFF9F98740EEB36C92E4027C59BDF78F440A6BA0CDA14037040F2C5EE004A49771011115D4D0B2FBD1F6DC6BC55B0DB1D62DB6FD5AC2E3AB66D2C7D18C8CBBD36E45ED1ED4F9BB54CFA1088E000EC495447FFD8';
wwv_flow_imp.g_varchar2_table(190) := '8E31D2157F31C5006CD79A973F13119129F9FBF9A241DD6AD21922A6FEBA5474FBCF3C7A9BF4212042DB960DD0AC716DB1ED4F9BBD02797976E9C3E0721C803D8A013BFA4B47FC7F8CB4886E214AA91E7F2E02CD0F7EF0831FFCE087B93E9A34AA091F9B';
wwv_flow_imp.g_varchar2_table(191) := '15DEE6D4990B58BF798F538E61513EAA568A45F74E2DA50F03110060F0A05B20F5BD70FE422A566FD8297D085CAE46D5F2285D2AACD8C78F1FE6F8D050A6B90C5A7C00F6F3CBBD0580BF74071111D1D5489EF991347DF60AD1C5779E1C740B577E26D3E8';
wwv_flow_imp.g_varchar2_table(192) := 'D3BD2DE22A448A6D7FDAACE5D287C0E5945268D2A0A67406398B4233DF981BAA4B670026188001C79DD205444444D752BF7665E90411B3E6AF16DB76785830EEEACFE7FE9279582C061EBFBFAFD8F6672F580BADBD6F35E8FA75AB4827901329AD4D7116';
wwv_flow_imp.g_varchar2_table(193) := '5874000E2C7B43394025481F042222A26BA95BCBFB06E0B4F4CB58BF698FD8F6EFECD70901FEBED28781E87FDC794B67F8F9FA886CFBECB964ECD87550FA10B85CDD9A95A413C8A9CCF1D85BD10138CF863E002CD207818888E86A7C7D6CA85625563AC3';
wwv_flow_imp.g_varchar2_table(194) := 'E596ADDA8ADCBC3CB1EDDF73FB8DD28780E85F22C243D0BB5B1BB1ED2F58B651FA10B85C1D0EC09EA65A407447F1A5FD450760A5B5695603232222FAA79AD52BC266F5BE05B0247FD16ED6B816EAD7E6658F644E03EFEC26B6ED85CB3649EFBECB55AF52';
wwv_flow_imp.g_varchar2_table(195) := '1EBE3E36E90C72228752FDA41BC406E0E0E884D2806A2F7D00888888AEC55B2FBF93FC45FBBE3BE4060CA2FCB46FD510952B468B6C7BE3D63F90929A2E7D085CCA6AB5A046B50AD219E44C1AB74827880DC0B9DADA1780F7BDAD4E44446EA36E2DEF1B80';
wwv_flow_imp.g_varchar2_table(196) := '77EF3D8A93A7CE896CDBC76645DF1E6DA50F01D13529A570CB4D0922DBCECBB363E9AAADD287C0E5EA79E13A0C1EAEBA4FB92EA20F7996BB045AC94FFF444444D753CF0B2FC55DB96EBBD8B66F68178FB0D060E94340745DFD7AC95DC0B86A9DF73D0FD8';
wwv_flow_imp.g_varchar2_table(197) := '1BDF88F47486254FF43268910138B4429B70402748EE381111517EBCF1CCC3BA4DBBC5B6DDAF7782F4EE13E5AB7EED2AA8297459EEDA4DBBA477DFE5EAD4F4BE9FC39E4E41F63E609101383BCFAF2F009975E48988880A203C2C1865CB844B67B8DC862D';
wwv_flow_imp.g_varchar2_table(198) := '328F3FF2B159D1A34B4BE9DD272A90BE3DDA896C77F7DE23484BBF2CBDFB2E55AB7A45E90472320DD4F38DEE50436AFB3297402BCDCB9F8988C8D4E22A444927B85CD2E9F3389E784664DBAD9BD743584890F421202A90EE9D5B886CD76E7788BD492525';
wwv_flow_imp.g_varchar2_table(199) := '3AB2345782F640062C7DA5B6EDF245A8C2E212C2B273D40D523B4C4444541095CA7BDF00BC66C3EF505022DBEED2A199F4EE131558E3FA3550B67438CE9D4F71F9B6D76FDA8DCE094DA40F81CB188642F9E8B2387434493A859CAB1F800F2536ECF233C0';
wwv_flow_imp.g_varchar2_table(200) := '59D9B69EE0E5CF444464721562CB4A27B8DC862D7F886DBB4B4253E9DD272A30C350B8A15DBCC8B6D76F96BB4F5F8A375E91E305E2FDA23A8A5CDFEEF20158013749EC281111516178E32F5CBFEF3924B2DD98A832A85D334E7AF7890AA5B3D09B363BF7';
wwv_flow_imp.g_varchar2_table(201) := '1C96DE7597AB5821523A819C4F294366312CD70EC075FAFB28A5BB48EC2811115161C479E12F5CBF0BFD629DD0BAA1F4AE13155A429B8622DBBD703115A7CE5C90DE7D97AA10534E3A814A825622F701BB74000EBC98DC410321123B4A444454181562BD';
wwv_flow_imp.g_varchar2_table(202) := 'EB17AE1327CF2225354364DB2D9AD496DE7DA2428B2A570A15CBCBFC9CD8E5656781BDF10D492FD132383AA1B4AB37EAD201D8A1742F57EF201111515178DB00BCEB0FB95FA85B36AD2BBDFB444522F5B5FBBBE0F7AB04A9371AA8C45972B5AD9BAB37EA';
wwv_flow_imp.g_varchar2_table(203) := 'EA7B807BB87A078988880AAB6C99700406F84967B8D4EF7B8E886C3724380035F99C4F72532D9BD611D9EEEEBD32DFAF52E2CAF30CB0A7524ABB7C3E74D9001C18D3B921A0E25CBD83444444851513E5F22BB2C4ED3D704C64BB4D1BD58261C83C7A89A8';
wwv_flow_imp.g_varchar2_table(204) := 'B89A35AE25B2DD3DFB64BE5FA5942D130E1F9BCB9FDE4AAE7123E2E35DFAA067970DC0763878F9331111B985D2A5C2A4135CEEB0D03336EBD5AE2CBDEB444556B37A4558AD16976FF7C8B153D2BBEE524A2944847319210F15EA773AAC8D2B37E8B20158';
wwv_flow_imp.g_varchar2_table(205) := '417100262222B7503AC2FB7ED13A96784664BB756A5592DE75A222F3F5B1A15AE558976F372DFD92D8A2755222BCF0E7B2B7500EA3A72BB7E7920138A07CE768683471E58E1111111595B79D69C8CCCAC6D973C922DBAE578B6780C9BDD5A929F326CED1';
wwv_flow_imp.g_varchar2_table(206) := 'E3DE7516B87478A874029514A56F72E5E65C7306384FF704C01B7C8888C82D848779D7007C3CF12CB4D62EDFAEC562A07AD5F2D2BB4F542C5257311C3D7E5A7AD75D8A67803D5A15DF981BAABB6A632EB99B5C2BA33BE0FA7F588988888AA24C29EF3AD3';
wwv_flow_imp.g_varchar2_table(207) := '70ECF86948BC4F1D1B5D167EBE3ED2BB4F542C55E26220F1FD2375DB82943FAFCCE1F9344F6540F504F0996BB655E212AC804E70C5CE1011113983B79D013E71F2ACC8762BC6F2D126E4FEE22AC87C1D1F4F94F9BE95523AC2BBDE98F43ADA758FCB2DF1';
wwv_flow_imp.g_varchar2_table(208) := '01D82FCAA715007EC5121191DB28ED656780CF5E4811D9AED4E040E44C1563CB896CF7BCD0F7AD146F5B9BC10BB50DAFDCC925FFF896F8006C18BAAB2B76848888C8594A79D92F5A1793D344B65B3EB6ACF4AE13155B99D261080AF477F976A5BE6FA570';
wwv_flow_imp.g_varchar2_table(209) := '00F678B6EC2CA3832B3654E203B0D6E8E28A1D2122227296D09040E9049792FA453A369A0330798698A8D22EDFE6F98BDE350087870649275009D3707476C5764A74000E8E4E280DA0B12B76848888C859BC6D61A673175245B6EB8DCF5B26CF544AE0FE';
wwv_flow_imp.g_varchar2_table(210) := 'D40B1765BE6FA5F8FAD8A413A8C429F71F80F360EB5CD2DB20222272361F2FFB454BEA17695ED2489E42E26BF982979D01F6F1F5AE9FCB5EAA9A5FB92E25FE5CB1121D4E15C0FB7F8988C8EDD86C2E794AA069A4A466886C970330790A89AB1932B3B291';
wwv_flow_imp.g_varchar2_table(211) := '959D23BDEB2EC333C0DEC1301C9D4A7C1B25F8B995065C721A9B8888C8997C7CBC6B00CECA92F925DADB161B23CF25F5668ED4F7AE041F1B07606FA055C95F065D62037060EC0DF5004497F40E10111139936128D8ACDE350067E7E48A6C3720C04F7AD7';
wwv_flow_imp.g_varchar2_table(212) := '899CC2DFDF5764BB3942DFBB127806D86B7402FA5B4A72032536003B1C8AAB3F131191DBF1C6B30CB9B932BF44DB6C25FA3B0E91CB480D67526F5E49B079D995395E2CDC3F362DBE2437506203B0867143498613111195046F5B000B00B2B35DFF4BB452';
wwv_flow_imp.g_varchar2_table(213) := 'DE77A69D3C97AFD0CAF1DE3400F30CB0F7D0F692BD0FB88406E004AB82A375498613111195046FBBFF576B8DDC3CBBCBB7EBE3650B8D916793FA7ACE1178F34A8A37BE39E9AD5409AF235522DFADFE31D62680115C92E1444444252137CF81BC3C3BAC56';
wwv_flow_imp.g_varchar2_table(214) := 'EFB83C37CF6E870600A55CBA5D1B7F99250FE2E36373F9F710E05D67807D6C5691634C02145AA14C4210CE2D2F91471494C819600DA343C91E152222A292919A9681CB99D9D2192E633164067DBBDD21BDEB444E23B51895373DB22D4FE04A1512E3E36B';
wwv_flow_imp.g_varchar2_table(215) := 'B3B52AA94F5E2203B0A190506287838888A884E5E5E54927B88CD4AAD739420B6F1195849C5C999F19DE34004B1D63926151AA5D497D6EE70FC0F1F136ADC1FB7F8988C82D756A1F8FF030EFBA8B47623566BBDD0187434BEF3A91536465CB3C8FD79B16';
wwv_flow_imp.g_varchar2_table(216) := '86F2A6CBBD09D050ED4BEA733B7D00F63F15D10C4060891E112222A21210111E82EF873D07E565F799492D2EC3B3C0E429727264CE4EFAFA7ACF00EC4DCF3C2600D0CD10DD2BA0243EB3D30760AD14EFFF252222B7F4C5FB4F22B26C847486CB499D45BA';
wwv_flow_imp.g_varchar2_table(217) := '7429537AD7899CE2D26599AF656F5A4D9D03B0D7F1F133729B95C42776FA00ACA0124AF86010111139DD6D7D3AA05FAF12BBE5C8D4A4CE009FBF9826BDEB444E713159E66BD9C747E6F9C3127809B41772384AE43268E70EC075FAFB00BAA54B0E081111';
wwv_flow_imp.g_varchar2_table(218) := '9193444796C667EF3E2E9D21263444E6CE25A9A181C8D924DECCB15A2D080AF493DE7597E100EC7D944289BC2BEDD401D8EF625A73002572AD3611115149504AE19B8F9FF6BA85AFAE542A3C4464BB1C80C9535CB898EAF26D46848778D57A0552F75993';
wwv_flow_imp.g_varchar2_table(219) := 'A8167F9E60752EE79E01361C6D5D76388888889C60D0BDBDD0A54353E90C51A5224245B67BEE82EB8706A292703139DDE5DB2C15EE5D6FDAF11E60AF14E09F9CDAC4D99FD4A903B082E2E5CF4444E4362A578CC23B2FDF2F9D21AE5484CC19E093A7CE4B';
wwv_flow_imp.g_varchar2_table(220) := 'EF3A51B169AD71F2D439976FB7744498F4AEBB546AFA25E904926038FF3268670EC00A502D5C78388888888ACC6AB560F4572F2228D05F3A455C69A133C0C713CF48EF3A51B19D3D9F82CB99D92EDFAED41B5752242E3327795A3B7F0076DADAE9BE31DD';
wwv_flow_imp.g_varchar2_table(221) := 'AB29D84B03DE732F021111B9AF218FDD86668D6B4967984244780894C0BFDFC78E9F96DE75A2623B76E28CC8F74F4498770DC0C9291922C799642985D6C05B06F096C3599FD3696780ADDADE5AE6B0101111154E83BA55F0F23303A4334C233AB294C876';
wwv_flow_imp.g_varchar2_table(222) := '8FF10C307980A3426FE4C4449596DE7597E219602FA51112547E6D6D677E4AA70DC01AE0FDBF4444647A7EBE3E18F5E50BF0B139ED2228B717573E5264BB274F9D4766568EF4EE1315CBA1232745B65BB17C39E95D77A9E414D72F3446E6E0D0CEBDCDD6';
wwv_flow_imp.g_varchar2_table(223) := '99F700B772F1B12022222AB4375FB817B5AA5794CE3015A95FA4ED7607FED87F547AF7898A65D71F4744B61B57214A7AD75D8AABC67B31079A3BF3D33965000E8B4B0883026FA4222222536BD5AC0E1E7FB0AF7486E94484872038384064DBBBFF382ABD';
wwv_flow_imp.g_varchar2_table(224) := 'FB44C5B27BAFCC00EC6D6780251E354526A160BE33C039793E2D9DF5B98888884A4250A03F460C7B0E160BFFB9BA9A8AB132BF4CEFDE7B547AD7898A2C332B07878F9D72F9767D6C56449593B9775F0AEF01F66AB52322BA396DD537E7FC16A0F9FC5F22';
wwv_flow_imp.g_varchar2_table(225) := '2232B7A16F3D82CA15BDEB92C1C288AB20731FF0CE3D87A5779DA8C8FED87F1476BBD316A72DB00AB1E56018DEB52232EF01F66A46B6BF6EEAB44FE6A4CFC3019888884CAB7BE716B8F78EAED219A656A36A0591ED6ED9BE0F797976E9DD272A92F59BFF';
wwv_flow_imp.g_varchar2_table(226) := '10D96ECDEA32DFAF52D2D22F893C6B99CC43C3E1B4CBA09D31002B004DE40E071111D1B5958A08C1F0A14F4967985EDD5A7122DBCDB894C9CBA0C96DADDFB45B64BB756B5592DE75973A728CCF0C27C3690B61157B00F68DED5C154098E4E1202222BA96';
wwv_flow_imp.g_varchar2_table(227) := '2F3E7812E5CA844B67989EE42FD4EB37EF91DE7DA22291FADAAD53D3BB06E0A32738009336CF1960C361E1D95F222232A53B6FE984BE3DDA4A67B8856A5562E1EB6313D9F6FACD3267D1888AE3D889333879EABCC8B6EBD68C93DE7D973A76E28C7402C9';
wwv_flow_imp.g_varchar2_table(228) := '2BE357A15365677CA2E25F026DA0B1F4D1202222FAA7E8C852F8F8ED47A433DC86CD6A458D6A32F715AE58B3035A6BE943405428CB576F17D9AEBF9F0FAA548A91DE7D973AC633C004C0E2B038E52CB0B5D89F41A3C99FB7011311119983520A3F7CFE3C';
wwv_flow_imp.g_varchar2_table(229) := 'C24283A453DC4ADD5A95B073B7EB57653E732E053B761D42C37A55A50F0151812D5EB10512BF03D7AC1EE7758F733B76E22C386F9043ABC6002614F7F314F7BB4729A091F4C1202222BAD263F7DF8484360DA533DC4ED34635C5B6BD68F966E9DD272A30';
wwv_flow_imp.g_varchar2_table(230) := 'BBDD81654267809BC7D792DE7D973B7A9C67800900B453E6CE620DC0C1D1375607102A7D28888888FE52BD6A79BCFDF240E90CB7D4B2696DB16D2F5ABE457AF7890A6CC3963FC49E4BDBA289DCF7A9941327CF4A279009FCF7C46BB12F0528D600EC3074';
wwv_flow_imp.g_varchar2_table(231) := 'BCF481202222FA8BD56AC1C82F9E83BF9F8F748A5BAA5D230E21C18122DBDEB0E50F5CB898267D08880AE4B7C51BC4B6DDA289779D013E773E05199732A533C81CC2FDA2BA177BB18AE25D02AD1507602222328D1707DF81F806D5A533DC96C562A05963';
wwv_flow_imp.g_varchar2_table(232) := '99CBA0F3F2EC98396FB5F421202A90997365BE56CBC79445F998B2D2BBEF52FB0E254A27908918AAF89741177300D67C041211119942C37A55F1FCE0DBA433DC9EE465D0BFCC5925BDFB44F9DABC7D1F0E1F3B25B26DC9EF4F29BBF6B87E613E3231C321';
wwv_flow_imp.g_varchar2_table(233) := '3900BF65684335943E06444444FE7E3E18FDE50BB0598BFF70036FD7AA591DB16DAF5AB71367CF254B1F02A2EB927CA3A66553B9EF4F297BF61D934E2033D14A6E00F68D5D57191A21D2C7808888E8AD9706A246B5F2D2191EA145D33A080AF417D9B6DD';
wwv_flow_imp.g_varchar2_table(234) := 'EEC0749E052613733834A6CF5A29B6FD1BDA37963E042EB77BEF51E9043217B901D880AA27BDF7444444AD9BD7C563F7DF249DE1317C6C56B46B555F6CFB6326CC973E0444D7B478C51624269D13D976D54A31A812172D7D085C4A6B8DDDFB8E4A6790B9';
wwv_flow_imp.g_varchar2_table(235) := 'C40645762B539C4F50E40158393800131191AC90E0408CFCE2791846B19F8A4057E8D2A1A9D8B677FD71045B76EC973E0444573576E202B16D77E9E07D4BEF1C3D7106E9E997A533C864B4616F589C3F5FF49BA514EA39E1314C44444445F6E93B8FA242';
wwv_flow_imp.g_varchar2_table(236) := 'AC77AD88EA0A7FFEA22DF76FFC98090BB89A3799CE858B69F86DF146487D6F74F6C20178D79E23E0BC41FF666904605151FF74910760AD545D052DBDF74444E4A57A756D893B6FB9413AC323552C5F0ED5AB95C7FE832744B63F65D672BCFFFA03080E0A';
wwv_flow_imp.g_varchar2_table(237) := '903E14447F1B3B6901B2737345E6317F3F1FB46D29776B82943DFB8F72FEA57F71283428CE9F2FDA25D0B1FDFD157435E99D272222EF54A67418867F34583AC3A375EFD45C6CDB191999F891F7029389E4E6E5E1BB31B3C5B69FD0A621FCFD7CA40F83CB';
wwv_flow_imp.g_varchar2_table(238) := 'EDFAE3A874029990028AF53CB0220DC001C6E5DA002CD23B4F4444DEE9F3F71E47E952A1D2191EAD5FAFB6A2DB1F3E722672F3F2A40F03110060CA8CE53879EABCD8F66FE9D54EFA1088D8B875AF740299534DA07F9167D1220DC04ADBB90016111189B8';
wwv_flow_imp.g_varchar2_table(239) := 'E7B62EE8D3BDB57486C76B5CBF9AE88AB3274F9DC78C39ABA50F03110060F8A89962DBF6F5B1A17B67B92B32A4249DBE20B6E236999E9F6F6C66E5A2FEE1A25D02ED000760222272B98AB1E530F4AD41D2195EA36FCF36A2DBFF7CC47468CDF54648D6A2';
wwv_flow_imp.g_varchar2_table(240) := 'E55BB073F761B1ED77E9D00421C181D287C1E5D66CDC259D402666518E225F065DC445B08C7ABC1F9D88885CC93014467CF62C174672A15B7AB5C7A7C3A78A6D7FE7AEC398BD603D7ADFD852FA5090177BFFB3F150822B31DDD2BBBDF42110B17ED31FA2';
wwv_flow_imp.g_varchar2_table(241) := 'C79DCC4D3B741D00BF16E5CF16ED0CB0E21960222272ADC71FE883B62DF9CF8F2BD5AB5D09D5AAC48A36BCF7E938381C3C0B4C327E5BBC119BB6ED13DB7E80BF2FBADD20F75C6E491BB6EC914E201353CA28F219E0420FC0A1157A84038894DE692222F2';
wwv_flow_imp.g_varchar2_table(242) := '1E35AA96C71B2FDC239DE195EEEADF4974FBBBF71EC5CCB9BC17985C4F6B8D0F3F9F28DAD0A7471B0406FA4B1F0A97CBC8C8C4EF7B8E486790A969D70DC03976470DE9DD252222EF61B35A31EACBE7BDF211206670D7AD9D60B316F18E292779E7D3715C';
wwv_flow_imp.g_varchar2_table(243) := '119A5C6EC69CD5D8B263BF68C37D7774953E0C22366EDB0BBBDD219D41E656ABA82B4117FA5F34C362D40017A42022221779E9993BD0B05E15E90CAF55AE4C38BA756E8A59F3D789351C389C881F7E9A8BC7EEBF49FA709097C8CACEC1EB1FFC08C95B50';
wwv_flow_imp.g_varchar2_table(244) := 'AB558945CBA6C57ADCA9DB5ABF798FE8B127B7E0175A3E232EF5040E15F60F16FA0CB0D2A82EBDB74444E41D9A36AA81218FF597CEF07AF7DD71A37402DE1F3601172EA649679097F8F2FB1938967846B4E1BEDBBB4229EF9C02D76EE4FDBF94BF5C1875';
wwv_flow_imp.g_varchar2_table(245) := '8AF2E70A3D003B94E625D0444454E202FC7DF1FD67CFC26A2DF2B3EEC9493AB58F478598B2A20D29A91978F7B371D28782BC40D2E90BF8F4EB29A20D3E362BEEECD751FA5088B874390BEB36ED96CE2037A054D1EE032EF425D04A2B0EC0444454E2DE79';
wwv_flow_imp.g_varchar2_table(246) := 'F97EF11588E94F86A130704037BC3DF427D18ED1E3E7E39EDBBAA051BDAAD287843CD84BFF19894B97B321790DEE4DDDDBA04CE930E9432162E5BA9DC8CEC903AF81A67C6914692E2DE419E0B70C00FC578788884A5487360D31E8DE1ED219748587EEEE';
wwv_flow_imp.g_varchar2_table(247) := '8EC0403FD106BBDD81479FFB9C0B62518959B074337E99B34A3A038F3FE0BDF7BB2F5CB6453A81DC842EE25C5AA801D8AFE2968A0064FFF52322228F16121C886F3E7ECA6BEF7D33ABB0D020F1472201C0AE3F8EE2AB1F664A679007CAC8C8C453AF0C97';
wwv_flow_imp.g_varchar2_table(248) := 'CE40FB560DD0A4A1F72EB9B378C556E90472130A28D20A99851A802D763B2F7F2622A212F5D93B8FA07C4C19E90CBA8A271EB809164BA1970F71BA0F864DC0A12349D219E461DE1C3A168949E7A533F0E4A03ED209620E1E3E8923C74E496790FB882A5D';
wwv_flow_imp.g_varchar2_table(249) := 'BA777061FF50E1FE15330C0EC0444454627A756D81DB6FEE209D41D750A962147A766D299D81CCAC1C0C7CF2635E0A4D4EB374D5367C3F76AE7406AA578945978426D21962162EE7E5CF543899BE8ECA85FD33855A044B2B5D8317A4111151492857261C';
wwv_flow_imp.g_varchar2_table(250) := 'C33F1A2C9D41F978EAE1BEF8F5B735D219D8FAFB017CF4C524BC36E42EE9147273172EA661D0B3C3A0A1C5D75D7AE6D15B6018DEFBDBF6E2155BC5FF0EC8BD28ABAE02604761FE4CA10660A551955F9544445412BE1E3A18A52242A433281FCD1AD544E7';
wwv_flow_imp.g_varchar2_table(251) := '8426586482333543874F4142EB8668D3A2AE740AB9B1C75FFC12A7CF2643FA77DCCA7151B8C38BAF80C9CACEC1EA0DBB20FDF740EE45EBC22F8455A84BA0355425E99D242222CF73DFED5D7063C7A6D2195440AF0F19608A45CA1C0E8D41CF0EC3C5E474';
wwv_flow_imp.g_varchar2_table(252) := 'E914725323C6CEC19C851BA43300002F3F7587573FF77CC9CA6DB89C992D9D416E4641157A21AC420CC06F190A282FBD934444E459E2CA97C3876F3C289D4185D0B87E3574EFD44C3A030070FCE459DCF3F847B0DB1DD229E466366EDB8797DF19259D01';
wwv_flow_imp.g_varchar2_table(253) := '00A85A3906FD7BB793CE10356DF64AE90472431ABAE4CE00FB476F8B01E02BBD934444E4390C43E1BB4F9E4650A0BF740A15D21BCFDD659A7B1597AFD981F7868D97CE203772F67C0AEE7AE403E4E49A6321B53786DCE5D5677FB3B273307FC966E90C72';
wwv_flow_imp.g_varchar2_table(254) := '47257909B4D5921727BD7F4444E459063FD497F76FBAA93A35E3D0A77B6BE98CBF7D3C7CAA692E652573CBCDCBC33D8F7F84A4D317A4530000756B99EB7B49C2C2659B919E71593A83DC91422CE212FC0AF3470ABC08964319710A5A7A178988C843D4AC';
wwv_flow_imp.g_varchar2_table(255) := '561EAF0D19209D41C5F0CE4BF7E1B7451B91959D239D02688D07067F8CB913DF4393467C6A235DDB736F8CC09AF5BB4CB3D4D27BAFDC6F9AAB29A44C9BB5CA347F1FE4768C201D582903F8A3A07FA0C003B0022A715536222272069BD582EF873D0B3F5F';
wwv_flow_imp.g_varchar2_table(256) := '1FE9142A868AE5CBE1B1076EC267DF4C934E01005CCECCC11D83DEC792991FA3424C59E91C32A18FBE9C8CD1E317C02CBFD3F6ECDA0237B46B249D21EA726636162CDB02B3FC9D90FBD176A3220A310017F81268AD1027BD734444E4195E7D76001AD52B';
wwv_flow_imp.g_varchar2_table(257) := 'F46D3B6442CF3FD11F9165C3A533FE76FA6C32FA0F7C0769E9BC9C92FED7945F57E0BDCF264867FCCDD7C786F75E19289D216EFE924DB87C394B3A83DC9861A042A15E5FD0172A200EEACFFFC20F7EF0831FFCE047513F9AC5D7C4D38FDC0CF20C4181FE';
wwv_flow_imp.g_varchar2_table(258) := '78F385BBC5BFAEAEFCD8B3FF18FADEFB162E5DE22FD5F4A7A5ABB6E3B1E7BF848616FFFAFCEBE3B1077BA3725C94F4A111376DF62AF1BF0B7EB8F78756857B5251C1CF0003950AF389898888FE2920C00F3F7CF60C2C96423D869E4CEECE7E3720BE4135';
wwv_flow_imp.g_varchar2_table(259) := 'E98CFFB171EB5E0C78E40364E7E44AA790B0D51B76E1F687DE35D5D742B932E178FEF1FED219E2D2D22F63F18A2DD219E4E694D6253100275815102BBD734444E4DEDE7F7520CF787820C350F8EAC3276033D9635C96ACDA867B1F1F8ADC3CBB740A09D9';
wwv_flow_imp.g_varchar2_table(260) := 'B2633FFADFFF0E32B34CB050DB1586BEF910828302A433C44D9AB1CC747F37E47EB42A814BA0FD2A05C4A0100B66111111FD53E7F68D71FF9D374A675009A957AB121E7FF026E98C7F99BB6803EE7B62A8699EF74AAEB369DB3EF4B9E72D645CCA944EF9';
wwv_flow_imp.g_varchar2_table(261) := '1FDD3A35C3CD3DDB486798C24F93174927906770FE19609BDD52A84F4A444474A5D090407CF9E113504A49A750097AE5E93B4D79867FD6FC75B8E3A1F778A6C98BACD9B81BBDEF7A0329A919D229FF2328D01F9FBDF3887486296CDD79103B761F96CE20';
wwv_flow_imp.g_varchar2_table(262) := 'CF501E7FDE115C20051A8035102D7E77333FF8C10F7EF0C36D3F3E7FEF31C446950679367F3F1F0CFFF049286540FA6BEE9F1F0B976F455F139E0D24E75BB87CCB7FFFAEB320FD75F7CF8FB75FBC973F0BFF6BCCA48590FEFBE087C77CF80655E95BA6A0';
wwv_flow_imp.g_varchar2_table(263) := '5F7B051B800D4417F4131211115DE9965E6D714BAFB6D219E4226D5BD4C53DB77592CEB8AA351B77A3C71DAFE1CCB964E9142A21E3A72FC51D0FBD6FCAB3FD2D9BD6C683777593CE3085CB97B3306DD62AE90CF2208E1C7B81EF032ED822585A71002622';
wwv_flow_imp.g_varchar2_table(264) := 'A2428B2A17C1CBFDBCD0D0371E44D54AE6FCD561EBCE8368D76B087EFFE388740A3991D61A1F7C3E098F3EF7A529EFF70E0CF4C3771F0F866128E91453983E6735D233F8AC6E721E8BA10A7CCB6E810660059E012622A2C2514AE1EBA14F223C2C483A85';
wwv_flow_imp.g_varchar2_table(265) := '5C2C20C00F3F0C7B065693AD0AFD97A4D317D0EDB657B162ED4EE91472829CDC3C3CF2DC1778FFF389D05A4BE75CD5E7EF3E6ACAFBE3A58C99C4C5AFC8B9B42EF84258055BD95981DFB144445428F70FE88ACEED1B4B679090260DABE3E5A76FC73B9F8E';
wwv_flow_imp.g_varchar2_table(266) := '974EB9AAD4F44BE873CF5B78F795FBF0F8FDBDA573A888924E5FC0DD8F0FC5C6AD7BFFBC15D084FAF76E87DBFB26486798C6EE7DC7B0719B79FFBEC83DA942AC045DC0E70023467AA78888C87DC45588C47BAF0C94CE2061CF3DD61F6D5BD495CEB8A63C';
wwv_flow_imp.g_varchar2_table(267) := 'BB1D2FBD330A03077F82CB97B3A473A890D66EDA8376BD87FC39FC9A544C64297CF69F87A5334CE5AB91BF4A279047D291057D65019FEDCB7B808988A8602C1603233F7B0681017ED22924CC3014BEFBE469B4EDF52C2E26A74BE75CD3B4D9ABB1F74022';
wwv_flow_imp.g_varchar2_table(268) := 'C60E7F0ED5ABC44AE7503EB4D6F8F28799786BE838E4D9ED30EBA9449BD582B1C35F4058286F03F9CBE9B3C9FF5DFCCA9C7F67E4BEB452E50AFADA7CCF0097A9D33F0840B0F44E1111917B78E6919BD13CBEA67406994485983218FBD5F3B0580A7AD199';
wwv_flow_imp.g_varchar2_table(269) := '8C5D7B8FA24DCF67F1ED9839A6BD8F9480B3E753D0FF8177F1DA0763FF3BFC9AD787AF3FC09F85FFF0DDD8B9C8CEC995CE208FA49D3700675DCEE6E5CF44445420F56AC5E1E5A76E97CE209349685D1FAF3D73A77446BE32B372F0C2DB2371F37DFFE1A3';
wwv_flow_imp.g_varchar2_table(270) := '924C68D18AAD68D5FD192C58B6453A255FB7DED40E83EEE92E9D612A972F67E1C7890BA433C873952DE80BF31D80B54373002622A27CF9FAD8F0C3B067E0632BE0DD35E455863CD60F3D3A3797CE2890C52BB7A155F767F0CBDC35D22904E062723A1E1E';
wwv_flow_imp.g_varchar2_table(271) := 'F285DBBC3151AF561CBEFAE071E90CD3F969EA1253DF0A416EAF0CD0BF408F1EC8FF7A24A50A3C4D131191F77AEDD93B51A74645E90C3229A514BEFFF429D33E1FF89FCE9E4FC1BD4F7C8CDB1E7A1F49A72F48E778AD29BFAE447CA7C731E19765D22905';
wwv_flow_imp.g_varchar2_table(272) := '12161A84F1DFBE84007F5FE91453B1DB1D183E6A96740679364B5095BC52057961BE6FD31BCA28C37B618888E87A5A36A985271FBC493A834C2E243800D346BF864E37BF840BC969D23905F2DBE28D58BD7E175E1F72271EB8AB1B6C267DB6B1A7397824';
wwv_flow_imp.g_varchar2_table(273) := '092FFE6724162DDF0AC03D964CF2B15931E1BB9750A9628117A3F51AB316ACC3F11367DCE2EF91DC97FEF332E8B3F9BD2EDFAFC390CA7DDED21A6F4AEF101111995360801FD6CDFB1C71150ABCFE0479B9F55BF6A2F75D6F202BDBBD16C3A95135161FBE';
wwv_flow_imp.g_varchar2_table(274) := '763F6E68D7483AC563A5A55FC6D0E153F1DD9839C8C9CD93CE2930A514467C3298CFFBBD86843ECF63EBCE83D219E4E11C0A9D2E1D9EB924BFD7E57F09B4D6A5A577868888CCEB83D7EEE7F04B85D222BE26BEFD78309472AFF341FB0E26A2EF7DFFC1AD';
wwv_flow_imp.g_varchar2_table(275) := '0FBE873F0E1C97CEF128B979768C9EB0008D3A3E862F7F98E956C32F00BC34F8360EBFD7307FE9660EBFE41296022E8455807B8051A06BA98988C8FBDCD0AE11EEBDAD937406B9A17E3DDBE08DE706486714C9FCA59BD1B2DBD3B8F7898F71E0F049E91C';
wwv_flow_imp.g_varchar2_table(276) := 'B7E67068CC98B716CDBA3C89A75FFB0EE72EA44A2715DA2DBDDAE2A5C1B74A679892D61A1F7E39593A83BC8503057A373EDF1B597CC36A3D02A0B2F4FE101191B944840763E6D837111CE42F9D426EAA55D3DAB89892812D3B0E48A7149AD6C0DE032730';
wwv_flow_imp.g_varchar2_table(277) := '7AFC021C4D3C83EA9563512A22443ACB6DE4E6D931F5D795B86FF0A718357E3E925332A4938AA44B423C7EFC6A08AC16DE1B7E3573166EC0D7A3674B6790D7D0DB7352F6E57B0974419E55C133C04444F42F9FFDE76144960D97CE203737F48D07909D9D';
wwv_flow_imp.g_varchar2_table(278) := '8331931649A714499EDD8EF1D39662C2F4654868551F8F0EEC891B3B3691CE32AD8C4B9918377529BE1CF92B1293CE49E7144B8BF89AF869F8737CF4DB35381C3CFB4BAE56B0A717E5FB1DAB8132D2BB424444E672EB4DED70738FD6D219E401945218F6';
wwv_flow_imp.g_varchar2_table(279) := 'CE2348CFC8C4F439ABA5738A4C6B8D656B7660D99A1D685CBF2A1EBAAB1B6EEED11AFE7C1C0E803FCF968F99BC08E3A62E415AFA65E99C626BD2B03A7E19F3060202FCA4534C6BC6BC35F8FD8FA3D219E44D0C55A077E5F35D7D22B8529FCB00787D1B11';
wwv_flow_imp.g_varchar2_table(280) := '11010062224B61FDFC2F101A12289D421E2437CF8EBB1EFD08BF2DD9249DE23421C101B8B5773BDC7B7B6734A8E37D7793656666E397B96B3076F222ACDFB2573AC769EAD68CC3BC89EF202C34483AC5B4EC76079ADF3818FB0FF11E7972A9E5E9476676';
wwv_flow_imp.g_varchar2_table(281) := 'C8EF45D71D80CB95EB12783920D03D6FCA202222A7534A61E6D837D0A14D03E914F24059D9B9B8EBD18FB0F0BFCF7EF52435AB95C7CD3D5AA35FCFD6A85639463AA7C464E7E462F18A6D983E670D7E5BB209972E67492739559D1A15316BDC5B28532A54';
wwv_flow_imp.g_varchar2_table(282) := '3AC5D426CD58814143BE90CE202FA380ED694766E4FB9CBAEB0EC061956EAE68873E2ABD334444640E83EEEE864FDE7E483A833C584E6E1E1E786A187E9DBF4E3AA5C4D4AF5D093D3A37439784C66854AF2A0CC3BD1E07F54F1793D3B174F50E2C58B605';
wwv_flow_imp.g_varchar2_table(283) := 'BF2DD9E41197385F4DE3FA553163CC1B080FE399DFEBC9CEC945D32E8371F4F819E914F23E47D38FCCA894DF8BAEFB1337A44AEFAA16C3E7409EDD2EBD33444424AC6AA568AC99FD29EF69A41267B73BF0E88B5F61D28C15D22925AE7444083AB66D881B';
wwv_flow_imp.g_varchar2_table(284) := 'DA36448BF89AA85421523A295F995939D8BAF320566FDC8D45CBB762CBCE03B0DB1DD25925AA55D3DA983AF21504070548A798DEB01133F0E6D09FA533C83BA5A41F9E91EF7DC0D71D80B5D6BE1793335246FC3CD76FECA445483A73517AA788884880D5';
wwv_flow_imp.g_varchar2_table(285) := '62C1C229EFA149C3EAD229E4251C0E8D216F7E8F51131648A7B85464D970B488AF8916F1B550B7561CEAD58C133DE368B73B70F8D829ECDA7B0C5B761EC0FACD7BB17DD721E4E4E6491F2A97E9D8B621267EFB22DFFC2B8033E752D0E886C7917129533A';
wwv_flow_imp.g_varchar2_table(286) := '85BC9323FDB0D507987ADDB3B7F90DC0A5009C07FE5CE67FEEA28D18357E0156ACFB1D5A6BE91D2422221779E1F1FE78EDD93BA433C8CB68ADF1CE6713F0C937D3A5534445978B409D9A71A85E250671E5CBA1626C59542C5F0E1563CA38651562AD354E';
wwv_flow_imp.g_varchar2_table(287) := '9F4DC6B1C4B33876E20C8E269EC5D1E367B07BDF31EC3B7802995939D287404CBF1EADF1DD2783E1EB63934E710B8FBFF4357E9E9AEF6358894A8C919713917A7C6EF2F55E93DF001C07E0C83FFFFF070E9FC4A8090B30E197E54849E51A5944449EAC41';
wwv_flow_imp.g_varchar2_table(288) := '9DCA58FACB47B0592DD229E4A5C64E5E8C675E1F01DE92F56FFEFEBE2815168C88F060942E158AD0E000582C160407FEF9008FE0607F6465E72237270FB97979B874390B393979B898928E0BC969B8989C8E8B29E970387862E39F9E7DE466BCF9DC0028';
wwv_flow_imp.g_varchar2_table(289) := 'E5DEF768BBCA8EDD87D1BECFF3FC5A2251863DAF72EAB1D947AEF79AFC06E07A00765EEB7FCFCEC9C5BCC59BF0ED98B91EB5BC3D1111FDC9D7C786E5333F429D1A15A553C8CB2D5BB313773FFEB1C72EB044E661B11818FAC60378E8AE1BA553DC4AB73B';
wwv_flow_imp.g_varchar2_table(290) := '5EC79A8D7BA433C8CBD90DD5F8F2C1E9DBAEF71A239FCF71DD3BFD7D7D6CE8DBBD15164E790FCB677C84BB6EE9087F3F1FE9FD2622222779F3B9011C7EC9143AB4AE8FF993DE454C6429E914F2604181FE983AF2150EBF85347DEE1A0EBF640A8676147B';
wwv_flow_imp.g_varchar2_table(291) := '11AC76000AB504634A6A06C64D5B86D11317E2E09124E96340444445D4A6791DCC19F7B6DB3FA2853CCBE9B3C9B8F7C94FB16EF31FD229E461AA568AC6F86F5F40AD6AE5A553DC4A66560E9A74198C1327CF49A7104143F7CB383CE397EBBD26BF33C085';
wwv_flow_imp.g_varchar2_table(292) := '5E59212C34084F3CD00B5B177F858553DE43DFEEAD78DF1811919B090CF0C3D71F3EC6E1974C27B26C38E64E781BCF3CDC573A853C48D70EF158F6CB871C7E8BE0C32FA770F825D35040687EAFB1E6F3BF176BBDF73F97F1AF89D367933169C672FC306E';
wwv_flow_imp.g_varchar2_table(293) := '3E1293CE4B1F172222CAC7C76F3EE016CF2325EF64B558F0F60B77A15EAD383CF9CA37B87C395B3A89DC94520A4F0DEA83379F1BC037FC8A60F7DE63F87AD42CF0C89169682330BF97E47709743F00D39CD5939B67C7BCC51B3172FC02AC5ABF8B8F5222';
wwv_flow_imp.g_varchar2_table(294) := '2232A1EE3734C5C4112F49671015C8AE3F8EE2DEC19FF2B62B2AB4D21121F8FED3A77043DB86D2296EC96E77A063BF97B07DD721E914A2BF69E0C5F443BF0CBDDE6BF21B80070018571271878E9EC24F5397E0A7C94B7031255DF0301111D15F4A850763';
wwv_flow_imp.g_varchar2_table(295) := 'DDBC612857264C3A85A8C032B372F0F627E3F1ED98B9D229E426125AD7C7771F3F81A8B211D2296EEBCB91B3F0FA873F496710FD2FA5DE4E3B38EDADEBBEE47AFFA3D6FA7E00A34AB2312B3B17F3976EC6373FCEC186ADFB5C7F908888E86F3F0D1F829B';
wwv_flow_imp.g_varchar2_table(296) := '6E6C299D415424B3176EC0E057BEE31BEB744DBE3E36BCF2D46D18FCD04DBCE4B9188E279E458BEECFE2D2E52CE914A2FFA1A086A61E9AF6E2F55E93DF2258C5BA07B820FC7C6DE8D3AD25164E790F4BA67F803B6F4E809FAFCDA5078A8888803BFAB6E7';
wwv_flow_imp.g_varchar2_table(297) := 'F04B6EAD5797E65833E713B46D51573A854CA866D5582C9DFE019E7EB80F87DF621AFCDA080EBF644A1AF0CFEF35E203F0959A34A8866F873E8103EB47E18B771F46CDAAB1AEDC3C1191D78A8E2C850F5FBB5F3A83A8D8A2234B61F6CF6F62C4274F223C';
wwv_flow_imp.g_varchar2_table(298) := '2C483A874CC06AB1E0E987FB60C5AF1FA36EAD38E91CB737E197E558B67A877406D15529AD03F27DCDF5FE47ADF58B003E94DA01874363F9DA9D18357E017E5BBA1976BB432A8588C8631986C2AF63DF40BB96F5A453889C2AE9F4050C797324E62DD924';
wwv_flow_imp.g_varchar2_table(299) := '9D4242E21B54C557EF3F863A352A48A77884A4D317D0AAE71024A76448A7105DCBC4B443D3EFBCDE0BF27B0C52A19F03EC4C86A1D0B14D03746CD3E0BF8F525A81EFC7CDC7C9537C94121191B33C726F0F0EBFE491A2234B61E28817317FE9163CF3FA08';
wwv_flow_imp.g_varchar2_table(300) := '249DB9289D442EE2EFEF8B979EE88F271FEC0D8B25BF0B1EA9201C0E8D475E18CEE1974C4D15E012E8FCCE00BF0FE065E91DB992DDEEC0A215DBF0EDD8B958B1F6773E4A8988A818AA5789C1CA5F3F86BF9F8F740A51894A4DBB84CF46CCC0B73FCE4576';
wwv_flow_imp.g_varchar2_table(301) := '4EAE740E95A06E1D9B60E81BF7A3426C59E9148FF2F9F733F1E6D01279380C91F3682C4C3B3CBDEBF55E92DF00FC118017A4F7E35AF61D3A8951E31760E28C15484BBF2C9D4344E456AC160B164F7B0F8DEA55914E217299FD874EE295F7C762D18A6DD2';
wwv_flow_imp.g_varchar2_table(302) := '29E4640DEB56C647AF0F448BF89AD2291E67C7EEC3E874CBABC8C9CD934E21CACFEAB443D3DA5EEF05F90DC043013C2FBD17F9B99C998DA9B35661E48485D8B9E788740E11915B7879F0AD78E9C9FED2194422162EDF8A57DE1F8B034792A453A898CA95';
wwv_flow_imp.g_varchar2_table(303) := '09C3EBCFDE81013777E0EACE252033331BEDFABC88FD874F4AA71015C496B483D39A5CEF05F90DC01F03784E7A2F0A63FBAEC3F871F2224CFE75153233B3A57388884CA9419DCA5832ED7DD8AC16E91422310E87C6AC05EBF1D627E371E4F819E91C2AA4';
wwv_flow_imp.g_varchar2_table(304) := 'F0D0203C726F773C3EB0278283F2BDED8F8AE8E9D7BFC78F93164967101590FE23EDE0F4DAD77B85C70DC07F494DBB8419F3D6E1DBB173B1F760A2740E119169F8F9DAB07CC647A855ADBC740A9129E4E6D9317EDA327C347C2A17CA720381017E78E8AE';
wwv_flow_imp.g_varchar2_table(305) := '1BF1ECC37D101A12289DE3D116ADD886FE0F7DC03577C89D1C4C3B38ADDAF55EE0B103F05F1C0E8DA5AB7760D4840558B07C2B1FA544445EEFC3D706E2D17BBB4B6710994E56762E464F5C88AF46CD46D2E90BD239F40FA1218178E8AEAE78E2FE5E080F';
wwv_flow_imp.g_varchar2_table(306) := 'E5339E4B5A62D279B4EBF3022E24A74BA710159CD647D30E4DAF74BD97E437007F026088F47E38CBA9B3C9983C730546FC3C9FFFB01191576AD7B22E668D7D034AF13E39A26BC9CDB363EEA28DF862E42C6CDD79503AC7EB958F298307EFEC8281B777E6';
wwv_flow_imp.g_varchar2_table(307) := '195F17C9CEC9C58D77BCC1AF7F7243FA44DAC1E9D77DF0B7570DC07FC9C9CDC39C851B316AC242ACDEB8473A8788C825428203B06ECE27888D2E2D9D42E416B4D658B66627BE1C391BCBD6EC94CEF13A0DEA54C2E0077BA34FB716B05AB85E812B0D7E75';
wwv_flow_imp.g_varchar2_table(308) := '04C64E59229D415414496907A7C65CEF05F90DC09F0278567A2F4AD281234918376D19C64E5E82E4543ED89B883CD7888F9FC0ED7DDA496710B9A583474EE1E7694B316EDA329CBF98269DE3B1FC7C6DB8B163130CBCBD13125AD593CEF14A9366AEC4C3';
wwv_flow_imp.g_varchar2_table(309) := 'CF0F97CE202AAAB36907A796BBDE0BF21B803F03F08CF45EB84256762E66FEB60EC347CFC1EF7F1C95CE212272AA1E9D9A62C2B7A67FAA1D91E9E5E4E661DEE24DF871D262AC58B78B8B033949AD6AE5717B9F76B8F7B61B787FAFA0DFFF388ACEB7BE86';
wwv_flow_imp.g_varchar2_table(310) := 'CCAC1CE914A2A2BA907670EA752F75E3007C151BB6EEC3E8890B31F3B7F5C8CEC995CE21222A96B2A543B176CEA7281D11229D42E4518E9E38835FE6ADC52F73D762D7DE63D2396E27AE7C39DCDCBD15FAF56C853A352A4AE778BD0BC9E948E8FB124E24';
wwv_flow_imp.g_varchar2_table(311) := '9D934E212A8E94D40353C3AFF782FC06E061009E96DE0B29A969973071E64A7C37761E8E9EE0F30189C83DFD3C7C087A75692E9D41E4D18E259EC58C79EB3071C672EC3B74523AC7B4A2234BA177D7E6E8D3AD259A37AACE05F94CC2E1D0B875D00758BC';
wwv_flow_imp.g_varchar2_table(312) := '72BB740A517165A41E981A7CBD1770002E00874363E5FA5D18337931E62CDC883CBB5D3A8988A840EEEEDF115FBDF78874069157397AE20C96AFFD1DCBD7FE8E452BB6E1D2E52CE92431168B817AB5E290D0AA1E6EECD804CD1A56876170E8359B97DE1B';
wwv_flow_imp.g_varchar2_table(313) := '83EFC6CE93CE207286CCD4035303AEF7020EC08574E2E439FC3869317E9EB60CE72EA44AE710115D538598325833FB630407F94BA71079ADCCCC6CACDCB01B4B56EEC0EA8D7BB0F7E009381C9E7DDF7095B828B46C521337B469800EADEB232C948F2E32';
wwv_flow_imp.g_varchar2_table(314) := 'B3EF7EFA0D2FBD3B463A83C85972520F4CF1BDDE0BF21B803F07F094F45E98D19F8B606CC698C95C048388CCC73014668D7D036D9AD7964E21A22B645CCAC4E61D07B17ECB3EACDFB217EBB7EE43961B2F3864B118A856391A2D1AD7448BF81A68D3AC36';
wwv_flow_imp.g_varchar2_table(315) := '1FB5E646162CDF8A3B1FFD1876BB433A85C8591CA907A65CF7B969F90DC05F00182CBD176677E04812C64F5F8E3193172325F592740E11119E7CA017DE79F12EE90C22CA479EDD8EC4A4F3D87BF024B6EF3A8CBD074F60EFC144EC3B78D2746FAE878604';
wwv_flow_imp.g_varchar2_table(316) := 'A256B5F2A859351635ABC5A261DDCA68502B0EFEFEBEC5FFE4E472DB771D46F7016FE17266B6740A9153A51E986200B8E60F500EC04E94712913937F5D8551131661CFFEE3D23944E4A56A568BC5F25F3E849FAF4D3A85888A2835ED128E259EC3B1C4B3';
wwv_flow_imp.g_varchar2_table(317) := '7F7E9CF8F33F8F279DC3C5E4745C484E77FA59BB52E1C188080B464C5429548C2D8B8AE5CBFEF99FB1651157BE2C5792F720274E9E43A75B5FC3997329D229444EC70158C8FA2D7B316AC222CC5AB0818F52222297B1592D583CF53D34A853493A85884A';
wwv_flow_imp.g_varchar2_table(318) := 'D8C5943F07E10BC9E9484E4E47764E1E72F3F2FE5E742B35EDF2DF6791434302A114E0EFE70B5F1F1BAC5603A5C24310111E8C88B020940A0FE1E2545E222DFD32BADCFE3AF61E48944E212A09C5BE04FA4B004F4AEF853B3B772115E3A62DC38F9316E3';
wwv_flow_imp.g_varchar2_table(319) := 'F8493E578D884AD6AB4FDF86E71FBB593A8388884C283B2717FD1FFC102BD7EF924E212A29C55E048B67809DC4E1D058B4721B464D5888C5ABB67BFC0A9044E47A4D1A54C5FC89FF81D56229FE272322228F9267B7E39E273FC3BC259BA553884A5266EA';
wwv_flow_imp.g_varchar2_table(320) := 'FE29D77D0C92359F4FC06B779DC43014BA263446D784C63875E622C64E5D8A511316E2DC8534E93422F200FEFEBEF86EE8131C7E8988E85F1C0E8D475FFC06F3966C413EE7BF88DC9D3DBF1718F9FCEF1C804B4054B908BCF4C42DD8BDE21B8CF9E26924';
wwv_flow_imp.g_varchar2_table(321) := 'B4AA07A5F8C388888AEE3FCF0F40D5B828E90C22223219AD3586BC3D0A5367AF914E217285BCFC5E90DF1960F77D309D1BF0B159D1E7C616E873630BEC3F9C8409BF2CC798C94B9092C647291151C125B4AA8707EFEC2C9D41444426F4E62713F0E3A4C5';
wwv_flow_imp.g_varchar2_table(322) := 'D219442EA2F23D039CDF3DC0AF0178477A37BC49C6A54C4C9BB31623272CC4AEBDC7A47388C8E4424302B176D650C44495924E21222293F9E0CBA9F8E8EBE9D219442EA4CFA6EE9F52EE7AAFC8EF12689E0176B1A0407FDC77DB0D58FDEB479837EE4DF4';
wwv_flow_imp.g_varchar2_table(323) := 'EBD10A3EB6FC4ED41391B7FAF88D811C7E8988E85FBE1A3587C32F791D0D55EC4BA0F3FD0454725A35AD85564D6BE1DC85348CFF65397E9CB418C712CF4A67119149F4ECDC14B7F66A239D41444426F3F90FB3F0D62713A433885C4E156011ACFC2E817E';
wwv_flow_imp.g_varchar2_table(324) := '02C057D23B427F72383456AEDF8531939762F6A28DB0DB1DD249442424B24C18D6CEF918116141D229444464221F7E350D1F0EE7995FF25A4753F74FAA74BD17F031486EC43014125AD54342AB7AFF7D94D2328C1CBF10E72FF2514A44DEE68B770771F8';
wwv_flow_imp.g_varchar2_table(325) := '2522A2BF69ADF1CA073FE3DBB1BF49A71049CAF70AE6FCCE00DF0F6094F45ED0B5E5E4E661DE92CD1833652996AFFD5D3A87885C60E06D3760D8DB0F4A6710119149D8ED0E3CFDE648FC3C6D99740A91B43F52F74DAA7DBD17E43700DF05E067E9BDA082';
wwv_flow_imp.g_varchar2_table(326) := 'D97FE8247E9CBC043F4F5B864B97B3A47388A804548C2D8BD5BF7E88A0407FE91422223201BBDD81275E1D814933574AA71099C1D6947D93E2AFF782FC5681CE96DE032AB8EA5562F0C12BF760CF8AAF31F4F5FB50A36AAC7412113991C562E0BB8F1EE3';
wwv_flow_imp.g_varchar2_table(327) := 'F04B44440080ACEC5CDC337818875FA2FF7729BF17E43700674AEF01155E4870001E1AD015EBE77C8C65D3DFC77DB7DE005F5F9B74161115D393F7F7448BF81AD21944446402C9A919E8F7E00798B764B3740A9169A802CCAFF95D02DD11C012E91DA1E2';
wwv_flow_imp.g_varchar2_table(328) := '3B7B2115137E59811F272DC6F193E7A47388A8906A568DC5B2E9EFC38F6F66111179BDA327CEE2D6411FE1C09124E9142293D13353F64DEE7BBD57E43700B700B04E7A37C879FE7C94D26E8C9DB204B3176DE2A39488DC808FCD8A2553DF41DD9A15A553';
wwv_flow_imp.g_varchar2_table(329) := '888848D8E61D0771E7639FE0DC053E0584E89FB4C6C4D4FD13EFBCDE6BF27B0CD265E99D20E7FAF3514A7591D0AA2E8E1C3F839FA62EC5B8E92BF8282522137BF9C95B38FC121111662FDA8441CF7F8DACAC1CE9142253524AE73BBFE67706B82A8003D2';
wwv_flow_imp.g_varchar2_table(330) := '3B42252B3B2717BF2DDD8AB1539660F9DA5DD239447485668DAA63DEB83760B1E4B76403111179B2113FCFC72B1FFC0C87434BA7109997C65729FB270EBEDE4BF21B80A3019C94DE0F729D9D7F1CC5E8898B3175CE1A5CCEE422E0449202FC7DB16AE687';
wwv_flow_imp.g_varchar2_table(331) := 'A85CA19C740A111109C9C9CDC38BEF8EC198294BA553884C4F690C4DDE37F1C5EBBD26BF530ABC04B459F6970000753E49444154DACBD4AF1587CFFFF320F6AEFC06C3DE7E10B5AB97974E22F25AEFBE7817875F22222F76EACC45F4BCE71D0EBF4405A4';
wwv_flow_imp.g_varchar2_table(332) := '952AF62AD03EE0B380BDDEF6DD4730E2E7F9983E772D72F3ECD239445EA143AB7A983EF22528A58AFFC98888C8EDACDBB217F73DFD25CE9E4F914E21721B5AE1C5D43F260EBDDE6BF2FDCD4A6B9D8BFC17CB222F70F67C0A26CC5C85D11317E344D279E9';
wwv_flow_imp.g_varchar2_table(333) := '1C228F151A1C80B5B33E42746484740A111109183365295E78670C4F3C101592029E4CDE3B61783EAFB93EAD751A8060E99D21F3703834566ED88DB15396F2514A442560D4674FE2E66E2DA4338888C8C5B2B272F0ECDBA33171E62AE91422F7A4F5FD29';
wwv_flow_imp.g_varchar2_table(334) := 'FB26FE78BD9714E4CCEE257000A62B18864242CBBA48685917878E9DC68F939660C28C95484ECD904E23727B37776FC9E19788C80B1D3C7A0AF70CFE1C7F1C48944E21725F869192DF4B0A7206F820802AD2FB42E6969595835F7E5B8FD1931663CBCE43';
wwv_flow_imp.g_varchar2_table(335) := 'D239446E29AA5C38D6FCFA21C24383A4538888C8857E9EBE1C2FBFFF332E5DCE924E21726F1A1D53F64D5876BD97146400DE0AA091F4BE90FBD8B1E728C64C5E8229B3F92825A282524A61CA77CFA353BB06D2294444E42269E997F1ECDB3F62FADCB5D2';
wwv_flow_imp.g_varchar2_table(336) := '29449EC1824629BB276CBFDE4B0A32002F039020BD2FE47ED23332317DDE3A7C3F6E012FE721CAC7037774C6276FDC279D4144442EB26AC31E3CF2D2B7483A7D513A85C883382AA5EC9D74F47AAF28C8003C13C04DD2BB42EE6DFBEE2318316E01A6CF5D';
wwv_flow_imp.g_varchar2_table(337) := 'C7150D89FE21AE7C59AC9EF13E0203FCA4538888A884E5D9EDF8F4BB5FF1F17733B990289193A9EC9CB0E4C35353AFFB9AFC3E89D67A0C807BA577863CC3E9B3C9183B7519C64E5B86536792A57388C4592C067EFBF975346D584D3A8588884AD88123A7';
wwv_flow_imp.g_varchar2_table(338) := 'F0F08BDF60DBAE23D229449EC891F247351BF0D675DF592AC800FC258027A5F7863C8BC3A1B16AC36E8C18B7100B966F83D65A3A8948C490876FC2AB4FF597CE2022A2129467B763D4C4C57867D814AE8F4254729293FF181F91DF8B0AF218A434E93D21';
wwv_flow_imp.g_varchar2_table(339) := 'CF63180AED5BD645FB967571F8F819FC3C6D397E9EB60C1753F82825F21EF56A56C4F38FF595CE2022A212F4FBDE6378EAF591D8BE9B677D894A584A415E549033C0CF03182ABD37E4F9B27372317FD9568C99B20C2BD6ED92CE212A51BE3E562C9EFC1F';
wwv_flow_imp.g_varchar2_table(340) := 'D4A951413A8588884A4056560E3EFA660686FF3897F7FA12B984DA96FCC7B8C6F9BDAA206780530BF01AA262F3F5B1E1A6AECD7153D7E6D8BEFB08C64E5D86A97C941279A8579FEACFE19788C843ADDDBC174FBD3112878E9E964E21F21A4A3B0AB4C050';
wwv_flow_imp.g_varchar2_table(341) := '41CE00DF066092F40E91774A49BB8489335662F4E425FC47843C46CBF81A983DF6351846BE3F828988C88D9C3D9F8AB73E9D88C9B3D6707D13221753C08C8B7F8CBFB900AFBB3EADF58D007E93DE21A20D5BF7E3BB9F1760DE922D7C9412B9AD007F5FAC';
wwv_flow_imp.g_varchar2_table(342) := '9CF11E2A5728279D4244444E929B67C7E8494BF0FE97D3909E91299D43E49534D4E8943F7E7E20BFD7F11268721BCD1B5747F3C6D571E65C0A26FDBA1AA3262E46E2A90BD2594485F2C1CB7771F82522F2202BD6EDC68BEFFD84FD8793A45388BC9AD2BA';
wwv_flow_imp.g_varchar2_table(343) := '40978B16E40C706D00BBA57788E89FEC760716AFDE81EF7E5E8095EBF7F0522332BD8EADEB61EA88E7A1142F7D26227277078F9CC2AB43C763D1CA1DD2294404406B3C9DF2C7B82FF27B5D4106E028007C4B8B4CEDC09124FC38792926CE5C85D4F4CBD2';
wwv_flow_imp.g_varchar2_table(344) := '3944FF522A3C186B667E80B2A543A5538888A8182E24A763E83733F0E3E4A5C8B3F3962C22D350B83379F7B889F9BF2C1F5A6B1B80EC82BC96485A76762EE62FDF86EF7E5E800DDBF64BE710FDEDC7CF9EC44D5D9B496710115111655CCAC2A8498B31EC';
wwv_flow_imp.g_varchar2_table(345) := '87D948E39BED44A6A395A363CAEE09CBF27B5D81865AAD75328030E99D222A8CBF1EA53465F61A6466E548E79017BBAD776B7CFBC123D219444454049733B3F1C38445F862E41CA4A45D92CE21A26B50B0D4BDB8676CBEB7EE167400DE0FA09AF44E1115';
wwv_flow_imp.g_varchar2_table(346) := '455AFA65CC98BF0123C62DC4DE8327A573C8CB44950BC79A99EF232C24503A8588880A21332B073F4D5B8ECFBE9F8D7317B8262C91D9E5E5E59549DF3FF17C7EAF2BE800BC06402BE99D222A0EAD3596AFDB8DD1939660FEF26DB0DB1DD249E4E19452F8';
wwv_flow_imp.g_varchar2_table(347) := 'E58717D0BE651DE91422222AA0ACAC1C8C9DB61CC37E988DB3E739F812B989BCE43D557C81B7F2FD05BF208F4102807C276922B3534AA143ABBAE8D0AAEE9F8F529AB51A23272CC6C9D317A5D3C8430D1AD099C32F11919B387F311DE367ACC0773F2FC4';
wwv_flow_imp.g_varchar2_table(348) := '997329D239445438E70B32FC02053F033C1240BE0F152672377F3E4A69271FA5444E57B55214564C7B07FE7E3ED2294444741D4713CFE2FB718B3076EA32AE1942E4B6F4F6E43DE31A15E495053D037C4E7A97884A82C562A06BFB86E8DABE210E1D3D8D';
wwv_flow_imp.g_varchar2_table(349) := '713356E2A769CB909CCA452EA8E8AC160BBE7D7F10875F222213DBBEE728BE1FB71053E7AC85DDF1DF13477CE60991BB3A5BD017F21268A2FFAA121789379FB915CF3F7213A6CD5DF77FEDDD75985465FFC7F1CF7D663B880DBABB0414115452B15B0103';
wwv_flow_imp.g_varchar2_table(350) := '4531C02EEC5C0B111B45E91490EEEEEEEE86DDA57667B67376E6DCBF3F507FFA08B2313BDF89CFEBBAF67A9EC76777CEFB1C89F9CE39E73E18396919761F38259D455EE8B567EE44ABE675A5338888E87FE4E71760E6E2CD18F9FB326CD975543A87885C';
wwv_flow_imp.g_varchar2_table(351) := '469D2FEC77F20C30D1FF080B0D46CFAE9DD0B36B27ECDC7FF28F4729ADE765515428CD1BD7C41BCFDE2B9D4144447F73F8F8194C9CB516BF4D5F0D5B6AE61FFF94A77B897C8646A107E0C2DE037C3B8079D2FB452425232B1733165C7894D2A1637C9412';
wwv_flow_imp.g_varchar2_table(352) := '5D5C705000964DFA048DEB57934E2122F27BF9F90558B87207C64C5D89551B2EFB685022F2624AA9576C7BC70C2CCCF7F20C305121948908C5E3DD3AE1B1073A62E586BD1839693916AFDCF9FFF70C1101F8F0D5EE1C7E89880499A6C6E69D473079CE3A';
wwv_flow_imp.g_varchar2_table(353) := '4C9BBF1159D979D24944E40E4E677C61BFB5B067806B03382EBD5F449E24F1AC0D63A6ACC46FD357F139813E2A382800A121C1080B0D4650A005E16121C8CEF9FF3753397976D8ED0E00C05557D4C1A45FFBC23078491D11913B69ADB17DCF71CC58B809';
wwv_flow_imp.g_varchar2_table(354) := 'B3166DC199F37CBC2191BF314CB395F5C06FDB0BF3BD851D80C3016449EF189127B21738306FD9368CFA7D39D66D3D289D43FFC16218A85E251AB5AA5744C5D8B2A8105D161563CB2126AA0C2AC596456C7459C4449741706000222342A5738988E83FEC';
wwv_flow_imp.g_varchar2_table(355) := 'DE7F1233166EC2CC459B117F9AEBB512F9337B90A542D68E5185BA6AB9D0A72AB4D66900CA4AEF1C91273B74EC34464E5A8E49B3D721332B573AC76F458487A059C31AA85FBB32EAD4AC887A352BA16EAD4AA855BD2282830A7BE7071111791287D389CD';
wwv_flow_imp.g_varchar2_table(356) := '3B8E62D9DADD98BD640B8E9F2AF49A3744E4DBF252F68D0D03A00BF3CD451980F703682CBD7744DE203FBF00B3166FC62F631662CFC142DF9240C510186041DD5A95D0A2492DB4B9B201DA5E551FF56A5786C530A4D38888A884AC291958B7E52016ADDA';
wwv_flow_imp.g_varchar2_table(357) := '89852B76203D33473A89883CCF91947D631B14F69B8B32002F067093F4DE11799BCD3B8F62D4A4E598B57833F2FFB85F948A2F3C2C04D75FDD101DDA3441BB6B1AA371FDAA08B058A4B38888C805F2ED0E6CDD7D14CBD7EEC1D2B5BBB1F7508274121179';
wwv_flow_imp.g_varchar2_table(358) := '3A8D6529FBC67429ECB71765001E0DE071E9FD23F256E9993998347B1D86FCB6182713B9B07A6105582C68DAB03A3AB56D8A8ED736C1B5AD1A22289097311311F982ACEC3C6CDB730C9B761CC1C6ED47B069C711E4E5DBA5B388C89B688C4ED937A65761';
wwv_flow_imp.g_varchar2_table(359) := 'BFBD28EF2213A5F78DC89B958D0C43EF1E37E1E987BB60F9FA3D1835693996ACDECD47295D44785808BAB4BB027776B91A3777688188F010E92422222A21D3D4389990842DBB8E62E38EC3D8B4E3080E1F3F0BAD0B75DB1E11D1A514E97EC3A20CC0A7A5';
wwv_flow_imp.g_varchar2_table(360) := 'F78CC8171886429776CDD1A55D739C4B4AC3A4B9EB307CC232BF7F6C43B932E1B8A5534BDCD2B125BAB4BB02E1611C7A8988BC5546562E0E1C49C4C163A771E8D819ECDA7F127B0EC6FFE351724444AEA18B74AF44512E81BE1BC02CE9DD23F245F60207';
wwv_flow_imp.g_varchar2_table(361) := 'E62CD98A51939663C3F6C3D2396E131C14805B3A5D8947EE6D8FCED735E5BDBC44445E243FBF00F167AC883F6DC5A9D3C9883F9D8C43C7CE60DFE1049C3EE7DF1FEA12911B69755BCABED10B0BFBED451980AF06B0457AFF887CDD81A3891835690526CF';
wwv_flow_imp.g_varchar2_table(362) := '5DEFB38F526AD6B03A7ADCD7015DEFB81651E522A4738888E86F0A1C4EA4A66521252D0B29E9594849CD8235350367CEA7223E3119F1672E0CBCE792D2A4538988A06036B1ED1D77A0F0DF5F485AEBCA00CE48EF2091BFC8CACEC394791B306AD20AEC3B';
wwv_flow_imp.g_varchar2_table(363) := 'ECFDAB6096890845F7BBAE438FFBDAA379E39AD23944443E272D231B43C72F455EDE8545A482830311121284F4F46C00407E8103B9B917FEBFCCEC5C389D261C4E1359D9B9C8CAC9FB63D0CDF4D90F5F89C827992979916138FA537E617FA02803B00120';
wwv_flow_imp.g_varchar2_table(364) := '0F40A0F45E12F99B5DFB4F62CC9455983467BDD7AD8E59BB7A053CD6B5239EE8D6096523C3A47388887CD2965D47F1EC3B43F9940122F237A752F68EAE55941F28F4000C005AEB7800D5A5F792C85FFDFFA3949678FC9B9CB657D547EF1E37E1CE2EAD60';
wwv_flow_imp.g_varchar2_table(365) := '310CE91C22229FE4709AF86EE81C7C3378369F2A4044FE476359CABED1857E063050F401780380B6D2FB49E4EF4C5363E9DADD1835790596AEDD0DD3F48C47481886C23D37B7C6EBCFDC8526F5AB49E71011F9B4130949E8F3CE106CDB735C3A85884888';
wwv_flow_imp.g_varchar2_table(366) := '1A9AB267549FA2FC44511E8304F05148441EC130146EEED00237776881B349A918376D35464C5A0E6B4A86488F520AB7746881B75FB817CD1BF1FE5E22A2D2366BF116BCF6C968A467E648A7101189D1308F15F5678A7A06F80700AF48EF2811FD5BBEDD';
wwv_flow_imp.g_varchar2_table(367) := '81394B2F3C4A69E38E236ED9A66128DC79632BBCF5DCBD685CAFAAF4212022F279E99939E8FBD918CC58B8593A8588489CD278C0B677F4F422FD4C51BE596BFD0A801FA4779488FEDBBEC30918357905A6CCDB88ACECBC52D9C6F55737C4E76F3D8CE68D';
wwv_flow_imp.g_varchar2_table(368) := '6A48EF2E11915FD8B0FD309E7B6F1812CED8A45388883C82D6CE16A97BC7EE2ECACF147500BE0BC06CE91D25A2C2C9CACEC3F4059B3062D272EC3BE49A472955AB1C8DF75EBC0FDDEEBC164A15E98F1022222A863F17BAFA76C81C2E744544F43786191A';
wwv_flow_imp.g_varchar2_table(369) := '99BCEF97ACA2FC4C5107E02600F649EF281115DDAEFD273166EA2A4C9EB3A1588F520A0F0BC60B8FDF8A579EBC1DC1C17C1A1A11913BC49FB1E2B9778761939B6E6D2122F21EFAAC6DCFE82A45FDA9A20EC0A100B28BFA7344E439926D19183F630DC64C';
wwv_flow_imp.g_varchar2_table(370) := '5D59E8CBE81EB8BD2DBE78EB21C4449591CE2722F21B93E6ACC7DBFD7E2BB55B598888BC99D2586BDD3BAA7D917FAEA83FA0B53E0DA0C89336117916D3D458B3F900C64E5D85B94BB75DF4B2BA4AB1E530E0FD4771FB0D5749E71211F98DCCAC5CBCD5EF';
wwv_flow_imp.g_varchar2_table(371) := '374C99BB413A8588C8938DB2ED19F564517FA8A88F41028063E0004CE4F50C43A163DB26E8D8B6C9FF3F4AE9F7E5B0A566C230141EBDBF033EEDFB2022C243A4538988FCC6B63DC7D1E79DA1389990249D4244E4E1D4E162FD54517F406B3D0AC013D2BB';
wwv_flow_imp.g_varchar2_table(372) := '4B44AE67B73B306BC916D4A95111ADAEA8239D4344E4371C4E13DF0E998DEF86CDE54257444485A0A0EFB6EE1E3DA7A83F579C33C0C7A57796884A47505000BADD71AD740611915F49386BC373EF0EFBDB33DCB9D40A11D1E518A6B9BF383FC701988888';
wwv_flow_imp.g_varchar2_table(373) := '8848C8ACC55BD1F7B33148CBC8914E2122F226B9497B6B9F28CE0F16F71E60222222222AA6CCEC5CBCDD6F3C2673A12B22A2E23800C415EB7E119E012622222272A36D7B8EA3CFBBC3B8D0151151716955ACCB9F81620CC04AA924AD7506003E10948888';
wwv_flow_imp.g_varchar2_table(374) := '88A8909CA68941A317E1CB413350E0704AE71011792F05F70DC07F3801A085F47E13111111798384B3363CF7FE706CDCFEC7533BB8CE151151F1A9E22D8005147F003E060EC04444444497356DC126BCF9C56FC8C8CA05275F22A292330CB5AFB83F5BDC';
wwv_flow_imp.g_varchar2_table(375) := '01F8A0F44E1311B98369EA3FDEB45E90976F477E7E0182830311121C84008B8188F010E94C22F24099D9B978ABDF784C99B7513A8588C897E425D7CD3881EDC5FBE1E20EC0C53EE54C44E409B273F271F4E439249CB5E1CCF9549C3E9F82734969389394';
wwv_flow_imp.g_varchar2_table(376) := '8A8CCC1CA467E4203D331799D9B9857ABDC0000BA2CA45FCF5151B5506B1D16550BD4A346A568D418D2A31A85135066523C3A4779D88DC60CBEE6378F6DD613875DA2A9D4244E45334701053A6147B2185E20EC0C53EE54C44E44E0EA78943C7CE60E7FE';
wwv_flow_imp.g_varchar2_table(377) := '93D8773801878F9FC5D193E790782EC5A5DB29703871DE9A8EF3D6F4FFFCBEE8F29168DAA01A9AD4AB86C6F5AB5EF8EFF5AB2128B0B87F1C139127719A26BE1B360FDF0E9D0387B3584FE82022A2FFA050FCCB9F2FFC7C3168AD43006401B0481F0022A2';
wwv_flow_imp.g_varchar2_table(378) := 'BF4BCBC8C186ED87B16ECB21ECD87702BB0FC62337CF2E9DF59F828303D1B2714DB46E510F6DAEAC87D6CDEB22262A523A8B888A28FE8C15CFBF3F021B771C914E2122F2594AE34DEBEE11DF14FBE78BFB835AEB43001A481F0022F26FF60207366C3F82';
wwv_flow_imp.g_varchar2_table(379) := '65EBF662DDD643D87B28014ED3BBCFBA28A5D0B44135DC705D53DC706D535CD3B21ECF101379B8E90B37E38DBF16BA2222A252A37417DB8E11CB8AFDE3C5FD41ADF57400F749EF3F11F99F94F42C2C5BBB170B57EDC2F2F5FB0A7D9FAEB70A0F0B46A7B6';
wwv_flow_imp.g_varchar2_table(380) := '4D70D78DAD704BC7E6880C0F954E22A23F6466E7E2ED2F2762F2BC0DD22944447EC16E316233B70D2DF6020B2519803F03F081F4012022FF909B67C782953B3175C126AC58BF0F058E62AF7DE0D5828302D1F9DA26B8E7A6AB715BA7965C819A48D0D63D';
wwv_flow_imp.g_varchar2_table(381) := 'C7D1E7BDE13895982C9D4244E41F14126C3B86D728C94B94E49A3A2E8445446EB174ED1E3CFFC148A4A46749A788CBB71760E1AA5D58B86A17C2C38271EFCDADD1E3DE76B8A6455DE93422BFE1344DFC306201BE1E329B0B5D1111B9932EEEC38FFE5F49';
wwv_flow_imp.g_varchar2_table(382) := 'CE005F0160B7F4312022FF604DC9C46F33D760CCD4D548386B93CEF1380D6A57C6A3F7B5C723F75C8F7265F8A825A2D29270D686E73E18818DDBB9D0151191BB29E013EBCEE171257C8DE2D15A07E3C24AD05C998588DCC63435D66C3988B1D35763EEB2';
wwv_flow_imp.g_varchar2_table(383) := '1D5EBFE095AB858705E3815BDBE0D91E37A241EDCAD239443E65F6D26DE8FBC56F484DCF964E2122F24F5ADF6BDB397C56495EA2D803F085EDEB03001A491F0722F24F271393317ADA6A4C98B916297C43FA0F86A17073FBE678B1E7CD687B657DE91C22';
wwv_flow_imp.g_varchar2_table(384) := 'AF96959D8777064CC4EF73B8D015119124D3503553B70D8D2FC96B9474009E06E07EE9034144FECD6E7760C1AA5D183B7D35566D3A209DE371DAB6AC87B79FBB1BED5BF3F34AA2A2DAB1EF24FABC3F1CC7E393A4538888FC9CB6D9760C8F29E9AB947400';
wwv_flow_imp.g_varchar2_table(385) := 'FE04C047D2878288E84FBB0FC663D4949598BA603372F3ECD2391EA5639BC678ABCF5D68D3B29E740A91C7739A267E1CB510030673A12B22220FB1DCB663D88D257D91920EC0DD014C923E124444FF2B333B0F33166DC6B0DF57E0C0D1D3D2391EA5639B';
wwv_flow_imp.g_varchar2_table(386) := 'C6E8F7E643685887F708135DCCE9F32978EE839158BFEDB0740A1111FD412B7C93B27DD89B257D9D920EC08D01EC973E18444497A2B5C69A2D87306AEA4A2C58B9936772FE10141880A71FEC8CBE4FDF81B2915C359AE84F33976CC51BFD7E435A468E74';
wwv_flow_imp.g_varchar2_table(387) := '0A1111FD8DD2FA11EB8EE1134BFC3A25F961ADB505403A8070E903424474396793D23076FA1A8C9BB916E792D3A4733C4274B9087CF0D27D78F49EEBA15489FE4A20F26AD939F978F7EBDF3161F67AE9142222BA0887C3AC93BE7BF88992BE4E89DFED68';
wwv_flow_imp.g_varchar2_table(388) := 'ADD702B85EFA8010111596D334B16CDD5E0C99B81CAB371F84D65A3A495CDB96F5F0DD078FF2D149E49776EE3F85DE5CE88A88C89325D9B60FADE88A1772C5003C10C04BD2478488A8388EC727E1B7596B316EFA5AA466F8F7A39402032C78EED12E78A7';
wwv_flow_imp.g_varchar2_table(389) := 'CFDD080AE223DEC9F769AD316CD20AC4FD300DF60287740E11115D8AD2B36CDB86DDEB92972AE90B68AD9F00304AF890101195484E6E3EA62DDC8C11535661EFA104E91C514D1B54C390CF9F42A3BA55A453884ACDE9F3A978FEC39158C785AE88883C9F';
wwv_flow_imp.g_varchar2_table(390) := 'D2EFD9B60DFBD2252F55D217D05A3707B04BFA981011B9CAAE03A73066C61A4C99BFC96F1FA5141C1488B7FBDC85171FBB1986C17B83C9B7CC5DBE03AF7D3ECEEFAFFA2022F21ADABCD1B67DF87257BC942B06E00000190042A58F0B11912BD95233317E';
wwv_flow_imp.g_varchar2_table(391) := 'F67A8C99B606A7CE58A57344DC785D53FCF4F1E3A8105D463A85A8C4B273F2F1DE3793309E0B5D11117913530704954FD9F453862B5ECC251FEB6BAD370268237A5888884A89696A2CDFB00F23A6ACC2B2F57B619AFEB5685685E83218D9BF37DA5E594F';
wwv_flow_imp.g_varchar2_table(392) := '3A85A8D876EE3F85DE1F8CE0425744445E4641EFB66E1BDAC275AFE7025AEB1F00BC2275508888DCE56C521AC6CD5C8B915357C19A92299DE336011603EF3D7F0F5E7EFC16E914A222F96BA1AB1FA773A12B22222FA41586A66C1DD2C755AFE7AA01F861';
wwv_flow_imp.g_varchar2_table(393) := '0013C48E0A11919BD90B1C58B06A17C64E5F8B559B0F48E7B8CD7D375F8D1F3F7C0C61A1C1D22944979564CBC08B71A3B17CC37EE91422222A26ADD453295B078F74D5EBB96A00AE03E098D85121221274E4E4398C9EB61ABFCD5E87EC9C7CE99C52D7B4';
wwv_flow_imp.g_varchar2_table(394) := '7E554CFCE14554A9505E3A85E892E6ADDC89D73E1F8794742E744544E4CDB4054D53360D71D927992E5BDA536B7D0E804B1E4E4C44E48D32B3F33063F1560C9FBC12FB8F9E96CE29559563CB61E20F2FA059836AD22944FF90975F80CF7E9E8921BFBB64';
wwv_flow_imp.g_varchar2_table(395) := 'B150222292956EDB5A290A88335DF582AE1C806701B85BE4B0101179985D07E23174D20A4C5FB405050EA7744EA988080BC1F02F9F4697EB9A4AA71001B8F0FBAEF70723708C0B5D1111F9040DCC4FD93AF80E57BEA6E1C2D7DAE4E6E34144E4B15A34AE';
wwv_flow_imp.g_varchar2_table(396) := '8141718F63E79C2FF0769F3B5139B69C7492CB65E5E4A1E71B833163C956E914F273A6A9F1D3D8C5B8EDA9AF39FC1211F910A5D56A97BFA6AB5E486B7D0380656E3D2244445EC2E134B170F52E8C9ABA1AABB71C82D6BEF328258B61E0C70F1FC34377B6';
wwv_flow_imp.g_varchar2_table(397) := '954E213F7436390DCF7F3C1A6BB61C924E21222217D386BE2E65F3900DAE7C4D570EC06100520104B9FBC0101179931309C918376B2D7E9BB5CE6716E8514AE18BD7BBA1F7839DA553C88FCC5BB913AF7DF19BCFFC3E2222A27FC8B1E5D8CA63DF14BB2B';
wwv_flow_imp.g_varchar2_table(398) := '5FD46503300068AD370268E3D6C34244E4A572F3EC98B6780B464D5D8D5D07E3A5734A4C2985CF5EED8A671FBE413A857C5C4E6E3EDEFF7E2AC6CD5C2B9D424444A567996DCBE02EAE7E51570FC00300BCE9B6434244E423761D8CC798196B3165C166E4';
wwv_flow_imp.g_varchar2_table(399) := 'E6B9F4834EB7524AE19BB71FC2E3F7B7974E211F75E0D819F4FE60240E1C3B239D424444A548031FA76CF9F55357BFAEAB07E0BB00CC76DB512122F23129E9D998307B3D464C5D8584B329D239C562180A833FE985FB6FB95A3A857C88696AFC327E29FA';
wwv_flow_imp.g_varchar2_table(400) := '0D9E037B81433A8788884A99023A59B7FCBAAA145ED775B4D6E50158E1DAD5A58988FC8E696A2C5DBF173F8C5E84CDBB8F4BE714596080056306F4C6CDEDAE904E211F909C9281973E1D87A5EBF749A71011917BE4870684944FDCF07DAEAB5FD8A50330';
wwv_flow_imp.g_varchar2_table(401) := '0068AD770168EE96C34244E407D66E3B8CFE43E660E3AE63D22945121C148819835EC135CDEB48A790179BBF6A175EEB371EB6B42CE914222272130DAC49D9FC6B87D278EDD23853BBA6948F0711915F69D7AA01E60EED8B29035FC2554D6B49E7145ABE';
wwv_flow_imp.g_varchar2_table(402) := 'BD008FBD3518A74E5BA553C80BE5E6D9D1B7FF44F47C6B08875F22223FA3145C7EE9F35FAFEDEA17D45A3F00606AA91E1122223FB678ED5EBCF3CD64C49FB549A7144AFD5A15B160F81B281719269D425EE2C0B133E8F3E128ECE7425744447E492B7573';
wwv_flow_imp.g_varchar2_table(403) := 'CAA6414B4AE3B54B63002E0F201980A5B40F0C1191BFCACDB363E0D82518386E09F2ED05D23997D5A175434CFAE1050406F0AF06BA34AD357E9DB01C9F0F9E0DBB9D0B5D1111F927650FC80B8D3ABFFB9B5279C8BBCB076000D05A6F06D0BA548F0B1111';
wwv_flow_imp.g_varchar2_table(404) := 'E164A215AFF61B8FB5DB0E4BA75C569F073BE38BD7BB4A6790874A4EC9C44B9F71A12B2222C20ADBE65F6E28AD172FADD59A4BE574351111FD53AD6A3198FEF3CB18F0E683080F0D96CEF94F4326ADC08C25DBA433C8032D5CB31BED1EFE9CC32F111101';
wwv_flow_imp.g_varchar2_table(405) := '504B4BF5D54BE345B5D6370058569AE14444F44FA7CED8F0DCC7A3B1798FE73E36293C34188B47BE8986B52B4BA79007C8B717E0D341B33074F24A68ADA5738888C803286DB4B66EFE796BA9BD7E69BCA8D63A18400A00AE784244E446050E27BE1C3217';
wwv_flow_imp.g_varchar2_table(406) := '3F8F5F0AD3F4CC81A261ED4A5832F22D84850649A790A0BD8713D1FBA3D1387CF29C740A1111790E9B6D536C0520CE2CAD0D94CA25D04AA97C006B4BEDB01011D145050658F0D10BF7E0B7017D502622543AE7A20E9D3887F77F98269D4142B4D6F865E2';
wwv_flow_imp.g_varchar2_table(407) := '72DCFCD4371C7E8988E81F94C6B2D21C7E81D2BB0718001694663811115DDACDED9A61D9E8B7D0B86E15E9948B1A376B1D16ADDD239D416E664DCDC4C37D07E3A31FA7C35EC0559E8988E89F4CA3F4D7922ACD01787E69C71311D1A5D5AE168B05C35EC7';
wwv_flow_imp.g_varchar2_table(408) := '0D6D1B4BA75CD4ABFD26C09696259D416EB268ED1E5CFFF0175CE88A88882EC984B35417C0024AE91EE03F69AD0F03A85FDA3B4144449756E070A2EF57133161EE46E9947FB9BD43738CFDAAB7740695A2BCFC027CF4D30C8C9ABE860B5D1111D17F396C';
wwv_flow_imp.g_varchar2_table(409) := 'DB38A861696FA434CF0003C0DCD2DE012222FA6F810116FCF85E0FBCF1E46DD229FF327FF56ECC58BA5D3A834AC9DE23A77163AFAF3072DA6A0EBF444474196AB13BB61250CAAF3F1FC06BEED8112222BA34A514DE79E60E44848520EEE799D239FFF0FE';
wwv_flow_imp.g_varchar2_table(410) := '0FD3D0B94D23948BE483037C85D61AE366ADC7FB3F4E476E9E1DA57CC1191111F90085D2BFFF1728FD33C0AB0164BA63478888E8F25EEC7123BE7EB33B94F29C8124C996812F06F382215F614DCDC4236F0EC1EB5FFDFEC7F04B444474597653AB95EED8';
wwv_flow_imp.g_varchar2_table(411) := '50A90EC04A293BDC34C9131151E1F4BABF3D3E7DF93EE98C7F1833732DB6EC3D219D4125B464DD3EB4EBF12596ACE3425744445424AB5336FD94E18E0D95F625D0003013C0FDEED81922222A9CE71EEA8CB48C6C7C3B7A91740A00C0D41A6F7D3319CB46';
wwv_flow_imp.g_varchar2_table(412) := 'BE05C3F09CB3D3543879F905881B341323A6FDB1D015FF151211511168E879EEDA56695F020D007300F01A2822220FF36EEF3BF1D4031DA433FEB2E77022262DD82C9D4145B4FFD8197479F26B0C9FCA85AE8888A8782CA6C56D03B05B3EA3D55A2F0070';
wwv_flow_imp.g_varchar2_table(413) := 'ABBB768A88880AC734357ABE3B1C0BD7EC914E0100548A298BCD933E44586890740A5D86D61AE3666FF8DB4257444444C5A10FD836FCDCC45D5B73C719600098E6AE1D2222A2C2330C8521713DD1B45E55E91400C0396B3A7E9EB04C3A832EC39A9A891E';
wwv_flow_imp.g_varchar2_table(414) := '6F0DE34257444454621ACAAD2B61BA6B009EA5B536DDB96344445438E1A1C118FF756FC4948F944E0100FC3C6119926C6E5907838A61E986FD68F7687F2C5EB7573A8588887C80A1F57C776ECF6DCB5464E7E46F080B0D6AEBCE9D2322A2C25BBBFD081E';
wwv_flow_imp.g_varchar2_table(415) := '7865109CA6FCE795CF3FD4199FBEE4592B55FBBB7C7B01BE1AB1003F4F5806D3E4BDBE4444E412E9B6FCFC586C1B5AE0AE0DBAEB0C30C24283BECECCCE73BA6B7B44445434EDAEAA8F379FF48CE51A46CD5C87E4143E46DE531C387E165D9EFA06037F5B';
wwv_flow_imp.g_varchar2_table(416) := 'CAE19788885C4603F3DD39FC0280C55D1BFAE4934F0E4CD96E963D9690746DE5D8B2A81453D69DFB49444485D0B6455D6CDE7B12A7CED870E12221992F87C384D61A9DDB34923E247E4D6B8DE1D3D6E0C90F46E39C350392BF26F8C52F7EF18B5FBEF765';
wwv_flow_imp.g_varchar2_table(417) := '287C9593B0D9AD2B712A776E2CEABA57AF5530D703C0958D6BA0D77DED707F97AB10121CE8CE0C2222FA0F6792D2D0A1E75748CBCC11ED080D09C2F6291F2136CA33EE4DF637D6D44CBCF8C5042CDDB05F3A8588887C93D3EE7056CCDC3CC8E6CE8DBAED';
wwv_flow_imp.g_varchar2_table(418) := '0C3000E426DC7A26AC466E1F0011E7ACE958B0660F864F5B8353676DA859250631E523DC994344441711191E82DAD562316BF90ED10E87C38990E040B46F555FFA90F89D955B0EA1FBEB83B1FB70A2740A1111F9280DAC4BDFF8F32FEEDEAE5BCF000340';
wwv_flow_imp.g_varchar2_table(419) := '54BB97862AAD9EF9578852E87875033C797F7BDC727D53580CB7DD9E4C444417F1E487A3307BC54ED186E8B2E1D835FD135E29E426F9F6027CFAEB1C0C9DBA1A5AF35E5F22222A3D5AE1D594B5037F74F776DD7A061800C2ABB531A1D42317FBFF4E9EB1';
wwv_flow_imp.g_varchar2_table(420) := '61C6B2ED18377B036C69D9A857B322CA8487B83B918888005CDBB22E7E9BB311F9768758436E7E01AA578A428B86D5A50F87CF3B7CF23C1E7C633016AC71EBAD584444E49FB456EAD9BCF84DE9EEDEB0DBCF00D7BBEDA5E0D40C2319C0656FEAB21806BA';
wwv_flow_imp.g_varchar2_table(421) := '5CDB18BDBB75448756F5A194DB738988FCDAF0696BF0CEF7D3441B1AD5AE843563DFE6DF01A568F2A22DE8FBF514E4E6D9A5538888C81F28BDD9B676601B894DBBFD0C70CAD1CDCEB09A6DAE025493CB7DAFD61AC712923179E116CC5AB113A6A951BF46';
wwv_flow_imp.g_varchar2_table(422) := '45040705481C2B2222BFD3A251752C5EB70FE76D19620DD6B42CB46D5117B5AA444B1F0E9F634DCDC2D31F8FC1C0F1CBE070F049854444E4261A03731336AD93D8B4DB07600008AF716D0080078AF233B6B46C2CDB78008327AFC2F18464D4A814858AD1';
wwv_flow_imp.g_varchar2_table(423) := '6524F28988FC86A114EAD7AC8089F3378B7614389CB8BB530BE9C3E153566D3D8CEE7D0763D7A104E9142222F23386B63C9F93B8314562DB22D793C5767A3EC274042601082DC9EBB468581D8FDF7D2DBADD7C3542438224768588C82F3CF6EE082C582B';
wwv_flow_imp.g_varchar2_table(424) := '776F6850A0057B677C8AA8B2E1D287C2EBD90B1CE83F62017E9EB81CA6C985AE8888C8BD34B03365ED8F574A6D5FE40C70CEC92DF6B01A6D5B01685C92D7396FCBC0A2F5FB3076F67AA4A4E7A076D518948B0C93D82522229FD6BC41358C9EB50EA6D0CA';
wwv_flow_imp.g_varchar2_table(425) := 'C04E53A35AC5285CD5B886F4A1F06A874E9E43F7378660EEAA5DE022CF44442441018372E337AD96DABEC8000C00E135AE3550C4CBA02F2537BF009BF79CC0F0E96BB071F771840407A25E8D0A300C2E984244E40A5165C3713CD18A7DC7CE883524A766';
wwv_flow_imp.g_varchar2_table(426) := 'E2F1BBAF933E145E6BF2A22D78ECDD11389394269D424444FECC502FE69EDA6895DABCD88478E132E8A0125F067D29D52B95C7E3775F8747EF6C8B98F21152BB4944E4338E2726E3DA1EFDE1344DB186B563DF46A3DA95A40F8557B1A565E1E5FEBF63D1';
wwv_flow_imp.g_varchar2_table(427) := 'BA7DD229444444876C6B7F682419207606F8C265D06D5A01AA4497415F4A46561E566F3B82A15357E3D0C9F3882D1F896A95CA4BED2E1191D72B5FE6C259E0FD82678163CA45E0FA2BEB491F0AAFB162F32174EB3B04BB0E254AA71011114129FC9A13BF';
wwv_flow_imp.g_varchar2_table(428) := '71856883E4C663DABDFA301426B86B7BF56A54C0C3B75D839E775FCB7B8589888AE1C0F1B3E8D8EB6B68A11B481BD7AE8CD563DE923E0C1EAFC0E1C40FE396E29B318BB8D0151111790CE5C495C9EB7FD829D92076061800C2EB5C7512DAF21A8040776C';
wwv_flow_imp.g_varchar2_table(429) := '2F253D1BABB71DC6A899EB90702E05D52A944785A848C9434044E45562CB4762FDCEA3883F27F2E40258D3B270EF0D5722BA1C6F6DB99423F14978F08D2198B16C0717BA222222CFA1F541EBBA1F3F94CE101D80734E6EB187D72ABDCBA02FC55EE0C4AE';
wwv_flow_imp.g_varchar2_table(430) := '4389183D6B3D16AFDF0F006858AB120202440F07119157285F261CD3976D17DB7EC5E8485CDBA2AEF461F04893176DC563EF0EC7692E744544449E46A98139F11BC5567FFE2B433A20B6C36BDDB5C624F18EF291E871671BF4BCEB5A54E7BDC244449764';
wwv_flow_imp.g_varchar2_table(431) := '9A1AAD1EFC1C89E75345B67F55E31A5834E455E9C3E05152D2B3F1EA5793B060ED5EE9142222A28B52CAD92079F5C023D21DE2A73C2BD4BEF5985DE7BF042044B22327CF8E8DBB8F63D8B435D8B4FB0442820251AF6605184AFC330222228FA294425A66';
wwv_flow_imp.g_varchar2_table(432) := '2E36EC3A26B2FDA4944C3C79FFF5080D0E923E141E61F5B623E8FEC610EC3898209D42444474299BAC6B7E1C201D0178C0009C7672A523BCE6B58D00B4946E0100AD8153676C98BD7217C6CFDB84AC9C7C34AA5D0961217CA34544F4A71A95A3307CFA1A';
wwv_flow_imp.g_varchar2_table(433) := '917B4CB5D668D9B0BADF3F0EA9C0E1C4776396E0B5019390999D279D43444474494AABAF73E2376C92EE003C6000068090DAD7672BE8C7A0004FFACACAC9C7BA9DC7306CFA1A1C4B484685E84854AD504EFA701111892B1B198A35DB8F5EB80C5AE0CFE7';
wwv_flow_imp.g_varchar2_table(434) := 'C8F010DC7A7D33E9C320E6487C121E7C7328662CDF018DCB1F2F7EF18B5FFCE217BF04BF9CCA12F054CEC9F559F0001E3100E79EBAE56458CDFCA70194916EB918A7D3C4BE6367307EDE262C5CB7178661A07E8D0A08E4A25944E4C7B273ED58B6E980C8';
wwv_flow_imp.g_varchar2_table(435) := 'B6533372F06CB78ED28740C4D8391BF0C487A3B9D01511117905052C4D5EF5ED60E98EBFF57886980EAF7F0FE055E98EC28A0C0FC17D37B4C4D3F7B743E33A95A5738888DC2E292513573CF089D87366B74F7A1FD52B45491F06B749CFCAC51BDF4EC5CC';
wwv_flow_imp.g_varchar2_table(436) := 'E53BA5538888880A4D69F44A5EF3DD68E98E3F79CC29CCB0DA6D6DD0AAB7744761D90B1CD8753811A3676FC0FA9DC7101612843AD56261310CE9342222B7080F0DC6AAAD87C5CE445ED5A4A6DF7C00B97ADB1174EB3B045BF79D924E2122222A8A3C6770';
wwv_flow_imp.g_varchar2_table(437) := 'E0D379C7D7E54B87FCC96306E09C931BCF84D5BAEE610031D22D45157F2E05B357EEC2B8B91B91929E8D3AD563513622543A8B88A8D425A56462CD7699271A548A2E832E6DDDFA1879B773384D7C3B76095EFB7A3217BA222222AFA3959E99B2E29B71D2';
wwv_flow_imp.g_varchar2_table(438) := '1D7F17201DF04F7A3C143E95AE28AEA4D44C0C9CB81C3F4F5A81F657D647EFAEED7153DBC6507C941211F9A8CED734C417C3E78B6C7BEB7EDF3E1B7A3421097D3E1B8FDD87132FFC03FE55424444DE678274C0FFF2A8EB750394390E8029DD5152A6A9B1';
wwv_flow_imp.g_varchar2_table(439) := '6ADB61F4787704DA3ED61FBF4E5E85B4CC5CE92C222297BBA25E55C4948F10D9F6BE636790975F207D084AC5B8B91B71E333DFFFFFF04B4444E4651494AD7C9843E653F2FFE03197400340D6C98D6961B5AEED04A0B6748BABA466E460C5964318367D0D';
wwv_flow_imp.g_varchar2_table(440) := '4E9EB1A1524C59548E292B9D4544E4124A29EC3C94884327CFB97DDBA6A9717BFB66A8E4437FA6A66464E3F92F26E0A7892B50E0704AE7101111159FC6D0C4653FCE93CEF85F1E760934A0A14629A0B37487ABE5E53B3071C1164C5CB0052D1A5443CFBB';
wwv_flow_imp.g_varchar2_table(441) := 'DAA2EB4D57212C24483A8D88A844AE695A0BB356EC12D9F6C113E7D1B26175E943E0126B771CC50BFD26E24C723A78BD331111793BC3A2474B375CB44B3AE07F85DACDA900D2A43B4AD3AEC389E8FBED545CF1C0A7E8FBED541C1438734244E42AD75C51';
wwv_flow_imp.g_varchar2_table(442) := '4B6CDB12679E5DCDE134F1F5E8C5E8DA77E81FC32F111191D7DB96B4E23B994FC72FC3E3CE00276EF83E37A653DFA9009E966E296D193979183B7723C6CDDB840E57D543AF7BAEC72DD7354180C5E33E972022BAA4A675AB20342410B902F7E31EF0F201';
wwv_flow_imp.g_varchar2_table(443) := 'F85862329EFD7C02761E4AB8F00F78E29788887C80861E25DD70291E3700038061E851A6A97C7E00FE93D61AABB61DC1AA6D475039A62C7ADED5168FDDD10615A3CB48A711115D566080058D6A57C28E83096EDFF6A113DE3B008F9FBF19EFFD34133979';
wwv_flow_imp.g_varchar2_table(444) := '76E914222222D7D1B0072B35493AE3523CF6B3E6984E7D0F006824DD21C56218E8D2B6119EB9BF3D3A5C558F8F5222228FF6CA80C998B060B3DBB76B310C242CFA1281011EB5A6E37FCAC8CEC39BDF4FC3F4653BA4538888884AC324EBCA6F1F928EB814';
wwv_flow_imp.g_varchar2_table(445) := '8F3C030C005AABB14AA19F748714A7A9B168FD012C5A7F0075AAC5A0C7EDD7E0B13BDBA07C6498741A11D1BF34A95319129FA93A4D8DB3C9E9A851394AFA1014CADA1DC7F0C2975CE88A88887C97A13CF7F267C00317C1FA8BC53916009F0101E078A215';
wwv_flow_imp.g_varchar2_table(446) := '9F0D9D8F96DDBFC0EBDF4EC59E23A7A5938888FEA17E8D0A62DB8E3F972ABDFB9755E070E2F361F3F140DF215CE88A88887C5962524CFC52E988FFE2B167806DCBBF3F1DD3E98DF950B84BBAC553E4E4DB316EDE268C9BB7E9C2A394EE6C836E37B54268';
wwv_flow_imp.g_varchar2_table(447) := '70A0741A11F9B91A95A3C44E68269EF7EC0138FE6C0A9EED37115BF69DBCF00F78E29788887C9456188329533CFA24A6E79E0106008521D2099E6AD7E144F4FD6E1A5A3EF8393E19320F27CFD8A49388C88F55AF581E86D05A0589499E3B004F58B0051D';
wwv_flow_imp.g_varchar2_table(448) := '9EFEEEFF875F222222DFA50DD3395A3AE2723C7A00B6768C5800E0947487274BC9C8C1CF9356A2CD635FE1C1778663E1FA7D709AA6741611F999E0A00054888A14D9B62D3D5B7AF7FF252D33174F7D320EAF7C3D19D9B9F9D239444444A54E014B92577E';
wwv_flow_imp.g_varchar2_table(449) := '7F54BAE3723CF6126800405C9C89CE6F8E04F089748AA73335B07CF3612CDF7C1895A2CBA0FBCD57E1A97BAF4795D8B2D26944E4272A4495C1395BA6DBB79B96992BBDEBFFB065FF293CFBC544C49F4D01AF772622227F612A3D58BAA1303CFA0C3000C0';
wwv_flow_imp.g_varchar2_table(450) := '51300C40817486373967CBC0C0892BD1BA477F3CF5C96F58B5ED08B4D6D25944E4E3A2CB868B6C3735C333066087D3C4D76396E0AE977FFD63F8252222F217EAAC2D3D63AE74456178F6196000D6353F9C8DB9F1CDF9D0B847BAC5DBD89D4ECC5EBD1BB3';
wwv_flow_imp.g_varchar2_table(451) := '57EF46BDEAB178F8D6D6E879471B948B0C954E23221F14552E5CE484675A568EF4AE23E15C2A9EFD722236EF3D79E11FF0C42F1111F997A1D836D42B4E5A7AFE1960004A9B5C0CAB848E2624E3B361F371E523FDF0E60FD3B1FFF859E92422F231E52264';
wwv_flow_imp.g_varchar2_table(452) := '3E5C93BE04FAF7455BD1E199EFFE7FF8252222F22F0ED3C470E988C2F2F833C00090DC217251F4EAEC930AA825DDE2EDB272F2317ACE468C9EB3116D9AD542AFBBAFC55D1DAE4050A057FC5220220F1622F448367B81436C9FFB7C3101D397EF14DB3E11';
wwv_flow_imp.g_varchar2_table(453) := '11913405CC4959392051BAA3B0BCE20C30E2E24C4361987486AFD9B4F7249EED37114DBA7E86F707CD46FC39DEB34644C5171C24F3415A8143EE7183F3D7ED13DB361111912750DAF0AAAB75BDE6B49FC51E30CC11E8FC104088748BAF49CFCAC3D0E9EB';
wwv_flow_imp.g_varchar2_table(454) := '307CC67AB4BFB21E7ADE790DEE68DF0C16C33B3E1F2122CF101C1800899B5FED0EC947BF29917D262222F210C7933A862EC10AE98CC2F39A01F8DC9A2F93636F7C7BB286EE29DDE2AB4C68ACDA7104AB761C41E598B278ECF66BF0E43DD78AADEC4A44DE';
wwv_flow_imp.g_varchar2_table(455) := '452925320B4A9E01E6FC4B44447E4D6130E2E2243F892E32AF3AC5A70DFD937483BF386B4DC780B14BD0FCA17E78BEFFEFD8B2EF9474121179388753E6EF3F87537000262222F25FF9018196D1D21145E55503B075C980AD0AD828DDE14FEC050E4C59BA';
wwv_flow_imp.g_varchar2_table(456) := '03B7BFF20BAE7FF25B0C9BB10ED9B976E92C22F24076A133B1928BF8F119EB4444E4AF34D4C4730BBE4C96EE282AAF1A8001402BC5B3C0420EC727E1BD41B3D1FCA12FF0EECFB370E8D479E92422F220050E99D59883022DD2BB4E4444E4770CC3FC51BA';
wwv_flow_imp.g_varchar2_table(457) := 'A138BCE61EE03F595353A7C4942B3F004055E9167F95919D8FE1333760F8CC0DB8BE451DF4BABB2D6EBFBE290203F82694C89F6564E543E286D8E04099C72F0180D6BC09988888FCD2CAE42503764A471487D70DC0D836B4005DDE190EE88FA5530858B7';
wwv_flow_imp.g_varchar2_table(458) := 'FB38D6ED3E8ED8F21178F8E65678E2AEB6A85EB1BC7416110948CDCC1199058383E51EBF64773838FF121191DFD15A7BE5D95FC00B2F810600588C21007823AA07494ECDC2C049ABD0BAE7D7783C6E1C566C3BC27BE388FC4C5A56AEC87643838344B69B';
wwv_flow_imp.g_varchar2_table(459) := '959B2FB25D22222261276C5127E648471497570EC0D645FDCE026A8A7407FD9BD334317FDD3E747F6704DAF6FA16BF4C5D73E1AC1011F93C5B5A96C876A3CA84896C372B8703301111F9233D1053A678ED2318BC72000600433B0600E029460F76FCB415';
wwv_flow_imp.g_varchar2_table(460) := '1F0F9987660FF6C3539F8DC7AAED47A59388A8142526A5896C37AA2C076022222237C974428D928E2809EFBB07F80F49CBBED91DD3E5ED9580EA2CDD42FFCD5EE0C4ECD57B317BF55E34AF5F058FDFD1065D6F6C89B01099CB1689C8F5D2B3F290996387';
wwv_flow_imp.g_varchar2_table(461) := 'C40DB15165C245F639334766D12F22222241C35397F64F978E2809AF3D03FC876FA503A868761F3983BE3FCC40F387BFC407BFCEC5D104AF7B7418115DC469A1B3BF00502E926780898888DCC0344CE720E98892F2DA33C000605DFAD5FC989BDED90FA0';
wwv_flow_imp.g_varchar2_table(462) := '89740B154D7A761E86CC5887A133D7A37DCB3AE875D7B5B8F5DAC608B078FB673244FEE9D869ABD8C9D00A511122DBCDC8C9E309602222F21B0A9895B4FCEB63D21D25E5D50330000DAD7E80D243A543A878B4D658BDE31856EF38860A519178E8A6ABD0';
wwv_flow_imp.g_varchar2_table(463) := 'EBAEB6A856A19C741A1115C1C193E7C5B65D43E8D16B67AD1962FB4C4444E46E1ACA6B1F7DF4775E7FBAAD5C60D658289C93EEA0924B4AC9C4C049ABD0EAB101E8FACE082CDE74908F5222F212074FC90DC0D52B490DC05E7D0B1411115111A8CDD6255F';
wwv_flow_imp.g_varchar2_table(464) := 'AE92AE7005AF1F808F2EF8291F26064B7790EB985A63D5F6A3E8F1E1185CFFF4F7183A631DD2B3F2A4B388E83F1C121C80A5CE009FB3658AED331111913B696DF6936E70156FBF04FAC24E04AA5F1C0EBC0D2054BA855CEB488215EFFF3A0F9F8E58845B';
wwv_flow_imp.g_varchar2_table(465) := 'DA36C6B3F75F8FD64D6A486711D1DF6464E7E148BC151237C4C6948B105B51FE7472BAC83E131111B9973A606B1734074BA53B5CC32706E0730BBE4C8EBDF9BD511AFA79E9162A1DF9050ECC5EB307B3D7EC41AB46D5F1C49D6D705FC7E6080EF2895FC2';
wwv_flow_imp.g_varchar2_table(466) := '445E6DDBC10498D022B3609D6AD162FB7D2E2583F32F1111F93CA531007171A67487AB78FD25D07F7298CEAF0014487750E9DB7630012F7D33154D1EEA87BE3FCEC4A1F824E92422BFB6F540BCD8B69BD4AA24B25DAD352F812622227F90985C2E688274';
wwv_flow_imp.g_varchar2_table(467) := '842BF9CC009CBAF4AB7868FC2EDD41EE93919D87B1F337A343EF1FD1FDFD5158B0613F9CA6CF7C3845E43536ED3D25B6ED86B52A886C37392D0BF60287D87E131111B987FA0E53E2ECD215AEE453D78F6AEDFC52294B0FF8D0604F97676A8D155B8F60C5';
wwv_flow_imp.g_varchar2_table(468) := 'D623A8145D06DD6FBC124FDEDD165563CB4AA711F9BCBCFC026CDA2F370037AD2D7306F84842B2D83E131111B9490A421CC3A5235CCDA70660DBD20107626E7E6F36807BA55B48C6395B26064E5E8DC1D3D7E1F6EB9BA0D79D6D705DF3DAD259443E6BC3';
wwv_flow_imp.g_varchar2_table(469) := '9E93C8CB7740EA66D8464297401F8E4F16DB67222222B75018649D3DC0E7EEF7F1A9011800B461F653DAB857BA8364D99D4ECC5CBD073357EF41A39A15F0C49D6DD0FDC62B1119162C9D46E453566C3F223607D6A8541EE5236516FF3F9290CCF9978888';
wwv_flow_imp.g_varchar2_table(470) := '7C594E80A17F928E280D3E77A9B06D61FF2D0096497790E738782A09EF0C9A83C60FF5C38BDF4CC5DE6367A593887CC6820D07C4B6DDB6692DB16D1FE6E27B4444E4C314F4C8730BBEF4C9FB7D7C6E0006000DA3BF7403799E7CBB039396EE40E7177E46';
wwv_flow_imp.g_varchar2_table(471) := '97977EC1D8F95B9067E7C2E144C5B5FBE8199C3C9B22B6FDAB1B5717DBF6854BA08988887C528145E96FA5234A8B4F0EC0B6459F2F551A1BA53BC873ED3A721A7D07CE44B347FAE3FDC1F3704AF04D3C91B79ABD66AFE8F6DB34AD29B2DDCC9C7C9C4BF1';
wwv_flow_imp.g_varchar2_table(472) := 'B95BA28888882ED018796E61FF93D219A5C5E7EE01FE9B4F01355F3A823C5B7A563E86CEDC80E1B336E2C6D60DD0EBCE6B7063EB0630146FEE23FA2F5A6BCC5EB30F5237C2468605A3614D9947201D3C791E5A436CDF8988884A514180E1F4E9AB697D76';
wwv_flow_imp.g_varchar2_table(473) := '004E5EDC6F41CC2DEF6D82526DA45BC8F399D058B2E510966C3984CAD165F0D86D57A3D71D6D10532E5C3A8DC8236DD87B1227CEDAC466C0EB5BD486C590B98869EBC104CEBE4444E4A3B44F9FFD057CF412E83F29657C2ADD40DEE7AC2D03037E5B8E16';
wwv_flow_imp.g_varchar2_table(474) := '8F0DC053FD7EC7AA1DC7A493883CCE8445DB45B7DFB9557DB16D6F3B9428BAEF444444A5A4C0621A5F494794369F1E8093177E3E1FC066E90EF24E768713B3D7EC45D7F746E1BADE3F62D8AC0DC8CEB54B671189CBCCC9C7ECB5B2F7FFDE2038006F3F98';
wwv_flow_imp.g_varchar2_table(475) := '20BAEF444444A54263F4F9C59F9F90CE286D3E3D000300B4E659602AB12309C9786FF03C5CF1E85778E7973948CFCE934E22123369E90EE4E6CBADA05EBB4A346A558E12D9B6352D1B09496962FB4E4444544A0A2C5A7D291DE10E3E3F005B17F59B079E';
wwv_flow_imp.g_varchar2_table(476) := '052617C9CCC9C788399BB074F321E91422114ED3C4E019EB451B6EBC5AF2F2679EFD2522229F34C61FCEFE023EBC08D63F18EA3368CC91CE20DFB16ECF493CD0B985740691DB2DD87000A7CEA702822BA5DF717D53B16D6F3B9428BAEF444444A5A0C062';
wwv_flow_imp.g_varchar2_table(477) := '04F8C5D95FC00FCE00038075FEE7F3006C95EE20DFB17ECF49E904221183A6AD13DD7E6CB9085CDB4CE6F9BF007FEF131191EFD1D0E3CECF8B3B2EDDE12E7E310003D086363E908E20DF71ECB415676D19D219446EB57CDB910B8F00127457BB26628F3F';
wwv_flow_imp.g_varchar2_table(478) := 'CACACDC776AE004D4444BEC51EE0549F4B47B893BF0CC0485AF8E922002BA53BC877F04C10F99B01BF2D974EC0DDED9A896D7BEDAE13287038A50F01111191CB28E8A1FE72EFEF9FFC6600BEB0B38A6781C965D6EDF6AB3F2BC8CF2DD97C48FCF9B795A2';
wwv_flow_imp.g_varchar2_table(479) := '23D156F0F2E7553BF94C702222F229D950815F4847B89B7F2C82F587A4059FAD8BB9E3C3F9D0B85DBA85BCDFFABD27A51388DCC2699AF86CCC52F1C59F1EEA7295D8E5CF00B072C731F163404444E42A5AE147EBBCB873D21DEEE657678001C0705ADE05';
wwv_flow_imp.g_varchar2_table(480) := '604A7790F73B76DA8684F369D21944A56ECC82AD3870F2BC6883520A0FDF74A5D8F64F27A7E368A255F418101111B9505A81C3F2AD748404BF1B809316C6ED063055BA837CC3FC0D07A413884A555A562EBEF2807B7FDB36AD893A55A2C5B6BF72072F7F';
wwv_flow_imp.g_varchar2_table(481) := '262222DFA181AF3216C5A5487748F0BB01F802CB87001CD215E4FDE67100261FF7E5D86548C9C891CE408F9BAF12DD3E3FEC2222221F7236C091FB93748414BF1C80ADF3E30E6B85B1D21DE4FD36EF8F872D3D5B3A83A8546CDE1F8FD1F3B748672028C0';
wwv_flow_imp.g_varchar2_table(482) := '821B5AD513DB7E46761ECF00131191CFD00A9F9F5FFC8DDFBE81F5AB45B0FE41991F019687008449A790F7726A8D459B0FE1919B64CF4E11B99ADDE1C4EB3FCFBEB06082F0C24FF7776E81D8721162DB5FB8E910EC0EA7F8712022222A290D9CB48519C3';
wwv_flow_imp.g_varchar2_table(483) := 'A53B24F9E5196000B0CDFDE2B4526AA0740779BFF91B0E4A2710B9DCD7E357E0507CB27406945278EEDE6B451BE6ADDF2F7D188888885C447F88297176E90A497E3B000380232FAF3F002EEB4925B262C73164E5E64B6710B9CCC67DA7F0D3B475D21900';
wwv_flow_imp.g_varchar2_table(484) := '808E2DEBA049AD8A62DBCFCEB363F9765EFE4C44443E4063B7ADB56582748634BF1E8053977E95AEB4FE4CBA83BC9BBDC081655B8F486710B9446A662E9EFD7A1A9CA6673C2DEEB97BAF13DDFE922D8791672F903E0C44444425665A8C371117E7197FC1';
wwv_flow_imp.g_varchar2_table(485) := '0BF2EB01180092CF9FFF1500A7172A91DF97ED944EC007C31662C4DCCDC8CCE1D9682A1EAD355EF971264E5BD3A553000057D6AF8ACE57D5156D98B16A8FF4612022227285792973E2164B477802BF1F80B16D688152C67BD219E4DD566C3F8633D60CD1';
wwv_flow_imp.g_varchar2_table(486) := '867BDA37C53B83E7A1F1A303F0E27733B0EFC439E9C3425EE6FB49ABB160A3E7DCD3FE768FCE50820B4F25A7656109AFEE202222EFE7340DFDB67484A7E092967F88B9236E2D94BE5EBA83BCD7078F77C12B5DDB893674FFF837ACD87EF4AFFFDDA25E15';
wwv_flow_imp.g_varchar2_table(487) := 'F4BCA515BADFD01C214181D287883CD8CA9DC7F0D0C7E33DE6D2E796F5AA60F177CF880EC03F4F5F874F462D913E1444444425A3D4AFD63971CF4B67780A9E01FE8369E00D4069E90EF25EBF2FDD09AD657F09BDFD48A77FFCEF5D47CFA0EFA039B8EAA9';
wwv_flow_imp.g_varchar2_table(488) := '1FF1C5B865484CF68C4B5BC9B31C4A48C6335F4DF598E11700DEEB79A3E8F00B001397EE943E0C44444425A43295139F4A5778128B7480A7C83DBC3231B441A72B14D044BA85BC534A660E3A5D59175563CB8A35548929837D27CEE148E23F1737CFC9B3';
wwv_flow_imp.g_varchar2_table(489) := '63E3BE780C9FB319BB8F9D45B9C850D4AA545E7CC02079E7533271DFFB6390949A259DF2976B9BD5C47B8FDE20DAB0E54002064E5B2B7D288888884A442B15679D17B750BAC393F00CF0DF0428C79B00F2A43BC87B8D5FB2433A011FF7BA09410117FF6C';
wwv_flow_imp.g_varchar2_table(490) := 'CB699A58B0E920BA7F340E6D9FFD19BFCEDC80D4CC5CE96412929D67C7239F4E4042529A74CA5F0CA5F0F9D3B74A6778C4EF652222A2124A0C06064A47781A9E01FE9BECC3ABD3421B760A53407BE916F24E27CEA6E299BBDA5C72007587F2916148CBCA';
wwv_flow_imp.g_varchar2_table(491) := 'C3D64389FFF97DA999B958B1E31886CDD98C93E7525139BA0C2A45478A75937BE5D90BD0E3D389D87230413AE51F1EB9E92A3C7EDBD5A20D59B9F978F9C759287038A50F07111151F129FDECF9399FF013DDFFC1EB1FFF476CB7B8089D874300AA48B790';
wwv_flow_imp.g_varchar2_table(492) := '77FAB2F76D78FACE6B441BD2B3F3704D9F9F90929153A49F6B51AF327ADED20ADD3A3547683017CDF2557687134FF49BE4712B1C47840661E3E09750B17C8468C7E0591BF1E18845D287838888A824365BE77CDC966B1CFD1BCF00FF8F9CFD2BEDA18D3A';
wwv_flow_imp.g_varchar2_table(493) := 'DB1470AF740B79A7A3A76D78EA8E6B6008DE5F1B12148032612158BCE570917EEE7C4A16166F398C310BB7C29691835A95A3502E22546C3FC8F5EC054E3CF5D59422FFDA7087771EED8C1BAEAA27DAE034359EFB6E3AD2B379370C1111792D6D187830FB';
wwv_flow_imp.g_varchar2_table(494) := '5067CFBACCCB437000BE88DC432B7687355C751B80AAD22DE47DD2B3F2D0B4564534A81E2BDAD1BC6E65ACDE751CA78BF17CE25CBB035B0E2660C4DCCDD8B43F1E21C181A85B351A86C18B46BC594E5E017AF6FB1D4BB779D6995F00685CB30206BE720F';
wwv_flow_imp.g_varchar2_table(495) := '2C86ECD21473D6EDC7B8C5DBA50F07111151B1298571C9B3E37E92EEF0545C04EBA29436815700F092012A164F583DD6500ADFBE7017022DC5FF6D6E6A8D55BB8EE3A9AFA6E0CAA77EC0676396E2AC2D537AD7A818D2B3F3D0F5A37158B1E39874CABF5C';
wwv_flow_imp.g_varchar2_table(496) := 'F8B57AA7E8BDF37F1A3C6BA3740211115149646AE05DE9084F26FF6EC343E51E5E9918D6B05303005748B790F739979289CE57D643D59832A21D3165C391677760E3FEF812BF5656AE1D9B0E2460C4BCCDD87FF2FC5F8F5222CF77EA5C2A1EF8701C761F';
wwv_flow_imp.g_varchar2_table(497) := '3F2B9D7251BDEF6E8BC76EBE4A3A039BF6C7E39B49ABA5338888888A4FE33DEB9CB8C5D2199E2C403AC093998178DB70A8BB01C8AEC8425EE997591B30AA5137E90CBCF150472CD87C188712925DF27A76A789D9EB0F60F6FA03685ABB229EBCAD351EE8';
wwv_flow_imp.g_varchar2_table(498) := 'D80CE12141D2BB4A17B1697F3C7A7E39F9C282681EF8DCE7EA15CAE2DD473B4B67000006CFDEE491C7888888A850340E58AB54E2A5CF97C133C0FF21F7C0CA8CD0069D4DA5D045BA85BCCFB1D33674EDD45C7C11A9008B81AB1B56C3C4A53B616AD75ED5';
wwv_flow_imp.g_varchar2_table(499) := '9F9C968DC55B0E63E4FC2D38979A851A15CB21BA4C98E8FED2FF1BBF64079EFE661AB272EDD22917652885916F7743FD6A31D22938702A09EF0F5FC4FB5E8888C86B29A57BE64C78C3F356B9F4301C802F23B745A72D610ED5150AB22B1A91D7D11AC8CC';
wwv_flow_imp.g_varchar2_table(500) := 'CDC7ED6D1A49A7A0625424945258BBE764A9BC7E7E8113DB0F9FC6C8F95BB078CB61840405A2418D5858B86896887CBB036F0D9E8F011357C1697AEE48F7E2FDD7A1E72DADA43300006F0D9EEFB2AB24888888DC4D2B4CB3CE8EEB27DDE10D38005FCEFE';
wwv_flow_imp.g_varchar2_table(501) := '95CEF0469DF600EA09F0B9C95444074E25E1EE764D3DE2AC68EB46D5B16AE7719CB1157D55E8A2389F9A85F91B0F62FC921DC8CAB5A36ED5684484064BEFBEDF389C6845F7B8F158B6EDA874CA7F6A51B7327EED7BBFF8AACF00B0E7F8397CC0E7FE1211';
wwv_flow_imp.g_varchar2_table(502) := '91F7CA0D34F43D590757A6498778030EC085907368E5A9B0069D1B43A199740B7917AD016B7A36EEB9BE89740A0C43A153CB3A98B2623772ED8E52DF5E56AE1DEBF79EC290D99BB0EBE85944970D43CD8AE5798B6529D11A18B7783B7A7D3519678AF1E8';
wwv_flow_imp.g_varchar2_table(503) := '2B770A0B09C4944F1E456CB970E9140040DF417371F4B44D3A838888A8B83E4B9A15375B3AC25BF0AD6821C5DE1E5749071A8700C82EEB4B5E472960E9374FA379DDCAD2290080C55B8FE0D12F7E878B6F072E9406D562D0EBB6ABD1BD73739409E35961';
wwv_flow_imp.g_varchar2_table(504) := '57494C4EC7EB83E662C5CEE3D2298532E8D57BD0BD5373E90C00C08E236770CB5B23447E3F101111B9407C9069363E33272E473AC45BF00C7021E51C599915D6A8B303C0CDD22DE47D4E5B33D0B5A3673C51AB6E9568E4D91DD87420C1EDDBB665E460D9';
wwv_flow_imp.g_varchar2_table(505) := 'F6A318316F0B1292D2512DB62C2A94E322EBC5E5709A183C67139E1C30154712BDE30CE6D377B4C62B0F5C2F9DF1975707CDC189B3A9D219444444C563A847CFCFFA789F748637E1005C0439953B6E0E0D51F729A0A2740B7997136753D0B1451D548B2D';
wwv_flow_imp.g_varchar2_table(506) := '2B9D0200B8BE592D6C3A9080F8A43491ED17389CD875EC2C462FDC8655BB4E20242800F5AA44C36291BF1FD45B6CDC1F8FC7FB4FC1E415BB51E030A5730AA56D931A18DCF77E8F591C6DE5CEE3183071957406111151B16860AA6DE6475F4877781B0EC0';
wwv_flow_imp.g_varchar2_table(507) := '457172A519DEA4F37E683C0E5E3E4E4574FC6C0A1EBEA1A547DC036B180A37B76E80791B0F222D2B57B4E5B4350373371CC4D8C5DB919E9D8BDA95A350363C44FA1079AC136753F0FA2F73F1C99865484ACB92CE29B4CAD19198F6C9A31E73E9BBC369E2';
wwv_flow_imp.g_varchar2_table(508) := 'F1FE93614DE715634444E495329436EFCC39B432533AC4DB70002EA29C832B4E8536BAA1A602AE946E21EF92989C8E7AD5A2D1B86605E91400406870203AB6AC83A92BF720BFC0299D839CFC026CDC9F80E1F33663E7D1B32817118A9A95CA4379C22706';
wwv_flow_imp.g_varchar2_table(509) := '1EE08C2D035FFCB61CAFFE3C1707E2BDEB713D61218198F4D123A857355A3AE52F23176CC5A415BBA5338888888A456BBC619BFDF132E90E6FC47796C550A65B5C545081E50000CF9864C86B548A8AC4869F9F4344689074CA5F56EC388647BE980487D3';
wwv_flow_imp.g_varchar2_table(510) := 'F32EA3AD55A93C9EB8A5151EBEB105A22243A573449CB666E0A7E9EB316EE90ED83DE0838AA2B2180A63DFED8E9BAFAE2F9DF297D4AC5CB479EE17A40A5FFD404444544C5BAC810DAFC594EEDEF7C6C003F00C7031E4EF5F991BDAA8F3390575BF740B79';
wwv_flow_imp.g_varchar2_table(511) := '97AC5C3B0A1C4E746E59473AE52FB52B47A146857258B0F99074CABFA465E561E5AEE3183A7733F69F4C42B98850D4AA545E3ACB2DF61C3F87CFC62DC7EB83E662EBE1D3709ADEB94C71BFA76F41370F5900EE4F9F8E598EF5FB4E496710111115874399';
wwv_flow_imp.g_varchar2_table(512) := 'FA9E9C19CF9F910EF1561C808B29F7E08ADDE18D6EBC1E405DE916F22E3B8F9EC11D6D1B21A6AC673C0315009AD6AA88A0C000ACDE7D423AE5A29CA6C6A1042B26AFDC83C55B8FC0696AD4A91C8590A000E93497CAC92BC0B4D57BF1F6D045E8376125F6';
wwv_flow_imp.g_varchar2_table(513) := '9D3C0FD38B9FCFF3EA03D7E3550F5AF119000EC427E3B55FE67AF571252222BFF6BD75D64763A523BC1907E01228D3A8C31A13C633003CE77A56F278A6D6389C68C5839D5B78C482587F6ADBB83AB272F3B1F5D069E994FF743E350B4BB61DC5D0B99B71';
wwv_flow_imp.g_varchar2_table(514) := '24D18AB0904054AB50CE6356162E2AA7A9B16EEF297C3F752D5EFE790E66AD3B80D3D60CE9AC12EB756B2B7CDAEB268FFA35EE34357A7E39D9278E2F1111F9A57815E8EC9EB37FA55D3AC49B71002E81AC832BD3421BDDA01570A3740B799784A474D4AB';
wwv_flow_imp.g_varchar2_table(515) := 'EA390B62FDA953CBBA386DCDC09E13E7A4532ECBE134B1FF5412A6AEDA8B11F3B7E0C8691B02032CA8121D89C000CFFEA32DBFC081357B4E62D0CC0D78F5E7B918BD701BF61C3F07BBC3376EE579F8C616F8F6B93B3C6AF80580E1F3B6E0B7A53BA53388';
wwv_flow_imp.g_varchar2_table(516) := '88888AC7444FEB8C8FF74867783B0F7B7BE2857A0F098C4E4EDEA600CFBAC98D3C5EC5F21158FD436F8F5BDCC9D41AAFFD320F1396ED924E2996A0400BDA36AE8E8E2DEAA05DB39AB8A24E25040A3F5FD8E134B1EFE4796C3C9080E53B8E63FDBE53C8B3';
wwv_flow_imp.g_varchar2_table(517) := '3BA40F55A978A07D530C7AE51E8F3B239F909C8EF6AF0C45761E3F34272222EFA3A0A627CF78FF01E90E5FE059EF50BC54F43D9FB65186B10E3CA34E4574EFF54D30ACEF7DD219FFE2ED43F0DF850405A045DDCA68DDB02AAEA85D090DAAC5A041B51804';
wwv_flow_imp.g_varchar2_table(518) := '0596CE6FD702A7892389561C884FC6815349D876F834B61F3D839CBC02E94351EAEE6BD704BFBC720F02843F70B898073FFB1DCB771C93CE2022222A8E5428D5D43AFDFDB3D221BE8003B08BC4DCF7F9D700DE90EE20EF33ACEF7DB8F7FA26D219FF626A';
wwv_flow_imp.g_varchar2_table(519) := '8D37062FC0B8253BA4535C2EC062A066C572A851A11CAAC69441D59832A81C1589B21121281F118A72112188080D0670E10FC9F0D02064E5DAE1344D64E6E42337DF015B660E6CE939B0A667E3B42D03F1E7D3702A290D8949E928F0C0474A95B69E375F';
wwv_flow_imp.g_varchar2_table(520) := '89AFFBDC06C3D3AE7B063065D55E3CFFE32CE90C2222A262D1508FDB66BCCF85AF5CC4F3DEA978A97AB70D0C4E0BC9D801A0B1740B7997B2E12158FDC333A8125D463AE55FB406BE99BC060326AD964E210FD6FBCE6BF0B9872D78F5A7B32999E8F4DA30';
wwv_flow_imp.g_varchar2_table(521) := 'A464F299BF4444E4951658677C70BB74842FE125BB2E9272748133A47197ED0ABA17F8C10215417E8103C7CEA4E0810ECDA453FE4529E0FA663551363C042B761E97CE210FA314F0D16337E0DD473A7AE4F06B6A8D9EFDA7E070A2553A858888A838324C';
wwv_flow_imp.g_varchar2_table(522) := '13B7E71E5ACEC717B89007BE65F16EB1F7F7FB4943BF28DD41DEE787E7EF408F1B5B48675CD2B435FBF0F2A0B9B017F8C64AC55432C18101F8E9C53B715F3BCFBB7CFF4F3F4C5B8F2F26AC94CE2022222A1EAD7A5B67BC374C3AC3D778DE4A255ECE080F';
wwv_flow_imp.g_varchar2_table(523) := '7C0700575AA122FB60D4129C3A9F269D71490FB46F8AE91F3F8298B2E1D229242CA66C38667CD2C3A387DF6D47CEF0D27D2222F2662BAC33DE1D2E1DE18B3800BBD8F9716F666B6DF606A0A55BC8BB64E5DAF1E437D3915FE0B98FC769D3B83A16F77FC2';
wwv_flow_imp.g_varchar2_table(524) := 'E39E5F4CEED3B8462C16F77F02AD1B56954EB9A4AC5C3B9EFD61965F2E464644443E21C730CD6700C579A214F01EE052907B70C589B0C63756037095740B7997F3A959389F9A855B5B37904EB9A4B2E121E8D6A1198E245A71E4B44D3A87DCE8BE764D30';
wwv_flow_imp.g_varchar2_table(525) := 'EE9D6E1E7F15C04B3FCFC586FDF1D219444444C5A2957EDD3AE3C345D21DBE8A03702909B9AAC32AE5B03C02A09C740B79973D27CEA36A4C1934AF53493AE59282022DB8F7FA26281F1182357B4EC169F2034A5F166031F07E8F4EF8BCD74D080AF0ECBF';
wwv_flow_imp.g_varchar2_table(526) := '367E9DB309BFCCDE249D414444542C0AD8606DEE780E2B57F2CD5529F1EC77325E2C77CFCAFCD0469D772BA51E03171BA3225AB1F3046E6A550F15CB4748A75C925240AB0655D1FE8A5A58B9EB383273EDD249540AAAC594C1EF1F3E84FB3CF059D5FF6B';
wwv_flow_imp.g_varchar2_table(527) := 'DDBE537861E01C989AEF198888C82B652B65DE9AF3EBC7BCC4AE1471302B65D10F7CF983827E45BA83BC4FCD8AE5B074402F940B0F914EB9AC94CC5CBCFACB3C2CD872443A855CE8FE764D30E0995B50D60B7E0D9EB666A0CBDBA3604DCF914E2122222A';
wwv_flow_imp.g_varchar2_table(528) := '26F59C75DABB83A52B7C1DCF0097B28A6DDAAFB4DB2DF701E0AA415424E9D979389460C57DED9A4079E24356FF26343810F7B56B82EAB165B1766F3CEC0E3E2AC99B958F08C54F2FDC8937BBB74348508074CE65E51738F0E0179370FC6CAA740A111151';
wwv_flow_imp.g_varchar2_table(529) := 'B12860B175DABBAF019F48A7F83C0EC0A52C6DE74A4758E31B3642A927C1E34D4574EC6C0AB272EDB8A1651DE99442B9A27645DCDFAE09F69C388F84E474E91C2A86CE2DEB60D2070F7AF42ACF7FA735F0CA2FF3B06CC771E9142222A2E2D1DA0AE0969C';
wwv_flow_imp.g_varchar2_table(530) := '031D32A553FC01073237C839B0FC6C58931B030074946E21EFB3F5F069940B0F41AB06DE3190940D0FC1439D9AA356A5F2D8782001B976CF7DAC13FDBFD872E1F8FA995B11D7F3064486064BE7145AFF49AB317CC136E90C2222A2625386F18475DA7B5C';
wwv_flow_imp.g_varchar2_table(531) := 'C1D14D3800BB494EC5F66BC3C22CB701F08E29863CCACA5D27D0B8662C1A548B914E2914A580A6B52AE0A14E57C09A9E83FDF149D24974094A010F76BC02E3DEE98AABBDE443963F8D5FB60B1F8F5D2E9D414444546C0A18933CEDBD7ED21DFEC4B36F2C';
wwv_flow_imp.g_varchar2_table(532) := 'F431510FF46F6A28BD1580E7AF28431E27343810333E7E18ADEA57914E29B295BB4FE2C3D14B7130C12A9D427F7375832AF8ECF12EB8BA81F7FD9A5AB6E3381EFD6A2A1C4E533A858888A8B84E39956A913AE51DDE37E6461C80DD2CB66BFF9734F440E9';
wwv_flow_imp.g_varchar2_table(533) := '0EF24E5191A158F0454FD4A95C5E3AA5C84CAD3175CD3EC48D5D81E4F46CE91CBF56253A12EF3FD211DDDA378387AFAF7651BB8F9FC3DD1F4F40761E1FBD4544445ECB846976B14E7F7F857488BFE125D06E96B37FC996B0A66BAF02D050BA85BC4FAEDD';
wwv_flow_imp.g_varchar2_table(534) := '81153B4FE0DEEB1A232C24503AA7489452685AB3027ADED412D0C09E13E751C0B3776E553E22046F766B8721AFDC8D16752A79E5F07BEC6C0ABA7EF63BD2B2F2A4538888884A407D6B9DF6DE50E90A7FE4856F7FBC5FC5FBBEAEE0B4387603A828DD42DE';
wwv_flow_imp.g_varchar2_table(535) := 'A9718D58CC8C7B045191A1D229C59692998B41B33761D8826DC8CD2F90CEF16991A1C1E875CB9578F9DEB65EF14CDF4B49B466E0EE8FC67385712222F26A1AD8533E3BBCF5D1052FE74BB7F8230EC0422A3CD0FF1653E905E0BF032AA666B52A62FAC70F';
wwv_flow_imp.g_varchar2_table(536) := 'A37C84F70E34009094968D81333762DCD29DC8E120EC525191A178F6CED678FAB6565EB5B2F3C570F82522221F916768B34DD2B4F7774B87F82B0E5F82A2BBF71FA8345E92EE20EFD5AC56054CFBF021AF3E13FCA7CCDC7CFCBE722F06CDDE8CD3B60CE9';
wwv_flow_imp.g_varchar2_table(537) := '1CAF56A772793C7D6B2B3C7A437384067BD7A5F217939C9E8D7BE226E2C8699B740A11115109E93ED629EFF2D267411C8005D5BB6D60705A44CE26002DA45BC87BB5AC5B09533F780865C3BDFB0CDF9FEC0E2766AC3B80918BB663FBD1B3D2395EC3500A';
wwv_flow_imp.g_varchar2_table(538) := '1D9BD7C2B3775C8DCE2DEA78E5FDBD17C3E19788887C8506A6D9A6BCD355BAC3DFF9C85B24EF15F540FFA686812D00BCFF141E89695EBB22A67DF410CA79F1FD9D1773F8B40D9356EEC58495BB614DCF91CEF14855A223D1B55D53F4ECD202352B9693CE';
wwv_flow_imp.g_varchar2_table(539) := '71A9446B06BA7E3609C7CEA648A710111195904AB023B065C694D7F9979A300EC01E20BAEB57CF2BA50749779077BBB26E654C7CB72BA2CB8449A7B89CBDC089855B8F60DADAFD58BEEB04F2EC0EE92451E5C243706BEBFAE8DEA129AE6F5A0386AF9CEE';
wwv_flow_imp.g_varchar2_table(540) := 'FD9B23A76DE8FAF9249CB1654AA71011119594C35066A7A4C9EFAD930E210EC01E23A6EB5713A0F4C3D21DE4DD6A562C87C9EF75F7CAE70417569EDD81D57B4E61F6C68398BBE9B0DF3C0BB65C78086EB9BA1EEE6EDB089D5AD4425080EF3EC56ED7F173';
wwv_flow_imp.g_varchar2_table(541) := '78B0DF14D83278D69F8888BC9F82FA2079CADB5F4877D0051C803D44F96EFDCB5A0CB51D1A75A45BC8BB552C1F81DFDFE98A66B52A48A794BA9CFC02ACDB178FE5BB4E60D59E533E759FA8A1145AD4A984CE2D6AA1738BDAB8BA7E1504580CE9AC52B77E';
wwv_flow_imp.g_varchar2_table(542) := '7F021E1D300D99B9FEF1C1061111F9BCD5565DFB064CE9EE940EA10B38007B909887BEBA1A26D60108926E21EF16191A84D16FDC870ECD6A4AA7B855A23503AB769FC4C68389D87AE40C8E9D4D81D6D25585136031D0AC6605B46E58156D1A5645FB6635';
wwv_flow_imp.g_varchar2_table(543) := '7D6275EFA298B9FE205EFC653EF20BFCFB12772222F219A94EAD5BA64E79275E3A84FE1F07600F13F3E057AF42E37BE90EF27E4101160C7AE10EDC7B5D23E91431A95979D87AF834B61D3D8B03F1C9389060C5A9F3693085A7E2A0000BEA578D46931AB1';
wwv_flow_imp.g_varchar2_table(544) := '685C230657D5AB8C2BEB5646980F3CB2A838B406BE9FB101FD27AFF19A0F2C8888882E4303FA1EEBE477E64887D03F7100F6385AC5741F301DC0BDD225E4FD0CA5F0C1231DF0E25D6D7CE6B13825956777E0F0691B0E255A119F948E446B064E5B339068';
wwv_flow_imp.g_varchar2_table(545) := 'CB444272BACB16D88A8A0C4585B2E1A851A1EC85AFD8B2A851A11CEA562E8FBA55A210E80797331786BDC089D7862EC4E4D5FBA4538888885C480DB04E7EEB6DE90AFA37BE25F640651FF9B27C80C3D8AE805AD22DE41BEEBDAE117E7CF636BF3DC35814';
wwv_flow_imp.g_varchar2_table(546) := '797607D2B2F3909695F7D77FDA1D176EDBC9B51720DF7EE1BF070618080F098261284486062338D082A8C85044458422AA4CA84FAECCEC6A2999B9E8F9CD0C6C3A98289D424444E4320AD8905CAE5C470CED5320DD42FFC677681E2AAADBD7D71A865E05';
wwv_flow_imp.g_varchar2_table(547) := '80130BB944E31AB118DBF75ED4F2B167C59277DA733209BDBE9B85534969D229444444AE741E8181575A7F7BEDAC74085D9CEF3E47C3CBE5EE5F9218DEECA60C00B74AB7906FB0A6E7E0F7557BD1A05A0CEA578992CE213F3679CD3E3CF1DD2C58F99823';
wwv_flow_imp.g_varchar2_table(548) := '2222F22D4ED3D00FD826BCB14B3A842E8D03B007CBD9B7645358B39BEB026821DD42BEC1EE7062E68683C8B33BD1BE590D285EA64B6E945FE0C09B2396A0FFE4B570384DE91C22222297D2C0FB29BFBF3D56BA83FE1BDFFD7AB8D86E7111DA08DB08A0A9';
wwv_flow_imp.g_varchar2_table(549) := '740BF9965B5BD5C30F7D6E41749930E914F203C7CEA6E2C9EF67617F7CB2740A111191EB693DCF3AF9ADBB00C5E71978389E01F67039FB57DAC39ADDBA14D08F030896EE21DF71F46C0A26AFD98F8655A351A77279E91CF2611356ECC113DFCDC4695BA6';
wwv_flow_imp.g_varchar2_table(550) := '740A1111516938955FE0BCCD7EB003EFEDF1023C03EC25A21FFEE65E683D1DFC7746A5E0C10E4DF1F5935DB84A34B9942D2307AF0D5B8CF95B8F4AA710111195967C65A8EBAD13DED8261D4285C333C05E2277EFE283E14D6F2E0785B6D22DE47BF69D4A';
wwv_flow_imp.g_varchar2_table(551) := 'C6F4F507D1B24E25548B29239D433E60D9AE1378F0ABE9D871FC9C740A111151A9510A2F5A27BE3947BA830A8F03B017C989BD7E596844506705D4946E21DF939E9D8F296BF64329856B1A548161F062032ABA8C9C7CBC336A193EFC6D25B2F2ECD23944';
wwv_flow_imp.g_varchar2_table(552) := '4444A5698CEDF7373F948EA0A2E13B5C2F13F3E8F795B5C3B1154015E916F25D4D6BC4E2EBA76EC2350DF8CB8C0A6FF1F6637873E452DEEB4B44447E406F2C9F1ED2E9E88297F3A54BA86838007BA19807075CA5955A0B2054BA857C975240F7F64DF169';
wwv_flow_imp.g_varchar2_table(553) := '8F8E5C299AFED3A9A474BC3D6A1996EE3C2E9D424444E40EE7E0B45C6D9BF2FA69E9102A3A0EC05E2AFAA16F1E83029F3346A5AE7C4408DEBCFF5A3C7DCB9530F8DC60FA1B87D3C4C8253BF1C5E4B5C8CE2B90CE212222728702439B3726FFFED61AE910';
wwv_flow_imp.g_varchar2_table(554) := '2A1EDE03ECA572F72EDE1D76C5CDD100DA48B7906FCBB33BB06CD749ACD9178F96752B21B62CCF0613B06AEF293CF1FD6CFCBE663F0A1CA6740E1111915B28AD9FB3FEFED60CE90E2A3E9ECEF1669DE202A22B472C06D0593A85FC43A0C5408FCE57E08D';
wwv_flow_imp.g_varchar2_table(555) := 'FBDAA252F908E91C12B0F754323E1ABF12ABF7C64BA7101111B9DB2FB6896FBC201D4125C301D8CB95E9F65D544080B9450175A45BC87F840607A267E72BF0DABD6D10C3FB83FDC2F9B46C7C35753DC6AFDC03A7A9A573888888DC6DBDCD91D51953E2F8';
wwv_flow_imp.g_varchar2_table(556) := '88032FC701D8075478F0DB164E43AF03102EDD42FEA56C58305EBAAB357ADF7A15C28203A573A814583372F0F3DCAD18B9642772F2799F2F1111F9A5B34A3BAFB6FEFEF619E9102A390EC03E22EA916FBB296012F8EF9404542C178EBEF7B6C5A39D9B21';
wwv_flow_imp.g_varchar2_table(557) := '28804B0BF8026B460E7E9ABB15A396EEE2E04B4444FE2C174A77B48D7F638B7408B90687251F12F5F0771F29A53F91EE20FF55B97C049EB9E54A3C7E6373940D0B96CEA162484ECFC14F73B760F4B2DD1C7C8988C8DF69A5D4A3D6F1AF4F900E21D7E100';
wwv_flow_imp.g_varchar2_table(558) := 'EC53B48A7EE4BB71007A4897907F0B0F09C4A39DAEC0B3B75D85EA3165A473A8108E9D4DC5C8A5BB3066F96EE4D91DD2394444441E407D689BF0FAE7D215E45A1C807D4CAD27E24232ED11CB0175AD740B91A1146EBAB2365EBBA70DAEAE57593A87FE87';
wwv_flow_imp.g_varchar2_table(559) := 'D6C0EA7DF118BA683B16EF380ECDB5AD88888800004AE9C9D6F17D1F0214FF76F4311C807D5085877FA8E854CECD006A48B710FDE9FAC6D5D1F3862B7067EB7A080E0C90CEF16BA9597998BAEE00462EDD85236752A4738888883C8A02D6954B0DBCF1E8';
wwv_flow_imp.g_varchar2_table(560) := '8297F3A55BC8F53800FBA8A81EDF34515AAD075056BA85E8EFCA8405E3DEB60DF160FB2668D3A08A748EDF30B5C69A7D0998BC763F666F3A8C5C5EE64C4444743127032C669BF3E3DE4C920EA1D2C101D88795EFF1FD6D06F41C005C96973CD215B52AA0';
wwv_flow_imp.g_varchar2_table(561) := '47C7A6B8B74D033E4FB8941C39938269EB0F62E29AFD386DCB94CE212222F2641926D02E75FCEB7BA443A8F47000F671518F7EFBBAD2EA5BE90EA2FF6228856B1A54C1DDD7D4C7DDD7D447A5F211D2495EED54523A16ED388ED99B8F60E3A1D3D2394444';
wwv_flow_imp.g_varchar2_table(562) := '44DEC0A1813B52C6BFBE583A844A1707603F10DDE3BB1F01BC2CDD415418865268D3B00AEEBEA6016E6B5517D5A223A5933C9EA935F69C4CC2A21DC7316BD3111C3A6D934E222222F232EA45DBF8D706495750E9E300EC0FBA4DB64407254E03708F740A';
wwv_flow_imp.g_varchar2_table(563) := '5151D5AC50161D9BD540C7A635D0F98A9A28C3E70B03006C19B9587B2001ABF6C563F18E1338979A259D444444E49594C2F7D6DF5E7F5DBA83DC8303B09FA8D6EDBBD0DC202C03C0C72391D70A0AB0A075FDCAE8D8AC06DA36A88A96752A222C38503ACB';
wwv_flow_imp.g_varchar2_table(564) := '2DCEA76563F39133D87CF80CD6EC4FC0BEF8643EB6888888A884945253ACF5D21F425C9C29DD42EEC101D88F443EFC4D4C90C5B21E407DE916225708B018685C2D06ADEB57C6D5F52AE1EABA9551A75239E9AC12CBB33B70E8740AB61D3B8B2D47CF62F3';
wwv_flow_imp.g_varchar2_table(565) := 'E13338959C219D454444E45334B0BA4C40FA2D2747C7E549B790FB7000F633151E1F58D7E9746E00102BDD42541A224383D0A04A141A578B4683AAD1685C2D1A0DAB46A34A94E72DAC6577389168CDC481442B0E24DA7020C18A7D09569C389F06A7C9D3';
wwv_flow_imp.g_varchar2_table(566) := 'BB444444A547EF779821EDD2273C9F2A5D42EEC501D80F453FF2DD3530D40A007CEE0CF98D889020548B8E44F5D832A81A15896A3191A81A75E17F474784A05C7808CA458420D062B8647B39F90548C9CA83352307B6CC5C583372712A391DF1C9197FFD';
wwv_flow_imp.g_varchar2_table(567) := 'E7D9942C98BC8E998888C8DDCE384DE7756913DE38251D42EEC701D84F45F5F8BEAB529804C035EFF6897C447848E08561382C1865C2831164B9F018ED008B8188907FDE6F9C6377C05EE0447E8103B9050E14384CA4E7E4C396998B3CBB437A57888888';
wwv_flow_imp.g_varchar2_table(568) := 'E8DFD24D4375481DFBEA6EE91092C101D88FC53CFA431F0D3D58BA8388888888C80D0A34D41D29BFBDBA443A84E47000F673313DBF8FD35A7D2CDD4144444444548A34349EB0FDF6EA58E9109265910E205939BB16AD0C6B716B2500574BB71011111111';
wwv_flow_imp.g_varchar2_table(569) := '9506A5F0B66DDCABBF4A77903CDEFF49B0D54D7B410153A43B88888888884AC140EBD857BF968E20CFC04BA0E9826E7141D121E5E602B8493A8588888888C825B41E63FBEDD55E80E263170800CF00D39FA6C4D9B5697405B05D3A8588888888C80566DA';
wwv_flow_imp.g_varchar2_table(570) := '12D39FE6F04B7FC733C0F40F151EFEA1A23350AD01505FBA8588888888A89816DB7253EFC29438BB740879160EC0F42F513D06565316BD06402DE91622222222A222DA64E40674499EF242967408791E5E024DFF9232FEE544C374DE04E0AC740B111111';
wwv_flow_imp.g_varchar2_table(571) := '115111EC290874DECEE1972E856780E992CA3FF1D3158669AE041025DD42444444447419C79469B6B7FEF61A4FE2D0257100A6FF14DD73E035805E0A2052BA8588888888E812CE38B4D12E7DDC4B27A443C8B37100A6CB8AE9F96367ADD43C00A1D22D44';
wwv_flow_imp.g_varchar2_table(572) := '44444444FF2309A6B3936DDC6B07A443C8F3F11E60BA2CEBD8575668E05E00F9D22D44444444447F93AA0CE3360EBF54581C80A95052C6BCBC180A8F0028906E21222222220290AE4C75B375D48BDBA543C87BF012682A92A89E03BB2A85890002A45B88';
wwv_flow_imp.g_varchar2_table(573) := '888888C86F6540E326DBD897374B879077E119602A9294B12F4FD54A3D02C021DD42444444447E29DB807917875F2A0E9E01A66289EAF5D3834A633C008B740B11111111F98D1C05DC611DFDD24AE910F24E3C034CC59232EAA549807E1A8029DD424444';
wwv_flow_imp.g_varchar2_table(574) := '44447E21170A7771F8A592E0D93B2AB6DC9D0B7686B6BC2D5141DD055E4D4044444444A5C7AEB4EE6A1BFDF262E910F26E1C80A94472772ED811DEF2F624007780433011111111B95E9E0175BF75CC4BF3A543C8FB7100A612CBD9B9606BE895779C56C0';
wwv_flow_imp.g_varchar2_table(575) := '9DE0104C44444444AE93A3B5BED736E6A585D221E41B38AC90CBC43CF1D3235AA931E0239288888888A8E47260E26EDB981797498790EFE0004C2E15F3C4CF0F698571E0104C44444444C597AD94BACB3AF28515D221E45B380093CB453DF15337A5D478';
wwv_flow_imp.g_varchar2_table(576) := '0081D22D44444444E475D2B5366E4D19FDFC46E910F23D7C0C12B95CCAE897A628E07E00F9D22D44444444E455D260983773F8A5D2C233C0546A629FF8F97653611A8010E91622222222F278C91665DE9434F2E55DD221E4BB380053A98A7A6AD0AD4A63';
wwv_flow_imp.g_varchar2_table(577) := '1A8030E91622222222F258E7B445774919F6E23EE910F26D1C80A9D4C53EF14B7BD3D0730094956E21222222220FA375BC0AC04DD6612F1E964E21DFC70198DC22A6D7CF5769A5160288956E21222222228F71C80C08B83975689F78E910F20F1C80C96D';
wwv_flow_imp.g_varchar2_table(578) := 'A29FF8A9110C6309806AD22D44444444246E7B408171DBF971CF25498790FFE02AD0E436B6D12F1D742ADD0EC011E9162222222292A381D56640C00D1C7EC9DD3800935BA58D78F19461A28302764BB71011111191FB69605E5866FEADA943FBA44BB790';
wwv_flow_imp.g_varchar2_table(579) := 'FFE125D024A2CC53C3A302619F0FA08D740B11111111B9CD049BC5F20486F629900E21FFC433C0242263C4D329C116CB0D1A9827DD42444444446EF1ABAD7AD2631C7E4912CF0093ACDE4302A34DE77068F4944E21222222A252F3B96DC4F31F4A471071';
wwv_flow_imp.g_varchar2_table(580) := '00260FA055CCD3BF7CACB5FA58BA84888888885CCA0985576CC39F1F241D42047000260F12FDF4AF2F43EBEFC14BF3898888887C41BED6AA67CAC8E7264B8710FD8903307994A8677E7D40698C07102CDD4244444444C596621AC63DA943FBAC950E21FA';
wwv_flow_imp.g_varchar2_table(581) := '3B0EC0E471A29E1C74B3328CA90022A55B88888888A86814F40998B8CD3AF2F943D22D44FF8B033079A4F2BD875C6198E63C00D5A55B88888888A8D0F62000B7D9063F775A3A84E86278AF2579A4D4A17DF628D3D116C00EE916222222222A94A53AB7A0';
wwv_flow_imp.g_varchar2_table(582) := '1D875FF2643C034C1E2DF6F94111CE02CB2405DC2EDD42444444449734D6A6D4D37CC62F793A0EC0E4F97A0F098CD6180CE827A55388888888E81FB4023EB30EEB1307282D1D4374391C80C96B443D33F815057C075EBA4F444444E409F201FD8C6DD873';
wwv_flow_imp.g_varchar2_table(583) := 'E3A443880A8B03307995E83E831F85C670F03149444444448274B2D6967B5386F55E2F5D4254141C80C9EB443D33F43AA5F4740015A55B88888888FCD06143E93B93873C7B443A84A8A8380093578A7A7A58356598B3015C29DD42444444E437B45AE22C';
wwv_flow_imp.g_varchar2_table(584) := '08EC9E36BA579A740A5171F05E4AF24A29C39F4934021C1D00CC966E21222222F2071A186A53FA0E0EBFE4CD780698BC5BB7C996E8A8B42F00BC2D9D42444444E4A39C00DEB70DE9FD95740851497100269F10D567D8530AFA170041D22D444444443E24';
wwv_flow_imp.g_varchar2_table(585) := 'C334F150EAB0DE0BA443885C810330F98C986786768481A91A88916E21222222F27EFA1034EEB50DED7350BA84C8553800934F897A7E6475653AA703FA6AE916222222226FA581F96648608FB41F78BF2FF9160EC0E4736A3D312A2433C43118C0E3D22D';
wwv_flow_imp.g_varchar2_table(586) := '444444445E4643AB01B6CA89EF212ECE948E2172350EC0E4B3629E1BD65B6B0C021020DD42444444E405B234F41329837B4F930E212A2D1C80C9A7C53C37B4A3D66A0A8058E916222222220F76D484BA2F75F0D37BA543884A130760F279E57B0FA96158';
wwv_flow_imp.g_varchar2_table(587) := '8CE9005A49B71011111179A0450E143C9CFEEBF3A9D22144A58D0330F985D8E7074568048DD05A75976E21222222F2101AC0009BB5CCFB98D2DD291D43E40E1C80C9AFC43C37ACB786FA097C5E30111111F9B70C0D3C9DF2EBD353A44388DC890330F99D';
wwv_flow_imp.g_varchar2_table(588) := 'E8E787B6068C29006A4AB710111111B99B06765A806EC9BF3C7D54BA85C8DD3800935F8AEC3D242628207002A06F926E21222222721B8D71C14EC7B36786F6C9914E2192C00198FC57B7C99698D8CC0F35F02100433A87888888A814E529AD5EB1FEFAE4';
wwv_flow_imp.g_varchar2_table(589) := '50E91022491C80C9EFC53C37FC0EAD8C71802E2FDD42444444540A8E5A2CE89AF4D353BBA44388A47100260250F1B991751C86FE1D406BE91622222222179A6116387AA50EED932E1D42E409380013FD296E72508C35ABBFD67815FCBD41444444DEAD40';
wwv_flow_imp.g_varchar2_table(590) := '69FDAEF59727BF0394968E21F2147C934FF43FA25E187593821E07A0A2740B11111151319CD21A8FA4FCF2E47AE910224FC30198E822A25E1A560DDA324101EDA55B888888880A4D63AA33503D93F643AF34E914224FC40198E852BA4DB6C454CCFC5043';
wwv_flow_imp.g_varchar2_table(591) := '7D00C0229D43444444F41F7235D4BB293FF7FA513A84C893710026BA8CE89746768156E30054926E21222222FA37BD4359F4C3D61F9F3A245D42E4E9F8EC53A2CBB0FDF4E4D240A59B037AB6740B111111D1DF68683DB0BCCABA96C32F51E1F00C305111';
wwv_flow_imp.g_varchar2_table(592) := '44BF34BA27A07F01102EDD42444444FE4B4159619ABDAC839E9C2BDD42E44D3800131551F4AB631BC3698E0770A5740B111111F9218525CA743E61FDF9A933D22944DE869740131591ED879E076CF9F96D94D29F0030A57B888888C86FE401EA1D5BD4C9';
wwv_flow_imp.g_varchar2_table(593) := '5B39FC12150FCF00139540F48B236F80618C01504DBA858888887C9702763B957A2CF5C7C7774BB71079339E01262A01DBCF4F2E2FB0385A68E077E916222222F2490E287C6ECDCBBF9AC32F51C9F10C30918B44BD34A6ABA1F0AB0662A45B888888C8FB';
wwv_flow_imp.g_varchar2_table(594) := '29E084D2C6E3C93F3DB646BA85C85770002672A18A6F8CADE028308700EA5EE916222222F2620AE30C7BE8F3C9BF74CF924E21F2251C80894A41D4CBA37B29657C0FE8B2D22D444444E455CE195A3D953CB0E77CE910225FC40198A894C4BC3AAEB2A9F5';
wwv_flow_imp.g_varchar2_table(595) := '30057D87740B111111793E054CC90F087C3EF3DB47ACD22D44BE8A033051A9D22AFAD571CF43A33F8008E91A222222F248894AA967AD3F3C364F3A84C8D77100267283727DC7D7B438CDA180BE59BA858888883C8752986287FDD98CEF9F4E916E21F207';
wwv_flow_imp.g_varchar2_table(596) := '1C8089DC28EA95B1DD94C2AF00A2A55B88888848D449AD55EF941F1F5B221D42E44F380013B959EC9BA32A998E809FA1F180740B111111B99DD6C03023C8FE8675C05399D23144FE8603309190A8D7C776535AFD0CA082740B111111953E0D1C3794F1B4';
wwv_flow_imp.g_varchar2_table(597) := 'F5BB1E2BA45B88FC95211D40E4AF52BEEB39C56E589A02F84DBA858888884A5501A0FB8721B819875F22593C034CE401625E1BDB51038301D548BA858888885C6ABDE9D47D5207F6DC2B1D42441C80893C46ADB85121591901EF688D7700152CDD434444';
wwv_flow_imp.g_varchar2_table(598) := '442592A6A1E352CA1EFB097171A6740C115DC00198C8C3C4BE39BEBEE9C060287D83740B11111115CB5C68E7B3B6EF1F3F2D1D4244FFC40198C8236915FDFA6F8F29A86F3510235D4344444497A781E3D0FA8594EF1F5B28DD424417C745B0883C92D2B6';
wwv_flow_imp.g_varchar2_table(599) := 'EF1E1B6B388D66B8B04896962E222222A24B2A8056FDC27450330EBF449E8D678089BC40EC9BE3DA6BD3F85903CDA55B888888E81F966BE89752BE7D74BF7408115D1E0760226F11B7222026F3CC931AE807205A3A878888C8BFA9D3D0FA3DDB773DC64A';
wwv_flow_imp.g_varchar2_table(600) := '971051E1710026F23291EF8E890ECA0FF8080A2F82B731101111B99B1D1A838DBCC0F7937FE99E251D434445C30198C84B45F7FDBD3560FE0CE01AE9162222223FB114C04BB66F1F39281D4244C5C30198C89B759B6C89AEE1E803854FC1CBA28988884A';
wwv_flow_imp.g_varchar2_table(601) := 'CB1143E95793BFEE315F3A84884A860330910F28F7EAA8729680907700FD2A8060E91E222222DFA07314F075B9FCF25F1EFDE9F67CE91A222A390EC0443E24F6CDF1F5B536BED0D0DDA45B888888BC98A9A0A639B4F966DAB73D4E49C71091EB700026F2';
wwv_flow_imp.g_varchar2_table(602) := '41D16F4DBC51697CC7C72611111115D972C3893792BF7B7887740811B91E0760225F15B722203AE76C6FA5D5271A8891CE212222F2700714D45BD6AF1F9A2B1D4244A5870330918F8B8D9B1CA1739C6F688DB700844AF7101111799814280CB08559BE47';
wwv_flow_imp.g_varchar2_table(603) := '5C77BB740C11952E0EC0447E22FAB5C9557580F323053C05C022DD43444424CC0E85C14E7BDEC7693FF44A938E2122F7E0004CE467CABF3DF90A8B36BFD2C06DD22D444444024C68FCEEB4E8F7D3FA3F7C523A8688DC8B0330919F8A7A7BE2754AABAF01';
wwv_flow_imp.g_varchar2_table(604) := '5C27DD424444E4160A4B9589B7AD5F3FB45D3A858864700026F26B5AC5BC39F921ADF4A700EA49D710111195060DACD65ABD97FAF583EBA45B884816076022BAB06274EEF94734F0B182AA239D434444E4121A7BB5A13F4DE9FFD014E91422F20C1C8089';
wwv_flow_imp.g_varchar2_table(605) := 'E8FFC54D0E8AC9C3135AEB380095A5738888888AE9A452EA4B6BC8FEE1888B33A56388C873700026A27FA9F8C6D8708711FC3214DE04505EBA878888A8503412B4A13F4D09A9381A719D1DD23944E479380013D125958B9B51CE926FEF0B8D5700444AF7';
wwv_flow_imp.g_varchar2_table(606) := '1011115D4202A0FB97CF2E33E2E84FB7E74BC71091E7E2004C449755E6B5C95141C1FA65ADD52B502827DD434444F48704ADF16D99D0EC2127E37AE549C71091E7E3004C448516F3D6AC486DE43D0FA8B7C14BA38988484EBCD6F88E832F111515076022';
wwv_flow_imp.g_varchar2_table(607) := '2AB2BF0661A5DE824694740F1111F90D0EBE4454221C8089A8D8A2E27E2BA3F2835F06F4AB00A2A57B8888C8679D54D0FDACC16A0CE2BADBA56388C87B710026A212ABF8C6D8F082A090A79536FA02BABA740F1111F98CA35AE99FA332230673712B2272';
wwv_flow_imp.g_varchar2_table(608) := '050EC044E43A719383A2EDEA2140BD03AD1B4BE7101191D7DA068581B6A07DBFF139BE44E44A1C8089C8F5E2E28C9882667768ADDF07D0463A878888BC83825E07657C65FDA2EB1CE91622F24D1C8089A854457F30AD0B4CFD0E801BA55B8888C8231500';
wwv_flow_imp.g_varchar2_table(609) := '9864C2F82AB5DFFD7BA56388C8B771002622B7887D67EA95A681D70174071024DD434444E2B2013DD2A98C6FD3BE78E094740C11F9070EC044E456B16F4EAEA403D5B31AEA4570E56822227F7456410FCDD7969F32BFBCDF261D4344FE8503301189A815';
wwv_flow_imp.g_varchar2_table(610) := '372A24D31ED11D4ABD0BA091740F11119536B50DDA1C68B3A64CC4D03E05D23544E49F38001391ACB83823BAE08A7B34F0AA023A48E71011914B156885694AE91F6C9F75DD241D4344C40198883C46F4BB531BC1C073807A0A40B8740F1111155B3AA0C7';
wwv_flow_imp.g_varchar2_table(611) := '980EF3DBD4AFBAC74BC71011FD89033011799CB2EFCC2D1F1890FFA4069E035057BA8788880A4701BB01FC12141034EE4CDC5D39D23D4444FF8B03301179AEB83823DA71C50D4AA1B7D6B81F80453A898888FE255F29CCD61A436D9F3FB0543A8688E8BF';
wwv_flow_imp.g_varchar2_table(612) := '70002622AF101B37AB9ED3613E6B403FAE8118E91E2222C211A53134DFC428AEE64C44DE820330117997B8C941510501F728A57A03FA46F0CF3122227772026A85D26AA0F58B7BE6024A4B0711111505DF381291D78A899BDEC074E219053C0E2056BA87';
wwv_flow_imp.g_varchar2_table(613) := '88C887256860B861B10CB7C6DD73463A8688A8B838001391F78B9B1C146506DDA7B4EE0DA033F8671B11910BA83C0DCC84C2E81463E712C4C599D245444425C5378944E453A2E2A655530E4B0F28FD0CB88234115171EC875663ED01961199717759A563';
wwv_flow_imp.g_varchar2_table(614) := '88885C89033011F9AC980F67B4320DF4561A8F008890EE2122F260A95A618AC53406277F76CF0EE91822A2D2C20198887C5ECC5BB322CD10DD15309F5050EDC13FFB888800C00160010C8CB49D499A87A17D0AA48388884A1BDF0412915FA9F0C18CBA0E';
wwv_flow_imp.g_varchar2_table(615) := '038F28A847003492EE21227233AD80F51A981858609F7CEECBEEC9D2414444EEC4019888FC56D487B39B1ACAD90D503D35505BBA8788A814ED57D0539461FC961C77CF51E9182222291C808988E2E28CF2687E9DA18D6E0A78440331D249444425A69000';
wwv_flow_imp.g_varchar2_table(616) := '8D19A632A7A4C6DDBF563A8788C81370002622FA9B7A2FCD0F4E2D6FBF5D1BAA9B02EE8446A4741311511124017AAA69AA09A99FDDBD1E505A3A8888C89370002622BA845A712B42B2CCF49BB4816E80BA1B1A65A59B8888FE452119D00B958929D673E7';
wwv_flow_imp.g_varchar2_table(617) := '1772312B22A24BE3004C445408F506CE0F4E4DB1B7078CBB00FD308058E92622F26BF1809A69424D49C5B6F5888B33A5838888BC01076022A2A28A9B1C148BA02E4EA87B157017804AD24944E4170E0398A60C739AF5A3FBB649C7101179230EC0444425';
wwv_flow_imp.g_varchar2_table(618) := '111767441B2D5BC3B4DC03E8BB0134954E22229F61026A0B80B926D4CCD4B83BF74A071111793B0EC044442E54F6B3D9B52DA6BE5B29E34E68740474A074131179951C282C57C01C987AAE35EE9E33D2414444BE840330115129898C9B1313AC708B8679';
wwv_flow_imp.g_varchar2_table(619) := '1BA06E06EF1B26A28BD0C071A531572B3D3745E7AF425C77BB74131191AFE2004C44E40E717146345A5DAD156E53C06D806E0DC090CE2222117628AC575ACDD7869A6BFBF0CE03D2414444FE820330119180C8B83931C1066ED61AB703B8094005E92622';
wwv_flow_imp.g_varchar2_table(620) := '2A4D6A3FA097181A8B8DF0A055E7DFBC255BBA8888C81F71002622F20015E3E6D6711AE802A5BB688D9B0094936E22A21249560A2BA1D552A7A917A6C6DD152F1D4444441C8089883CCF90AD81E593CFB6511A3742E34605B405C0C5B4883C5B36A0D603';
wwv_flow_imp.g_varchar2_table(621) := '7AA9611A8B933FBE7D1794D2D2514444F44F1C8089883C5C6CDCE408878A686F40B7574A77D0406B0041D25D447E2E5D036B15F46A6D5856A73842B722AEB3433A8A8888FE1B076022226F33646B60CCF973CDB5421740B703547B0065A5B3887C5C0680';
wwv_flow_imp.g_varchar2_table(622) := 'CD00969A4AAF4B8DADBC097DAE2E908E2222A2A2E1004C44E4ED866C0D8C4A4E6A65C06CA74D5C0785B6002A4B6711793585A3D0D8048DF51AE6AA940FEFDACF4B9A8988BC1F076022221F141337AB0A028C565AABEB15D04E03AD008448771179A82C05';
wwv_flow_imp.g_varchar2_table(623) := 'ECD25A6FD3865A1BE8085C753EEE9624E9282222723D0EC044447EA056DC8A908C80ECAB00D5D6D0B846035701A807FE3D40FEC70960BF52D8649A6A03606C4A31371E405C9C291D464444A58F6F7C8888FC54CC57B3229D05412D94365B298556B87096';
wwv_flow_imp.g_varchar2_table(624) := 'B8110043BA8DC8450A001C01B04D6B6C53D0FB0A9C01DB33E26E4D910E232222191C808988E82F5171F3CB1841B8D274EAAB944273285C018DA6E0E5D3E4F93234B053013BA1B0C3E234772455ACBC9F0B551111D1DF71002622A2FF3679B225FA68687D';
wwv_flow_imp.g_varchar2_table(625) := 'AD8DE6CA54CD61E00AA5F5151AA805FE3D42EE97AF8103000E28A8BDD0E6410B8C5D491FDC769C8B541111D1E5F08D0B1111154B54DCFC322AC06804433786693682520D01DD18507501044AF791D7CB83C601281C00F45E2875C0703AF72537CC3D8EEE';
wwv_flow_imp.g_varchar2_table(626) := 'DD9DD2714444E49D38001311916B0DD91A1893945C475B74636834844643AD743D0555074055E93CF228F9803EA18163865247B48963DAA28F5A60399A5C37E304075D222272350EC04444E436B5E256846418F9750DC3AC63027595421DAD5157295D07';
wwv_flow_imp.g_varchar2_table(627) := '50B5C07B8D7D51AAD63A5E291CD3C03103C6510D1C736AF3689A634B02575F26222277E2004C44441EA3EC9773CB5B0A02AA2885CACAD07534541D685D05062A6B8D3A0AA8012040BA93FE92AF81D30670160A67B456C73570165A9F312CC671477ECEB1';
wwv_flow_imp.g_varchar2_table(628) := 'B4B8FBD2A423898888FEC401988888BC47DC8A80E880AC8ACA1254091A954DEDACA094AA02A00280CA4AA39236744568550540B874AE977200485640328033FACFFFAED5190D33D90492032DC619C334CF9C7BEFF664E9582222A2A2E0004C44443EA9DE';
wwv_flow_imp.g_varchar2_table(629) := 'C0F9C169B901D14E878E0AB038A24C6D446B8D2843234A2B1DA3B48AD2D0E5A154590065A05524948E001001A0BC74BF0B6402480390A6B54A554AA741A934689DA6A0D24CADD314900AA5D3945269A652C941A699C4A19688887C1907602222A28B888D';
wwv_flow_imp.g_varchar2_table(630) := '5B11A103F323956944E8005DC6A99D218632420DAD839C0AE1C6854BB12301656898650100A6F1AFC15929049B5A87FDE7C60C9DA94CC3F1CF1FD45950FA6FCFB055990A709840AA021C80CA3495CEB36823170E33CB12E02CC8CD0F480B80E94889BB3D';
wwv_flow_imp.g_varchar2_table(631) := '43FAF811111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111F990FF03575AE02C0E95CFCE0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(167798781116730635089)
,p_file_name=>'steam_nexus_icon.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260511101110Z')
,p_updated_on=>wwv_flow_imp.dz('20260511101110Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(167789095484515433150)
,p_name=>'Administration'
,p_static_id=>'administration'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'declare',
    'begin',
    'if v(''APP_USER'') = ''ADMIN'' then ',
    'return true;',
    'end if;',
    'return false;',
    'end;')))).to_clob
,p_error_message=>'Only for admins'
,p_version_scn=>'15767929491211'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260511093730Z')
,p_updated_on=>wwv_flow_imp.dz('20260511093730Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/user_only
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(168156371422157300903)
,p_name=>'USER_ONLY'
,p_static_id=>'user-only'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'return apex_util.get_session_state(''G_USER_ID'') is not null;',
    '')))).to_clob
,p_version_scn=>'15768235891853'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260512091740Z')
,p_updated_on=>wwv_flow_imp.dz('20260512091740Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items/app_admin_hash
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(167782688241371613055)
,p_name=>'APP_ADMIN_HASH'
,p_protection_level=>'I'
,p_version_scn=>'15767925596637'
,p_created_on=>wwv_flow_imp.dz('20260511090942Z')
,p_updated_on=>wwv_flow_imp.dz('20260511090942Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/logic/application_items/g_user_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(167821355505769500294)
,p_name=>'G_USER_ID'
,p_protection_level=>'I'
,p_version_scn=>'15767958211972'
,p_created_on=>wwv_flow_imp.dz('20260511113734Z')
,p_updated_on=>wwv_flow_imp.dz('20260511113734Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/shared_components/logic/application_computations/app_admin_hash
begin
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(167785310946094672708)
,p_computation_sequence=>10
,p_computation_item=>'APP_ADMIN_HASH'
,p_static_id=>'app-admin-hash'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select STANDARD_HASH(''admin''|| to_char(sysdate, ''YYMMDD''),''SHA256'') from dual'
,p_version_scn=>'15767926713779'
,p_created_on=>wwv_flow_imp.dz('20260511091938Z')
,p_updated_on=>wwv_flow_imp.dz('20260511091938Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/developers_age_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(167816194241884420536)
,p_lov_name=>'DEVELOPERS.AGE_RATING'
,p_static_id=>'developers-age-rating'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEVELOPERS'
,p_return_column_name=>'DEVELOPER_ID'
,p_display_column_name=>'DEVELOPER_NAME'
,p_default_sort_column_name=>'DEVELOPER_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'15767957185434'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511113338Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/games_title
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(168197632078056414808)
,p_lov_name=>'GAMES.TITLE'
,p_static_id=>'games-title'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GAMES'
,p_return_column_name=>'GAME_ID'
,p_display_column_name=>'TITLE'
,p_default_sort_column_name=>'TITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'15768255247170'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/shared_components/user_interface/lovs/promotions_code
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(168231542535120067188)
,p_lov_name=>'PROMOTIONS.CODE'
,p_static_id=>'promotions-code'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PROMOTIONS'
,p_return_column_name=>'PROMO_ID'
,p_display_column_name=>'CODE'
,p_default_sort_column_name=>'CODE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'15768281785099'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122311Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/shared_components/user_interface/lovs/users_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(168197631363453414807)
,p_lov_name=>'USERS.USERNAME'
,p_static_id=>'users-username'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USERS'
,p_return_column_name=>'USER_ID'
,p_display_column_name=>'USERNAME'
,p_default_sort_column_name=>'USERNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'15768255247163'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(161107320986379470867)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(161107315498185470856)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074107Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(167789965955037805449)
,p_short_name=>'Admin Catalog'
,p_static_id=>'admin-catalog'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260511094146Z')
,p_updated_on=>wwv_flow_imp.dz('20260511094146Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(167806424471609169596)
,p_short_name=>'Admin Dashboard'
,p_static_id=>'admin-dashboard'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168217109383643771116)
,p_short_name=>'Cart'
,p_static_id=>'cart'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
,p_created_on=>wwv_flow_imp.dz('20260512113350Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113350Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168202307924501517265)
,p_short_name=>'Catalog'
,p_static_id=>'catalog'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20260512105131Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105131Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168205318842538589244)
,p_short_name=>'Game Detail'
,p_static_id=>'game-detail'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20260512110331Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110331Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(167816209228749420552)
,p_short_name=>'Game management'
,p_static_id=>'game-management'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168157414760049334197)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260512092313Z')
,p_updated_on=>wwv_flow_imp.dz('20260512092313Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168203162420524553749)
,p_short_name=>'Home'
,p_static_id=>'home-2'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260512105736Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105736Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168154683329503248679)
,p_short_name=>'LOAD_G_USER_ID'
,p_static_id=>'load-g-user-id'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260512090858Z')
,p_updated_on=>wwv_flow_imp.dz('20260512090858Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(161111034838350177284)
,p_short_name=>'Main'
,p_static_id=>'main'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260422055422Z')
,p_updated_on=>wwv_flow_imp.dz('20260422055422Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(161111533313484199566)
,p_short_name=>'Main Window'
,p_static_id=>'main-window'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260422055805Z')
,p_updated_on=>wwv_flow_imp.dz('20260422055805Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168224265230781233477)
,p_short_name=>'My Library'
,p_static_id=>'my-library'
,p_link=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>50
,p_created_on=>wwv_flow_imp.dz('20260512115306Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115306Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168173117790866246817)
,p_short_name=>'Profile'
,p_static_id=>'profile'
,p_link=>'f?p=&APP_ID.:70:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>70
,p_created_on=>wwv_flow_imp.dz('20260512100627Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100627Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(968940039110921567)
,p_short_name=>'Purchases'
,p_static_id=>'purchases'
,p_link=>'f?p=&APP_ID.:90:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>90
,p_created_on=>wwv_flow_imp.dz('20260517074107Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074107Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168197630246096414725)
,p_short_name=>'Reviews'
,p_static_id=>'reviews'
,p_link=>'f?p=&APP_ID.:80:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>80
,p_created_on=>wwv_flow_imp.dz('20260512103426Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103426Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(168231542081722067096)
,p_short_name=>'Transaction history'
,p_static_id=>'transaction-history'
,p_link=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>60
,p_created_on=>wwv_flow_imp.dz('20260512122310Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122310Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(161107316318920470858)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_list_template=>4072361143931175087
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4072363937200175119,2000,'universal-theme',8842.242)
,p_version_scn_master=>'UT_REFRESH_REQUIRED'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260512181009Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(161107314820854470855)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'15760450290073'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/app_authentication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(167781227872192561691)
,p_name=>'App Authentication'
,p_static_id=>'app-authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'authentication_function', 'PKG_USER_ACCOUNT.my_authentication',
  'enable_legacy_attributes', 'N')).to_clob
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'15767924768969'
,p_created_on=>wwv_flow_imp.dz('20260511090108Z')
,p_updated_on=>wwv_flow_imp.dz('20260511090108Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(161107315117434470856)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'15760450290275'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME1'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260512105736Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512110320Z')
,p_created_by=>'NURBOLAT'
,p_last_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168203161970522553748)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512105736Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105736Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(156040738683986651605)
,p_branch_name=>'Go to Home'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20260512110320Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110320Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Main'
,p_alias=>'MAIN'
,p_step_title=>'Main'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260422055422Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260422055422Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161111034369140177283)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260422055422Z')
,p_updated_on=>wwv_flow_imp.dz('20260422055422Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Main Window'
,p_alias=>'MAIN-WINDOW'
,p_step_title=>'Main Window'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260422055805Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260422055805Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161111532861859199565)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260422055805Z')
,p_updated_on=>wwv_flow_imp.dz('20260422055805Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'LOAD_G_USER_ID'
,p_alias=>'LOAD-G-USER-ID'
,p_step_title=>'LOAD_G_USER_ID'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20260512090858Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512091608Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168154682855365248678)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512090858Z')
,p_updated_on=>wwv_flow_imp.dz('20260512090858Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163383136896877208949)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD_G_USER_ID'
,p_static_id=>'load-g-user-id'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :APP_USER is not null',
'       and upper(:APP_USER) <> ''ADMIN'' then',
'        select user_id',
'          into :G_USER_ID',
'          from users',
'         where upper(username) = upper(:APP_USER);',
'    end if;',
'exception',
'    when no_data_found then',
'        :G_USER_ID := null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'9999'
,p_process_when_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_internal_uid=>163383136896877208949
,p_created_on=>wwv_flow_imp.dz('20260512091608Z')
,p_updated_on=>wwv_flow_imp.dz('20260512091608Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Admin Catalog'
,p_alias=>'ADMIN-CATALOG'
,p_step_title=>'Admin Catalog'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(167789095484515433150)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20260511094146Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260511094651Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167789965494338805448)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260511094146Z')
,p_updated_on=>wwv_flow_imp.dz('20260511094146Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(167790132590721463101)
,p_name=>'New'
,p_static_id=>'new'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from users'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260511094336Z')
,p_updated_on=>wwv_flow_imp.dz('20260511094336Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(167790133030765463106)
,p_query_column_id=>5
,p_column_alias=>'CREATED_AT'
,p_column_display_sequence=>50
,p_column_heading=>'Created At'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260511094336Z')
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(167790132874628463104)
,p_query_column_id=>3
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>30
,p_column_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260511094336Z')
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(167790132929649463105)
,p_query_column_id=>4
,p_column_alias=>'PASSWORD_HASH'
,p_column_display_sequence=>40
,p_column_heading=>'Password Hash'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260511094336Z')
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(167790132702353463103)
,p_query_column_id=>2
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>20
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260511094336Z')
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(167790132610843463102)
,p_query_column_id=>1
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'User Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260511094336Z')
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(167790133130918463107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(167790132590721463101)
,p_button_name=>'Add'
,p_static_id=>'add'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_created_on=>wwv_flow_imp.dz('20260511094651Z')
,p_updated_on=>wwv_flow_imp.dz('20260511094651Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const steamUserPages = document.createElement(''style'');',
'steamUserPages.textContent = `',
'',
'  /* === APPLY ONLY TO USER PAGES === */',
'  .page-10,',
'  .page-20,',
'  .page-30,',
'  .page-40,',
'  .page-50 {',
'    background-color: #0d1117 !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-10 .t-Body,',
'  .page-20 .t-Body,',
'  .page-30 .t-Body,',
'  .page-40 .t-Body,',
'  .page-50 .t-Body,',
'  .page-10 .t-Body-main,',
'  .page-20 .t-Body-main,',
'  .page-30 .t-Body-main,',
'  .page-40 .t-Body-main,',
'  .page-50 .t-Body-main,',
'  .page-10 .t-Body-content,',
'  .page-20 .t-Body-content,',
'  .page-30 .t-Body-content,',
'  .page-40 .t-Body-content,',
'  .page-50 .t-Body-content {',
'    background-color: #0d1117 !important;',
'    background-image: radial-gradient(ellipse 80% 45% at 50% -10%, rgba(30,80,130,0.45), transparent 65%) !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  /* === HEADER === */',
'  .page-10 .t-Header,',
'  .page-20 .t-Header,',
'  .page-30 .t-Header,',
'  .page-40 .t-Header,',
'  .page-50 .t-Header,',
'  .page-10 #t_Header,',
'  .page-20 #t_Header,',
'  .page-30 #t_Header,',
'  .page-40 #t_Header,',
'  .page-50 #t_Header {',
'    background-color: #0d1117 !important;',
'    border-bottom: 1px solid #2a475e !important;',
'    box-shadow: 0 2px 16px rgba(0,0,0,0.7) !important;',
'  }',
'',
'  .page-10 .t-Header-logo-link,',
'  .page-20 .t-Header-logo-link,',
'  .page-30 .t-Header-logo-link,',
'  .page-40 .t-Header-logo-link,',
'  .page-50 .t-Header-logo-link {',
'    color: #ffffff !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.08em !important;',
'  }',
'',
'  /* === PAGE TITLE === */',
'  .page-10 .t-Body-title,',
'  .page-20 .t-Body-title,',
'  .page-30 .t-Body-title,',
'  .page-40 .t-Body-title,',
'  .page-50 .t-Body-title {',
'    background: transparent !important;',
'    border-bottom: 1px solid rgba(102,192,244,0.2) !important;',
'  }',
'',
'  .page-10 .t-Body-title h1,',
'  .page-20 .t-Body-title h1,',
'  .page-30 .t-Body-title h1,',
'  .page-40 .t-Body-title h1,',
'  .page-50 .t-Body-title h1 {',
'    color: #66c0f4 !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.06em !important;',
'  }',
'',
'  /* === REGIONS / CARDS === */',
'  .page-10 .t-Region,',
'  .page-20 .t-Region,',
'  .page-30 .t-Region,',
'  .page-40 .t-Region,',
'  .page-50 .t-Region,',
'  .page-10 .t-Card-wrap,',
'  .page-20 .t-Card-wrap,',
'  .page-30 .t-Card-wrap,',
'  .page-40 .t-Card-wrap,',
'  .page-50 .t-Card-wrap,',
'  .page-10 .a-IRR-container,',
'  .page-20 .a-IRR-container,',
'  .page-30 .a-IRR-container,',
'  .page-40 .a-IRR-container,',
'  .page-50 .a-IRR-container {',
'    background: linear-gradient(160deg, #1e2d3e 0%, #16202d 100%) !important;',
'    border: 1px solid #2a475e !important;',
'    border-radius: 6px !important;',
'    box-shadow: 0 18px 45px rgba(0,0,0,0.28) !important;',
'  }',
'',
'  .page-10 .t-Region-header,',
'  .page-20 .t-Region-header,',
'  .page-30 .t-Region-header,',
'  .page-40 .t-Region-header,',
'  .page-50 .t-Region-header {',
'    background-color: rgba(13,17,23,0.35) !important;',
'    border-bottom: 1px solid rgba(102,192,244,0.18) !important;',
'  }',
'',
'  .page-10 .t-Region-title,',
'  .page-20 .t-Region-title,',
'  .page-30 .t-Region-title,',
'  .page-40 .t-Region-title,',
'  .page-50 .t-Region-title,',
'  .page-10 .t-Card-title,',
'  .page-20 .t-Card-title,',
'  .page-30 .t-Card-title,',
'  .page-40 .t-Card-title,',
'  .page-50 .t-Card-title {',
'    color: #66c0f4 !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.05em !important;',
'  }',
'',
'  .page-10 .t-Region-body,',
'  .page-20 .t-Region-body,',
'  .page-30 .t-Region-body,',
'  .page-40 .t-Region-body,',
'  .page-50 .t-Region-body,',
'  .page-10 .t-Card-body,',
'  .page-20 .t-Card-body,',
'  .page-30 .t-Card-body,',
'  .page-40 .t-Card-body,',
'  .page-50 .t-Card-body {',
'    color: #c7d5e0 !important;',
'  }',
'',
'  /* === INTERACTIVE REPORTS === */',
'  .page-10 .a-IRR-table,',
'  .page-20 .a-IRR-table,',
'  .page-30 .a-IRR-table,',
'  .page-40 .a-IRR-table,',
'  .page-50 .a-IRR-table {',
'    background-color: transparent !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-10 .a-IRR-table th,',
'  .page-20 .a-IRR-table th,',
'  .page-30 .a-IRR-table th,',
'  .page-40 .a-IRR-table th,',
'  .page-50 .a-IRR-table th {',
'    background-color: #101a24 !important;',
'    color: #66c0f4 !important;',
'    border-color: #2a475e !important;',
'  }',
'  .page-10 .a-IRR-table td,',
'  .page-20 .a-IRR-table td,',
'  .page-30 .a-IRR-table td,',
'  .page-40 .a-IRR-table td,',
'  .page-50 .a-IRR-table td {',
'    background-color: transparent !important;',
'    color: #c7d5e0 !important;',
'    border-color: rgba(42,71,94,0.7) !important;',
'  }',
'',
'  .page-10 .a-IRR-table tr:hover td,',
'  .page-20 .a-IRR-table tr:hover td,',
'  .page-30 .a-IRR-table tr:hover td,',
'  .page-40 .a-IRR-table tr:hover td,',
'  .page-50 .a-IRR-table tr:hover td {',
'    background-color: rgba(102,192,244,0.08) !important;',
'  }',
'',
'  /* === BUTTONS === */',
'  .page-10 .t-Button--hot,',
'  .page-20 .t-Button--hot,',
'  .page-30 .t-Button--hot,',
'  .page-40 .t-Button--hot,',
'  .page-50 .t-Button--hot {',
'    background-image: linear-gradient(180deg, #4b8ec5 0%, #2a6099 100%) !important;',
'    background-color: #2a6099 !important;',
'    border-color: transparent !important;',
'    color: #d2e3f3 !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
'  .page-10 .t-Button--hot:hover,',
'  .page-20 .t-Button--hot:hover,',
'  .page-30 .t-Button--hot:hover,',
'  .page-40 .t-Button--hot:hover,',
'  .page-50 .t-Button--hot:hover {',
'    background-image: linear-gradient(180deg, #5fa0d8 0%, #3575b5 100%) !important;',
'  }',
'',
'  .page-10 .t-Button:not(.t-Button--hot),',
'  .page-20 .t-Button:not(.t-Button--hot),',
'  .page-30 .t-Button:not(.t-Button--hot),',
'  .page-40 .t-Button:not(.t-Button--hot),',
'  .page-50 .t-Button:not(.t-Button--hot) {',
'    background-color: #101a24 !important;',
'    border-color: #2a475e !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-10 .t-Button:not(.t-Button--hot):hover,',
'  .page-20 .t-Button:not(.t-Button--hot):hover,',
'  .page-30 .t-Button:not(.t-Button--hot):hover,',
'  .page-40 .t-Button:not(.t-Button--hot):hover,',
'  .page-50 .t-Button:not(.t-Button--hot):hover {',
'    border-color: #66c0f4 !important;',
'    color: #66c0f4 !important;',
'  }',
'',
'  /* === INPUTS === */',
'  .page-10 input,',
'  .page-20 input,',
'  .page-30 input,',
'  .page-40 input,',
'  .page-50 input,',
'  .page-10 select,',
'  .page-20 select,',
'  .page-30 select,',
'  .page-40 select,',
'  .page-50 select,',
'  .page-10 textarea,',
'  .page-20 textarea,',
'  .page-30 textarea,',
'  .page-40 textarea,',
'  .page-50 textarea {',
'    background-color: #0f1923 !important;',
'    border: 1px solid #2a475e !important;',
'    color: #c7d5e0 !important;',
'    border-radius: 4px !important;',
'  }',
'',
'  .page-10 input:focus,',
'  .page-20 input:focus,',
'  .page-30 input:focus,',
'  .page-40 input:focus,',
'  .page-50 input:focus,',
'  .page-10 select:focus,',
'  .page-20 select:focus,',
'  .page-30 select:focus,',
'  .page-40 select:focus,',
'  .page-50 select:focus,',
'  .page-10 textarea:focus,',
'  .page-20 textarea:focus,',
'  .page-30 textarea:focus,',
'  .page-40 textarea:focus,',
'  .page-50 textarea:focus {',
'    border-color: #66c0f4 !important;',
'    box-shadow: 0 0 0 3px rgba(102,192,244,0.15) !important;',
'    outline: none !important;',
'  }',
'',
'  /* === LINKS === */',
'  .page-10 a,',
'  .page-20 a,',
'  .page-30 a,',
'  .page-40 a,',
'  .page-50 a {',
'    color: #66c0f4 !important;',
'  }',
'',
'  .page-10 a:hover,',
'  .page-20 a:hover,',
'  .page-30 a:hover,',
'  .page-40 a:hover,',
'  .page-50 a:hover {',
'    color: #a5d8f5 !important;',
'  }',
'',
'`;',
'document.head.appendChild(steamUserPages);',
'',
'const steamKpiFix = document.createElement(''style'');',
'steamKpiFix.textContent = `',
'',
'  /* === PAGE 10 KPI CARDS FIX === */',
'',
'  .page-10 .a-CardView,',
'  .page-10 .a-CardView.steam-kpi {',
'    background: linear-gradient(160deg, #1e2d3e 0%, #16202d 100%) !important;',
'    border: 1px solid #2a475e !important;',
'    border-top: 2px solid #66c0f4 !important;',
'    border-radius: 6px !important;',
'    box-shadow: 0 12px 32px rgba(0,0,0,0.35) !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-10 .a-CardView-item {',
'    background: transparent !important;',
'  }',
'',
'  .page-10 .a-CardView-header {',
'    background: transparent !important;',
'    border-bottom: 1px solid rgba(102,192,244,0.12) !important;',
'  }',
'',
'  .page-10 .a-CardView-title,',
'  .page-10 .a-CardView-title.steam-kpi {',
'    color: #66c0f4 !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.04em !important;',
'  }',
'',
'  .page-10 .a-CardView-subTitle,',
'  .page-10 .a-CardView-subTitle.steam-kpi {',
'    color: #ffffff !important;',
'    font-size: 20px !important;',
'    font-weight: 700 !important;',
'  }',
'',
'  .page-10 .a-CardView-body,',
'  .page-10 .a-CardView-body.steam-kpi {',
'    color: #8f98a0 !important;',
'    background: transparent !important;',
'  }',
'',
'  .page-10 .a-CardView-iconWrap {',
'    background: linear-gradient(180deg, #66c0f4 0%, #2a6099 100%) !important;',
'    border-radius: 50% !important;',
'    color: #ffffff !important;',
'  }',
'',
'  .page-10 .a-CardView-iconWrap .fa,',
'  .page-10 .a-CardView-iconWrap span {',
'    color: #ffffff !important;',
'  }',
'',
'  .page-10 .a-CardView:hover {',
'    border-color: #66c0f4 !important;',
'    transform: translateY(-2px);',
'    transition: 0.15s ease;',
'  }',
'',
'`;',
'document.head.appendChild(steamKpiFix);'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260512092313Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512182615Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168157414265309334196)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512092313Z')
,p_updated_on=>wwv_flow_imp.dz('20260512092313Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168159549546697055305)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_title=>'KPI Cards'
,p_parent_plug_id=>wwv_flow_imp.id(168157414265309334196)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Balance'' as card_title,',
'       to_char(nvl((',
'           select max(balance) keep (dense_rank last order by updated_at, wallet_id)',
'             from wallets',
'            where user_id = :G_USER_ID',
'       ), 0), ''FM999G999G990D00'') as card_subtitle,',
'       ''Latest wallet balance'' as card_text,',
'       ''fa-wallet'' as card_icon',
'from dual',
'union all',
'select ''Games'',',
'       to_char(pkg_user_account.get_user_game_count(:G_USER_ID)),',
'       ''Games in your library'',',
'       ''fa-gamepad''',
'from dual',
'union all',
'select ''Spent'',',
'       to_char(pkg_user_account.get_total_spent(:G_USER_ID), ''FM999G999G990D00''),',
'       ''Total library value'',',
'       ''fa-credit-card''',
'from dual',
'union all',
'select ''Achievements'',',
'       to_char(pkg_achievements.get_user_achievement_count(:G_USER_ID)),',
'       pkg_achievements.get_player_tier(:G_USER_ID),',
'       ''fa-trophy''',
'from dual;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260512100729Z')
,p_updated_on=>wwv_flow_imp.dz('20260512101057Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(168159549658814055306)
,p_region_id=>wwv_flow_imp.id(168159549546697055305)
,p_layout_type=>'GRID'
,p_card_css_classes=>'steam-kpi'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_title_css_classes=>'steam-kpi'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARD_SUBTITLE'
,p_sub_title_css_classes=>'steam-kpi'
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_TEXT'
,p_body_css_classes=>'steam-kpi'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260512101057Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(168159549719851055307)
,p_name=>'New'
,p_static_id=>'new-2'
,p_title=>'Recommended Game'
,p_parent_plug_id=>wwv_flow_imp.id(168157414265309334196)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_library_games.recommend_game(:G_USER_ID) as recommendation',
'from dual;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512100827Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100923Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159549803872055308)
,p_query_column_id=>1
,p_column_alias=>'RECOMMENDATION'
,p_column_display_sequence=>10
,p_column_heading=>'Recommendation'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512100827Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168159549916311055309)
,p_plug_name=>'New'
,p_static_id=>'new-3'
,p_title=>'Recently Added Games'
,p_parent_plug_id=>wwv_flow_imp.id(168157414265309334196)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select g.game_id,',
'       g.title,',
'       d.developer_name,',
'       to_char(l.added_date, ''YYYY-MM-DD'') as added_date,',
'       apex_page.get_url(',
'           p_page   => 30,',
'           p_items  => ''P30_GAME_ID'',',
'           p_values => g.game_id',
'       ) as target_url',
'  from library l',
'  join games g on g.game_id = l.game_id',
'  left join developers d on d.developer_id = g.developer_id',
' where l.user_id = :G_USER_ID',
' order by l.added_date desc',
' fetch first 6 rows only;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260512100923Z')
,p_updated_on=>wwv_flow_imp.dz('20260512101119Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(168159550096234055310)
,p_region_id=>wwv_flow_imp.id(168159549916311055309)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DEVELOPER_NAME'
,p_body_adv_formatting=>false
,p_body_column_name=>'ADDED_DATE'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'TARGET_URL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_updated_on=>wwv_flow_imp.dz('20260512101119Z')
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Admin Dashboard'
,p_alias=>'ADMIN-DASHBOARD'
,p_step_title=>'Admin Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Steam Theme \2014 Dashboard Page 13'),
unistr('// Page 13 \2192 JavaScript \2192 Execute when Page Loads'),
'',
'const steamDash = document.createElement(''style'');',
'steamDash.textContent = `',
'',
'  @import url(''https://fonts.googleapis.com/css2?family=Rajdhani:wght@600;700&family=Open+Sans:wght@400;600&display=swap'');',
'',
unistr('  /* === \0424\041E\041D === */'),
'  html.page-13, body.page-13,',
'  .page-13 .t-Body,',
'  .page-13 #t_Body_content {',
'    background-color: #0d1117 !important;',
'    background-image: radial-gradient(ellipse 90% 40% at 50% 0%, rgba(30,80,130,0.35) 0%, transparent 60%) !important;',
'    color: #c7d5e0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'  }',
'',
unistr('  /* === \0428\0410\041F\041A\0410 === */'),
'  .page-13 .t-Header,',
'  .page-13 #t_Header {',
'    background-color: #16202d !important;',
'    border-bottom: 1px solid #2a475e !important;',
'    box-shadow: 0 2px 12px rgba(0,0,0,0.5) !important;',
'  }',
'',
'  .page-13 .t-Header-logo-link,',
'  .page-13 .t-Header-logo {',
'    color: #66c0f4 !important;',
'  }',
'',
'  .page-13 .t-NavigationBar-item a,',
'  .page-13 .t-Header-nav a {',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-13 .t-NavigationBar-item a:hover,',
'  .page-13 .t-Header-nav a:hover {',
'    color: #66c0f4 !important;',
'    background-color: rgba(102,192,244,0.08) !important;',
'  }',
'',
unistr('  /* === \0411\041E\041A\041E\0412\0410\042F \041D\0410\0412\0418\0413\0410\0426\0418\042F === */'),
'  .page-13 .t-TreeNav,',
'  .page-13 .t-Body-nav,',
'  .page-13 #t_Body_nav {',
'    background-color: #16202d !important;',
'    border-right: 1px solid #2a475e !important;',
'  }',
'',
'  .page-13 .t-TreeNav .a-TreeView-label {',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-13 .t-TreeNav .a-TreeView-node--selected > .a-TreeView-content {',
'    background-color: rgba(102,192,244,0.12) !important;',
'    color: #66c0f4 !important;',
'  }',
'',
'  .page-13 .t-TreeNav .a-TreeView-node:hover > .a-TreeView-content {',
'    background-color: rgba(102,192,244,0.07) !important;',
'  }',
'',
'  /* === BREADCRUMB === */',
'  .page-13 .t-BreadcrumbRegion {',
'    background-color: #16202d !important;',
'    border-bottom: 1px solid #2a475e !important;',
'  }',
'',
'  .page-13 .t-Breadcrumb-link {',
'    color: #8f98a0 !important;',
'  }',
'',
'  .page-13 .t-Breadcrumb-link:hover,',
'  .page-13 .t-Breadcrumb-link.is-active {',
'    color: #66c0f4 !important;',
'  }',
'',
unistr('  /* === \0420\0415\0413\0418\041E\041D\042B \2014 4 \043A\0430\0440\0442\043E\0447\043A\0438 === */'),
'  .page-13 .t-Region {',
'    background: linear-gradient(160deg, #1e2d3e 0%, #16202d 100%) !important;',
'    border: 1px solid #2a475e !important;',
'    border-top: 2px solid #2a475e !important;',
'    box-shadow: 0 4px 24px rgba(0,0,0,0.45) !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-13 .t-Region:hover {',
'    border-top-color: #66c0f4 !important;',
'  }',
'',
'  .page-13 .t-Region-header {',
'    background-color: rgba(42,71,94,0.3) !important;',
'    border-bottom: 1px solid #2a475e !important;',
'  }',
'',
'  .page-13 .t-Region-title {',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.07em !important;',
'    text-transform: uppercase !important;',
'    color: #66c0f4 !important;',
'  }',
'',
'  .page-13 .t-Region-body {',
'    background: transparent !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
unistr('  /* === \041C\0415\0422\0420\0418\041A\0418 / STAT === */'),
'  .page-13 .t-StatusList-itemValue {',
'    color: #66c0f4 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'  }',
'',
'  .page-13 .t-StatusList-itemLabel {',
'    color: #8f98a0 !important;',
'  }',
'',
'  .page-13 .t-StatusList-item {',
'    border-color: #2a475e !important;',
'  }',
'',
unistr('  /* === \0422\0410\0411\041B\0418\0426\042B === */'),
'  .page-13 .t-Report table th {',
'    background-color: rgba(42,71,94,0.5) !important;',
'    color: #66c0f4 !important;',
'    border-color: #2a475e !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    letter-spacing: 0.06em !important;',
'    text-transform: uppercase !important;',
'    font-weight: 600 !important;',
'  }',
'',
'  .page-13 .t-Report table td {',
'    border-color: #2a475e !important;',
'    color: #c7d5e0 !important;',
'    background-color: transparent !important;',
'  }',
'',
'  .page-13 .t-Report table tr:nth-child(even) td {',
'    background-color: rgba(42,71,94,0.15) !important;',
'  }',
'',
'  .page-13 .t-Report table tr:hover td {',
'    background-color: rgba(102,192,244,0.07) !important;',
'  }',
'',
unistr('  /* === \041A\041D\041E\041F\041A\0418 === */'),
'  .page-13 .t-Button--hot {',
'    background-image: linear-gradient(180deg, #4b8ec5 0%, #2a6099 100%) !important;',
'    border-color: transparent !important;',
'    color: #d2e3f3 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
'  .page-13 .t-Button:not(.t-Button--hot) {',
'    background-color: rgba(42,71,94,0.4) !important;',
'    border-color: #2a475e !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  .page-13 .t-Button:not(.t-Button--hot):hover {',
'    background-color: rgba(102,192,244,0.1) !important;',
'    border-color: #4083ab !important;',
'    color: #66c0f4 !important;',
'  }',
'',
unistr('  /* === \0421\0421\042B\041B\041A\0418 === */'),
'  .page-13 a {',
'    color: #66c0f4 !important;',
'  }',
'',
'  .page-13 a:hover {',
'    color: #a5d8f5 !important;',
'  }',
'',
unistr('  /* === \041F\0410\0413\0418\041D\0410\0426\0418\042F === */'),
'  .page-13 .t-Report-pagination .t-Button {',
'    background-color: transparent !important;',
'    color: #8f98a0 !important;',
'    border-color: #2a475e !important;',
'  }',
'',
'  .page-13 .t-Report-pagination .t-Button:hover {',
'    color: #66c0f4 !important;',
'    border-color: #4083ab !important;',
'  }',
'',
unistr('  /* === \0421\041A\0420\041E\041B\041B\0411\0410\0420 === */'),
'  ::-webkit-scrollbar { width: 7px; height: 7px; }',
'  ::-webkit-scrollbar-track { background: #0d1117; }',
'  ::-webkit-scrollbar-thumb { background-color: #2a475e; border-radius: 4px; }',
'  ::-webkit-scrollbar-thumb:hover { background-color: #4083ab; }',
'',
'`;',
'document.head.appendChild(steamDash);',
'',
'',
unistr('// \0414\043E\0431\0430\0432\0438\0442\044C \0412 \041A\041E\041D\0415\0426 steamDash.textContent (\043F\0435\0440\0435\0434 \0437\0430\043A\0440\044B\0432\0430\044E\0449\0438\043C backtick)'),
unistr('// \0438\043B\0438 \043E\0442\0434\0435\043B\044C\043D\044B\043C \0431\043B\043E\043A\043E\043C \043D\0438\0436\0435 \2014 \043E\0431\0430 \0432\0430\0440\0438\0430\043D\0442\0430 \0440\0430\0431\043E\0442\0430\044E\0442'),
'',
'const steamChartFix = document.createElement(''style'');',
'steamChartFix.textContent = `',
'',
unistr('  /* === \0417\0410\0413\041E\041B\041E\0412\041E\041A "Admin Dashboard" \0438 \0432\0441\0435 \0437\0430\0433\043E\043B\043E\0432\043A\0438 \0441\0442\0440\0430\043D\0438\0446\044B === */'),
'  .page-13 .t-BreadcrumbRegion-title,',
'  .page-13 .t-BreadcrumbRegion h1,',
'  .page-13 .t-BreadcrumbRegion h2,',
'  .page-13 .t-heroRegion-title,',
'  .page-13 .t-Body-title,',
'  .page-13 #t_Body_title,',
'  .page-13 h1, .page-13 h2, .page-13 h3, .page-13 h4 {',
'    color: #c7d5e0 !important;',
'  }',
'',
'',
unistr('  /* \041C\0435\0442\043A\0438 \043E\0441\0435\0439 \0447\0443\0442\044C \043F\0440\0438\0433\043B\0443\0448\0451\043D\043D\0435\0435 */'),
'  .page-13 svg .oj-chart-xaxis text,',
'  .page-13 svg .oj-chart-yaxis text {',
'    fill: #8f98a0 !important;',
'  }',
'',
unistr('  /* === \0422\0415\041A\0421\0422 \0412\041D\0423\0422\0420\0418 PIE CHART (\043F\043E\0434\043F\0438\0441\0438 \043A\0443\0441\043A\043E\0432) === */'),
'  .page-13 svg .oj-chart-data-label,',
'  .page-13 .oj-chart-item-label,',
'  .page-13 svg tspan {',
'    fill: #c7d5e0 !important;',
'  }',
'',
unistr('  /* \041B\0438\043D\0438\0438 \043E\0441\0435\0439/\0441\0435\0442\043A\0438 \0433\0440\0430\0444\0438\043A\0430 */'),
'  .page-13 svg line,',
'  .page-13 svg .oj-chart-gridline {',
'    stroke: #2a475e !important;',
'  }',
'',
'  .page-13 svg .oj-chart-axis-line {',
'    stroke: #4083ab !important;',
'  }',
'',
'',
'',
unistr('  /* === \0412\0421\0415 \041E\0421\0422\0410\041B\042C\041D\042B\0415 \0422\0401\041C\041D\042B\0415 \0422\0415\041A\0421\0422\042B \043D\0430 \0441\0442\0440\0430\043D\0438\0446\0435 === */'),
'  .page-13 .t-Body,',
'  .page-13 .t-Region,',
'  .page-13 .t-Region * {',
'    color: inherit !important;',
'  }',
'',
'',
unistr('  /* \0418\0441\043A\043B\044E\0447\0435\043D\0438\0435 \2014 \0438\043A\043E\043D\043A\0438 \043F\0443\0441\0442\044C \043D\0430\0441\043B\0435\0434\0443\044E\0442 */'),
'  .page-13 .fa,',
'  .page-13 .t-Icon,',
'  .page-13 [class*="icon"] {',
'    color: inherit !important;',
'  }',
'',
'`;',
'document.head.appendChild(steamChartFix);',
'',
unistr('// \0422\0451\043C\043D\0430\044F \0448\0430\043F\043A\0430 \2014 \0434\043E\0431\0430\0432\0438\0442\044C \0432 \043A\043E\043D\0435\0446 JS \043D\0430 \0441\0442\0440\0430\043D\0438\0446\0435 13'),
'',
'const steamHeader = document.createElement(''style'');',
'steamHeader.textContent = `',
'',
unistr('  /* === \041E\0421\041D\041E\0412\041D\0410\042F \0428\0410\041F\041A\0410 === */'),
'  .page-13 .t-Header,',
'  .page-13 #t_Header {',
'    background-color: #0d1117 !important;',
'    border-bottom: 1px solid #2a475e !important;',
'    box-shadow: 0 2px 16px rgba(0,0,0,0.7) !important;',
'  }',
'',
unistr('  /* === \041B\041E\0413\041E\0422\0418\041F / \041D\0410\0417\0412\0410\041D\0418\0415 \041F\0420\0418\041B\041E\0416\0415\041D\0418\042F === */'),
'  .page-13 .t-Header-logo,',
'  .page-13 .t-Header-logo a,',
'  .page-13 .t-Header-logo-link {',
'    color: #ffffff !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.08em !important;',
'  }',
'',
unistr('  /* === \041D\0410\0412\0411\0410\0420 (\043F\0443\043D\043A\0442\044B \043C\0435\043D\044E \0432 \0448\0430\043F\043A\0435) === */'),
'  .page-13 .t-Header-navBar,',
'  .page-13 .t-NavigationBar {',
'    background-color: transparent !important;',
'  }',
'',
'  .page-13 .t-NavigationBar-item > a,',
'  .page-13 .t-Header-nav .t-Button {',
'    color: #8f98a0 !important;',
'    background: transparent !important;',
'    border-color: transparent !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'    transition: color 0.15s, background 0.15s !important;',
'  }',
'',
'  .page-13 .t-NavigationBar-item > a:hover,',
'  .page-13 .t-Header-nav .t-Button:hover {',
'    color: #66c0f4 !important;',
'    background-color: rgba(102,192,244,0.08) !important;',
'  }',
'',
unistr('  /* \0410\043A\0442\0438\0432\043D\044B\0439 \043F\0443\043D\043A\0442 \043C\0435\043D\044E */'),
'  .page-13 .t-NavigationBar-item.is-active > a,',
'  .page-13 .t-NavigationBar-item--current > a {',
'    color: #66c0f4 !important;',
'    border-bottom: 2px solid #66c0f4 !important;',
'  }',
'',
unistr('  /* === \0411\041B\041E\041A \041F\041E\041B\042C\0417\041E\0412\0410\0422\0415\041B\042F (\0430\0432\0430\0442\0430\0440 / \0438\043C\044F / \0441\0442\0440\0435\043B\043A\0430) === */'),
'  .page-13 .t-Header-userMenu,',
'  .page-13 .t-NavigationBar-item--user,',
'  .page-13 .t-NavigationBar-item--user > a {',
'    color: #c7d5e0 !important;',
'    background: transparent !important;',
'  }',
'',
'  .page-13 .t-NavigationBar-item--user > a:hover {',
'    background-color: rgba(102,192,244,0.08) !important;',
'    color: #66c0f4 !important;',
'  }',
'',
unistr('  /* \0418\043C\044F \043F\043E\043B\044C\0437\043E\0432\0430\0442\0435\043B\044F */'),
'  .page-13 .t-Header-user,',
'  .page-13 .t-NavigationBar-label {',
'    color: #c7d5e0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'  }',
'',
unistr('  /* \0418\043A\043E\043D\043A\0430 \043F\043E\043B\044C\0437\043E\0432\0430\0442\0435\043B\044F \0438 \0441\0442\0440\0435\043B\043A\0430 */'),
'  .page-13 .t-NavigationBar-item--user .fa,',
'  .page-13 .t-Header-userMenu .fa {',
'    color: #4083ab !important;',
'  }',
'',
unistr('  /* === \0414\0420\041E\041F\0414\0410\0423\041D \041C\0415\041D\042E \041F\041E\041B\042C\0417\041E\0412\0410\0422\0415\041B\042F === */'),
'  .page-13 .t-NavigationBar-menu,',
'  .page-13 .a-Menu,',
'  .page-13 .t-Header-userMenu .a-Menu {',
'    background-color: #16202d !important;',
'    border: 1px solid #2a475e !important;',
'    box-shadow: 0 8px 32px rgba(0,0,0,0.7) !important;',
'  }',
'',
'  .page-13 .a-Menu-item,',
'  .page-13 .t-NavigationBar-menu .a-Menu-item {',
'    color: #c7d5e0 !important;',
'    background: transparent !important;',
'  }',
'',
'  .page-13 .a-Menu-item:hover,',
'  .page-13 .t-NavigationBar-menu .a-Menu-item:hover {',
'    background-color: rgba(102,192,244,0.1) !important;',
'    color: #66c0f4 !important;',
'  }',
'',
'  .page-13 .a-Menu-item .fa {',
'    color: #4083ab !important;',
'  }',
'',
'  .page-13 .a-Menu-separator,',
'  .page-13 .a-Menu .a-Menu-separator {',
'    border-color: #2a475e !important;',
'  }',
'',
unistr('  /* === \041A\041D\041E\041F\041A\0418 \0412 \0428\0410\041F\041A\0415 (\043F\043E\0438\0441\043A, \0443\0432\0435\0434\043E\043C\043B\0435\043D\0438\044F \0438 \0442.\0434.) === */'),
'  .page-13 .t-Header-nav .t-Button--icon {',
'    color: #4083ab !important;',
'    background: transparent !important;',
'    border-color: transparent !important;',
'  }',
'',
'  .page-13 .t-Header-nav .t-Button--icon:hover {',
'    color: #66c0f4 !important;',
'    background-color: rgba(102,192,244,0.08) !important;',
'  }',
'',
'`;',
'document.head.appendChild(steamHeader);'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512181137Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167806423907880169595)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167806428820066169599)
,p_plug_name=>'Game Sales by Year'
,p_static_id=>'game-sales-by-year'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(167806429201989169599)
,p_region_id=>wwv_flow_imp.id(167806428820066169599)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(167806430967026169600)
,p_chart_id=>wwv_flow_imp.id(167806429201989169599)
,p_static_id=>'sales'
,p_seq=>10
,p_name=>'Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(CAST(p.purchase_date AS DATE), ''YYYY'') as year, ',
'       COUNT(pi.purchase_item_id) as sales',
'FROM purchases p',
'JOIN purchases_item pi ON p.purchase_id = pi.purchase_id',
'GROUP BY TO_CHAR(CAST(p.purchase_date AS DATE), ''YYYY'')',
'ORDER BY 1'))
,p_max_row_count=>20
,p_items_value_column_name=>'SALES'
,p_items_label_column_name=>'YEAR'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167806429715670169600)
,p_chart_id=>wwv_flow_imp.id(167806429201989169599)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167806430324299169600)
,p_chart_id=>wwv_flow_imp.id(167806429201989169599)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167806431536341169601)
,p_plug_name=>'New Users by Month'
,p_static_id=>'new-users-by-month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511111538Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(167806431998156169601)
,p_region_id=>wwv_flow_imp.id(167806431536341169601)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(167806433675276169602)
,p_chart_id=>wwv_flow_imp.id(167806431998156169601)
,p_static_id=>'users'
,p_seq=>10
,p_name=>'Users'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(CAST(created_at AS DATE), ''YYYY-MM'') as month, COUNT(*) as new_users',
'FROM users',
'GROUP BY TO_CHAR(CAST(created_at AS DATE), ''YYYY-MM'')',
'ORDER BY 1'))
,p_max_row_count=>20
,p_items_value_column_name=>'NEW_USERS'
,p_items_label_column_name=>'MONTH'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167806432401727169601)
,p_chart_id=>wwv_flow_imp.id(167806431998156169601)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167806433047738169602)
,p_chart_id=>wwv_flow_imp.id(167806431998156169601)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167790133266154463108)
,p_plug_name=>'Purchase Status Distribution'
,p_static_id=>'purchase-status-distribution'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260511111538Z')
,p_updated_on=>wwv_flow_imp.dz('20260511111538Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(167790133301773463109)
,p_region_id=>wwv_flow_imp.id(167790133266154463108)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260511111538Z')
,p_updated_on=>wwv_flow_imp.dz('20260511111538Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(167790133414843463110)
,p_chart_id=>wwv_flow_imp.id(167790133301773463109)
,p_static_id=>'purchases'
,p_seq=>10
,p_name=>'Purchases'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT status, COUNT(*) as cnt',
'FROM purchases',
'GROUP BY status'))
,p_max_row_count=>20
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'STATUS'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260511111538Z')
,p_updated_on=>wwv_flow_imp.dz('20260511111538Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167790133543517463111)
,p_chart_id=>wwv_flow_imp.id(167790133301773463109)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260511111538Z')
,p_updated_on=>wwv_flow_imp.dz('20260511111538Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167790133695273463112)
,p_chart_id=>wwv_flow_imp.id(167790133301773463109)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260511111538Z')
,p_updated_on=>wwv_flow_imp.dz('20260511111538Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167806424615491169596)
,p_plug_name=>'Top 5 Games by Sales'
,p_static_id=>'top-5-games-by-sales'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(167806425087478169596)
,p_region_id=>wwv_flow_imp.id(167806424615491169596)
,p_chart_type=>'area'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(167806426731672169598)
,p_chart_id=>wwv_flow_imp.id(167806425087478169596)
,p_static_id=>'sales'
,p_seq=>10
,p_name=>'Sales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT g.title, COUNT(pi.purchase_item_id) as sales',
'FROM games g',
'JOIN purchases_item pi ON g.game_id = pi.game_id',
'GROUP BY g.title',
'ORDER BY sales DESC',
'FETCH FIRST 5 ROWS ONLY'))
,p_max_row_count=>20
,p_items_value_column_name=>'SALES'
,p_items_label_column_name=>'TITLE'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511105731Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167806425543182169597)
,p_chart_id=>wwv_flow_imp.id(167806425087478169596)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(167806426157814169597)
,p_chart_id=>wwv_flow_imp.id(167806425087478169596)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20260511104227Z')
,p_updated_on=>wwv_flow_imp.dz('20260511104227Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Game management'
,p_alias=>'GAME-MANAGEMENT'
,p_step_title=>'Game management'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Steam Theme \2014 Game Management Page'),
unistr('// Page Designer \2192 JavaScript \2192 Execute when Page Loads'),
'',
'const steamGame = document.createElement(''style'');',
'steamGame.textContent = `',
'',
'  @import url(''https://fonts.googleapis.com/css2?family=Rajdhani:wght@600;700&family=Open+Sans:wght@400;600&display=swap'');',
'',
'  /* =============================================',
unistr('     \0424\041E\041D \0421\0422\0420\0410\041D\0418\0426\042B'),
'  ============================================= */',
'  html, body, .t-Body, #t_Body_content {',
'    background-color: #0d1117 !important;',
'    background-image: radial-gradient(ellipse 80% 40% at 50% 0%, rgba(30,80,130,0.35) 0%, transparent 60%) !important;',
'    color: #c7d5e0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'  }',
'',
'  /* =============================================',
unistr('     \0428\0410\041F\041A\0410'),
'  ============================================= */',
'  .t-Header, #t_Header {',
'    background-color: #0d1117 !important;',
'    border-bottom: 1px solid #2a475e !important;',
'    box-shadow: 0 2px 16px rgba(0,0,0,0.7) !important;',
'  }',
'',
'  .t-Header-logo a, .t-Header-logo-link {',
'    color: #66c0f4 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'  }',
'',
'  .t-NavigationBar-item > a,',
'  .t-Header-nav .t-Button {',
'    color: #8f98a0 !important;',
'    background: transparent !important;',
'    border-color: transparent !important;',
'  }',
'',
'  .t-NavigationBar-item > a:hover {',
'    color: #66c0f4 !important;',
'    background-color: rgba(102,192,244,0.08) !important;',
'  }',
'',
'  .t-NavigationBar-item--user > a,',
'  .t-NavigationBar-label {',
'    color: #c7d5e0 !important;',
'  }',
'',
'  /* =============================================',
unistr('     \0411\041E\041A\041E\0412\0410\042F \041D\0410\0412\0418\0413\0410\0426\0418\042F'),
'  ============================================= */',
'  .t-Body-nav, #t_Body_nav, .t-TreeNav {',
'    background-color: #16202d !important;',
'    border-right: 1px solid #2a475e !important;',
'  }',
'',
'  .t-TreeNav .a-TreeView-label { color: #c7d5e0 !important; }',
'',
'  .t-TreeNav .a-TreeView-node--selected > .a-TreeView-content {',
'    background-color: rgba(102,192,244,0.12) !important;',
'    color: #66c0f4 !important;',
'  }',
'',
'  .t-TreeNav .a-TreeView-node:hover > .a-TreeView-content {',
'    background-color: rgba(102,192,244,0.07) !important;',
'  }',
'',
'  /* =============================================',
unistr('     BREADCRUMB / \0417\0410\0413\041E\041B\041E\0412\041E\041A'),
'  ============================================= */',
'  .t-BreadcrumbRegion {',
'    background-color: #16202d !important;',
'    border-bottom: 1px solid #2a475e !important;',
'  }',
'',
'  .t-BreadcrumbRegion h1,',
'  .t-BreadcrumbRegion-title {',
'    color: #c7d5e0 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.07em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
'  .t-Breadcrumb-link { color: #8f98a0 !important; }',
'  .t-Breadcrumb-link:hover { color: #66c0f4 !important; }',
'',
'  /* =============================================',
unistr('     \0420\0415\0413\0418\041E\041D \2014 GAME MANAGEMENT'),
'  ============================================= */',
'  .t-Region {',
'    background: linear-gradient(160deg, #1e2d3e 0%, #16202d 100%) !important;',
'    border: 1px solid #2a475e !important;',
'    border-top: 2px solid #66c0f4 !important;',
'    box-shadow: 0 4px 24px rgba(0,0,0,0.5) !important;',
'  }',
'',
'  .t-Region-header {',
'    background-color: rgba(42,71,94,0.35) !important;',
'    border-bottom: 1px solid #2a475e !important;',
'  }',
'',
'  .t-Region-title {',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    font-size: 16px !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'    color: #66c0f4 !important;',
'  }',
'',
'  .t-Region-body { background: transparent !important; }',
'',
'  /* =============================================',
unistr('     \041A\041D\041E\041F\041A\0410 CREATE'),
'  ============================================= */',
'  .t-Button--hot,',
'  .t-Button--create,',
'  button[title="Create"] {',
'    background-image: linear-gradient(180deg, #4b8ec5 0%, #2a6099 100%) !important;',
'    background-color: #2a6099 !important;',
'    border-color: transparent !important;',
'    color: #d2e3f3 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    font-size: 13px !important;',
'    letter-spacing: 0.1em !important;',
'    text-transform: uppercase !important;',
'    text-shadow: 0 1px 2px rgba(0,0,0,0.4) !important;',
'    box-shadow: 0 2px 10px rgba(0,0,0,0.4) !important;',
'    transition: filter 0.15s !important;',
'  }',
'',
'  .t-Button--hot:hover { filter: brightness(1.2) !important; }',
'  .t-Button--hot:active { filter: brightness(0.9) !important; transform: translateY(1px) !important; }',
'',
'  /* =============================================',
unistr('     INTERACTIVE REPORT \2014 \0422\0423\041B\0411\0410\0420'),
'  ============================================= */',
'  .t-IRR-controlsContainer,',
'  .a-IRR-controlsBar {',
'    background-color: rgba(22,32,45,0.8) !important;',
'    border-bottom: 1px solid #2a475e !important;',
'  }',
'',
'  .a-IRR-search-field,',
'  .t-IRR-search-field {',
'    background-color: #0f1923 !important;',
'    border: 1px solid #2a475e !important;',
'    color: #c7d5e0 !important;',
'    border-radius: 3px !important;',
'  }',
'',
'  .a-IRR-search-field:focus {',
'    border-color: #66c0f4 !important;',
'    box-shadow: 0 0 0 2px rgba(102,192,244,0.15) !important;',
'    outline: none !important;',
'  }',
'',
'  .a-IRR-button {',
'    color: #8f98a0 !important;',
'    background: transparent !important;',
'    border-color: #2a475e !important;',
'  }',
'',
'  .a-IRR-button:hover {',
'    color: #66c0f4 !important;',
'    background-color: rgba(102,192,244,0.08) !important;',
'    border-color: #4083ab !important;',
'  }',
'',
'  /* =============================================',
unistr('     INTERACTIVE REPORT \2014 \0422\0410\0411\041B\0418\0426\0410'),
'  ============================================= */',
'',
unistr('  /* \0417\0430\0433\043E\043B\043E\0432\043A\0438 \043A\043E\043B\043E\043D\043E\043A */'),
'  .t-Report--interactiveReport th,',
'  .a-IRR-header,',
'  .a-IRR-header-cell {',
'    background-color: rgba(42,71,94,0.6) !important;',
'    color: #66c0f4 !important;',
'    border-color: #2a475e !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-size: 13px !important;',
'    font-weight: 600 !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
unistr('  /* \0421\0442\0440\0435\043B\043A\0438 \0441\043E\0440\0442\0438\0440\043E\0432\043A\0438 */'),
'  .a-IRR-header-sortIcon { color: #4083ab !important; }',
'',
unistr('  /* \0421\0442\0440\043E\043A\0438 */'),
'  .a-IRR-table tbody tr td,',
'  .t-Report--interactiveReport td {',
'    background-color: transparent !important;',
'    border-color: #2a475e !important;',
'    color: #c7d5e0 !important;',
'    transition: background 0.12s !important;',
'  }',
'',
'  .a-IRR-table tbody tr:nth-child(even) td {',
'    background-color: rgba(42,71,94,0.12) !important;',
'  }',
'',
unistr('  /* Hover \0441\0442\0440\043E\043A\0438 */'),
'  .a-IRR-table tbody tr:hover td {',
'    background-color: rgba(102,192,244,0.08) !important;',
'    cursor: pointer !important;',
'  }',
'',
unistr('  /* \0410\043A\0442\0438\0432\043D\0430\044F / \0432\044B\0431\0440\0430\043D\043D\0430\044F \0441\0442\0440\043E\043A\0430 */'),
'  .a-IRR-table tbody tr.is-selected td,',
'  .a-IRR-table tbody tr:active td {',
'    background-color: rgba(102,192,244,0.15) !important;',
'    color: #66c0f4 !important;',
'  }',
'',
unistr('  /* \041A\043E\043B\043E\043D\043A\0430 Title \2014 \0432\044B\0434\0435\043B\0438\0442\044C */'),
'  .a-IRR-table tbody tr td:first-child {',
'    color: #66c0f4 !important;',
'    font-weight: 600 !important;',
'  }',
'',
unistr('  /* Age Rating badge-\0441\0442\0438\043B\044C */'),
'  .a-IRR-table tbody tr td[headers*="AGE_RATING"],',
'  .a-IRR-table tbody tr td[headers*="C_AGE"] {',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    color: #4db2ec !important;',
'    letter-spacing: 0.05em !important;',
'  }',
'',
'  /* Price */',
'  .a-IRR-table tbody tr td[headers*="PRICE"],',
'  .a-IRR-table tbody tr td[headers*="C_PRICE"] {',
'    color: #7bc47f !important;',
'    font-weight: 600 !important;',
'  }',
'',
unistr('  /* \041F\0430\0433\0438\043D\0430\0446\0438\044F */'),
'  .a-IRR-pagination { border-top: 1px solid #2a475e !important; }',
'',
'  .a-IRR-pagination-label { color: #8f98a0 !important; }',
'',
'  .a-IRR-pagination .a-Button {',
'    background: transparent !important;',
'    color: #8f98a0 !important;',
'    border-color: #2a475e !important;',
'  }',
'',
'  .a-IRR-pagination .a-Button:hover {',
'    color: #66c0f4 !important;',
'    border-color: #4083ab !important;',
'  }',
'',
'  /* =============================================',
unistr('     MODAL DIALOG \2014 GAME DETAILS'),
'  ============================================= */',
'',
unistr('  /* \041E\0432\0435\0440\043B\0435\0439 */'),
'  .ui-widget-overlay,',
'  .ui-dialog-overlay {',
'    background-color: rgba(0,0,0,0.75) !important;',
'    backdrop-filter: blur(3px) !important;',
'  }',
'',
unistr('  /* \041E\043A\043D\043E \043C\043E\0434\0430\043B\0430 */'),
'  .ui-dialog,',
'  .t-Dialog,',
'  .ui-dialog.t-Dialog {',
'    background: linear-gradient(160deg, #1e2d3e 0%, #16202d 100%) !important;',
'    border: 1px solid #2a475e !important;',
'    border-top: 2px solid #66c0f4 !important;',
'    box-shadow: 0 16px 60px rgba(0,0,0,0.8) !important;',
'    border-radius: 4px !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
unistr('  /* \0417\0430\0433\043E\043B\043E\0432\043E\043A \043C\043E\0434\0430\043B\0430 "Game Details" */'),
'  .ui-dialog-titlebar,',
'  .t-Dialog-header {',
'    background-color: rgba(42,71,94,0.4) !important;',
'    border-bottom: 1px solid #2a475e !important;',
'    border-radius: 3px 3px 0 0 !important;',
'  }',
'',
'  .ui-dialog-title,',
'  .t-Dialog-title {',
'    color: #66c0f4 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    font-size: 16px !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
unistr('  /* \041A\043D\043E\043F\043A\0430 \0437\0430\043A\0440\044B\0442\0438\044F (X) */'),
'  .ui-dialog-titlebar-close,',
'  .t-Dialog-close {',
'    color: #4083ab !important;',
'    background: transparent !important;',
'    border: none !important;',
'  }',
'',
'  .ui-dialog-titlebar-close:hover { color: #66c0f4 !important; }',
'',
unistr('  /* \0422\0435\043B\043E \043C\043E\0434\0430\043B\0430 */'),
'  .ui-dialog-content,',
'  .t-Dialog-body {',
'    background: transparent !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
unistr('  /* \041B\0435\0439\0431\043B\044B \0432 \043C\043E\0434\0430\043B\0435 */'),
'  .ui-dialog label,',
'  .t-Dialog label,',
'  .t-Dialog .t-Form-label {',
'    color: #8f98a0 !important;',
'    font-size: 11px !important;',
'    font-weight: 600 !important;',
'    letter-spacing: 0.1em !important;',
'    text-transform: uppercase !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'  }',
'',
unistr('  /* \041F\043E\043B\044F \0432\0432\043E\0434\0430 \0432 \043C\043E\0434\0430\043B\0435 */'),
'  .ui-dialog input[type="text"],',
'  .ui-dialog input[type="number"],',
'  .ui-dialog input[type="date"],',
'  .t-Dialog input[type="text"],',
'  .t-Dialog input[type="number"],',
'  .t-Dialog input[type="date"],',
'  .t-Dialog .text_field,',
'  .t-Dialog .apex-item-text {',
'    background-color: #0f1923 !important;',
'    border: 1px solid #2a475e !important;',
'    border-radius: 3px !important;',
'    color: #c7d5e0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'    font-size: 14px !important;',
'  }',
'',
'  .ui-dialog input:focus,',
'  .t-Dialog input:focus {',
'    border-color: #66c0f4 !important;',
'    box-shadow: 0 0 0 3px rgba(102,192,244,0.15) !important;',
'    outline: none !important;',
'  }',
'',
'  /* Select (Developer Id, Age Rating) */',
'  .ui-dialog select,',
'  .t-Dialog select,',
'  .t-Dialog .apex-item-select {',
'    background-color: #0f1923 !important;',
'    border: 1px solid #2a475e !important;',
'    border-radius: 3px !important;',
'    color: #c7d5e0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'    font-size: 14px !important;',
'  }',
'',
'  .ui-dialog select:focus,',
'  .t-Dialog select:focus {',
'    border-color: #66c0f4 !important;',
'    outline: none !important;',
'  }',
'',
'  /* Textarea (Description) */',
'  .ui-dialog textarea,',
'  .t-Dialog textarea,',
'  .t-Dialog .apex-item-textarea {',
'    background-color: #0f1923 !important;',
'    border: 1px solid #2a475e !important;',
'    border-radius: 3px !important;',
'    color: #c7d5e0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'    font-size: 14px !important;',
'    resize: vertical !important;',
'  }',
'',
'  .t-Dialog textarea:focus {',
'    border-color: #66c0f4 !important;',
'    box-shadow: 0 0 0 3px rgba(102,192,244,0.15) !important;',
'    outline: none !important;',
'  }',
'',
'  /* Placeholder */',
'  .t-Dialog input::placeholder,',
'  .t-Dialog textarea::placeholder {',
'    color: rgba(102,192,244,0.25) !important;',
'  }',
'',
unistr('  /* \0424\0443\0442\0435\0440 \043C\043E\0434\0430\043B\0430 (\043A\043D\043E\043F\043A\0438) */'),
'  .ui-dialog-buttonpane,',
'  .t-Dialog-footer {',
'    background-color: rgba(13,17,23,0.6) !important;',
'    border-top: 1px solid #2a475e !important;',
'    border-radius: 0 0 4px 4px !important;',
'  }',
'',
'  /* Apply Changes */',
'  .ui-dialog-buttonpane .t-Button--hot,',
'  .t-Dialog-footer .t-Button--hot {',
'    background-image: linear-gradient(180deg, #4b8ec5 0%, #2a6099 100%) !important;',
'    border-color: transparent !important;',
'    color: #d2e3f3 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
'  /* Cancel */',
'  .ui-dialog-buttonpane .t-Button:not(.t-Button--hot):not(.t-Button--danger),',
'  .t-Dialog-footer .t-Button:not(.t-Button--hot):not(.t-Button--danger) {',
'    background-color: rgba(42,71,94,0.35) !important;',
'    border-color: #2a475e !important;',
'    color: #8f98a0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'  }',
'',
'  .ui-dialog-buttonpane .t-Button:not(.t-Button--hot):hover {',
'    border-color: #4083ab !important;',
'    color: #c7d5e0 !important;',
'  }',
'',
'  /* Delete */',
'  .ui-dialog-buttonpane .t-Button--danger,',
'  .t-Dialog-footer .t-Button--danger {',
'    background-color: rgba(160,40,40,0.25) !important;',
'    border-color: rgba(200,60,60,0.5) !important;',
'    color: #e07070 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
'  .t-Button--danger:hover {',
'    background-color: rgba(180,50,50,0.4) !important;',
'    border-color: #e05c5c !important;',
'    color: #ff9090 !important;',
'  }',
'',
unistr('  /* \0421\043A\0440\043E\043B\043B\0431\0430\0440 */'),
'  ::-webkit-scrollbar { width: 7px; height: 7px; }',
'  ::-webkit-scrollbar-track { background: #0d1117; }',
'  ::-webkit-scrollbar-thumb { background-color: #2a475e; border-radius: 4px; }',
'  ::-webkit-scrollbar-thumb:hover { background-color: #4083ab; }',
'',
'`;',
'document.head.appendChild(steamGame);'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260511113938Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167816209333962420553)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167816204075874420547)
,p_plug_name=>'Game management'
,p_static_id=>'game-management'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT g.game_id, d.developer_name as developer, g.title, ',
'       g.price, g.release_date, g.age_rating',
'FROM games g',
'JOIN developers d ON g.developer_id = d.developer_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_prn_page_header=>'Game management'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511113515Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(167816204136515420547)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'GAME_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_GAME_ID:\#GAME_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>167816204136515420547
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511113515Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167816206856368420550)
,p_db_column_name=>'AGE_RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Age Rating'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'TMPL_THEME_42$CONTENT_ROW'
,p_heading_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N')).to_clob
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_security_scheme=>wwv_flow_imp.id(167789095484515433150)
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511113515Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167790133886293463114)
,p_db_column_name=>'DEVELOPER'
,p_display_order=>16
,p_column_identifier=>'H'
,p_column_label=>'Developer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260511112935Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112935Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167816204818356420548)
,p_db_column_name=>'GAME_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Game ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167816206036729420549)
,p_db_column_name=>'PRICE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'$999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112935Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167816206464687420550)
,p_db_column_name=>'RELEASE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Release Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112935Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(167816205626241420549)
,p_db_column_name=>'TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(167817655271024105901)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1678176553'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GAME_ID:TITLE:PRICE:RELEASE_DATE:AGE_RATING:DEVELOPER'
,p_created_on=>wwv_flow_imp.dz('20260511112938Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112938Z')
,p_created_by=>'ADMIN'
,p_updated_by=>'ADMIN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(167816207763620420551)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(167816204075874420547)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167816208038348420551)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(167816204075874420547)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167816208540051420551)
,p_event_id=>wwv_flow_imp.id(167816208038348420551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(167816204075874420547)
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Game Details'
,p_alias=>'GAME-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Game Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260517083408Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167816199310525420542)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(167816193344554420534)
,p_plug_name=>'Game Details'
,p_static_id=>'game-details'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'GAMES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(167816199705906420542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(167816199310525420542)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(167816201900206420544)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(167816199310525420542)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_GAME_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(167816201127547420544)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(167816199310525420542)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_GAME_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(167816201537849420544)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(167816199310525420542)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_GAME_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(167816196455810420540)
,p_name=>'P15_AGE_RATING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_item_source_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Age Rating'
,p_source=>'AGE_RATING'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(167816196824724420540)
,p_name=>'P15_DESCRIPTION'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_item_source_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(167816194189518420536)
,p_name=>'P15_DEVELOPER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_item_source_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Developer Id'
,p_source=>'DEVELOPER_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEVELOPERS.AGE_RATING'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511113338Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(167816193740388420535)
,p_name=>'P15_GAME_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_item_source_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Game Id'
,p_source=>'GAME_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(167816195268551420538)
,p_name=>'P15_PRICE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_item_source_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price'
,p_source=>'PRICE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(167816195654427420539)
,p_name=>'P15_RELEASE_DATE'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_item_source_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Release Date'
,p_source=>'RELEASE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(167816194888235420538)
,p_name=>'P15_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_item_source_plug_id=>wwv_flow_imp.id(167816193344554420534)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(167816199833304420542)
,p_name=>'Cancel Dialog'
,p_static_id=>'cancel-dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(167816199705906420542)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(167816200607934420543)
,p_event_id=>wwv_flow_imp.id(167816199833304420542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-dialog-cancel'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20260511112416Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112416Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(167816202307011420545)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(167816193344554420534)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Game Details'
,p_static_id=>'initialize-form-game-details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>167816202307011420545
,p_created_on=>wwv_flow_imp.dz('20260511112417Z')
,p_updated_on=>wwv_flow_imp.dz('20260511112417Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Catalog'
,p_alias=>'CATALOG'
,p_step_title=>'Catalog'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(168156371422157300903)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260512105131Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512110144Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168202307427391517264)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512105131Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168159550147477055311)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_title=>'Catalog'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with review_stats as (',
'    select game_id,',
'           count(*) as review_count,',
'           sum(case when lower(review_type) = ''positive'' then 1 else 0 end) as positive_reviews,',
'           sum(case when lower(review_type) = ''negative'' then 1 else 0 end) as negative_reviews',
'      from reviews',
'     group by game_id',
')',
'select g.game_id,',
'       g.title,',
'       d.developer_name,',
'       g.price,',
'       g.age_rating,',
'       listagg(c.category_name, '', '') within group (order by c.category_name) as categories,',
'       nvl(rs.review_count, 0) as review_count,',
'       nvl(rs.positive_reviews, 0) as positive_reviews,',
'       nvl(rs.negative_reviews, 0) as negative_reviews,',
'       pkg_library_games.get_game_popularity(g.game_id) as popularity,',
'       case when l.game_id is not null then ''Owned'' else ''Not owned'' end as ownership,',
'       apex_page.get_url(',
'           p_page   => 30,',
'           p_items  => ''P30_GAME_ID'',',
'           p_values => g.game_id',
'       ) as details_url',
'  from games g',
'  left join developers d on d.developer_id = g.developer_id',
'  left join game_categories gc on gc.game_id = g.game_id',
'  left join categories c on c.category_id = gc.category_id',
'  left join library l on l.game_id = g.game_id and l.user_id = :G_USER_ID',
'  left join review_stats rs on rs.game_id = g.game_id',
' group by g.game_id,',
'          g.title,',
'          d.developer_name,',
'          g.price,',
'          g.age_rating,',
'          l.game_id,',
'          rs.review_count,',
'          rs.positive_reviews,',
'          rs.negative_reviews;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Catalog'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110144Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(168159550206693055312)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_auth_scheme=>wwv_flow_imp.id(168156371422157300903)
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>168159550206693055312
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110144Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159550747752055317)
,p_db_column_name=>'AGE_RATING'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Age Rating'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159550888623055318)
,p_db_column_name=>'CATEGORIES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Categories'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159551402781055324)
,p_db_column_name=>'DETAILS_URL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Details Url'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110144Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110144Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159550585914055315)
,p_db_column_name=>'DEVELOPER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Developer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159550330123055313)
,p_db_column_name=>'GAME_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Game Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159551142024055321)
,p_db_column_name=>'NEGATIVE_REVIEWS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Negative Reviews'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159551327949055323)
,p_db_column_name=>'OWNERSHIP'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ownership'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110144Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110144Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159551260983055322)
,p_db_column_name=>'POPULARITY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Popularity'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110144Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110144Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159551089508055320)
,p_db_column_name=>'POSITIVE_REVIEWS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Positive Reviews'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159550647519055316)
,p_db_column_name=>'PRICE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D00'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159550935239055319)
,p_db_column_name=>'REVIEW_COUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Review Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159550470028055314)
,p_db_column_name=>'TITLE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Title'
,p_column_link=>'#DETAILS_URL#'
,p_column_linktext=>'#TITLE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512110143Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110143Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Game Detail'
,p_alias=>'GAME-DETAIL'
,p_step_title=>'Game Detail'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(168156371422157300903)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260512110331Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512113119Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168205318318677589244)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512110331Z')
,p_updated_on=>wwv_flow_imp.dz('20260512110331Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(168159551555345055325)
,p_name=>'New'
,p_static_id=>'new'
,p_title=>'Game Details'
,p_parent_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select g.game_id,',
'       g.title,',
'       d.developer_name,',
'       g.price,',
'       g.age_rating,',
'       to_char(g.release_date, ''YYYY-MM-DD'') as release_date,',
'       (',
'           select listagg(c.category_name, '', '') within group (order by c.category_name)',
'             from game_categories gc',
'             join categories c on c.category_id = gc.category_id',
'            where gc.game_id = g.game_id',
'       ) as categories,',
'       (',
'           select count(*)',
'             from reviews r',
'            where r.game_id = g.game_id',
'       ) as review_count,',
'       (',
'           select count(*)',
'             from reviews r',
'            where r.game_id = g.game_id',
'              and lower(r.review_type) = ''positive''',
'       ) as positive_reviews,',
'       pkg_library_games.get_game_popularity(g.game_id) as popularity,',
'       case',
'           when exists (',
'               select 1',
'                 from library l',
'                where l.user_id = :G_USER_ID',
'                  and l.game_id = g.game_id',
'           )',
'           then ''Owned''',
'           else ''Not owned''',
'       end as ownership,',
'       g.description',
'  from games g',
'  left join developers d on d.developer_id = g.developer_id',
' where g.game_id = :P30_GAME_ID',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_on=>wwv_flow_imp.dz('20260512112207Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552004206055330)
,p_query_column_id=>5
,p_column_alias=>'AGE_RATING'
,p_column_display_sequence=>50
,p_column_heading=>'Age Rating'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552299098055332)
,p_query_column_id=>7
,p_column_alias=>'CATEGORIES'
,p_column_display_sequence=>70
,p_column_heading=>'Categories'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552771457055337)
,p_query_column_id=>12
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>120
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159551858153055328)
,p_query_column_id=>3
,p_column_alias=>'DEVELOPER_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Developer Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159551639588055326)
,p_query_column_id=>1
,p_column_alias=>'GAME_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Game Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552671198055336)
,p_query_column_id=>11
,p_column_alias=>'OWNERSHIP'
,p_column_display_sequence=>110
,p_column_heading=>'Ownership'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552572898055335)
,p_query_column_id=>10
,p_column_alias=>'POPULARITY'
,p_column_display_sequence=>100
,p_column_heading=>'Popularity'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552404317055334)
,p_query_column_id=>9
,p_column_alias=>'POSITIVE_REVIEWS'
,p_column_display_sequence=>90
,p_column_heading=>'Positive Reviews'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159551941918055329)
,p_query_column_id=>4
,p_column_alias=>'PRICE'
,p_column_display_sequence=>40
,p_column_heading=>'Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552174422055331)
,p_query_column_id=>6
,p_column_alias=>'RELEASE_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Release Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159552376027055333)
,p_query_column_id=>8
,p_column_alias=>'REVIEW_COUNT'
,p_column_display_sequence=>80
,p_column_heading=>'Review Count'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168159551731525055327)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>20
,p_column_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168159553776280055347)
,p_plug_name=>'New'
,p_static_id=>'new-2'
,p_title=>'Reviews For This Game'
,p_parent_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.review_id,',
'       u.username,',
'       r.review_type,',
'       r.review_text,',
'       r.review_date',
'  from reviews r',
'  join users u on u.user_id = r.user_id',
' where r.game_id = :P30_GAME_ID',
' order by r.review_date desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reviews For This Game'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(168159553877918055348)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>168159553877918055348
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216048450305746903)
,p_db_column_name=>'REVIEW_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Review Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159553909665055349)
,p_db_column_name=>'REVIEW_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Review Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216048333810746902)
,p_db_column_name=>'REVIEW_TEXT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Review Text'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216048221532746901)
,p_db_column_name=>'REVIEW_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Review Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168159554062991055350)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(168216048556773746904)
,p_name=>'New'
,p_static_id=>'new-3'
,p_title=>'Achievements For This Game'
,p_parent_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_template=>4072358936313175081
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.title,',
'       a.description,',
'       case when ua.achievement_id is not null then ''Unlocked'' else ''Locked'' end as status,',
'       ua.unlocked_at',
'  from achievements a',
'  left join user_achievements ua',
'    on ua.achievement_id = a.achievement_id',
'   and ua.user_id = :G_USER_ID',
' where a.game_id = :P30_GAME_ID',
' order by status desc, a.title;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113119Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113119Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168216048796802746906)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>20
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512113119Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168216048896019746907)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>30
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512113119Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168216048699915746905)
,p_query_column_id=>1
,p_column_alias=>'TITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512113119Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168216048919128746908)
,p_query_column_id=>4
,p_column_alias=>'UNLOCKED_AT'
,p_column_display_sequence=>40
,p_column_heading=>'Unlocked At'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512113119Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168159552959220055339)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_button_name=>'ADD_TO_CART'
,p_static_id=>'add-to-cart'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add To Cart'
,p_created_on=>wwv_flow_imp.dz('20260512112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260512112207Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168159553338309055343)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_button_name=>'BACK_TO_CATALOG'
,p_static_id=>'back-to-catalog'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Back To Catalog'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260512112325Z')
,p_updated_on=>wwv_flow_imp.dz('20260512112325Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168159553120119055341)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_button_name=>'BUY_NOW'
,p_static_id=>'buy-now'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buy Now'
,p_created_on=>wwv_flow_imp.dz('20260512112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260512112207Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168159553235955055342)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_button_name=>'WRITE_REVIEW'
,p_static_id=>'write-review'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Write Review'
,p_button_redirect_url=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260512112207Z')
,p_updated_on=>wwv_flow_imp.dz('20260512112218Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168159552867939055338)
,p_name=>'P30_GAME_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(168205318318677589244)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512111429Z')
,p_updated_on=>wwv_flow_imp.dz('20260512112207Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168159553421063055344)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_TO_CART'
,p_static_id=>'add-to-cart'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_exists number;',
'    l_status varchar2(4000);',
'begin',
'    l_status := pkg_store_purchase.can_user_buy_game(:G_USER_ID, :P30_GAME_ID);',
'',
'    if l_status <> ''It is possible to make a purchase'' then',
'        raise_application_error(-20101, l_status);',
'    end if;',
'',
'    if not apex_collection.collection_exists(''CART'') then',
'        apex_collection.create_collection(''CART'');',
'    end if;',
'',
'    select count(*)',
'      into l_exists',
'      from apex_collections',
'     where collection_name = ''CART''',
'       and n001 = to_number(:P30_GAME_ID);',
'',
'    if l_exists = 0 then',
'        apex_collection.add_member(',
'            p_collection_name => ''CART'',',
'            p_n001            => to_number(:P30_GAME_ID)',
'        );',
'        apex_application.g_print_success_message := ''Game added to cart.'';',
'    else',
'        apex_application.g_print_success_message := ''Game is already in cart.'';',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(168159552959220055339)
,p_process_when=>'ADD_TO_CART'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>168159553421063055344
,p_created_on=>wwv_flow_imp.dz('20260512112731Z')
,p_updated_on=>wwv_flow_imp.dz('20260512112731Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168159553598624055345)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'BUY_NOW'
,p_static_id=>'buy-now'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_store_purchase.purchase_game(:G_USER_ID, to_number(:P30_GAME_ID));',
'    apex_application.g_print_success_message := ''Purchase completed.'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(168159553120119055341)
,p_process_when=>'BUY_NOW'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>168159553598624055345
,p_created_on=>wwv_flow_imp.dz('20260512113032Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113032Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Cart'
,p_alias=>'CART'
,p_step_title=>'Cart'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(168156371422157300903)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260512113350Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168217108890575771116)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512113350Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113350Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168216049689459746915)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_title=>'Cart'
,p_parent_plug_id=>wwv_flow_imp.id(168217108890575771116)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with latest_wallet as (',
'    select currency',
'      from (',
'          select currency',
'            from wallets',
'           where user_id = :G_USER_ID',
'           order by updated_at desc, wallet_id desc',
'      )',
'     where rownum = 1',
')',
'select c.seq_id,',
'       c.n001 as game_id,',
'       g.title,',
'       d.developer_name,',
'       g.price as usd_price,',
'       nvl(w.currency, ''USD'') as wallet_currency,',
'       round(',
'           case upper(nvl(w.currency, ''USD''))',
'               when ''EUR'' then g.price * 0.85',
'               when ''KZT'' then g.price * 471.86',
'               when ''GBP'' then g.price * 0.74',
'               when ''JPY'' then g.price * 159.17',
'               else g.price',
'           end,',
'           2',
'       ) as wallet_price,',
'       apex_page.get_url(',
'           p_page    => 40,',
'           p_request => ''REMOVE'',',
'           p_items   => ''P40_SEQ_ID'',',
'           p_values  => c.seq_id',
'       ) as remove_url',
'  from apex_collections c',
'  join games g on g.game_id = c.n001',
'  left join developers d on d.developer_id = g.developer_id',
'  left join latest_wallet w on 1 = 1',
' where c.collection_name = ''CART''',
' order by c.seq_id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Cart'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512114049Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(168216049769321746916)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>168216049769321746916
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512114049Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216050177059746920)
,p_db_column_name=>'DEVELOPER_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Developer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113953Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216049934948746918)
,p_db_column_name=>'GAME_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Game Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113953Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216050542134746924)
,p_db_column_name=>'REMOVE_URL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remove Url'
,p_column_link=>'#REMOVE_URL#'
,p_column_linktext=>'Remove'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512114049Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216049897545746917)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113953Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216050010147746919)
,p_db_column_name=>'TITLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113953Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216050283046746921)
,p_db_column_name=>'USD_PRICE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Usd Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113953Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216050341415746922)
,p_db_column_name=>'WALLET_CURRENCY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Wallet Currency'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113953Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216050413131746923)
,p_db_column_name=>'WALLET_PRICE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Wallet Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512113953Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113953Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(168216050693607746925)
,p_name=>'New'
,p_static_id=>'new-2'
,p_title=>'Cart Total'
,p_parent_plug_id=>wwv_flow_imp.id(168217108890575771116)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with latest_wallet as (',
'    select currency',
'      from (',
'          select currency',
'            from wallets',
'           where user_id = :G_USER_ID',
'           order by updated_at desc, wallet_id desc',
'      )',
'     where rownum = 1',
')',
'select count(*) as items,',
'       nvl(max(w.currency), ''USD'') as currency,',
'       nvl(sum(round(',
'           case upper(nvl(w.currency, ''USD''))',
'               when ''EUR'' then g.price * 0.85',
'               when ''KZT'' then g.price * 471.86',
'               when ''GBP'' then g.price * 0.74',
'               when ''JPY'' then g.price * 159.17',
'               else g.price',
'           end,',
'           2',
'       )), 0) as total',
'  from apex_collections c',
'  join games g on g.game_id = c.n001',
'  left join latest_wallet w on 1 = 1',
' where c.collection_name = ''CART''',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168216050866669746927)
,p_query_column_id=>2
,p_column_alias=>'CURRENCY'
,p_column_display_sequence=>20
,p_column_heading=>'Currency'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168216050744027746926)
,p_query_column_id=>1
,p_column_alias=>'ITEMS'
,p_column_display_sequence=>10
,p_column_heading=>'Items'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(168216050973185746928)
,p_query_column_id=>3
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>30
,p_column_heading=>'Total'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168216051273775746931)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(168217108890575771116)
,p_button_name=>'BACK_TO_CATALOG'
,p_static_id=>'back-to-catalog'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Back To Catalog'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168216051039812746929)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(168217108890575771116)
,p_button_name=>'CHECKOUT'
,p_static_id=>'checkout'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Checkout'
,p_created_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168216051191945746930)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(168217108890575771116)
,p_button_name=>'CLEAR_CART'
,p_static_id=>'clear-cart'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clear Cart'
,p_created_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168216049488313746913)
,p_name=>'P40_SEQ_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(168217108890575771116)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512113812Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168216051455914746933)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECKOUT'
,p_static_id=>'checkout'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ids pkg_store_purchase.t_id_list := pkg_store_purchase.t_id_list();',
'begin',
'    for r in (',
'        select distinct n001 as game_id',
'          from apex_collections',
'         where collection_name = ''CART''',
'         order by n001',
'    ) loop',
'        l_ids.extend;',
'        l_ids(l_ids.count) := r.game_id;',
'    end loop;',
'',
'    if l_ids.count = 0 then',
'        raise_application_error(-20102, ''Cart is empty.'');',
'    end if;',
'',
'    pkg_store_purchase.purchase_game(:G_USER_ID, l_ids);',
'    apex_collection.delete_collection(''CART'');',
'',
'    apex_application.g_print_success_message := ''Purchase completed.'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(168216051039812746929)
,p_process_when=>'CHECKOUT'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>168216051455914746933
,p_created_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168216051532454746934)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR_CART'
,p_static_id=>'clear-cart'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if apex_collection.collection_exists(''CART'') then',
'        apex_collection.truncate_collection(''CART'');',
'    end if;',
'    apex_application.g_print_success_message := ''Cart cleared.'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(168216051191945746930)
,p_process_when=>'CLEAR_CART'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>168216051532454746934
,p_created_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168216049527054746914)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ENSURE_CART'
,p_static_id=>'ensure-cart'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if not apex_collection.collection_exists(''CART'') then',
'        apex_collection.create_collection(''CART'');',
'    end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>168216049527054746914
,p_created_on=>wwv_flow_imp.dz('20260512113812Z')
,p_updated_on=>wwv_flow_imp.dz('20260512113812Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168216051366898746932)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE'
,p_static_id=>'remove'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_collection.delete_member(',
'        p_collection_name => ''CART'',',
'        p_seq             => to_number(:P40_SEQ_ID)',
'    );',
'    apex_application.g_print_success_message := ''Removed from cart.'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>168216051366898746932
,p_created_on=>wwv_flow_imp.dz('20260512115158Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115158Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'My Library'
,p_alias=>'MY-LIBRARY'
,p_step_title=>'My Library'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(168156371422157300903)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260512115306Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512115849Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168224264717439233476)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512115306Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115306Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168216051898108746937)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_title=>'My Library'
,p_parent_plug_id=>wwv_flow_imp.id(168224264717439233476)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.game_id,',
'       g.title,',
'       d.developer_name,',
'       l.purchase_id,',
'       l.added_date,',
'       pkg_achievements.get_achievement_progress(:G_USER_ID, g.game_id) as achievement_progress,',
'       pkg_achievements.get_achievement_tier(:G_USER_ID, g.game_id) as tier,',
'       apex_page.get_url(',
'           p_page   => 30,',
'           p_items  => ''P30_GAME_ID'',',
'           p_values => g.game_id',
'       ) as details_url,',
'       apex_page.get_url(',
'           p_page   => 80,',
'           p_items  => ''P80_GAME_ID'',',
'           p_values => g.game_id',
'       ) as review_url,',
'       apex_page.get_url(',
'           p_page    => 50,',
'           p_request => ''REMOVE_GAME'',',
'           p_items   => ''P50_GAME_ID'',',
'           p_values  => g.game_id',
'       ) as remove_url',
'  from library l',
'  join games g on g.game_id = l.game_id',
'  left join developers d on d.developer_id = g.developer_id',
' where l.user_id = :G_USER_ID',
' order by l.added_date desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'My Library'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115740Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(168216051957185746938)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>168216051957185746938
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115740Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052502962746944)
,p_db_column_name=>'ACHIEVEMENT_PROGRESS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Achievement Progress'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052480327746943)
,p_db_column_name=>'ADDED_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Added Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052793684746946)
,p_db_column_name=>'DETAILS_URL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Details Url'
,p_column_link=>'#DETAILS_URL#'
,p_column_linktext=>'Open'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052209996746941)
,p_db_column_name=>'DEVELOPER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Developer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052015906746939)
,p_db_column_name=>'GAME_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Game Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052301497746942)
,p_db_column_name=>'PURCHASE_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Purchase Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052911989746948)
,p_db_column_name=>'REMOVE_URL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Remove Url'
,p_column_link=>'#REMOVE_URL#'
,p_column_linktext=>'Remove'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115740Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052853830746947)
,p_db_column_name=>'REVIEW_URL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Review Url'
,p_column_link=>'#DETAILS_URL#'
,p_column_linktext=>'Review'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115656Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052637294746945)
,p_db_column_name=>'TIER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tier'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168216052128035746940)
,p_db_column_name=>'TITLE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512115609Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168216051733093746936)
,p_name=>'P50_GAME_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(168224264717439233476)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512115418Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115609Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168216053040446746949)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_GAME'
,p_static_id=>'remove-game'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_library_games.remove_game_from_library(:G_USER_ID, :P50_GAME_ID);',
'    apex_application.g_print_success_message := ''Game removed from library.'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'REMOVE_GAME'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>168216053040446746949
,p_created_on=>wwv_flow_imp.dz('20260512115849Z')
,p_updated_on=>wwv_flow_imp.dz('20260512115849Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_imp_page.create_page(
 p_id=>60
,p_name=>'Transaction history'
,p_alias=>'TRANSACTION-HISTORY'
,p_step_title=>'Transaction history'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260512122310Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512124002Z')
,p_created_by=>'NURBOLAT'
,p_last_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168231541593618067094)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512122310Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122310Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168231542294168067096)
,p_plug_name=>'Transaction history'
,p_static_id=>'transaction-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'N'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PURCHASES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_prn_page_header=>'Transaction history'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512124002Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(168231542339054067096)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>168231542339054067096
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512124002Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168231544564636067190)
,p_db_column_name=>'PAYMENT_METHOD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Payment Method'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122311Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168231545799883067191)
,p_db_column_name=>'PROMO_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Promo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(168231542535120067188)
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122311Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168231545338716067191)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122311Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168231543335111067189)
,p_db_column_name=>'PURCHASE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Purchase ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122311Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168231544145416067190)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Purchase Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512122311Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168231544927772067191)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_html_expression=>'<span style="font-weight:bold; color: #2196F3;">#STATUS#</span>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512124002Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(168231543766075067190)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260512122311Z')
,p_updated_on=>wwv_flow_imp.dz('20260512124002Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/pages/page_00070
begin
wwv_flow_imp_page.create_page(
 p_id=>70
,p_name=>'Profile'
,p_alias=>'PROFILE'
,p_step_title=>'Profile'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(168156371422157300903)
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260512100627Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512105418Z')
,p_created_by=>'NURBOLAT'
,p_last_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168173116913076246816)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512100627Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100627Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(156040738481913651603)
,p_plug_name=>'Profile'
,p_static_id=>'profile'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_query_where=>'USER_ID = :APP_USER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260512102528Z')
,p_updated_on=>wwv_flow_imp.dz('20260512102528Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168173118072464246905)
,p_plug_name=>'Profile'
,p_static_id=>'profile-2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_query_where=>'USER_ID = :APP_USER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512102528Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168173122297751246911)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168173123674099246912)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P70_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168173122806035246911)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P70_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168173123222846246912)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P70_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(168173123909372246912)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168173119909352246908)
,p_name=>'P70_CREATED_AT'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_item_source_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_prompt=>'New'
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103032Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168173119130301246907)
,p_name=>'P70_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_item_source_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_prompt=>'New'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512102528Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168173119515674246907)
,p_name=>'P70_PASSWORD_HASH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_item_source_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_source=>'PASSWORD_HASH'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512102528Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168173118773280246906)
,p_name=>'P70_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_item_source_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_prompt=>'New'
,p_source=>'USERNAME'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512102528Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168173118321602246905)
,p_name=>'P70_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_item_source_plug_id=>wwv_flow_imp.id(168173118072464246905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Id'
,p_source=>'USER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(168173120499747246909)
,p_validation_name=>'P70_CREATED_AT must be timestamp'
,p_static_id=>'p70-created-at-must-be-timestamp'
,p_validation_sequence=>40
,p_validation=>'P70_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(168173119909352246908)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168173124433728246913)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(168173118072464246905)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Initialize form Profile'
,p_static_id=>'initialize-form-profile'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_process_when_button_id=>wwv_flow_imp.id(168173123222846246912)
,p_internal_uid=>168173124433728246913
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512102528Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168173124839775246913)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(168173118072464246905)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Profile'
,p_static_id=>'process-form-profile'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>168173124839775246913
,p_created_on=>wwv_flow_imp.dz('20260512100628Z')
,p_updated_on=>wwv_flow_imp.dz('20260512100628Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/pages/page_00080
begin
wwv_flow_imp_page.create_page(
 p_id=>80
,p_name=>'Reviews'
,p_alias=>'REVIEWS'
,p_step_title=>'Reviews'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260512103426Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512105109Z')
,p_created_by=>'NURBOLAT'
,p_last_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168197629730478414724)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512103426Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103426Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168197630544060414806)
,p_plug_name=>'Reviews'
,p_static_id=>'reviews'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'N'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'REVIEWS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168197636063838414814)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168197637461941414815)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P80_REVIEW_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168197636659684414815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P80_REVIEW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(168197637029591414815)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P80_REVIEW_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(168197637777372414815)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168197631984310414808)
,p_name=>'P80_GAME_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_item_source_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_source=>'GAME_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105108Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168197633426175414810)
,p_name=>'P80_REVIEW_DATE'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_item_source_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_source=>'REVIEW_DATE'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105108Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168197630811914414806)
,p_name=>'P80_REVIEW_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_item_source_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Review Id'
,p_source=>'REVIEW_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168197633015069414809)
,p_name=>'P80_REVIEW_TEXT'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_item_source_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_prompt=>'Review Text'
,p_source=>'REVIEW_TEXT'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105108Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168197632626890414809)
,p_name=>'P80_REVIEW_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_item_source_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_prompt=>'Review Type'
,p_source=>'REVIEW_TYPE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Display1;Return1,Display2;Return2'
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('\041F\043E\0437\0438\0442\0438\0432\043D\044B\0439 \041D\0435\0433\0430\0442\0438\0432\043D\044B\0439 \041D\0435\0439\0442\0440\0430\043B\044C\043D\044B\0439    ')
,p_lov_null_value=>'POSITIVE NEGATIVE NEUTRAL'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105108Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168197631202070414807)
,p_name=>'P80_USER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_item_source_plug_id=>wwv_flow_imp.id(168197630544060414806)
,p_source=>'USER_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105108Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(168197633913288414811)
,p_validation_name=>'P80_REVIEW_DATE must be timestamp'
,p_static_id=>'p80-review-date-must-be-timestamp'
,p_validation_sequence=>50
,p_validation=>'P80_REVIEW_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(168197633426175414810)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168197638253449414816)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(168197630544060414806)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Initialize form Reviews'
,p_static_id=>'initialize-form-reviews'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_internal_uid=>168197638253449414816
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512105109Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(168197638656214414816)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(168197630544060414806)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Reviews'
,p_static_id=>'process-form-reviews'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>168197638656214414816
,p_created_on=>wwv_flow_imp.dz('20260512103427Z')
,p_updated_on=>wwv_flow_imp.dz('20260512103427Z')
,p_created_by=>'NURBOLAT'
,p_updated_by=>'NURBOLAT'
);
end;
/
prompt --application/pages/page_00090
begin
wwv_flow_imp_page.create_page(
 p_id=>90
,p_name=>'Purchases'
,p_alias=>'PURCHASES'
,p_step_title=>'Purchases'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(168156371422157300903)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260517074107Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_last_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(968939422414921566)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(161107315498185470856)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20260517074107Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(970687007479943322)
,p_plug_name=>'My Purchases'
,p_static_id=>'my-purchases'
,p_title=>'My Purchases'
,p_parent_plug_id=>wwv_flow_imp.id(968939422414921566)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.purchase_id,',
'       p.purchase_date,',
'       p.purchase_type,',
'       p.payment_method,',
'       p.status,',
'       pi.game_id,',
'       g.title as game_title,',
'       pi.price_at_purchase,',
'       case',
'           when lower(p.status) = ''completed'' then',
'               apex_page.get_url(',
'                   p_page    => 60,',
'                   p_request => ''REFUND'',',
'                   p_items   => ''P60_PURCHASE_ID'',',
'                   p_values  => p.purchase_id',
'               )',
'       end as refund_url',
'  from purchases p',
'  join purchases_item pi on pi.purchase_id = p.purchase_id',
'  join games g on g.game_id = pi.game_id',
' where p.user_id = :G_USER_ID',
' order by p.purchase_date desc, p.purchase_id desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'My Purchases'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(970687139232943323)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>970687139232943323
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689662024943348)
,p_db_column_name=>'GAME_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Game Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689724620943349)
,p_db_column_name=>'GAME_TITLE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Game Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689470755943346)
,p_db_column_name=>'PAYMENT_METHOD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Payment Method'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689838116943350)
,p_db_column_name=>'PRICE_AT_PURCHASE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Price At Purchase'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689218699943344)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689174148943343)
,p_db_column_name=>'PURCHASE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Purchase Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689363738943345)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Purchase Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970949481399951101)
,p_db_column_name=>'REFUND_URL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Refund Url'
,p_column_link=>'#REFUND_URL#'
,p_column_linktext=>'#REFUND_URL#'
,p_column_link_attr=>'Refund'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(970689536131943347)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(168216053176415746950)
,p_name=>'P60_PURCHASE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(968939422414921566)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(970949526272951102)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NewREFUND'
,p_static_id=>'newrefund'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_store_purchase.refund_purchase(:G_USER_ID, :P60_PURCHASE_ID);',
'    apex_application.g_print_success_message := ''Refund completed.'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'REFUND'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>970949526272951102
,p_created_on=>wwv_flow_imp.dz('20260517074930Z')
,p_updated_on=>wwv_flow_imp.dz('20260517074930Z')
,p_created_by=>'NIYAZBEK'
,p_updated_by=>'NIYAZBEK'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Steam Nexus - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// Steam Theme Fix \2014 \0432\0441\0442\0430\0432\0438\0442\044C \0432:'),
unistr('// Page 9999 \2192 JavaScript \2192 Execute when Page Loads'),
'',
'const steamFix = document.createElement(''style'');',
'steamFix.textContent = `',
'',
unistr('  /* \0424\043E\043D \0441\0442\0440\0430\043D\0438\0446\044B */'),
'  html, body {',
'    background-color: #0d1117 !important;',
'    background-image: radial-gradient(ellipse 80% 50% at 50% -5%, rgba(30,80,130,0.5) 0%, transparent 65%) !important;',
'  }',
'',
unistr('  /* \041A\0430\0440\0442\043E\0447\043A\0430 */'),
'  body.t-PageBody--login .t-Login-region {',
'    background: linear-gradient(160deg, #1e2d3e 0%, #16202d 100%) !important;',
'    border-color: #2a475e !important;',
'    border-top: 2px solid #66c0f4 !important;',
'  }',
'  body.t-PageBody--login .t-Login-region .t-Region-body {',
'    background: transparent !important;',
'  }',
'',
unistr('  /* \0417\0430\0433\043E\043B\043E\0432\043E\043A */'),
'  body.t-PageBody--login .t-Login-region .t-Region-title {',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    color: #66c0f4 !important;',
'    letter-spacing: 0.08em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
unistr('  /* \041B\0435\0439\0431\043B\044B */'),
'  body.t-PageBody--login .t-Login-region label {',
'    color: #8f98a0 !important;',
'    font-size: 11px !important;',
'    font-weight: 600 !important;',
'    letter-spacing: 0.06em !important;',
'    text-transform: uppercase !important;',
'  }',
'',
unistr('  /* \041F\0440\043E\0437\0440\0430\0447\043D\044B\0439 \0444\043E\043D \0443 \043E\0431\0451\0440\0442\043E\043A \2014 \041D\0415 \0442\0451\043C\043D\044B\0439 */'),
'  body.t-PageBody--login .t-Form-itemWrapper,',
'  body.t-PageBody--login .t-Form-inputContainer,',
'  body.t-PageBody--login .t-Form-fieldContainer,',
'  body.t-PageBody--login .col {',
'    background-color: transparent !important;',
'    border-color: transparent !important;',
'  }',
'',
unistr('  /* \0422\0451\043C\043D\044B\0439 \0444\043E\043D \0442\043E\043B\044C\043A\043E \0443 \0433\0440\0443\043F\043F\044B \0438\043D\043F\0443\0442\0430 */'),
'  body.t-PageBody--login .apex-item-group {',
'    background-color: #0f1923 !important;',
'    border: 1px solid #2a475e !important;',
'    border-radius: 3px !important;',
'  }',
'  body.t-PageBody--login .apex-item-group:focus-within {',
'    border-color: #66c0f4 !important;',
'    box-shadow: 0 0 0 3px rgba(102,192,244,0.15) !important;',
'  }',
'',
unistr('  /* \041F\043E\043B\044F \0432\0432\043E\0434\0430 */'),
'  body.t-PageBody--login #P9999_USERNAME ',
'  body.t-PageBody--login #P9999_PASSWORD {',
'    background-color: transparent !important;',
'    border: none !important;',
'    color: #c7d5e0 !important;',
'    font-family: ''Open Sans'', sans-serif !important;',
'  }',
'  body.t-PageBody--login #P9999_USERNAME::placeholder,',
'  body.t-PageBody--login #P9999_PASSWORD::placeholder {',
'    color: rgba(102,192,244,0.3) !important;',
'  }',
'',
unistr('  /* \0418\043A\043E\043D\043A\0438 (fa-user, fa-key) */'),
'  body.t-PageBody--login .apex-item-icon {',
'    color: #4083ab !important;',
'  }',
'',
unistr('  /* \041A\043D\043E\043F\043A\0430 \0433\043B\0430\0437\0430 */'),
'  body.t-PageBody--login .t-Button--passwordVisibility {',
'    background-color: transparent !important;',
'    border: none !important;',
'    border-left: 1px solid #2a475e !important;',
'    color: #4083ab !important;',
'  }',
'  body.t-PageBody--login .t-Button--passwordVisibility:hover {',
'    color: #66c0f4 !important;',
'    background-color: rgba(102,192,244,0.08) !important;',
'  }',
'  body.t-PageBody--login .t-Button--passwordVisibility .fa {',
'    color: inherit !important;',
'  }',
'',
unistr('  /* \0427\0435\043A\0431\043E\043A\0441 Remember me */'),
'  body.t-PageBody--login input[type="checkbox"] {',
'    accent-color: #66c0f4 !important;',
'  }',
'  body.t-PageBody--login .t-Form-optionLabel {',
'    color: #8f98a0 !important;',
'  }',
'',
unistr('  /* \041A\043D\043E\043F\043A\0430 LOGIN */'),
'  body.t-PageBody--login .t-Button--hot {',
'    background-image: linear-gradient(180deg, #4b8ec5 0%, #2a6099 100%) !important;',
'    background-color: #2a6099 !important;',
'    border-color: transparent !important;',
'    color: #d2e3f3 !important;',
'    font-family: ''Rajdhani'', sans-serif !important;',
'    font-weight: 700 !important;',
'    letter-spacing: 0.1em !important;',
'    text-transform: uppercase !important;',
'  }',
'  body.t-PageBody--login .t-Button--hot:hover {',
'    background-image: linear-gradient(180deg, #5fa0d8 0%, #3575b5 100%) !important;',
'  }',
'',
unistr('  /* \0421\0441\044B\043B\043A\0438 */'),
'  body.t-PageBody--login .t-Login-region a {',
'    color: #66c0f4 !important;',
'  }',
'  body.t-PageBody--login .t-Login-region a:hover {',
'    color: #a5d8f5 !important;',
'  }',
'',
unistr('  /* \041E\0448\0438\0431\043A\0438 */'),
'  body.t-PageBody--login .t-Alert--danger {',
'    background-color: rgba(224,92,92,0.1) !important;',
'    border-color: rgba(224,92,92,0.4) !important;',
'    color: #e07070 !important;',
'  }',
unistr('  /* Username \2014 border \0438 \0444\043E\043D \043D\0430\043F\0440\044F\043C\0443\044E \043D\0430 input */'),
'  body.t-PageBody--login #P9999_USERNAME {',
'    background-color: #0f1923 !important;',
'    border: 1px solid #2a475e !important;',
'    border-radius: 3px !important;',
'    color: #c7d5e0 !important;',
'  }',
'  body.t-PageBody--login #P9999_USERNAME:focus {',
'    border-color: #66c0f4 !important;',
'    box-shadow: 0 0 0 3px rgba(102,192,244,0.15) !important;',
'    outline: none !important;',
'  }',
'',
'`;',
'document.head.appendChild(steamFix);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================================',
unistr('   STEAM-STYLE LOGIN \2014 \0442\043E\043B\044C\043A\043E \0446\0432\0435\0442\0430 \0438 \0448\0440\0438\0444\0442\044B'),
unistr('   Page 9999 \2192 CSS \2192 Inline'),
'   ============================================================ */',
'',
'@import url(''https://fonts.googleapis.com/css2?family=Rajdhani:wght@600;700&family=Open+Sans:wght@400;600&display=swap'');',
'',
unistr('/* === \0424\043E\043D \0441\0442\0440\0430\043D\0438\0446\044B === */'),
'html, body, .t-PageBody--login, .t-Login-bg {',
'  background-color: #0d1117 !important;',
'  background-image: radial-gradient(ellipse 80% 50% at 50% -5%, rgba(30,80,130,0.5) 0%, transparent 65%) !important;',
'  font-family: ''Open Sans'', sans-serif !important;',
'  color: #c7d5e0 !important;',
'}',
'',
unistr('/* === \041A\0430\0440\0442\043E\0447\043A\0430 \043B\043E\0433\0438\043D\0430 === */'),
'.t-Login-region,',
'.t-Login-region.t-Region {',
'  background: linear-gradient(160deg, #1e2d3e 0%, #16202d 100%) !important;',
'  border-color: #2a475e !important;',
'  color: #c7d5e0 !important;',
'}',
'',
'.t-Login-region .t-Region-body {',
'  background: transparent !important;',
'}',
'',
unistr('/* \0421\0438\043D\044F\044F \043B\0438\043D\0438\044F \0441\0432\0435\0440\0445\0443 */'),
'.t-Login-region {',
'  border-top: 2px solid #66c0f4 !important;',
'}',
'',
unistr('/* === \0417\0430\0433\043E\043B\043E\0432\043E\043A === */'),
'.t-Login-region .t-Region-title,',
'.t-Login-region h1, .t-Login-region h2, .t-Login-region h3 {',
'  font-family: ''Rajdhani'', sans-serif !important;',
'  color: #66c0f4 !important;',
'  letter-spacing: 0.08em !important;',
'  text-transform: uppercase !important;',
'}',
'',
unistr('/* === \041B\0435\0439\0431\043B\044B === */'),
'.t-Login-region label,',
'.t-Form-label {',
'  font-family: ''Open Sans'', sans-serif !important;',
'  color: #8f98a0 !important;',
'  letter-spacing: 0.06em !important;',
'  text-transform: uppercase !important;',
'  font-size: 11px !important;',
'  font-weight: 600 !important;',
'}',
'',
unistr('/* === \041F\043E\043B\044F \0432\0432\043E\0434\0430 === */'),
'.t-Login-region input[type="text"],',
'.t-Login-region input[type="password"],',
'.t-Login-region input[type="email"],',
'#P9999_USERNAME,',
'#P9999_PASSWORD {',
'  background-color: #0f1923 !important;',
'  border-color: #2a475e !important;',
'  color: #c7d5e0 !important;',
'  font-family: ''Open Sans'', sans-serif !important;',
'}',
'',
'.t-Login-region input[type="text"]:hover,',
'.t-Login-region input[type="password"]:hover {',
'  border-color: #4083ab !important;',
'}',
'',
'.t-Login-region input[type="text"]:focus,',
'.t-Login-region input[type="password"]:focus {',
'  border-color: #66c0f4 !important;',
'  outline-color: #66c0f4 !important;',
'}',
'',
'.t-Login-region input::placeholder {',
'  color: rgba(102,192,244,0.3) !important;',
'}',
'',
unistr('/* === \0418\043A\043E\043D\043A\0438 \0432\043D\0443\0442\0440\0438 \043F\043E\043B\0435\0439 === */'),
'.t-Login-region .apex-item-icon,',
'.t-Login-region .apex-item-icon--left,',
'.t-Login-region .t-Form-inputContainer .fa,',
'.t-Login-region .apex-item-wrapper .fa {',
'  color: #4083ab !important;',
'}',
'',
unistr('/* === \041A\043D\043E\043F\043A\0430 \043F\043E\043A\0430\0437\0430 \043F\0430\0440\043E\043B\044F (\0433\043B\0430\0437) === */'),
'.t-Login-region .apex-password-toggle,',
'.t-Login-region .apex-item-wrapper > button {',
'  background-color: transparent !important;',
'  border-color: #2a475e !important;',
'  color: #4083ab !important;',
'}',
'',
'.t-Login-region .apex-password-toggle:hover {',
'  color: #66c0f4 !important;',
'  background-color: rgba(102,192,244,0.07) !important;',
'}',
'',
unistr('/* === \041E\0431\0451\0440\0442\043A\0430 \043F\043E\043B\044F === */'),
'.t-Login-region .apex-item-wrapper,',
'.t-Login-region .apex-item-wrapper--text,',
'.t-Login-region .apex-item-wrapper--password {',
'  background-color: #0f1923 !important;',
'  border-color: #2a475e !important;',
'}',
'',
unistr('/* === \041A\043D\043E\043F\043A\0430 \0412\041E\0419\0422\0418 === */'),
'.t-Login-region .t-Button--hot,',
'.t-Login-region button[type="submit"] {',
'  background-color: #2a6099 !important;',
'  background-image: linear-gradient(180deg, #4b8ec5 0%, #2a6099 100%) !important;',
'  border-color: transparent !important;',
'  color: #d2e3f3 !important;',
'  font-family: ''Rajdhani'', sans-serif !important;',
'  font-weight: 700 !important;',
'  letter-spacing: 0.1em !important;',
'  text-transform: uppercase !important;',
'  text-shadow: 0 1px 2px rgba(0,0,0,0.5) !important;',
'}',
'',
'.t-Login-region .t-Button--hot:hover,',
'.t-Login-region button[type="submit"]:hover {',
'  background-image: linear-gradient(180deg, #5fa0d8 0%, #3575b5 100%) !important;',
'}',
'',
unistr('/* === \0427\0435\043A\0431\043E\043A\0441 === */'),
'.t-Login-region input[type="checkbox"] {',
'  accent-color: #66c0f4 !important;',
'}',
'',
'.t-Login-region .t-Form-optionLabel,',
'.t-Login-region .checkbox label {',
'  color: #8f98a0 !important;',
'  font-family: ''Open Sans'', sans-serif !important;',
'}',
'',
unistr('/* === \0421\0441\044B\043B\043A\0438 === */'),
'.t-Login-region a {',
'  color: #66c0f4 !important;',
'}',
'',
'.t-Login-region a:hover {',
'  color: #a5d8f5 !important;',
'}',
'',
unistr('/* === \041E\0448\0438\0431\043A\0438 === */'),
'.t-Login-region .t-Alert--danger,',
'.apex-error-message,',
'#APEX_ERROR_MESSAGE {',
'  background-color: rgba(224,92,92,0.1) !important;',
'  border-color: rgba(224,92,92,0.4) !important;',
'  color: #e07070 !important;',
'}',
'',
unistr('/* === \0420\0430\0437\0434\0435\043B\0438\0442\0435\043B\044C === */'),
'.t-Login-region hr {',
'  border-color: #2a475e !important;',
'}',
'',
unistr('/* === \0421\043A\0440\043E\043B\043B\0431\0430\0440 === */'),
'::-webkit-scrollbar-track { background: #0d1117; }',
'::-webkit-scrollbar-thumb { background-color: #2a475e; }',
'::-webkit-scrollbar-thumb:hover { background-color: #4083ab; ',
'/* ============================================================',
unistr('   \0422\041E\0427\0415\0427\041D\042B\0419 \0424\0418\041A\0421 \2014 \0434\043E\0431\0430\0432\0438\0442\044C \0412 \041A\041E\041D\0415\0426 CSS \2192 Inline'),
unistr('   1. \0413\043B\0430\0437 \0431\0435\043B\044B\0439 \2192 \0441\0438\043D\0438\0439'),
unistr('   2. \0424\043E\043D \043C\0435\0436\0434\0443 \043F\043E\043B\044F\043C\0438 \2192 \0446\0432\0435\0442 \043A\0430\0440\0442\043E\0447\043A\0438'),
'   ============================================================ */',
'',
unistr('/* === 1. \041A\043D\043E\043F\043A\0430 \0433\043B\0430\0437\0430 === */'),
'.t-Button--passwordVisibility {',
'  color: #4083ab !important;',
'  background-color: transparent !important;',
'  border-color: transparent !important;',
'}',
'',
'.t-Button--passwordVisibility:hover {',
'  color: #66c0f4 !important;',
'  background-color: rgba(102,192,244,0.08) !important;',
'}',
'',
'.t-Button--passwordVisibility .t-Icon,',
'.t-Button--passwordVisibility .fa,',
'.t-Button--passwordVisibility span {',
'  color: inherit !important;',
'}',
'',
unistr('/* === 2. \0424\043E\043D \043C\0435\0436\0434\0443 \043F\043E\043B\044F\043C\0438 \2014 \0443\0431\0440\0430\0442\044C \0442\0451\043C\043D\044B\0439 \0446\0432\0435\0442 \0441 \043E\0431\0451\0440\0442\043E\043A === */'),
'.t-Form-itemWrapper {',
'  background-color: transparent !important;',
'}',
'',
'.t-Form-fieldContainer,',
'.t-Form-labelContainer,',
'.col.col-null,',
'.t-Form-inputContainer {',
'  background-color: transparent !important;',
'}',
'',
unistr('/* \0422\0451\043C\043D\044B\0439 \0444\043E\043D \0442\043E\043B\044C\043A\043E \0443 \0441\0430\043C\043E\0433\043E \043F\043E\043B\044F \0438 \0433\0440\0443\043F\043F\044B input === */'),
'.apex-item-group,',
'.apex-item-group--password {',
'  background-color: #0f1923 !important;',
'  border-color: #2a475e !important;',
'}'))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512174228Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(161107321505499470869)
,p_plug_name=>'Steam Nexus'
,p_static_id=>'steam-nexus'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_headings_type=>'COLON_DELMITED_LIST'
,p_region_image=>'#APP_FILES#steam_nexus_icon.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260511101704Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(161107323280104470873)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(161107321505499470869)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161107322480617470872)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(161107321505499470869)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161107322802693470872)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(161107321505499470869)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(161107322068831470871)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(161107321505499470869)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161107327351486470876)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>161107327351486470876
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161107326920544470876)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>161107326920544470876
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161107323585318470873)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>161107323585318470873
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(161107324547929470874)
,p_page_process_id=>wwv_flow_imp.id(161107323585318470873)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(161107325048929470875)
,p_page_process_id=>wwv_flow_imp.id(161107323585318470873)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(161107324057179470874)
,p_page_process_id=>wwv_flow_imp.id(161107323585318470873)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(161107325423847470875)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>161107325423847470875
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(161107326454078470876)
,p_page_process_id=>wwv_flow_imp.id(161107325423847470875)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(161107325954316470875)
,p_page_process_id=>wwv_flow_imp.id(161107325423847470875)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260422054238Z')
,p_updated_on=>wwv_flow_imp.dz('20260422054238Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(168342667886615158562)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260512181144Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260512181144Z')
,p_created_by=>'NURASYLDUJSENOV@GMAIL.COM'
,p_last_updated_by=>'NURASYLDUJSENOV@GMAIL.COM'
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
