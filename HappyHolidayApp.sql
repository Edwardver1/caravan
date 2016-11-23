set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.0.00.31'
,p_default_workspace_id=>423785132301288132
,p_default_application_id=>1218
,p_default_owner=>'C7172336'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 1218 - Happy Holiday
--
-- Application Export:
--   Application:     1218
--   Name:            Happy Holiday
--   Date and Time:   01:05 Saturday May 14, 2016
--   Exported By:     C7172336
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.31
--   Instance ID:     69430500808074
--

-- Application Statistics:
--   Pages:                     18
--     Items:                   43
--     Computations:             2
--     Validations:              2
--     Processes:               29
--     Regions:                 23
--     Buttons:                 32
--     Dynamic Actions:          3
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  4
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       LOVs:                   5
--       Shortcuts:              2
--       Plug-ins:               2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,1218)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'C7172336')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Happy Holiday')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_1218')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'88E28EC7FF009F14AF9EE0B272437905FAC533813371C4F5E6BF46EFCA8ACEDF'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(886631504691332672)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Happy Holiday'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'API_KEY'
,p_substitution_value_01=>'AIzaSyBbrHbS0OwDEdB00VQ3umzBvCbBsK5VMms'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513231313'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(886589182023332533)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(886632725130332673)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(887913525316726400)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Caravans'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bus'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(887868225070710668)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Pitches'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tree'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(888065673502741006)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Owners'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,10,11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(892496091987964276)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(894412646425007675)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Multi-Caravan Owners'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(892496091987964276)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(894611557917011740)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Owners of Caravans at Diff. Parks'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(892496091987964276)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(894763425514015574)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Max Berth''s Caravan by Park'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(892496091987964276)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(894966686585018900)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Pitch Description'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(892496091987964276)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(947325502727775018)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Caravans by Owner'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(892496091987964276)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(886631286435332672)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(886631423898332672)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(890589888629900873)
,p_name=>'Report Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(890590034973900875)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Multi-Caravan Owners'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Find owners who have more than 1 caravan.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(890590414799900876)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Max. Berth''s Caravan by Park'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'For every Caravan Park find Caravan with max berths.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(890590876316900876)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Owners of Caravans at Different Parks '
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Find Owners who have their Caravans at more than one park.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(890870041002915356)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Pitch Description'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'For every pitch find caravan and it''s owner.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(947330968375782915)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Caravans by Owner'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Stacked bar chart of owner''s caravans '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1018416386218835297)
,p_name=>'Forms'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1018416518863835298)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Caravans'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bus'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1018416957868835299)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Pitches'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tree'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1018417372604835299)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Owners'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-group'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(886588831865332533)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(886588944013332533)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(886589092934332533)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1017077991797048923)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1017082286223070939)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.JK64.SIMPLE_GOOGLE_MAP'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
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
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(913905675870498712)
,p_lov_name=>'CARAVANS_PARKS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct caravan_park_id first, caravan_park_id ',
'from caravan_pitch'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(914128401741540712)
,p_lov_name=>'CARAVANS_PITCH'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select cp_number,cppitch_id ',
'from caravan_pitch',
'where caravan_park_id= :p17_caravan_park_id'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(913046018585448206)
,p_lov_name=>'CATEGORIES'
,p_lov_query=>'.'||wwv_flow_api.id(913046018585448206)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(913046339412448206)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bronze'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(913046781274448208)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Silver'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(913047172692448208)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Gold'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(903678096458185691)
,p_lov_name=>'FREE_CARAVANS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select caravan_id as hello,caravan_id',
'from caravan ',
'where caravan_id not in (select caravan_no from caravan_owner);'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(914723316803959573)
,p_lov_name=>'STATIC_PARKS'
,p_lov_query=>'.'||wwv_flow_api.id(914723316803959573)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(914723637981959573)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Humblescough Farm'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(914724058452959573)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Forest Fields Caravan and Camping Park'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(914724436115959573)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Butt Farm Caravan and Campsite'
,p_lov_return_value=>'3'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(886632663379332673)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(886633021584332673)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886589298529332533)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886589330226332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886589482217332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886589506993332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886589653244332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886589716729332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886589825646332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886589983953332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590017431332533)
,p_page_template_id=>wwv_flow_api.id(886589298529332533)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886590129457332536)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590269359332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590398094332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590461340332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590544994332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590657838332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590738361332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590818696332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886590969151332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591032426332536)
,p_page_template_id=>wwv_flow_api.id(886590129457332536)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886591128479332538)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591204968332538)
,p_page_template_id=>wwv_flow_api.id(886591128479332538)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591363177332538)
,p_page_template_id=>wwv_flow_api.id(886591128479332538)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886591463601332541)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591500980332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591698596332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591737047332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591855360332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886591911515332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592095668332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592132483332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592209940332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592391572332541)
,p_page_template_id=>wwv_flow_api.id(886591463601332541)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886592438341332544)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592556015332544)
,p_page_template_id=>wwv_flow_api.id(886592438341332544)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592631291332544)
,p_page_template_id=>wwv_flow_api.id(886592438341332544)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592720526332544)
,p_page_template_id=>wwv_flow_api.id(886592438341332544)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592898424332544)
,p_page_template_id=>wwv_flow_api.id(886592438341332544)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886592914067332544)
,p_page_template_id=>wwv_flow_api.id(886592438341332544)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593032564332544)
,p_page_template_id=>wwv_flow_api.id(886592438341332544)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593151801332544)
,p_page_template_id=>wwv_flow_api.id(886592438341332544)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886593256776332546)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593305442332546)
,p_page_template_id=>wwv_flow_api.id(886593256776332546)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593453524332546)
,p_page_template_id=>wwv_flow_api.id(886593256776332546)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593526764332547)
,p_page_template_id=>wwv_flow_api.id(886593256776332546)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886593651019332549)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593729148332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593852198332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886593984334332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594037227332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594108867332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594220902332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594302128332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594424699332549)
,p_page_template_id=>wwv_flow_api.id(886593651019332549)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886594597888332552)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594667390332552)
,p_page_template_id=>wwv_flow_api.id(886594597888332552)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594749702332552)
,p_page_template_id=>wwv_flow_api.id(886594597888332552)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594841203332552)
,p_page_template_id=>wwv_flow_api.id(886594597888332552)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886594972940332552)
,p_page_template_id=>wwv_flow_api.id(886594597888332552)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886595042116332552)
,p_page_template_id=>wwv_flow_api.id(886594597888332552)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886595144443332552)
,p_page_template_id=>wwv_flow_api.id(886594597888332552)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886595264812332552)
,p_page_template_id=>wwv_flow_api.id(886594597888332552)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(886595379193332554)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886595460222332555)
,p_page_template_id=>wwv_flow_api.id(886595379193332554)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886595501961332555)
,p_page_template_id=>wwv_flow_api.id(886595379193332554)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(886595691468332555)
,p_page_template_id=>wwv_flow_api.id(886595379193332554)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(886626004109332660)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(886626157883332662)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(886626221766332665)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886595748084332557)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886595810810332557)
,p_plug_template_id=>wwv_flow_api.id(886595748084332557)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886597258394332560)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886597396441332563)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886597451706332563)
,p_plug_template_id=>wwv_flow_api.id(886597396441332563)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886597539385332563)
,p_plug_template_id=>wwv_flow_api.id(886597396441332563)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886598219754332566)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886598323416332566)
,p_plug_template_id=>wwv_flow_api.id(886598219754332566)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886598419457332566)
,p_plug_template_id=>wwv_flow_api.id(886598219754332566)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886601686798332569)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886601724914332569)
,p_plug_template_id=>wwv_flow_api.id(886601686798332569)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886601802939332569)
,p_plug_template_id=>wwv_flow_api.id(886601686798332569)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886603735329332572)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886603884116332572)
,p_plug_template_id=>wwv_flow_api.id(886603735329332572)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886603960013332575)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886604063728332575)
,p_plug_template_id=>wwv_flow_api.id(886603960013332575)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886604868451332578)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886605195811332580)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886605223581332580)
,p_plug_template_id=>wwv_flow_api.id(886605195811332580)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886605394926332583)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886605478159332583)
,p_plug_template_id=>wwv_flow_api.id(886605394926332583)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886605539283332583)
,p_plug_template_id=>wwv_flow_api.id(886605394926332583)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886607465641332586)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886607554734332586)
,p_plug_template_id=>wwv_flow_api.id(886607465641332586)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886607668465332586)
,p_plug_template_id=>wwv_flow_api.id(886607465641332586)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886608604208332589)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(886609195300332591)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(886609263045332591)
,p_plug_template_id=>wwv_flow_api.id(886609195300332591)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886617346550332617)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886619068446332620)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886621116956332623)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886621991885332625)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886622805564332628)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886623310239332631)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886623449326332633)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886623595922332636)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886623603306332639)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886624575456332641)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(886625051621332644)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886609737849332594)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886609827307332597)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886611593891332600)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886613648033332603)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886614023818332605)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886614144961332608)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(886614144961332608)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886615470874332611)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(886616460452332614)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(886625519613332647)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(886625615130332649)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(886625707783332652)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(886625859414332654)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(886625921678332657)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(886626623552332667)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(886626868752332670)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(886626796503332670)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(886627274230332671)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>wwv_flow_api.id(4070917134413059350)
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(886594597888332552)
,p_default_dialog_template=>wwv_flow_api.id(886593256776332546)
,p_error_template=>wwv_flow_api.id(886591128479332538)
,p_printer_friendly_template=>wwv_flow_api.id(886594597888332552)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(886591128479332538)
,p_default_button_template=>wwv_flow_api.id(886626157883332662)
,p_default_region_template=>wwv_flow_api.id(886605394926332583)
,p_default_chart_template=>wwv_flow_api.id(886605394926332583)
,p_default_form_template=>wwv_flow_api.id(886605394926332583)
,p_default_reportr_template=>wwv_flow_api.id(886605394926332583)
,p_default_tabform_template=>wwv_flow_api.id(886605394926332583)
,p_default_wizard_template=>wwv_flow_api.id(886605394926332583)
,p_default_menur_template=>wwv_flow_api.id(886608604208332589)
,p_default_listr_template=>wwv_flow_api.id(886605394926332583)
,p_default_irr_template=>wwv_flow_api.id(886604868451332578)
,p_default_report_template=>wwv_flow_api.id(886614144961332608)
,p_default_label_template=>wwv_flow_api.id(886625615130332649)
,p_default_menu_template=>wwv_flow_api.id(886626623552332667)
,p_default_calendar_template=>wwv_flow_api.id(886626796503332670)
,p_default_list_template=>wwv_flow_api.id(886621116956332623)
,p_default_nav_list_template=>wwv_flow_api.id(886624575456332641)
,p_default_top_nav_list_temp=>wwv_flow_api.id(886624575456332641)
,p_default_side_nav_list_temp=>wwv_flow_api.id(886623595922332636)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(886597396441332563)
,p_default_dialogr_template=>wwv_flow_api.id(886597258394332560)
,p_default_option_label=>wwv_flow_api.id(886625615130332649)
,p_default_required_label=>wwv_flow_api.id(886625859414332654)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(886623449326332633)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(886626958546332670)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(886627074930332670)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(886627163216332670)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886596000698332560)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886596232019332560)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886596460934332560)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886597674876332565)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886597824678332566)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886598545162332568)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886598915710332568)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886599513556332569)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886600195668332569)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886600356181332569)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886601260456332569)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886602830170332572)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886604296972332577)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886607707427332588)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886607934654332589)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886608308932332589)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886608715414332591)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886609388316332594)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886609920411332599)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886610190728332599)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886611776111332602)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886612453201332603)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886612796143332603)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886613422500332603)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886613713771332605)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886614282081332611)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886614529476332611)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886614759434332611)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886615523238332613)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886617471524332619)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886618289200332619)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886619285579332622)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886619937041332622)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886620218885332623)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886620933851332623)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886621668740332625)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886624099734332641)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886625142183332647)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886626392745332667)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886627311984332671)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886627570362332671)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886627760186332671)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886627999497332671)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886628179581332671)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886628511604332671)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886629201811332671)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886629649757332671)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886629830549332671)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886630091809332671)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886630220451332671)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886630578714332672)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(886630807527332672)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886595906308332560)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886596131943332560)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(886596000698332560)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886596379286332560)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(886596232019332560)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886596501132332560)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(886596460934332560)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886596693802332560)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(886596000698332560)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886596788787332560)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(886596232019332560)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886596861186332560)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(886596000698332560)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886596969524332560)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(886596232019332560)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886597044555332560)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(886596000698332560)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886597128828332560)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886595748084332557)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(886596460934332560)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886597749974332565)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(886597396441332563)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886597937508332566)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(886597396441332563)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(886597824678332566)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886598062043332566)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(886597396441332563)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886598150725332566)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(886597396441332563)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(886597824678332566)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886598694216332568)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(886598545162332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886598702477332568)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(886598545162332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886598807240332568)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(886598545162332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599048689332568)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599196401332568)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599250137332568)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599361445332568)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(886598545162332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599489563332568)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599609531332569)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599781632332569)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599828007332569)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886599938269332569)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600092578332569)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600257042332569)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(886600195668332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600475298332569)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(886600356181332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600593996332569)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(886600195668332569)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600677897332569)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600729588332569)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600887249332569)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886600932436332569)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(886600356181332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886601047090332569)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886601149350332569)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886601358230332569)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(886601260456332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886601410603332569)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(886601260456332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886601517874332569)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886598219754332566)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886601952873332572)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602054944332572)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602195893332572)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602206678332572)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602305260332572)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602488262332572)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602568357332572)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602619176332572)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602717069332572)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886602911709332572)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(886602830170332572)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886603011026332572)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(886602830170332572)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886603189661332572)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(886600356181332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886603249709332572)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886603382304332572)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886603468148332572)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886603510067332572)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(886600356181332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886603651963332572)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886601686798332569)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886604130660332577)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886603960013332575)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886604378459332577)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886603960013332575)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(886604296972332577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886604403594332578)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886603960013332575)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(886604296972332577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886604534377332578)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886603960013332575)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886604608993332578)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886603960013332575)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886604794800332578)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886603960013332575)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(886604296972332577)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886604978842332580)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886604868451332578)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886605002874332580)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886604868451332578)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886605697023332585)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886605714553332585)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886605818762332585)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886605952213332585)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(886598915710332568)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606064464332585)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606196184332586)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606205181332586)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606302243332586)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606419328332586)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(886599513556332569)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606574568332586)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(886600195668332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606645468332586)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(886600356181332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606745871332586)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(886600195668332569)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606814967332586)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886606984153332586)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886607031987332586)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886607160993332586)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(886600356181332569)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886607258923332586)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886607367157332586)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886605394926332583)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(886597674876332565)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886607801442332589)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886607465641332586)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(886607707427332588)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886608071303332589)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886607465641332586)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(886607934654332589)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886608159455332589)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886607465641332586)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886608275328332589)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886607465641332586)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(886607934654332589)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886608471430332589)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886607465641332586)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(886608308932332589)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886608553023332589)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886607465641332586)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(886608308932332589)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886608842497332591)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(886608604208332589)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(886608715414332591)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886608959791332591)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(886608604208332589)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886609006591332591)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(886608604208332589)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(886608715414332591)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886609405311332594)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(886609195300332591)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(886609388316332594)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886609513552332594)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886609195300332591)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(886609388316332594)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886609647534332594)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(886609195300332591)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610020430332599)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(886609920411332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610296392332599)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610330258332599)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(886609920411332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610473256332599)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610576986332599)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(886609920411332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610643117332599)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610780549332599)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610856845332599)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(886609920411332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886610939644332600)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(886609920411332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611008770332600)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611125512332600)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611201701332600)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611335383332600)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611468539332600)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886609827307332597)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611646412332602)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611890981332602)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(886611776111332602)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886611951067332602)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612027168332602)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(886611776111332602)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612174558332602)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612255110332602)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(886611776111332602)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612392532332602)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612562559332603)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(886612453201332603)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612616875332603)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(886612453201332603)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612822242332603)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(886612796143332603)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886612922340332603)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(886612796143332603)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886613061592332603)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(886612453201332603)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886613152624332603)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886613226676332603)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(886611776111332602)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886613390077332603)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886613558368332603)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886611593891332600)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(886613422500332603)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886613878520332605)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886613648033332603)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(886613713771332605)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886613952777332605)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886613648033332603)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(886613713771332605)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886614305884332611)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(886614282081332611)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886614460222332611)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(886614282081332611)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886614635807332611)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(886614529476332611)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886614813594332611)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(886614759434332611)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886614943625332611)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(886614759434332611)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615029689332611)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(886614759434332611)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615185320332611)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(886614529476332611)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615249904332611)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615321120332611)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886614144961332608)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(886614759434332611)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615626567332613)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615759516332614)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615855342332614)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886615913757332614)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616088199332614)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616167504332614)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616275627332614)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616321043332614)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(886615470874332611)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616591171332616)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616609063332616)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616776474332616)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616856094332616)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886616952339332616)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(886610190728332599)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617078684332616)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617139684332616)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617255000332617)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(886616460452332614)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(886615523238332613)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617567403332619)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617637969332619)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617744239332619)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617811520332619)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886617999255332619)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618066563332619)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618184783332619)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618371265332619)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(886618289200332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618411227332619)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(886618289200332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618537075332619)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618699050332619)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(886618289200332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618750191332620)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618865495332620)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(886618289200332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886618906396332620)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(886617346550332617)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(886618289200332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886619139556332622)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886619384757332622)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(886619285579332622)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886619440584332622)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886619542060332622)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(886619285579332622)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886619620119332622)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886619715110332622)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(886619285579332622)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886619823757332622)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620003804332622)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(886619937041332622)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620176520332622)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(886619937041332622)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620312088332623)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(886620218885332623)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620493323332623)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(886620218885332623)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620590477332623)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(886619937041332622)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620601608332623)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620747311332623)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(886619285579332622)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886620860797332623)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886621089345332623)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886619068446332620)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(886620933851332623)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886621238766332625)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886621116956332623)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(886619937041332622)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886621370342332625)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886621116956332623)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886621455130332625)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886621116956332623)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886621530557332625)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886621116956332623)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886621780631332625)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886621116956332623)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(886621668740332625)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886621820889332625)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886621116956332623)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(886621668740332625)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622019751332628)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622171229332628)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622211089332628)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622383740332628)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622490233332628)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622521648332628)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622660652332628)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622714227332628)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886622949446332631)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(886622805564332628)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886623077912332631)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886622805564332628)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886623162404332631)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886622805564332628)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886623298092332631)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886622805564332628)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886623741558332641)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886623603306332639)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(886620218885332623)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886623865567332641)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(886623603306332639)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(886617471524332619)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886623994643332641)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886623603306332639)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(886620218885332623)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624134658332641)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886623603306332639)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(886624099734332641)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624275280332641)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886623603306332639)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(886619937041332622)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624333911332641)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886623603306332639)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(886619937041332622)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624419407332641)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(886623603306332639)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(886624099734332641)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624656249332644)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(886624575456332641)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624756304332644)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(886624575456332641)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624872378332644)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(886624575456332641)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886624967284332644)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(886624575456332641)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886625292324332647)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(886625051621332644)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(886625142183332647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886625343371332647)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(886625051621332644)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(886625142183332647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886625441525332647)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(886625051621332644)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(886625142183332647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886626457944332667)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(886626221766332665)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(886626392745332667)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886626525433332667)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(886626221766332665)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(886626392745332667)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886627413604332671)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(886627311984332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886627668176332671)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(886627570362332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886627830125332671)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(886627760186332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628071972332671)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(886627999497332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628219752332671)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(886628179581332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628394404332671)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(886627570362332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628445725332671)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(886627760186332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628604264332671)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(886628511604332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628710138332671)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(886628511604332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628858855332671)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(886628511604332671)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886628941987332671)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(886627311984332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886629099908332671)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(886628179581332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886629189680332671)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(886627999497332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886629301360332671)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(886629201811332671)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886629450304332671)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(886627311984332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886629500963332671)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(886627311984332671)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886629767959332671)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(886629649757332671)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886629931275332671)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(886629830549332671)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886630101718332671)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(886630091809332671)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886630395773332672)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(886630220451332671)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886630497218332672)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(886630220451332671)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886630688674332672)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(886630578714332672)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886630732611332672)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(886629830549332671)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886630986724332672)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(886630807527332672)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886631000377332672)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(886631152062332672)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(886630807527332672)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
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
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(887861817022710664)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(888077761983741013)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(886631504691332672)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_jk64_report_google_map
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(1386439698601833505)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.JK64.REPORT_GOOGLE_MAP'
,p_display_name=>'JK64 Report Google Map'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.JK64.REPORT_GOOGLE_MAP'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'PROCEDURE set_map_extents',
'    (p_lat     IN NUMBER',
'    ,p_lng     IN NUMBER',
'    ,p_lat_min IN OUT NUMBER',
'    ,p_lat_max IN OUT NUMBER',
'    ,p_lng_min IN OUT NUMBER',
'    ,p_lng_max IN OUT NUMBER',
'    ) IS',
'BEGIN',
'    p_lat_min := LEAST   (NVL(p_lat_min, p_lat), p_lat);',
'    p_lat_max := GREATEST(NVL(p_lat_max, p_lat), p_lat);',
'    p_lng_min := LEAST   (NVL(p_lng_min, p_lng), p_lng);',
'    p_lng_max := GREATEST(NVL(p_lng_max, p_lng), p_lng);',
'END set_map_extents;',
'',
'FUNCTION latlng2ch (lat IN NUMBER, lng IN NUMBER) RETURN VARCHAR2 IS',
'BEGIN',
'  RETURN ''"lat":''',
'      || TO_CHAR(lat, ''fm990.0999999999999999'')',
'      || '',"lng":''',
'      || TO_CHAR(lng, ''fm990.0999999999999999'');',
'END latlng2ch;',
'',
'FUNCTION get_markers',
'    (p_region  IN APEX_PLUGIN.t_region',
'    ,p_lat_min IN OUT NUMBER',
'    ,p_lat_max IN OUT NUMBER',
'    ,p_lng_min IN OUT NUMBER',
'    ,p_lng_max IN OUT NUMBER',
'    ) RETURN APEX_APPLICATION_GLOBAL.VC_ARR2 IS',
'',
'    l_data           APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_lat            NUMBER;',
'    l_lng            NUMBER;',
'    l_info           VARCHAR2(4000);',
'    l_icon           VARCHAR2(4000);',
'    l_radius_km      NUMBER;',
'    l_circle_color   VARCHAR2(100);',
'    l_circle_transp  NUMBER;',
'    l_flex_fields    VARCHAR2(32767);',
'    ',
'    l_column_value_list  APEX_PLUGIN_UTIL.t_column_value_list;',
'',
'BEGIN',
'',
'    l_column_value_list := APEX_PLUGIN_UTIL.get_data',
'        (p_sql_statement  => p_region.source',
'        ,p_min_columns    => 4',
'        ,p_max_columns    => 19',
'        ,p_component_name => p_region.name',
'        ,p_max_rows       => p_region.fetched_rows);',
'  ',
'    FOR i IN 1..l_column_value_list(1).count LOOP',
'  ',
'        l_lat  := TO_NUMBER(l_column_value_list(1)(i));',
'        l_lng  := TO_NUMBER(l_column_value_list(2)(i));',
'        l_info := l_column_value_list(5)(i);',
'        ',
'        -- default values if not supplied in query',
'        l_icon          := NULL;',
'        l_radius_km     := NULL;',
'        l_circle_color  := ''#0000cc'';',
'        l_circle_transp := ''0.3'';',
'        l_flex_fields   := NULL;',
'        ',
'        IF l_column_value_list.EXISTS(6) THEN',
'          l_icon := l_column_value_list(6)(i);',
'        IF l_column_value_list.EXISTS(7) THEN',
'          l_radius_km := TO_NUMBER(l_column_value_list(7)(i));',
'        IF l_column_value_list.EXISTS(8) THEN',
'          l_circle_color := l_column_value_list(8)(i);',
'        IF l_column_value_list.EXISTS(9) THEN',
'          l_circle_transp := TO_NUMBER(l_column_value_list(9)(i));',
'        END IF; END IF; END IF; END IF;',
'        ',
'        FOR j IN 10..19 LOOP',
'          IF l_column_value_list.EXISTS(j) THEN',
'            l_flex_fields := l_flex_fields',
'              || '',"attr''',
'              || TO_CHAR(j-9,''fm00'')',
'              || ''":''',
'              || APEX_ESCAPE.js_literal(l_column_value_list(j)(i),''"'');',
'          END IF;',
'        END LOOP;',
'       ',
'        l_data(NVL(l_data.LAST,0)+1) :=',
'             ''{"id":''  || APEX_ESCAPE.js_literal(l_column_value_list(4)(i),''"'')',
'          || '',"name":''|| APEX_ESCAPE.js_literal(l_column_value_list(3)(i),''"'')',
'          || '',''       || latlng2ch(l_lat,l_lng)',
'          || CASE WHEN l_info IS NOT NULL THEN',
'             '',"info":''|| APEX_ESCAPE.js_literal(l_info,''"'')',
'             END',
'          || '',"icon":''|| APEX_ESCAPE.js_literal(l_icon,''"'')',
'          || CASE WHEN l_radius_km IS NOT NULL THEN',
'             '',"rad":'' || TO_CHAR(l_radius_km,''fm99999999999990.09999999999999'')',
'		      || '',"col":'' || APEX_ESCAPE.js_literal(l_circle_color,''"'')',
'		      ||   CASE WHEN l_circle_transp IS NOT NULL THEN',
'             '',"trns":''|| TO_CHAR(l_circle_transp,''fm990.099'')',
'               END',
'             END',
'          || l_flex_fields',
'          || ''}'';',
'    ',
'        set_map_extents',
'          (p_lat     => l_lat',
'          ,p_lng     => l_lng',
'          ,p_lat_min => p_lat_min',
'          ,p_lat_max => p_lat_max',
'          ,p_lng_min => p_lng_min',
'          ,p_lng_max => p_lng_max',
'          );',
'      ',
'    END LOOP;',
'',
'    RETURN l_data;',
'END get_markers;',
'',
'PROCEDURE htp_arr (arr IN APEX_APPLICATION_GLOBAL.VC_ARR2) IS',
'BEGIN',
'    FOR i IN 1..arr.COUNT LOOP',
'        -- use prn to avoid loading a whole lot of unnecessary \n characters',
'        sys.htp.prn(CASE WHEN i > 1 THEN '','' END || arr(i));',
'    END LOOP;',
'END htp_arr;',
'',
'PROCEDURE fix_latlng',
'  (lat_min IN OUT NUMBER',
'  ,lat_max IN OUT NUMBER',
'  ,lng_min IN OUT NUMBER',
'  ,lng_max IN OUT NUMBER) IS',
'BEGIN',
'  lat_min := GREATEST(lat_min, -80);',
'  lat_max := LEAST(lat_max, 80);',
'  lng_min := MOD(lng_min + 360,180);',
'  lng_max := MOD(lng_max + 360,180);',
'END fix_latlng;',
'',
'FUNCTION render_map',
'    (p_region IN APEX_PLUGIN.t_region',
'    ,p_plugin IN APEX_PLUGIN.t_plugin',
'    ,p_is_printer_friendly IN BOOLEAN',
'    ) RETURN APEX_PLUGIN.t_region_render_result IS',
'',
'    SUBTYPE plugin_attr is VARCHAR2(32767);',
'    ',
'    l_result       APEX_PLUGIN.t_region_render_result;',
'',
'    l_lat          number;',
'    l_lng          number;',
'    l_region       varchar2(100);',
'    l_script       varchar2(32767);',
'    l_data         APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_lat_min      number;',
'    l_lat_max      number;',
'    l_lng_min      number;',
'    l_lng_max      number;',
'    l_js_params    varchar2(1000);',
'',
'    -- Plugin attributes (application level)',
'    l_api_key       plugin_attr := p_plugin.attribute_01;',
'',
'    -- Component attributes',
'    l_map_height    plugin_attr := p_region.attribute_01;',
'    l_id_item       plugin_attr := p_region.attribute_02;',
'    l_click_zoom    plugin_attr := p_region.attribute_03;    ',
'    l_sync_item     plugin_attr := p_region.attribute_04;',
'    l_markericon    plugin_attr := p_region.attribute_05;',
'    l_latlong       plugin_attr := p_region.attribute_06;',
'    l_dist_item     plugin_attr := p_region.attribute_07;',
'    l_sign_in       plugin_attr := p_region.attribute_08;',
'    l_geocode_item  plugin_attr := p_region.attribute_09;',
'    l_country       plugin_attr := p_region.attribute_10;',
'    l_mapstyle      plugin_attr := p_region.attribute_11;',
'    l_address_item  plugin_attr := p_region.attribute_12;',
'    l_geolocate     plugin_attr := p_region.attribute_13;',
'    l_geoloc_zoom   plugin_attr := p_region.attribute_14;',
'    l_directions    plugin_attr := p_region.attribute_15;',
'    l_origin_item   plugin_attr := p_region.attribute_16;',
'    l_dest_item     plugin_attr := p_region.attribute_17;',
'    l_dirdist_item  plugin_attr := p_region.attribute_18;',
'    l_dirdur_item   plugin_attr := p_region.attribute_19;',
'    ',
'BEGIN',
'    -- debug information will be included',
'    IF APEX_APPLICATION.g_debug then',
'        APEX_PLUGIN_UTIL.debug_region',
'          (p_plugin => p_plugin',
'          ,p_region => p_region',
'          ,p_is_printer_friendly => p_is_printer_friendly);',
'    END IF;',
'',
'    IF l_api_key IS NULL THEN',
'        -- these features require a Google API Key to work',
'        l_sign_in      := ''N'';',
'        l_geocode_item := NULL;',
'        l_country      := NULL;',
'        l_address_item := NULL;',
'        l_directions   := NULL;',
'        l_origin_item  := NULL;',
'        l_dest_item    := NULL;',
'        l_dirdist_item := NULL;',
'        l_dirdur_item  := NULL;',
'    ELSE',
'        l_js_params := ''?key='' || l_api_key;',
'        IF l_sign_in = ''Y'' THEN',
'            l_js_params := l_js_params || ''&''||''signed_in=true'';',
'        END IF;',
'    END IF;',
'',
'    APEX_JAVASCRIPT.add_library',
'      (p_name           => ''js'' || l_js_params',
'      ,p_directory      => ''https://maps.googleapis.com/maps/api/''',
'      ,p_skip_extension => true);',
'',
'    APEX_JAVASCRIPT.add_library',
'      (p_name                  => ''jk64plugin''',
'      ,p_directory             => p_plugin.file_prefix',
'      ,p_check_to_add_minified => TRUE);',
'',
'    l_region := CASE',
'                WHEN p_region.static_id IS NOT NULL',
'                THEN p_region.static_id',
'                ELSE ''R''||p_region.id',
'                END;',
'    ',
'    IF p_region.source IS NOT NULL THEN',
'',
'      l_data := get_markers',
'        (p_region  => p_region',
'        ,p_lat_min => l_lat_min',
'        ,p_lat_max => l_lat_max',
'        ,p_lng_min => l_lng_min',
'        ,p_lng_max => l_lng_max',
'        );',
'        ',
'    END IF;',
'    ',
'    -- if sync item is set, include its position in the initial map extent',
'    IF l_sync_item IS NOT NULL THEN',
'      l_latlong := NVL(v(l_sync_item),l_latlong);',
'    END IF;',
'    ',
'    IF l_latlong IS NOT NULL THEN',
'      l_lat := TO_NUMBER(SUBSTR(l_latlong,1,INSTR(l_latlong,'','')-1));',
'      l_lng := TO_NUMBER(SUBSTR(l_latlong,INSTR(l_latlong,'','')+1));',
'    END IF;',
'    ',
'    IF l_lat IS NOT NULL AND l_data.COUNT > 0 THEN',
'      set_map_extents',
'        (p_lat     => l_lat',
'        ,p_lng     => l_lng',
'        ,p_lat_min => l_lat_min',
'        ,p_lat_max => l_lat_max',
'        ,p_lng_min => l_lng_min',
'        ,p_lng_max => l_lng_max',
'        );',
'',
'    ELSIF l_data.COUNT = 0 AND l_lat IS NOT NULL THEN',
'      l_lat_min := l_lat - 10;',
'      l_lat_max := l_lat + 10;',
'      l_lng_min := l_lng - 10;',
'      l_lng_max := l_lng + 10;',
'',
'    -- show entire map if no points to show',
'    ELSIF l_data.COUNT = 0 THEN',
'      l_lat := 0;',
'      l_lng := 0;',
'      l_latlong := ''0,0'';',
'      l_lat_min := -90;',
'      l_lat_max := 90;',
'      l_lng_min := -180;',
'      l_lng_max := 180;',
'',
'    END IF;',
'    ',
'    fix_latlng(l_lat_min, l_lat_max, l_lng_min, l_lng_max);',
'    ',
'    l_script := ''<script>',
'var opt_#REGION# = {',
'   container: "map_#REGION#_container"',
'  ,regionId: "#REGION#"',
'  ,ajaxIdentifier: "''||APEX_PLUGIN.get_ajax_identifier||''"',
'  ,ajaxItems: "''||APEX_PLUGIN_UTIL.page_item_names_to_jquery(p_region.ajax_items_to_submit)||''"',
'  ,latlng: "''||l_latlong||''"',
'  ,markerZoom: ''||l_click_zoom||''',
'  ,icon: "''||l_markericon||''"',
'  ,idItem: "''||l_id_item||''"',
'  ,syncItem: "''||l_sync_item||''"',
'  ,distItem: "''||l_dist_item||''"',
'  ,geocodeItem: "''||l_geocode_item||''"',
'  ,country: "''||l_country||''"',
'  ,southwest: {''||latlng2ch(l_lat_min,l_lng_min)||''}',
'  ,northeast: {''||latlng2ch(l_lat_max,l_lng_max)||''}''||',
'  CASE WHEN l_mapstyle IS NOT NULL THEN ''',
'  ,mapstyle: ''||l_mapstyle END || ''',
'  ,addressItem: "''||l_address_item||''"''||',
'  CASE WHEN l_geolocate = ''Y'' THEN ''',
'  ,geolocate: true'' ||',
'    CASE WHEN l_geoloc_zoom IS NOT NULL THEN ''',
'  ,geolocateZoom: ''||l_geoloc_zoom',
'    END',
'  END || ''',
'  ,noDataMessage:  "''||p_region.no_data_found_message||''"''||',
'  CASE WHEN p_region.source IS NOT NULL THEN ''',
'  ,expectData: true''',
'  END ||',
'  CASE WHEN l_directions IS NOT NULL',
'        AND l_origin_item IS NOT NULL',
'        AND l_dest_item IS NOT NULL THEN ''',
'  ,directions: "'' || l_directions || ''"',
'  ,originItem: "'' || l_origin_item || ''"',
'  ,destItem: "'' || l_dest_item || ''"'' ||',
'    CASE WHEN l_dirdist_item IS NOT NULL THEN ''',
'  ,dirdistItem: "'' || l_dirdist_item || ''"''',
'    END ||',
'    CASE WHEN l_dirdur_item IS NOT NULL THEN ''',
'  ,dirdurItem: "'' || l_dirdur_item || ''"''',
'    END',
'  END || ''',
'};',
'function click_#REGION#(id) {',
'  jk64plugin_click(opt_#REGION#,id);',
'}',
'function r_#REGION#(f){/in/.test(document.readyState)?setTimeout("r_#REGION#("+f+")",9):f()}',
'r_#REGION#(function(){',
'  opt_#REGION#.mapdata = ['';',
'    sys.htp.p(REPLACE(l_script,''#REGION#'',l_region));',
'    htp_arr(l_data);',
'    l_script := ''];',
'  jk64plugin_initMap(opt_#REGION#);',
'  apex.jQuery("##REGION#").bind("apexrefresh", function(){jk64plugin_refreshMap(opt_#REGION#);});',
'});</script>'';',
'    sys.htp.p(REPLACE(l_script,''#REGION#'',l_region));',
'    sys.htp.p(''<div id="map_''||l_region||''_container" style="min-height:''||l_map_height||''px"></div>'');',
'  ',
'    RETURN l_result;',
'END render_map;',
'',
'FUNCTION ajax',
'    (p_region IN APEX_PLUGIN.t_region',
'    ,p_plugin IN APEX_PLUGIN.t_plugin',
'    ) RETURN APEX_PLUGIN.t_region_ajax_result IS',
'',
'    SUBTYPE plugin_attr is VARCHAR2(32767);',
'',
'    l_result APEX_PLUGIN.t_region_ajax_result;',
'',
'    l_lat          NUMBER;',
'    l_lng          NUMBER;',
'    l_data         APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_lat_min      NUMBER;',
'    l_lat_max      NUMBER;',
'    l_lng_min      NUMBER;',
'    l_lng_max      NUMBER;',
'',
'    -- Component attributes',
'    l_sync_item     plugin_attr := p_region.attribute_04;',
'    l_latlong       plugin_attr := p_region.attribute_06;',
'',
'BEGIN',
'    -- debug information will be included',
'    IF APEX_APPLICATION.g_debug then',
'        APEX_PLUGIN_UTIL.debug_region',
'          (p_plugin => p_plugin',
'          ,p_region => p_region);',
'    END IF;',
'    APEX_DEBUG.message(''ajax'');',
'',
'    IF p_region.source IS NOT NULL THEN',
'',
'      l_data := get_markers',
'        (p_region  => p_region',
'        ,p_lat_min => l_lat_min',
'        ,p_lat_max => l_lat_max',
'        ,p_lng_min => l_lng_min',
'        ,p_lng_max => l_lng_max',
'        );',
'        ',
'    END IF;',
'    ',
'    -- if sync item is set, include its position in the initial map extent',
'    IF l_sync_item IS NOT NULL THEN',
'      l_latlong := NVL(v(l_sync_item),l_latlong);',
'    END IF;',
'    ',
'    IF l_latlong IS NOT NULL THEN',
'      l_lat := TO_NUMBER(SUBSTR(l_latlong,1,INSTR(l_latlong,'','')-1));',
'      l_lng := TO_NUMBER(SUBSTR(l_latlong,INSTR(l_latlong,'','')+1));',
'    END IF;',
'    ',
'    IF l_lat IS NOT NULL AND l_data.COUNT > 0 THEN',
'      set_map_extents',
'        (p_lat     => l_lat',
'        ,p_lng     => l_lng',
'        ,p_lat_min => l_lat_min',
'        ,p_lat_max => l_lat_max',
'        ,p_lng_min => l_lng_min',
'        ,p_lng_max => l_lng_max',
'        );',
'',
'    ELSIF l_data.COUNT = 0 AND l_lat IS NOT NULL THEN',
'      l_lat_min := l_lat - 10;',
'      l_lat_max := l_lat + 10;',
'      l_lng_min := l_lng - 10;',
'      l_lng_max := l_lng + 10;',
'',
'    -- show entire map if no points to show',
'    ELSIF l_data.COUNT = 0 THEN',
'      l_lat := 0;',
'      l_lng := 0;',
'      l_latlong := ''0,0'';',
'      l_lat_min := -90;',
'      l_lat_max := 90;',
'      l_lng_min := -180;',
'      l_lng_max := 180;',
'',
'    END IF;',
'',
'    fix_latlng(l_lat_min, l_lat_max, l_lng_min, l_lng_max);',
'',
'    sys.owa_util.mime_header(''text/plain'', false);',
'    sys.htp.p(''Cache-Control: no-cache'');',
'    sys.htp.p(''Pragma: no-cache'');',
'    sys.owa_util.http_header_close;',
'',
'    APEX_DEBUG.message(''l_lat_min=''||l_lat_min||'' data=''||l_data.COUNT);',
'    ',
'    sys.htp.p(''{"southwest":{''',
'      || latlng2ch(l_lat_min,l_lng_min)',
'      || ''},"northeast":{''',
'      || latlng2ch(l_lat_max,l_lng_max)',
'      || ''},"mapdata":['');',
'    htp_arr(l_data);',
'    sys.htp.p('']}'');',
'',
'    APEX_DEBUG.message(''ajax finished'');',
'    RETURN l_result;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.error(SQLERRM);',
'        sys.htp.p(''{"error":"''||sqlerrm||''"}'');',
'END ajax;'))
,p_render_function=>'render_map'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:FETCHED_ROWS:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>4
,p_sql_max_column_count=>19
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>SELECT lat, lng, name, id FROM mydata;</pre>',
'<p>',
'<em>Show a popup info window when a marker is clicked:</em>',
'<p>',
'<pre>SELECT lat, lng, name, id, info FROM mydata;</pre>',
'<p>',
'<em>Show each point with a selected icon:</em>',
'<p>',
'<pre>SELECT lat, lng, name, id, info, icon FROM mydata;</pre>',
'<p>',
'<em>Get only the data within a certain distance from a chosen point:</em>',
'<p>',
'<pre>',
'SELECT t.lat AS lat',
'      ,t.lng AS lng',
'      ,t.name',
'      ,t.id AS id',
'      ,t.info',
'      ,'''' AS icon',
'FROM   mytable t',
'WHERE  t.lat IS NOT NULL',
'AND    t.lng IS NOT NULL',
'AND    (:P1_LATLNG IS NULL',
'     OR :P1_RADIUS IS NULL',
'     OR SDO_GEOM.sdo_distance',
'          (geom1 => SDO_GEOMETRY',
'            (sdo_gtype     => 2001 /* 2-dimensional point */',
'            ,sdo_srid      => 8307 /* Longitude / Latitude (WGS 84) */',
'            ,sdo_point     => SDO_POINT_TYPE(t.lng, t.lat, NULL)',
'            ,sdo_elem_info => NULL',
'            ,sdo_ordinates => NULL)',
'          ,geom2 => SDO_GEOMETRY',
'            (sdo_gtype     => 2001 /* 2-dimensional point */',
'            ,sdo_srid      => 8307 /* Longitude / Latitude (WGS 84) */',
'            ,sdo_point     => SDO_POINT_TYPE',
'               (TO_NUMBER(SUBSTR(:P1_LATLNG,INSTR(:P1_LATLNG,'','')+1))',
'               ,TO_NUMBER(SUBSTR(:P1_LATLNG,1,INSTR(:P1_LATLNG,'','')-1)), NULL)',
'            ,sdo_elem_info => NULL',
'            ,sdo_ordinates => NULL)',
'          ,tol   => 0.0001 /*metres*/',
'          ,unit  => ''unit=KM'') < :P1_RADIUS)',
'</pre>',
'<p>',
'<em>Population map (show circles instead of pins):</em>',
'<p>',
'<pre>',
'SELECT lat, lng, name, id, '''' AS info, '''' AS icon,',
'       radius_km, ''#cc0000'' AS color, ''0.05'' as transparency',
'FROM mydata;',
'</pre>',
'<p>',
'<em>Up to 10 additional flex fields may be added:</em>',
'<p>',
'<pre>',
'SELECT lat, lng, name, id, '''' AS info, '''' AS icon, '''' AS radius_km, '''' AS color, '''' as transparency,',
'       col1, col2, col3, ... col10',
'FROM mydata;',
'</pre>',
'The extra columns will be accessible from Dynamic Actions, e.g. <code>this.data.attr01</code>'))
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'This plugin renders a Google Map, showing a number of pins based on a query you supply with Latitude, Longitude, Name (pin hovertext), id (returned to an item you specify, if required), and Info.',
'<p>',
'<strong>Don''t forget to set <em>Number of Rows</em> to a larger number than the default, this is the maximum number of records the report will fetch from your query.</strong>',
'<p>',
'When the user clicks any pin, the map pans to that point, and (optionally) zooms into it. An info window pops up with the Info you supply in the query. This can include HTML code including links, for example. The markerClick event will be fired when '
||'this happens (you can create a dynamic action to respond to this if you want).',
'<P>',
'If you supply a Sync Item and a Distance item, the map will allow the user to click any point on the map, drag out the radius of a circle, and then re-run the query (e.g. to show only those pins within the indicated circle. Look at the SQL Query exam'
||'ples for how to do this.',
'<P>',
'If the query includes the 6th column (icon), it must refer to an image file that will be used instead of the standard red pin (<img src="http://maps.google.com/mapfiles/ms/icons/red-dot.png">). You can refer to pins like these, or refer to your own i'
||'mages.',
'<P>',
'If icons are supplied they need to be fully-qualified URIs to an icon image to be used. e.g.',
'<P>',
'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
'http://maps.google.com/mapfiles/ms/icons/purple-dot.png',
'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png',
'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
'http://maps.google.com/mapfiles/ms/icons/ylw-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/blue-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/grn-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/ltblu-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/pink-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/purple-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/red-pushpin.png',
'<p>',
'To create a Population Map (i.e. draw circles of varying radii instead of pins), supply additional columns in the query to indicate radius (in km), and optionally circle colour and transparency.'))
,p_version_identifier=>'0.5'
,p_about_url=>'https://github.com/jeffreykemp/jk64-plugin-reportmap'
,p_files_version=>29
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1243054641002488527)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Google API Key'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>60
,p_is_translatable=>false
,p_help_text=>'Optional. If you don''t set this, you may get a "Google Maps API warning: NoApiKeys" warning in the console log. You can add this later if required. Refer: https://developers.google.com/maps/documentation/javascript/get-api-key#get-an-api-key'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1386440490814841029)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Min. Map Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'400'
,p_unit=>'pixels'
,p_is_translatable=>false
,p_help_text=>'Desired height (in pixels) of the map region. Note: the width will adjust according to the available area of the containing window.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1386440835685844590)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Set Item Name to ID on Click'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'When the user clicks on a map marker, the corresponding ID from your data will be copied to this page item.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1386441172858849775)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Zoom Level on Click'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'13'
,p_unit=>'(0-23)'
,p_is_translatable=>false
,p_help_text=>'When the user clicks on a map marker, or adds a new marker, zoom the map to this level. Set to blank to not zoom on click.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1391525598308251209)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Synchronize with Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Position of the marker will be retrieved from and stored in this item as a Lat,Long value. Also, if the item value is changed, the marker will be moved on the map.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1391528910320297664)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Marker Icon'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
'http://maps.google.com/mapfiles/ms/icons/purple-dot.png',
'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png',
'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
'http://maps.google.com/mapfiles/ms/icons/ylw-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/blue-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/grn-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/ltblu-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/pink-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/purple-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/red-pushpin.png'))
,p_help_text=>'URL to the icon to show for the marker. Leave blank for the default red Google pin.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1391535531710086721)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Initial Map Position'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_unit=>'lat,long'
,p_is_translatable=>false
,p_help_text=>'Set the latitude and longitude as a pair of numbers to be used to position the map on page load, if no pin coordinates have been provided by the page item.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1391537895020787015)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Circle Radius Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1391525598308251209)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'Set to an item which contains the distance (in Kilometres) to draw a circle around the click point. Leave blank to not draw a circle. If the item is changed, the circle will be updated. If you set this attribute, you must also set Synchronize with It'
||'em.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1243056402396574369)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Enable Google Sign-In'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Set to Yes to enable Google sign-in on the map. Only works if you set the Google API Key.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1243065345441216543)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Geocode Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Set to a text item on the page. If the text item contains the name of a location or an address, a Google Maps Geocode search will be done and, if found, the map will be moved to that location and a pin shown. NOTE: requires a Google API key to be set'
||' at the application level.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1243066577215387113)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Restrict to Country code'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>40
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1243065345441216543)
,p_depending_on_condition_type=>'NOT_NULL'
,p_text_case=>'UPPER'
,p_examples=>'AU'
,p_help_text=>'Leave blank to allow geocoding to find any place on earth. Set to 2-character country code (see https://developers.google.com/public-data/docs/canonical/countries_csv for valid values) to restrict geocoder to that country. You can set this to a subst'
||'ition variable (e.g. &P1_COUNTRY.) but note that this will only apply if the page is refreshed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1092558456821399680)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Map Style'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Here is an example, a light greyscale style map:',
'<pre>',
'[{"featureType":"water","elementType":"geometry","stylers":[{"color":"#e9e9e9"},{"lightness":17}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":20}]},{"featureType":"road.highway","elementType":"geom'
||'etry.fill","stylers":[{"color":"#ffffff"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","style'
||'rs":[{"color":"#ffffff"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":16}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":21}]},{"featu'
||'reType":"poi.park","elementType":"geometry","stylers":[{"color":"#dedede"},{"lightness":21}]},{"elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"lightness":16}]},{"elementType":"labels.text.fill","stylers":[{"sat'
||'uration":36},{"color":"#333333"},{"lightness":40}]},{"elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#f2f2f2"},{"lightness":19}]},{"featureType":"administrative","el'
||'ementType":"geometry.fill","stylers":[{"color":"#fefefe"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#fefefe"},{"lightness":17},{"weight":1.2}]}]',
'</pre>'))
,p_help_text=>'Easiest way is to copy one from a site like https://snazzymaps.com/'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1092620868018102220)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Address Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Google API Key required. When the user clicks a point on the map, a Google Maps reverse geocode will be executed and the first result (usually the address) will be copied to the item you specify here.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1099124610000034716)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Geolocate'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'If set to Yes, on load the map will attempt to determine the user''s location (it will probably ask the user for permission first) and pan to that location. If successful, the geolocate event will be triggered.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1099126664614040068)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Geolocate Zoom'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'12'
,p_display_length=>2
,p_max_length=>2
,p_unit=>'(0-23)'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1099124610000034716)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'If Geolocate is Yes, if the map is able to determine the user''s location it will zoom to this level.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1099162615122345908)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Directions'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'(none)'
,p_help_text=>'Show travel directions between two locations. Google API Key required.'
);
end;
/
begin
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1099164964419347257)
,p_plugin_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_display_sequence=>10
,p_display_value=>'Driving'
,p_return_value=>'DRIVING'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1099165357030348031)
,p_plugin_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_display_sequence=>20
,p_display_value=>'Walking'
,p_return_value=>'WALKING'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1099165727922349200)
,p_plugin_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_display_sequence=>30
,p_display_value=>'Bicycling'
,p_return_value=>'BICYCLING'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1099166126677350278)
,p_plugin_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_display_sequence=>40
,p_display_value=>'Transit'
,p_return_value=>'TRANSIT'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1099168772724376013)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_prompt=>'Directions Origin Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'Item that describes the origin location for directions. May be expressed as a lat,lng pair or as an address or place name.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1099171005102380351)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_prompt=>'Directions Destination Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'Item that describes the destination location for directions. May be expressed as a lat,lng pair or as an address or place name.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1099185996150737429)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_prompt=>'Show Calculated Distance'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'Item to set the calculated Distance, in metres.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1099188794039743278)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_prompt=>'Show Calculated Duration'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1099162615122345908)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>'Show calculated travel journey duration, in seconds.'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1099129119702055533)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_name=>'geolocate'
,p_display_name=>'geolocate'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1386440015173836788)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_name=>'mapclick'
,p_display_name=>'mapClick'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1243059257810858434)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_name=>'maploaded'
,p_display_name=>'mapLoaded'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1393156594451852904)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_name=>'markerclick'
,p_display_name=>'markerClick'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E206A6B3634706C7567696E5F67656F636F6465286F70742C67656F636F64657229207B0D0A202067656F636F6465722E67656F636F6465280D0A202020207B616464726573733A202476286F70742E67656F636F64654974656D290D';
wwv_flow_api.g_varchar2_table(2) := '0A202020202C636F6D706F6E656E745265737472696374696F6E733A206F70742E636F756E747279213D3D22223F7B636F756E7472793A6F70742E636F756E7472797D3A7B7D0D0A20207D2C2066756E6374696F6E28726573756C74732C207374617475';
wwv_flow_api.g_varchar2_table(3) := '7329207B0D0A2020202069662028737461747573203D3D3D20676F6F676C652E6D6170732E47656F636F6465725374617475732E4F4B29207B0D0A20202020202076617220706F73203D20726573756C74735B305D2E67656F6D657472792E6C6F636174';
wwv_flow_api.g_varchar2_table(4) := '696F6E3B0D0A202020202020617065782E6465627567286F70742E726567696F6E49642B222067656F636F6465206F6B22293B0D0A2020202020206F70742E6D61702E73657443656E74657228706F73293B0D0A2020202020206F70742E6D61702E7061';
wwv_flow_api.g_varchar2_table(5) := '6E546F28706F73293B0D0A202020202020696620286F70742E6D61726B65725A6F6F6D29207B0D0A20202020202020206F70742E6D61702E7365745A6F6F6D286F70742E6D61726B65725A6F6F6D293B0D0A2020202020207D0D0A2020202020206A6B36';
wwv_flow_api.g_varchar2_table(6) := '34706C7567696E5F7573657250696E286F70742C706F732E6C617428292C20706F732E6C6E672829290D0A202020207D20656C7365207B0D0A202020202020617065782E6465627567286F70742E726567696F6E49642B222067656F636F646520776173';
wwv_flow_api.g_varchar2_table(7) := '20756E7375636365737366756C20666F722074686520666F6C6C6F77696E6720726561736F6E3A20222B737461747573293B0D0A202020207D0D0A20207D293B0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F6D61726B6572636C69';
wwv_flow_api.g_varchar2_table(8) := '636B286F70742C704461746129207B0D0A09696620286F70742E69644974656D213D3D222229207B0D0A09092473286F70742E69644974656D2C70446174612E6964293B0D0A097D0D0A09617065782E6A5175657279282223222B6F70742E726567696F';
wwv_flow_api.g_varchar2_table(9) := '6E4964292E7472696767657228226D61726B6572636C69636B222C207B0D0A09096D61703A6F70742E6D61702C0D0A090969643A70446174612E69642C0D0A09096E616D653A70446174612E6E616D652C0D0A09096C61743A70446174612E6C61742C0D';
wwv_flow_api.g_varchar2_table(10) := '0A09096C6E673A70446174612E6C6E672C0D0A09097261643A70446174612E7261642C0D0A09096174747230313A70446174612E6174747230312C0D0A09096174747230323A70446174612E6174747230322C0D0A09096174747230333A70446174612E';
wwv_flow_api.g_varchar2_table(11) := '6174747230332C0D0A09096174747230343A70446174612E6174747230342C0D0A09096174747230353A70446174612E6174747230352C0D0A09096174747230363A70446174612E6174747230362C0D0A09096174747230373A70446174612E61747472';
wwv_flow_api.g_varchar2_table(12) := '30372C0D0A09096174747230383A70446174612E6174747230382C0D0A09096174747230393A70446174612E6174747230392C0D0A09096174747231303A70446174612E6174747231300D0A097D293B090D0A7D0D0A0D0A66756E6374696F6E206A6B36';
wwv_flow_api.g_varchar2_table(13) := '34706C7567696E5F72657050696E286F70742C704461746129207B0D0A0976617220706F73203D206E657720676F6F676C652E6D6170732E4C61744C6E672870446174612E6C61742C2070446174612E6C6E67293B0D0A096966202870446174612E7261';
wwv_flow_api.g_varchar2_table(14) := '6429207B0D0A09097661722063697263203D206E657720676F6F676C652E6D6170732E436972636C65287B0D0A202020202020202020207374726F6B65436F6C6F723A2070446174612E636F6C2C0D0A202020202020202020207374726F6B654F706163';
wwv_flow_api.g_varchar2_table(15) := '6974793A20312E302C0D0A202020202020202020207374726F6B655765696768743A20312C0D0A2020202020202020202066696C6C436F6C6F723A2070446174612E636F6C2C0D0A2020202020202020202066696C6C4F7061636974793A207044617461';
wwv_flow_api.g_varchar2_table(16) := '2E74726E732C0D0A20202020202020202020636C69636B61626C653A20747275652C0D0A202020202020202020206D61703A206F70742E6D61702C0D0A2020202020202020202063656E7465723A20706F732C0D0A202020202020202020207261646975';
wwv_flow_api.g_varchar2_table(17) := '733A2070446174612E7261642A313030300D0A09097D293B0D0A0909676F6F676C652E6D6170732E6576656E742E6164644C697374656E657228636972632C2022636C69636B222C2066756E6374696F6E202829207B0D0A090909617065782E64656275';
wwv_flow_api.g_varchar2_table(18) := '67286F70742E726567696F6E49642B2220636972636C6520636C69636B656420222B70446174612E6964293B0D0A0909096A6B3634706C7567696E5F6D61726B6572636C69636B286F70742C7044617461293B0D0A09097D293B0D0A090969662028216F';
wwv_flow_api.g_varchar2_table(19) := '70742E636972636C657329207B206F70742E636972636C65733D5B5D3B207D0D0A09096F70742E636972636C65732E70757368287B226964223A70446174612E69642C2263697263223A636972637D293B0D0A097D20656C7365207B0D0A090976617220';
wwv_flow_api.g_varchar2_table(20) := '72657070696E203D206E657720676F6F676C652E6D6170732E4D61726B6572287B0D0A0909090909206D61703A206F70742E6D61702C0D0A090909090920706F736974696F6E3A20706F732C0D0A0909090909207469746C653A2070446174612E6E616D';
wwv_flow_api.g_varchar2_table(21) := '652C0D0A09090909092069636F6E3A2070446174612E69636F6E0D0A090909092020207D293B0D0A0909676F6F676C652E6D6170732E6576656E742E6164644C697374656E65722872657070696E2C2022636C69636B222C2066756E6374696F6E202829';
wwv_flow_api.g_varchar2_table(22) := '207B0D0A090909617065782E6465627567286F70742E726567696F6E49642B222072657050696E20636C69636B656420222B70446174612E6964293B0D0A0909096966202870446174612E696E666F29207B0D0A09090909696620286F70742E69772920';
wwv_flow_api.g_varchar2_table(23) := '7B0D0A09090909096F70742E69772E636C6F736528293B0D0A090909097D20656C7365207B0D0A09090909096F70742E6977203D206E657720676F6F676C652E6D6170732E496E666F57696E646F7728293B0D0A090909097D0D0A090909096F70742E69';
wwv_flow_api.g_varchar2_table(24) := '772E7365744F7074696F6E73287B0D0A09090909202020636F6E74656E743A2070446174612E696E666F0D0A0909090920207D293B0D0A090909096F70742E69772E6F70656E286F70742E6D61702C2074686973293B0D0A0909097D0D0A0909096F7074';
wwv_flow_api.g_varchar2_table(25) := '2E6D61702E70616E546F28746869732E676574506F736974696F6E2829293B0D0A090909696620286F70742E6D61726B65725A6F6F6D29207B0D0A090909096F70742E6D61702E7365745A6F6F6D286F70742E6D61726B65725A6F6F6D293B0D0A090909';
wwv_flow_api.g_varchar2_table(26) := '7D0D0A0909096A6B3634706C7567696E5F6D61726B6572636C69636B286F70742C7044617461293B0D0A09097D293B0D0A090969662028216F70742E72657070696E29207B206F70742E72657070696E3D5B5D3B207D0D0A09096F70742E72657070696E';
wwv_flow_api.g_varchar2_table(27) := '2E70757368287B226964223A70446174612E69642C226D61726B6572223A72657070696E7D293B0D0A097D0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F72657050696E73286F707429207B0D0A09696620286F70742E6D61706461';
wwv_flow_api.g_varchar2_table(28) := '74612E6C656E6774683E3029207B0D0A0909696620286F70742E696E666F4E6F44617461466F756E6429207B0D0A090909617065782E6465627567286F70742E726567696F6E49642B222068696465204E6F204461746120466F756E6420696E666F7769';
wwv_flow_api.g_varchar2_table(29) := '6E646F7722293B0D0A0909096F70742E696E666F4E6F44617461466F756E642E636C6F736528293B0D0A09097D0D0A0909666F7220287661722069203D20303B2069203C206F70742E6D6170646174612E6C656E6774683B20692B2B29207B0D0A090909';
wwv_flow_api.g_varchar2_table(30) := '6A6B3634706C7567696E5F72657050696E286F70742C6F70742E6D6170646174615B695D293B0D0A09097D0D0A097D20656C7365207B0D0A0909696620286F70742E6E6F446174614D65737361676520213D3D20222229207B0D0A090909617065782E64';
wwv_flow_api.g_varchar2_table(31) := '65627567286F70742E726567696F6E49642B222073686F77204E6F204461746120466F756E6420696E666F77696E646F7722293B0D0A090909696620286F70742E696E666F4E6F44617461466F756E6429207B0D0A090909096F70742E696E666F4E6F44';
wwv_flow_api.g_varchar2_table(32) := '617461466F756E642E636C6F736528293B0D0A0909097D20656C7365207B0D0A090909096F70742E696E666F4E6F44617461466F756E64203D206E657720676F6F676C652E6D6170732E496E666F57696E646F77280D0A09090909097B0D0A0909090909';
wwv_flow_api.g_varchar2_table(33) := '09636F6E74656E743A206F70742E6E6F446174614D6573736167652C0D0A090909090909706F736974696F6E3A207B6C61743A302C6C6E673A307D0D0A09090909097D293B0D0A0909097D0D0A0909096F70742E696E666F4E6F44617461466F756E642E';
wwv_flow_api.g_varchar2_table(34) := '6F70656E286F70742E6D6170293B0D0A09097D0D0A097D0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F636C69636B286F70742C696429207B0D0A202076617220666F756E64203D2066616C73653B0D0A2020666F72202876617220';
wwv_flow_api.g_varchar2_table(35) := '69203D20303B2069203C206F70742E72657070696E2E6C656E6774683B20692B2B29207B0D0A20202020696620286F70742E72657070696E5B695D2E69643D3D696429207B0D0A2020202020206E657720676F6F676C652E6D6170732E6576656E742E74';
wwv_flow_api.g_varchar2_table(36) := '726967676572286F70742E72657070696E5B695D2E6D61726B65722C22636C69636B22293B0D0A202020202020666F756E64203D20747275653B0D0A202020202020627265616B3B0D0A202020207D0D0A20207D0D0A20206966202821666F756E642920';
wwv_flow_api.g_varchar2_table(37) := '7B0D0A20202020617065782E6465627567286F70742E726567696F6E49642B22206964206E6F7420666F756E643A222B6964293B0D0A20207D0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F736574436972636C65286F70742C706F';
wwv_flow_api.g_varchar2_table(38) := '7329207B0D0A2020696620286F70742E646973744974656D213D3D222229207B0D0A20202020696620286F70742E64697374636972636C6529207B0D0A202020202020617065782E6465627567286F70742E726567696F6E49642B22206D6F7665206369';
wwv_flow_api.g_varchar2_table(39) := '72636C6522293B0D0A2020202020206F70742E64697374636972636C652E73657443656E74657228706F73293B0D0A2020202020206F70742E64697374636972636C652E7365744D6170286F70742E6D6170293B0D0A202020207D20656C7365207B0D0A';
wwv_flow_api.g_varchar2_table(40) := '202020202020766172207261646975735F6B6D203D207061727365466C6F6174282476286F70742E646973744974656D29293B0D0A202020202020617065782E6465627567286F70742E726567696F6E49642B222063726561746520636972636C652072';
wwv_flow_api.g_varchar2_table(41) := '61646975733D222B7261646975735F6B6D293B0D0A2020202020206F70742E64697374636972636C65203D206E657720676F6F676C652E6D6170732E436972636C65287B0D0A202020202020202020207374726F6B65436F6C6F723A2022233530353046';
wwv_flow_api.g_varchar2_table(42) := '46222C0D0A202020202020202020207374726F6B654F7061636974793A20302E352C0D0A202020202020202020207374726F6B655765696768743A20322C0D0A2020202020202020202066696C6C436F6C6F723A202223303030304646222C0D0A202020';
wwv_flow_api.g_varchar2_table(43) := '2020202020202066696C6C4F7061636974793A20302E30352C0D0A20202020202020202020636C69636B61626C653A2066616C73652C0D0A202020202020202020206564697461626C653A20747275652C0D0A202020202020202020206D61703A206F70';
wwv_flow_api.g_varchar2_table(44) := '742E6D61702C0D0A2020202020202020202063656E7465723A20706F732C0D0A202020202020202020207261646975733A207261646975735F6B6D2A313030300D0A20202020202020207D293B0D0A202020202020676F6F676C652E6D6170732E657665';
wwv_flow_api.g_varchar2_table(45) := '6E742E6164644C697374656E6572286F70742E64697374636972636C652C20227261646975735F6368616E676564222C2066756E6374696F6E20286576656E7429207B0D0A2020202020202020766172207261646975735F6B6D203D206F70742E646973';
wwv_flow_api.g_varchar2_table(46) := '74636972636C652E67657452616469757328292F313030303B0D0A2020202020202020617065782E6465627567286F70742E726567696F6E49642B2220636972636C6520726164697573206368616E67656420222B7261646975735F6B6D293B0D0A2020';
wwv_flow_api.g_varchar2_table(47) := '2020202020202473286F70742E646973744974656D2C207261646975735F6B6D293B0D0A20202020202020206A6B3634706C7567696E5F726566726573684D6170286F7074293B0D0A2020202020207D293B0D0A202020202020676F6F676C652E6D6170';
wwv_flow_api.g_varchar2_table(48) := '732E6576656E742E6164644C697374656E6572286F70742E64697374636972636C652C202263656E7465725F6368616E676564222C2066756E6374696F6E20286576656E7429207B0D0A202020202020202076617220637472203D206F70742E64697374';
wwv_flow_api.g_varchar2_table(49) := '636972636C652E67657443656E74657228290D0A20202020202020202020202C6C61746C6E67203D206374722E6C617428292B222C222B6374722E6C6E6728293B0D0A2020202020202020617065782E6465627567286F70742E726567696F6E49642B22';
wwv_flow_api.g_varchar2_table(50) := '20636972636C652063656E746572206368616E67656420222B6C61746C6E67293B0D0A2020202020202020696620286F70742E73796E634974656D213D3D222229207B0D0A202020202020202020202473286F70742E73796E634974656D2C6C61746C6E';
wwv_flow_api.g_varchar2_table(51) := '67293B0D0A202020202020202020206A6B3634706C7567696E5F726566726573684D6170286F7074293B0D0A20202020202020207D0D0A2020202020207D293B0D0A202020207D0D0A20207D0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567';
wwv_flow_api.g_varchar2_table(52) := '696E5F7573657250696E286F70742C6C61742C6C6E6729207B0D0A2020696620286C6174213D3D6E756C6C202626206C6E67213D3D6E756C6C29207B0D0A20202020766172206F6C64706F73203D206F70742E7573657270696E3F6F70742E7573657270';
wwv_flow_api.g_varchar2_table(53) := '696E2E676574506F736974696F6E28293A6E657720676F6F676C652E6D6170732E4C61744C6E6728302C30293B0D0A20202020696620286C61743D3D6F6C64706F732E6C61742829202626206C6E673D3D6F6C64706F732E6C6E67282929207B0D0A2020';
wwv_flow_api.g_varchar2_table(54) := '20202020617065782E6465627567286F70742E726567696F6E49642B22207573657270696E206E6F74206368616E67656422293B0D0A202020207D20656C7365207B0D0A20202020202076617220706F73203D206E657720676F6F676C652E6D6170732E';
wwv_flow_api.g_varchar2_table(55) := '4C61744C6E67286C61742C6C6E67293B0D0A202020202020696620286F70742E7573657270696E29207B0D0A2020202020202020617065782E6465627567286F70742E726567696F6E49642B22206D6F7665206578697374696E672070696E20746F206E';
wwv_flow_api.g_varchar2_table(56) := '657720706F736974696F6E206F6E206D617020222B6C61742B222C222B6C6E67293B0D0A20202020202020206F70742E7573657270696E2E7365744D6170286F70742E6D6170293B0D0A20202020202020206F70742E7573657270696E2E736574506F73';
wwv_flow_api.g_varchar2_table(57) := '6974696F6E28706F73293B0D0A20202020202020206A6B3634706C7567696E5F736574436972636C65286F70742C706F73293B0D0A2020202020207D20656C7365207B0D0A2020202020202020617065782E6465627567286F70742E726567696F6E4964';
wwv_flow_api.g_varchar2_table(58) := '2B2220637265617465207573657270696E20222B6C61742B222C222B6C6E67293B0D0A20202020202020206F70742E7573657270696E203D206E657720676F6F676C652E6D6170732E4D61726B6572287B6D61703A206F70742E6D61702C20706F736974';
wwv_flow_api.g_varchar2_table(59) := '696F6E3A20706F732C2069636F6E3A206F70742E69636F6E7D293B0D0A20202020202020206A6B3634706C7567696E5F736574436972636C65286F70742C706F73293B0D0A2020202020207D0D0A202020207D0D0A20207D20656C736520696620286F70';
wwv_flow_api.g_varchar2_table(60) := '742E7573657270696E29207B0D0A20202020617065782E6465627567286F70742E726567696F6E49642B22206D6F7665206578697374696E672070696E206F666620746865206D617022293B0D0A202020206F70742E7573657270696E2E7365744D6170';
wwv_flow_api.g_varchar2_table(61) := '286E756C6C293B0D0A20202020696620286F70742E64697374636972636C6529207B0D0A202020202020617065782E6465627567286F70742E726567696F6E49642B22206D6F76652064697374636972636C65206F666620746865206D617022293B0D0A';
wwv_flow_api.g_varchar2_table(62) := '2020202020206F70742E64697374636972636C652E7365744D6170286E756C6C293B0D0A202020207D0D0A20207D0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F67657441646472657373286F70742C6C61742C6C6E6729207B0D0A';
wwv_flow_api.g_varchar2_table(63) := '09766172206C61746C6E67203D207B6C61743A206C61742C206C6E673A206C6E677D3B0D0A096F70742E67656F636F6465722E67656F636F6465287B276C6F636174696F6E273A206C61746C6E677D2C2066756E6374696F6E28726573756C74732C2073';
wwv_flow_api.g_varchar2_table(64) := '746174757329207B0D0A090969662028737461747573203D3D3D20676F6F676C652E6D6170732E47656F636F6465725374617475732E4F4B29207B0D0A09090969662028726573756C74735B315D29207B0D0A090909092473286F70742E616464726573';
wwv_flow_api.g_varchar2_table(65) := '734974656D2C726573756C74735B305D2E666F726D61747465645F61646472657373293B0D0A0909097D20656C7365207B0D0A0909090977696E646F772E616C65727428274E6F20726573756C747320666F756E6427293B0D0A0909097D0D0A09097D20';
wwv_flow_api.g_varchar2_table(66) := '656C7365207B0D0A09090977696E646F772E616C657274282747656F636F646572206661696C65642064756520746F3A2027202B20737461747573293B0D0A09097D0D0A097D293B0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F67';
wwv_flow_api.g_varchar2_table(67) := '656F6C6F63617465286F707429207B0D0A09696620286E6176696761746F722E67656F6C6F636174696F6E29207B0D0A0909617065782E6465627567286F70742E726567696F6E49642B222067656F6C6F6361746522293B0D0A09096E6176696761746F';
wwv_flow_api.g_varchar2_table(68) := '722E67656F6C6F636174696F6E2E67657443757272656E74506F736974696F6E2866756E6374696F6E28706F736974696F6E29207B0D0A09090976617220706F73203D207B0D0A090909096C61743A20706F736974696F6E2E636F6F7264732E6C617469';
wwv_flow_api.g_varchar2_table(69) := '747564652C0D0A090909096C6E673A20706F736974696F6E2E636F6F7264732E6C6F6E6769747564650D0A0909097D3B0D0A0909096F70742E6D61702E70616E546F28706F73293B0D0A090909696620286F70742E67656F6C6F636174655A6F6F6D2920';
wwv_flow_api.g_varchar2_table(70) := '7B0D0A09090920206F70742E6D61702E7365745A6F6F6D286F70742E67656F6C6F636174655A6F6F6D293B0D0A0909097D0D0A090909617065782E6A5175657279282223222B6F70742E726567696F6E4964292E74726967676572282267656F6C6F6361';
wwv_flow_api.g_varchar2_table(71) := '7465222C207B6D61703A6F70742E6D61702C206C61743A706F732E6C61742C206C6E673A706F732E6C6E677D293B0D0A09097D293B0D0A097D20656C7365207B0D0A0909617065782E6465627567286F70742E726567696F6E49642B222062726F777365';
wwv_flow_api.g_varchar2_table(72) := '7220646F6573206E6F7420737570706F72742067656F6C6F636174696F6E22293B0D0A097D0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F636F6E766572744C61744C6E672873747229207B0D0A092F2F2073656520696620746865';
wwv_flow_api.g_varchar2_table(73) := '20737472696E672063616E20626520696E7465727072657465642061732061206C61742C6C6E6720706169723B206F74686572776973652C0D0A092F2F2077652077696C6C20617373756D65206974277320616E2061646472657373206F72206C6F6361';
wwv_flow_api.g_varchar2_table(74) := '74696F6E206E616D650D0A0976617220617272203D207374722E73706C697428222C22293B0D0A0969662028286172722E6C656E677468213D3229207C7C2069734E614E286172725B305D29207C7C2069734E614E286172725B315D2929207B0D0A0909';
wwv_flow_api.g_varchar2_table(75) := '72657475726E207374723B0D0A097D20656C7365207B0D0A090972657475726E207B6C61743A207061727365466C6F6174286172725B305D292C206C6E673A207061727365466C6F6174286172725B315D297D3B0D0A097D0D0A7D0D0A0D0A66756E6374';
wwv_flow_api.g_varchar2_table(76) := '696F6E206A6B3634706C7567696E5F646972656374696F6E73286F707429207B0D0A09617065782E6465627567286F70742E726567696F6E49642B2220646972656374696F6E7322293B0D0A09766172206F726967696E203D206A6B3634706C7567696E';
wwv_flow_api.g_varchar2_table(77) := '5F636F6E766572744C61744C6E67282476286F70742E6F726967696E4974656D29290D0A092020202C646573742020203D206A6B3634706C7567696E5F636F6E766572744C61744C6E67282476286F70742E646573744974656D29293B0D0A0969662028';
wwv_flow_api.g_varchar2_table(78) := '6F726967696E20213D3D202222202626206465737420213D3D20222229207B0D0A09096F70742E646972656374696F6E73536572766963652E726F757465287B0D0A0909096F726967696E3A206F726967696E2C0D0A09090964657374696E6174696F6E';
wwv_flow_api.g_varchar2_table(79) := '3A20646573742C0D0A09090974726176656C4D6F64653A20676F6F676C652E6D6170732E54726176656C4D6F64655B6F70742E646972656374696F6E735D0D0A09097D2C2066756E6374696F6E28726573706F6E73652C2073746174757329207B0D0A09';
wwv_flow_api.g_varchar2_table(80) := '090969662028737461747573203D3D20676F6F676C652E6D6170732E446972656374696F6E735374617475732E4F4B29207B0D0A090909096F70742E646972656374696F6E73446973706C61792E736574446972656374696F6E7328726573706F6E7365';
wwv_flow_api.g_varchar2_table(81) := '293B0D0A0909090969662028286F70742E646972646973744974656D20213D3D20222229207C7C20286F70742E6469726475724974656D20213D3D2022222929207B0D0A090909090976617220746F74616C44697374616E6365203D20302C20746F7461';
wwv_flow_api.g_varchar2_table(82) := '6C4475726174696F6E203D20303B0D0A0909090909666F72202876617220693D303B2069203C20726573706F6E73652E726F757465732E6C656E6774683B20692B2B29207B0D0A090909090909666F722028766172206A3D303B206A203C20726573706F';
wwv_flow_api.g_varchar2_table(83) := '6E73652E726F757465735B695D2E6C6567732E6C656E6774683B206A2B2B29207B0D0A09090909090909766172206C6567203D20726573706F6E73652E726F757465735B695D2E6C6567735B6A5D3B0D0A09090909090909746F74616C44697374616E63';
wwv_flow_api.g_varchar2_table(84) := '65203D20746F74616C44697374616E6365202B206C65672E64697374616E63652E76616C75653B0D0A09090909090909746F74616C4475726174696F6E203D20746F74616C4475726174696F6E202B206C65672E6475726174696F6E2E76616C75653B0D';
wwv_flow_api.g_varchar2_table(85) := '0A0909090909097D0D0A09090909097D0D0A0909090909696620286F70742E646972646973744974656D20213D3D20222229207B0D0A0909090909092473286F70742E646972646973744974656D2C20746F74616C44697374616E6365293B0D0A090909';
wwv_flow_api.g_varchar2_table(86) := '09097D0D0A0909090909696620286F70742E6469726475724974656D20213D3D20222229207B0D0A0909090909092473286F70742E6469726475724974656D2C20746F74616C4475726174696F6E293B0D0A09090909097D0D0A090909097D0D0A090909';
wwv_flow_api.g_varchar2_table(87) := '7D20656C7365207B0D0A0909090977696E646F772E616C6572742827446972656374696F6E732072657175657374206661696C65642064756520746F2027202B20737461747573293B0D0A0909097D0D0A09097D293B0D0A097D0D0A7D0D0A0D0A66756E';
wwv_flow_api.g_varchar2_table(88) := '6374696F6E206A6B3634706C7567696E5F696E69744D6170286F707429207B0D0A09617065782E6465627567286F70742E726567696F6E49642B2220696E69744D617022293B0D0A09766172206D794F7074696F6E73203D207B0D0A09097A6F6F6D3A20';
wwv_flow_api.g_varchar2_table(89) := '312C0D0A090963656E7465723A206E657720676F6F676C652E6D6170732E4C61744C6E67286F70742E6C61746C6E67292C0D0A09096D61705479706549643A20676F6F676C652E6D6170732E4D61705479706549642E524F41444D41500D0A097D3B0D0A';
wwv_flow_api.g_varchar2_table(90) := '096F70742E6D6170203D206E657720676F6F676C652E6D6170732E4D617028646F63756D656E742E676574456C656D656E7442794964286F70742E636F6E7461696E6572292C6D794F7074696F6E73293B0D0A09696620286F70742E6D61707374796C65';
wwv_flow_api.g_varchar2_table(91) := '29207B0D0A09096F70742E6D61702E7365744F7074696F6E73287B7374796C65733A206F70742E6D61707374796C657D293B0D0A097D0D0A096F70742E6D61702E666974426F756E6473286E657720676F6F676C652E6D6170732E4C61744C6E67426F75';
wwv_flow_api.g_varchar2_table(92) := '6E6473286F70742E736F757468776573742C6F70742E6E6F7274686561737429293B0D0A09696620286F70742E73796E634974656D213D3D222229207B0D0A09097661722076616C203D202476286F70742E73796E634974656D293B0D0A090969662028';
wwv_flow_api.g_varchar2_table(93) := '76616C20213D3D206E756C6C2026262076616C2E696E6465784F6628222C2229203E202D3129207B0D0A09090976617220617272203D2076616C2E73706C697428222C22293B0D0A090909617065782E6465627567286F70742E726567696F6E49642B22';
wwv_flow_api.g_varchar2_table(94) := '20696E69742066726F6D206974656D20222B76616C293B0D0A09090976617220706F73203D206E657720676F6F676C652E6D6170732E4C61744C6E67286172725B305D2C6172725B315D293B0D0A0909096F70742E7573657270696E203D206E65772067';
wwv_flow_api.g_varchar2_table(95) := '6F6F676C652E6D6170732E4D61726B6572287B6D61703A206F70742E6D61702C20706F736974696F6E3A20706F732C2069636F6E3A206F70742E69636F6E7D293B0D0A0909096A6B3634706C7567696E5F736574436972636C65286F70742C706F73293B';
wwv_flow_api.g_varchar2_table(96) := '0D0A09097D0D0A09092F2F696620746865206C61742F6C6F6E67206974656D206973206368616E6765642C206D6F7665207468652070696E0D0A090924282223222B6F70742E73796E634974656D292E6368616E67652866756E6374696F6E28297B200D';
wwv_flow_api.g_varchar2_table(97) := '0A090909766172206C61746C6E67203D20746869732E76616C75653B0D0A090909696620286C61746C6E6720213D3D206E756C6C202626206C61746C6E6720213D3D20756E646566696E6564202626206C61746C6E672E696E6465784F6628222C222920';
wwv_flow_api.g_varchar2_table(98) := '3E202D3129207B0D0A09090909617065782E6465627567286F70742E726567696F6E49642B22206974656D206368616E67656420222B6C61746C6E67293B0D0A0909090976617220617272203D206C61746C6E672E73706C697428222C22293B0D0A0909';
wwv_flow_api.g_varchar2_table(99) := '09096A6B3634706C7567696E5F7573657250696E286F70742C6172725B305D2C6172725B315D293B0D0A0909097D0D0A09097D293B0D0A097D0D0A09696620286F70742E646973744974656D213D222229207B0D0A09092F2F6966207468652064697374';
wwv_flow_api.g_varchar2_table(100) := '616E6365206974656D206973206368616E6765642C207265647261772074686520636972636C650D0A090924282223222B6F70742E646973744974656D292E6368616E67652866756E6374696F6E28297B0D0A09090969662028746869732E76616C7565';
wwv_flow_api.g_varchar2_table(101) := '29207B0D0A09090909766172207261646975735F6D6574726573203D207061727365466C6F617428746869732E76616C7565292A313030303B0D0A09090909696620286F70742E64697374636972636C652E676574526164697573282920213D3D207261';
wwv_flow_api.g_varchar2_table(102) := '646975735F6D657472657329207B0D0A0909090909617065782E6465627567286F70742E726567696F6E49642B2220646973746974656D206368616E67656420222B746869732E76616C7565293B0D0A09090909096F70742E64697374636972636C652E';
wwv_flow_api.g_varchar2_table(103) := '736574526164697573287261646975735F6D6574726573293B0D0A090909097D0D0A0909097D20656C7365207B0D0A09090909696620286F70742E64697374636972636C6529207B0D0A0909090909617065782E6465627567286F70742E726567696F6E';
wwv_flow_api.g_varchar2_table(104) := '49642B2220646973746974656D20636C656172656422293B0D0A09090909096F70742E64697374636972636C652E7365744D6170286E756C6C293B0D0A090909097D0D0A0909097D0D0A09097D293B0D0A097D0D0A09696620286F70742E657870656374';
wwv_flow_api.g_varchar2_table(105) := '4461746129207B0D0A09096A6B3634706C7567696E5F72657050696E73286F7074293B0D0A097D0D0A09696620286F70742E616464726573734974656D213D3D222229207B0D0A09096F70742E67656F636F646572203D206E657720676F6F676C652E6D';
wwv_flow_api.g_varchar2_table(106) := '6170732E47656F636F6465723B0D0A097D0D0A09696620286F70742E646972656374696F6E7329207B0D0A09096F70742E646972656374696F6E73446973706C6179203D206E657720676F6F676C652E6D6170732E446972656374696F6E7352656E6465';
wwv_flow_api.g_varchar2_table(107) := '7265723B0D0A20202020202020206F70742E646972656374696F6E7353657276696365203D206E657720676F6F676C652E6D6170732E446972656374696F6E73536572766963653B0D0A09096F70742E646972656374696F6E73446973706C61792E7365';
wwv_flow_api.g_varchar2_table(108) := '744D6170286F70742E6D6170293B0D0A09096A6B3634706C7567696E5F646972656374696F6E73286F7074293B0D0A09092F2F696620746865206F726967696E206F722064657374206974656D206973206368616E6765642C20726563616C6320746865';
wwv_flow_api.g_varchar2_table(109) := '20646972656374696F6E730D0A090924282223222B6F70742E6F726967696E4974656D292E6368616E67652866756E6374696F6E28297B0D0A0909096A6B3634706C7567696E5F646972656374696F6E73286F7074293B0D0A09097D293B0D0A09092428';
wwv_flow_api.g_varchar2_table(110) := '2223222B6F70742E646573744974656D292E6368616E67652866756E6374696F6E28297B0D0A0909096A6B3634706C7567696E5F646972656374696F6E73286F7074293B0D0A09097D293B0D0A097D0D0A09676F6F676C652E6D6170732E6576656E742E';
wwv_flow_api.g_varchar2_table(111) := '6164644C697374656E6572286F70742E6D61702C2022636C69636B222C2066756E6374696F6E20286576656E7429207B0D0A0909766172206C6174203D206576656E742E6C61744C6E672E6C617428290D0A09092020202C6C6E67203D206576656E742E';
wwv_flow_api.g_varchar2_table(112) := '6C61744C6E672E6C6E6728293B0D0A0909617065782E6465627567286F70742E726567696F6E49642B22206D617020636C69636B656420222B6C61742B222C222B6C6E67293B0D0A090969662028286F70742E73796E634974656D213D3D222229207C7C';
wwv_flow_api.g_varchar2_table(113) := '20286F70742E616464726573734974656D213D3D22222929207B0D0A0909096A6B3634706C7567696E5F7573657250696E286F70742C6C61742C6C6E67293B0D0A09097D0D0A0909696620286F70742E73796E634974656D213D3D222229207B0D0A0909';
wwv_flow_api.g_varchar2_table(114) := '092473286F70742E73796E634974656D2C6C61742B222C222B6C6E67293B0D0A0909096A6B3634706C7567696E5F726566726573684D6170286F7074293B0D0A09097D20656C736520696620286F70742E6D61726B65725A6F6F6D29207B0D0A09090961';
wwv_flow_api.g_varchar2_table(115) := '7065782E6465627567286F70742E726567696F6E49642B222070616E2B7A6F6F6D22293B0D0A0909096F70742E6D61702E70616E546F286576656E742E6C61744C6E67293B0D0A0909096F70742E6D61702E7365745A6F6F6D286F70742E6D61726B6572';
wwv_flow_api.g_varchar2_table(116) := '5A6F6F6D293B0D0A09097D0D0A0909696620286F70742E616464726573734974656D213D3D222229207B0D0A0909096A6B3634706C7567696E5F67657441646472657373286F70742C6C61742C6C6E67293B0D0A09097D0D0A0909617065782E6A517565';
wwv_flow_api.g_varchar2_table(117) := '7279282223222B6F70742E726567696F6E4964292E7472696767657228226D6170636C69636B222C207B6D61703A6F70742E6D61702C206C61743A6C61742C206C6E673A6C6E677D293B0D0A097D293B0D0A09696620286F70742E67656F636F64654974';
wwv_flow_api.g_varchar2_table(118) := '656D213D222229207B0D0A09097661722067656F636F646572203D206E657720676F6F676C652E6D6170732E47656F636F64657228293B0D0A090924282223222B6F70742E67656F636F64654974656D292E6368616E67652866756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(119) := '0D0A0909096A6B3634706C7567696E5F67656F636F6465286F70742C67656F636F646572293B0D0A09097D293B0D0A0920207D0D0A09696620286F70742E67656F6C6F6361746529207B0D0A09096A6B3634706C7567696E5F67656F6C6F63617465286F';
wwv_flow_api.g_varchar2_table(120) := '7074293B0D0A097D0D0A09617065782E6465627567286F70742E726567696F6E49642B2220696E69744D61702066696E697368656422293B0D0A09617065782E6A5175657279282223222B6F70742E726567696F6E4964292E7472696767657228226D61';
wwv_flow_api.g_varchar2_table(121) := '706C6F61646564222C207B6D61703A6F70742E6D61707D293B0D0A7D0D0A0D0A66756E6374696F6E206A6B3634706C7567696E5F726566726573684D6170286F707429207B0D0A09617065782E6465627567286F70742E726567696F6E49642B22207265';
wwv_flow_api.g_varchar2_table(122) := '66726573684D617022293B0D0A09617065782E6A5175657279282223222B6F70742E726567696F6E4964292E747269676765722822617065786265666F72657265667265736822293B0D0A09617065782E7365727665722E706C7567696E0D0A0909286F';
wwv_flow_api.g_varchar2_table(123) := '70742E616A61784964656E7469666965720D0A09092C7B20706167654974656D733A206F70742E616A61784974656D73207D0D0A09092C7B2064617461547970653A20226A736F6E220D0A0909092C737563636573733A2066756E6374696F6E28207044';
wwv_flow_api.g_varchar2_table(124) := '6174612029207B0D0A09090909617065782E6465627567286F70742E726567696F6E49642B2220737563636573732070446174613D222B70446174612E736F757468776573742E6C61742B222C222B70446174612E736F757468776573742E6C6E672B22';
wwv_flow_api.g_varchar2_table(125) := '20222B70446174612E6E6F727468656173742E6C61742B222C222B70446174612E6E6F727468656173742E6C6E67293B0D0A090909096F70742E6D61702E666974426F756E6473280D0A09090909097B736F7574683A70446174612E736F757468776573';
wwv_flow_api.g_varchar2_table(126) := '742E6C61740D0A09090909092C776573743A2070446174612E736F757468776573742E6C6E670D0A09090909092C6E6F7274683A70446174612E6E6F727468656173742E6C61740D0A09090909092C656173743A2070446174612E6E6F72746865617374';
wwv_flow_api.g_varchar2_table(127) := '2E6C6E677D293B0D0A09090909696620286F70742E697729207B0D0A09090909096F70742E69772E636C6F736528293B0D0A090909097D0D0A09090909696620286F70742E72657070696E29207B0D0A0909090909617065782E6465627567286F70742E';
wwv_flow_api.g_varchar2_table(128) := '726567696F6E49642B222072656D6F766520616C6C207265706F72742070696E7322293B0D0A0909090909666F7220287661722069203D20303B2069203C206F70742E72657070696E2E6C656E6774683B20692B2B29207B0D0A0909090909096F70742E';
wwv_flow_api.g_varchar2_table(129) := '72657070696E5B695D2E6D61726B65722E7365744D6170286E756C6C293B0D0A09090909097D0D0A09090909096F70742E72657070696E2E64656C6574653B0D0A090909097D0D0A09090909696620286F70742E636972636C657329207B0D0A09090909';
wwv_flow_api.g_varchar2_table(130) := '09617065782E6465627567286F70742E726567696F6E49642B222072656D6F766520616C6C20636972636C657322293B0D0A0909090909666F7220287661722069203D20303B2069203C206F70742E636972636C65732E6C656E6774683B20692B2B2920';
wwv_flow_api.g_varchar2_table(131) := '7B0D0A09090909096F70742E636972636C65735B695D2E636972632E7365744D6170286E756C6C293B0D0A09090909097D0D0A09090909096F70742E636972636C65732E64656C6574653B0D0A090909097D0D0A09090909617065782E6465627567286F';
wwv_flow_api.g_varchar2_table(132) := '70742E726567696F6E49642B222070446174612E6D6170646174612E6C656E6774683D222B70446174612E6D6170646174612E6C656E677468293B0D0A090909096F70742E6D617064617461203D2070446174612E6D6170646174613B0D0A0909090969';
wwv_flow_api.g_varchar2_table(133) := '6620286F70742E6578706563744461746129207B0D0A09090909096A6B3634706C7567696E5F72657050696E73286F7074293B0D0A090909097D0D0A09090909696620286F70742E73796E634974656D213D3D222229207B0D0A09090909097661722076';
wwv_flow_api.g_varchar2_table(134) := '616C203D202476286F70742E73796E634974656D293B0D0A09090909096966202876616C213D3D6E756C6C2026262076616C2E696E6465784F6628222C2229203E202D3129207B0D0A09090909090976617220617272203D2076616C2E73706C69742822';
wwv_flow_api.g_varchar2_table(135) := '2C22293B0D0A090909090909617065782E6465627567286F70742E726567696F6E49642B2220696E69742066726F6D206974656D20222B76616C293B0D0A0909090909096A6B3634706C7567696E5F7573657250696E286F70742C6172725B305D2C6172';
wwv_flow_api.g_varchar2_table(136) := '725B315D293B0D0A09090909097D0D0A090909097D0D0A09090909617065782E6A5175657279282223222B6F70742E726567696F6E4964292E7472696767657228226170657861667465727265667265736822293B0D0A0909097D0D0A09097D20293B0D';
wwv_flow_api.g_varchar2_table(137) := '0A09617065782E6465627567286F70742E726567696F6E49642B2220726566726573684D61702066696E697368656422293B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(1099147654885861104)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_file_name=>'jk64plugin.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E206A6B3634706C7567696E5F67656F636F646528652C69297B692E67656F636F6465287B616464726573733A247628652E67656F636F64654974656D292C636F6D706F6E656E745265737472696374696F6E733A2222213D3D652E63';
wwv_flow_api.g_varchar2_table(2) := '6F756E7472793F7B636F756E7472793A652E636F756E7472797D3A7B7D7D2C66756E6374696F6E28692C74297B696628743D3D3D676F6F676C652E6D6170732E47656F636F6465725374617475732E4F4B297B766172206E3D695B305D2E67656F6D6574';
wwv_flow_api.g_varchar2_table(3) := '72792E6C6F636174696F6E3B617065782E646562756728652E726567696F6E49642B222067656F636F6465206F6B22292C652E6D61702E73657443656E746572286E292C652E6D61702E70616E546F286E292C652E6D61726B65725A6F6F6D2626652E6D';
wwv_flow_api.g_varchar2_table(4) := '61702E7365745A6F6F6D28652E6D61726B65725A6F6F6D292C6A6B3634706C7567696E5F7573657250696E28652C6E2E6C617428292C6E2E6C6E672829297D656C736520617065782E646562756728652E726567696F6E49642B222067656F636F646520';
wwv_flow_api.g_varchar2_table(5) := '77617320756E7375636365737366756C20666F722074686520666F6C6C6F77696E6720726561736F6E3A20222B74297D297D66756E6374696F6E206A6B3634706C7567696E5F6D61726B6572636C69636B28652C69297B2222213D3D652E69644974656D';
wwv_flow_api.g_varchar2_table(6) := '2626247328652E69644974656D2C692E6964292C617065782E6A5175657279282223222B652E726567696F6E4964292E7472696767657228226D61726B6572636C69636B222C7B6D61703A652E6D61702C69643A692E69642C6E616D653A692E6E616D65';
wwv_flow_api.g_varchar2_table(7) := '2C6C61743A692E6C61742C6C6E673A692E6C6E672C7261643A692E7261642C6174747230313A692E6174747230312C6174747230323A692E6174747230322C6174747230333A692E6174747230332C6174747230343A692E6174747230342C6174747230';
wwv_flow_api.g_varchar2_table(8) := '353A692E6174747230352C6174747230363A692E6174747230362C6174747230373A692E6174747230372C6174747230383A692E6174747230382C6174747230393A692E6174747230392C6174747231303A692E6174747231307D297D66756E6374696F';
wwv_flow_api.g_varchar2_table(9) := '6E206A6B3634706C7567696E5F72657050696E28652C69297B76617220743D6E657720676F6F676C652E6D6170732E4C61744C6E6728692E6C61742C692E6C6E67293B696628692E726164297B766172206E3D6E657720676F6F676C652E6D6170732E43';
wwv_flow_api.g_varchar2_table(10) := '6972636C65287B7374726F6B65436F6C6F723A692E636F6C2C7374726F6B654F7061636974793A312C7374726F6B655765696768743A312C66696C6C436F6C6F723A692E636F6C2C66696C6C4F7061636974793A692E74726E732C636C69636B61626C65';
wwv_flow_api.g_varchar2_table(11) := '3A21302C6D61703A652E6D61702C63656E7465723A742C7261646975733A3165332A692E7261647D293B676F6F676C652E6D6170732E6576656E742E6164644C697374656E6572286E2C22636C69636B222C66756E6374696F6E28297B617065782E6465';
wwv_flow_api.g_varchar2_table(12) := '62756728652E726567696F6E49642B2220636972636C6520636C69636B656420222B692E6964292C6A6B3634706C7567696E5F6D61726B6572636C69636B28652C69297D292C652E636972636C65737C7C28652E636972636C65733D5B5D292C652E6369';
wwv_flow_api.g_varchar2_table(13) := '72636C65732E70757368287B69643A692E69642C636972633A6E7D297D656C73657B766172206F3D6E657720676F6F676C652E6D6170732E4D61726B6572287B6D61703A652E6D61702C706F736974696F6E3A742C7469746C653A692E6E616D652C6963';
wwv_flow_api.g_varchar2_table(14) := '6F6E3A692E69636F6E7D293B676F6F676C652E6D6170732E6576656E742E6164644C697374656E6572286F2C22636C69636B222C66756E6374696F6E28297B617065782E646562756728652E726567696F6E49642B222072657050696E20636C69636B65';
wwv_flow_api.g_varchar2_table(15) := '6420222B692E6964292C692E696E666F262628652E69773F652E69772E636C6F736528293A652E69773D6E657720676F6F676C652E6D6170732E496E666F57696E646F772C652E69772E7365744F7074696F6E73287B636F6E74656E743A692E696E666F';
wwv_flow_api.g_varchar2_table(16) := '7D292C652E69772E6F70656E28652E6D61702C7468697329292C652E6D61702E70616E546F28746869732E676574506F736974696F6E2829292C652E6D61726B65725A6F6F6D2626652E6D61702E7365745A6F6F6D28652E6D61726B65725A6F6F6D292C';
wwv_flow_api.g_varchar2_table(17) := '6A6B3634706C7567696E5F6D61726B6572636C69636B28652C69297D292C652E72657070696E7C7C28652E72657070696E3D5B5D292C652E72657070696E2E70757368287B69643A692E69642C6D61726B65723A6F7D297D7D66756E6374696F6E206A6B';
wwv_flow_api.g_varchar2_table(18) := '3634706C7567696E5F72657050696E732865297B696628652E6D6170646174612E6C656E6774683E30297B652E696E666F4E6F44617461466F756E64262628617065782E646562756728652E726567696F6E49642B222068696465204E6F204461746120';
wwv_flow_api.g_varchar2_table(19) := '466F756E6420696E666F77696E646F7722292C652E696E666F4E6F44617461466F756E642E636C6F73652829293B666F722876617220693D303B693C652E6D6170646174612E6C656E6774683B692B2B296A6B3634706C7567696E5F72657050696E2865';
wwv_flow_api.g_varchar2_table(20) := '2C652E6D6170646174615B695D297D656C73652222213D3D652E6E6F446174614D657373616765262628617065782E646562756728652E726567696F6E49642B222073686F77204E6F204461746120466F756E6420696E666F77696E646F7722292C652E';
wwv_flow_api.g_varchar2_table(21) := '696E666F4E6F44617461466F756E643F652E696E666F4E6F44617461466F756E642E636C6F736528293A652E696E666F4E6F44617461466F756E643D6E657720676F6F676C652E6D6170732E496E666F57696E646F77287B636F6E74656E743A652E6E6F';
wwv_flow_api.g_varchar2_table(22) := '446174614D6573736167652C706F736974696F6E3A7B6C61743A302C6C6E673A307D7D292C652E696E666F4E6F44617461466F756E642E6F70656E28652E6D617029297D66756E6374696F6E206A6B3634706C7567696E5F636C69636B28652C69297B66';
wwv_flow_api.g_varchar2_table(23) := '6F722876617220743D21312C6E3D303B6E3C652E72657070696E2E6C656E6774683B6E2B2B29696628652E72657070696E5B6E5D2E69643D3D69297B6E657720676F6F676C652E6D6170732E6576656E742E7472696767657228652E72657070696E5B6E';
wwv_flow_api.g_varchar2_table(24) := '5D2E6D61726B65722C22636C69636B22292C743D21303B627265616B7D747C7C617065782E646562756728652E726567696F6E49642B22206964206E6F7420666F756E643A222B69297D66756E6374696F6E206A6B3634706C7567696E5F736574436972';
wwv_flow_api.g_varchar2_table(25) := '636C6528652C69297B6966282222213D3D652E646973744974656D29696628652E64697374636972636C6529617065782E646562756728652E726567696F6E49642B22206D6F766520636972636C6522292C652E64697374636972636C652E7365744365';
wwv_flow_api.g_varchar2_table(26) := '6E7465722869292C652E64697374636972636C652E7365744D617028652E6D6170293B656C73657B76617220743D7061727365466C6F617428247628652E646973744974656D29293B617065782E646562756728652E726567696F6E49642B2220637265';
wwv_flow_api.g_varchar2_table(27) := '61746520636972636C65207261646975733D222B74292C652E64697374636972636C653D6E657720676F6F676C652E6D6170732E436972636C65287B7374726F6B65436F6C6F723A2223353035304646222C7374726F6B654F7061636974793A2E352C73';
wwv_flow_api.g_varchar2_table(28) := '74726F6B655765696768743A322C66696C6C436F6C6F723A2223303030304646222C66696C6C4F7061636974793A2E30352C636C69636B61626C653A21312C6564697461626C653A21302C6D61703A652E6D61702C63656E7465723A692C726164697573';
wwv_flow_api.g_varchar2_table(29) := '3A3165332A747D292C676F6F676C652E6D6170732E6576656E742E6164644C697374656E657228652E64697374636972636C652C227261646975735F6368616E676564222C66756E6374696F6E2869297B76617220743D652E64697374636972636C652E';
wwv_flow_api.g_varchar2_table(30) := '67657452616469757328292F3165333B617065782E646562756728652E726567696F6E49642B2220636972636C6520726164697573206368616E67656420222B74292C247328652E646973744974656D2C74292C6A6B3634706C7567696E5F7265667265';
wwv_flow_api.g_varchar2_table(31) := '73684D61702865297D292C676F6F676C652E6D6170732E6576656E742E6164644C697374656E657228652E64697374636972636C652C2263656E7465725F6368616E676564222C66756E6374696F6E2869297B76617220743D652E64697374636972636C';
wwv_flow_api.g_varchar2_table(32) := '652E67657443656E74657228292C6E3D742E6C617428292B222C222B742E6C6E6728293B617065782E646562756728652E726567696F6E49642B2220636972636C652063656E746572206368616E67656420222B6E292C2222213D3D652E73796E634974';
wwv_flow_api.g_varchar2_table(33) := '656D262628247328652E73796E634974656D2C6E292C6A6B3634706C7567696E5F726566726573684D6170286529297D297D7D66756E6374696F6E206A6B3634706C7567696E5F7573657250696E28652C692C74297B6966286E756C6C213D3D6926266E';
wwv_flow_api.g_varchar2_table(34) := '756C6C213D3D74297B766172206E3D652E7573657270696E3F652E7573657270696E2E676574506F736974696F6E28293A6E657720676F6F676C652E6D6170732E4C61744C6E6728302C30293B696628693D3D6E2E6C617428292626743D3D6E2E6C6E67';
wwv_flow_api.g_varchar2_table(35) := '282929617065782E646562756728652E726567696F6E49642B22207573657270696E206E6F74206368616E67656422293B656C73657B766172206F3D6E657720676F6F676C652E6D6170732E4C61744C6E6728692C74293B652E7573657270696E3F2861';
wwv_flow_api.g_varchar2_table(36) := '7065782E646562756728652E726567696F6E49642B22206D6F7665206578697374696E672070696E20746F206E657720706F736974696F6E206F6E206D617020222B692B222C222B74292C652E7573657270696E2E7365744D617028652E6D6170292C65';
wwv_flow_api.g_varchar2_table(37) := '2E7573657270696E2E736574506F736974696F6E286F292C6A6B3634706C7567696E5F736574436972636C6528652C6F29293A28617065782E646562756728652E726567696F6E49642B2220637265617465207573657270696E20222B692B222C222B74';
wwv_flow_api.g_varchar2_table(38) := '292C652E7573657270696E3D6E657720676F6F676C652E6D6170732E4D61726B6572287B6D61703A652E6D61702C706F736974696F6E3A6F2C69636F6E3A652E69636F6E7D292C6A6B3634706C7567696E5F736574436972636C6528652C6F29297D7D65';
wwv_flow_api.g_varchar2_table(39) := '6C736520652E7573657270696E262628617065782E646562756728652E726567696F6E49642B22206D6F7665206578697374696E672070696E206F666620746865206D617022292C652E7573657270696E2E7365744D6170286E756C6C292C652E646973';
wwv_flow_api.g_varchar2_table(40) := '74636972636C65262628617065782E646562756728652E726567696F6E49642B22206D6F76652064697374636972636C65206F666620746865206D617022292C652E64697374636972636C652E7365744D6170286E756C6C2929297D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(41) := '206A6B3634706C7567696E5F6765744164647265737328652C692C74297B766172206E3D7B6C61743A692C6C6E673A747D3B652E67656F636F6465722E67656F636F6465287B6C6F636174696F6E3A6E7D2C66756E6374696F6E28692C74297B743D3D3D';
wwv_flow_api.g_varchar2_table(42) := '676F6F676C652E6D6170732E47656F636F6465725374617475732E4F4B3F695B315D3F247328652E616464726573734974656D2C695B305D2E666F726D61747465645F61646472657373293A77696E646F772E616C65727428224E6F20726573756C7473';
wwv_flow_api.g_varchar2_table(43) := '20666F756E6422293A77696E646F772E616C657274282247656F636F646572206661696C65642064756520746F3A20222B74297D297D66756E6374696F6E206A6B3634706C7567696E5F67656F6C6F636174652865297B6E6176696761746F722E67656F';
wwv_flow_api.g_varchar2_table(44) := '6C6F636174696F6E3F28617065782E646562756728652E726567696F6E49642B222067656F6C6F6361746522292C6E6176696761746F722E67656F6C6F636174696F6E2E67657443757272656E74506F736974696F6E2866756E6374696F6E2869297B76';
wwv_flow_api.g_varchar2_table(45) := '617220743D7B6C61743A692E636F6F7264732E6C617469747564652C6C6E673A692E636F6F7264732E6C6F6E6769747564657D3B652E6D61702E70616E546F2874292C652E67656F6C6F636174655A6F6F6D2626652E6D61702E7365745A6F6F6D28652E';
wwv_flow_api.g_varchar2_table(46) := '67656F6C6F636174655A6F6F6D292C617065782E6A5175657279282223222B652E726567696F6E4964292E74726967676572282267656F6C6F63617465222C7B6D61703A652E6D61702C6C61743A742E6C61742C6C6E673A742E6C6E677D297D29293A61';
wwv_flow_api.g_varchar2_table(47) := '7065782E646562756728652E726567696F6E49642B222062726F7773657220646F6573206E6F7420737570706F72742067656F6C6F636174696F6E22297D66756E6374696F6E206A6B3634706C7567696E5F636F6E766572744C61744C6E672865297B76';
wwv_flow_api.g_varchar2_table(48) := '617220693D652E73706C697428222C22293B72657475726E2032213D692E6C656E6774687C7C69734E614E28695B305D297C7C69734E614E28695B315D293F653A7B6C61743A7061727365466C6F617428695B305D292C6C6E673A7061727365466C6F61';
wwv_flow_api.g_varchar2_table(49) := '7428695B315D297D7D66756E6374696F6E206A6B3634706C7567696E5F646972656374696F6E732865297B617065782E646562756728652E726567696F6E49642B2220646972656374696F6E7322293B76617220693D6A6B3634706C7567696E5F636F6E';
wwv_flow_api.g_varchar2_table(50) := '766572744C61744C6E6728247628652E6F726967696E4974656D29292C743D6A6B3634706C7567696E5F636F6E766572744C61744C6E6728247628652E646573744974656D29293B2222213D3D6926262222213D3D742626652E646972656374696F6E73';
wwv_flow_api.g_varchar2_table(51) := '536572766963652E726F757465287B6F726967696E3A692C64657374696E6174696F6E3A742C74726176656C4D6F64653A676F6F676C652E6D6170732E54726176656C4D6F64655B652E646972656374696F6E735D7D2C66756E6374696F6E28692C7429';
wwv_flow_api.g_varchar2_table(52) := '7B696628743D3D676F6F676C652E6D6170732E446972656374696F6E735374617475732E4F4B297B696628652E646972656374696F6E73446973706C61792E736574446972656374696F6E732869292C2222213D3D652E646972646973744974656D7C7C';
wwv_flow_api.g_varchar2_table(53) := '2222213D3D652E6469726475724974656D297B666F7228766172206E3D302C6F3D302C613D303B613C692E726F757465732E6C656E6774683B612B2B29666F722876617220723D303B723C692E726F757465735B615D2E6C6567732E6C656E6774683B72';
wwv_flow_api.g_varchar2_table(54) := '2B2B297B76617220733D692E726F757465735B615D2E6C6567735B725D3B6E2B3D732E64697374616E63652E76616C75652C6F2B3D732E6475726174696F6E2E76616C75657D2222213D3D652E646972646973744974656D2626247328652E6469726469';
wwv_flow_api.g_varchar2_table(55) := '73744974656D2C6E292C2222213D3D652E6469726475724974656D2626247328652E6469726475724974656D2C6F297D7D656C73652077696E646F772E616C6572742822446972656374696F6E732072657175657374206661696C65642064756520746F';
wwv_flow_api.g_varchar2_table(56) := '20222B74297D297D66756E6374696F6E206A6B3634706C7567696E5F696E69744D61702865297B617065782E646562756728652E726567696F6E49642B2220696E69744D617022293B76617220693D7B7A6F6F6D3A312C63656E7465723A6E657720676F';
wwv_flow_api.g_varchar2_table(57) := '6F676C652E6D6170732E4C61744C6E6728652E6C61746C6E67292C6D61705479706549643A676F6F676C652E6D6170732E4D61705479706549642E524F41444D41507D3B696628652E6D61703D6E657720676F6F676C652E6D6170732E4D617028646F63';
wwv_flow_api.g_varchar2_table(58) := '756D656E742E676574456C656D656E744279496428652E636F6E7461696E6572292C69292C652E6D61707374796C652626652E6D61702E7365744F7074696F6E73287B7374796C65733A652E6D61707374796C657D292C652E6D61702E666974426F756E';
wwv_flow_api.g_varchar2_table(59) := '6473286E657720676F6F676C652E6D6170732E4C61744C6E67426F756E647328652E736F757468776573742C652E6E6F7274686561737429292C2222213D3D652E73796E634974656D297B76617220743D247628652E73796E634974656D293B6966286E';
wwv_flow_api.g_varchar2_table(60) := '756C6C213D3D742626742E696E6465784F6628222C22293E2D31297B766172206E3D742E73706C697428222C22293B617065782E646562756728652E726567696F6E49642B2220696E69742066726F6D206974656D20222B74293B766172206F3D6E6577';
wwv_flow_api.g_varchar2_table(61) := '20676F6F676C652E6D6170732E4C61744C6E67286E5B305D2C6E5B315D293B652E7573657270696E3D6E657720676F6F676C652E6D6170732E4D61726B6572287B6D61703A652E6D61702C706F736974696F6E3A6F2C69636F6E3A652E69636F6E7D292C';
wwv_flow_api.g_varchar2_table(62) := '6A6B3634706C7567696E5F736574436972636C6528652C6F297D24282223222B652E73796E634974656D292E6368616E67652866756E6374696F6E28297B76617220693D746869732E76616C75653B6966286E756C6C213D3D692626766F69642030213D';
wwv_flow_api.g_varchar2_table(63) := '3D692626692E696E6465784F6628222C22293E2D31297B617065782E646562756728652E726567696F6E49642B22206974656D206368616E67656420222B69293B76617220743D692E73706C697428222C22293B6A6B3634706C7567696E5F7573657250';
wwv_flow_api.g_varchar2_table(64) := '696E28652C745B305D2C745B315D297D7D297D6966282222213D652E646973744974656D262624282223222B652E646973744974656D292E6368616E67652866756E6374696F6E28297B696628746869732E76616C7565297B76617220693D3165332A70';
wwv_flow_api.g_varchar2_table(65) := '61727365466C6F617428746869732E76616C7565293B652E64697374636972636C652E6765745261646975732829213D3D69262628617065782E646562756728652E726567696F6E49642B2220646973746974656D206368616E67656420222B74686973';
wwv_flow_api.g_varchar2_table(66) := '2E76616C7565292C652E64697374636972636C652E736574526164697573286929297D656C736520652E64697374636972636C65262628617065782E646562756728652E726567696F6E49642B2220646973746974656D20636C656172656422292C652E';
wwv_flow_api.g_varchar2_table(67) := '64697374636972636C652E7365744D6170286E756C6C29297D292C652E6578706563744461746126266A6B3634706C7567696E5F72657050696E732865292C2222213D3D652E616464726573734974656D262628652E67656F636F6465723D6E65772067';
wwv_flow_api.g_varchar2_table(68) := '6F6F676C652E6D6170732E47656F636F646572292C652E646972656374696F6E73262628652E646972656374696F6E73446973706C61793D6E657720676F6F676C652E6D6170732E446972656374696F6E7352656E64657265722C652E64697265637469';
wwv_flow_api.g_varchar2_table(69) := '6F6E73536572766963653D6E657720676F6F676C652E6D6170732E446972656374696F6E73536572766963652C652E646972656374696F6E73446973706C61792E7365744D617028652E6D6170292C6A6B3634706C7567696E5F646972656374696F6E73';
wwv_flow_api.g_varchar2_table(70) := '2865292C24282223222B652E6F726967696E4974656D292E6368616E67652866756E6374696F6E28297B6A6B3634706C7567696E5F646972656374696F6E732865297D292C24282223222B652E646573744974656D292E6368616E67652866756E637469';
wwv_flow_api.g_varchar2_table(71) := '6F6E28297B6A6B3634706C7567696E5F646972656374696F6E732865297D29292C676F6F676C652E6D6170732E6576656E742E6164644C697374656E657228652E6D61702C22636C69636B222C66756E6374696F6E2869297B76617220743D692E6C6174';
wwv_flow_api.g_varchar2_table(72) := '4C6E672E6C617428292C6E3D692E6C61744C6E672E6C6E6728293B617065782E646562756728652E726567696F6E49642B22206D617020636C69636B656420222B742B222C222B6E292C282222213D3D652E73796E634974656D7C7C2222213D3D652E61';
wwv_flow_api.g_varchar2_table(73) := '6464726573734974656D2926266A6B3634706C7567696E5F7573657250696E28652C742C6E292C2222213D3D652E73796E634974656D3F28247328652E73796E634974656D2C742B222C222B6E292C6A6B3634706C7567696E5F726566726573684D6170';
wwv_flow_api.g_varchar2_table(74) := '286529293A652E6D61726B65725A6F6F6D262628617065782E646562756728652E726567696F6E49642B222070616E2B7A6F6F6D22292C652E6D61702E70616E546F28692E6C61744C6E67292C652E6D61702E7365745A6F6F6D28652E6D61726B65725A';
wwv_flow_api.g_varchar2_table(75) := '6F6F6D29292C2222213D3D652E616464726573734974656D26266A6B3634706C7567696E5F6765744164647265737328652C742C6E292C617065782E6A5175657279282223222B652E726567696F6E4964292E7472696767657228226D6170636C69636B';
wwv_flow_api.g_varchar2_table(76) := '222C7B6D61703A652E6D61702C6C61743A742C6C6E673A6E7D297D292C2222213D652E67656F636F64654974656D297B76617220613D6E657720676F6F676C652E6D6170732E47656F636F6465723B24282223222B652E67656F636F64654974656D292E';
wwv_flow_api.g_varchar2_table(77) := '6368616E67652866756E6374696F6E28297B6A6B3634706C7567696E5F67656F636F646528652C61297D297D652E67656F6C6F6361746526266A6B3634706C7567696E5F67656F6C6F636174652865292C617065782E646562756728652E726567696F6E';
wwv_flow_api.g_varchar2_table(78) := '49642B2220696E69744D61702066696E697368656422292C617065782E6A5175657279282223222B652E726567696F6E4964292E7472696767657228226D61706C6F61646564222C7B6D61703A652E6D61707D297D66756E6374696F6E206A6B3634706C';
wwv_flow_api.g_varchar2_table(79) := '7567696E5F726566726573684D61702865297B617065782E646562756728652E726567696F6E49642B2220726566726573684D617022292C617065782E6A5175657279282223222B652E726567696F6E4964292E74726967676572282261706578626566';
wwv_flow_api.g_varchar2_table(80) := '6F72657265667265736822292C617065782E7365727665722E706C7567696E28652E616A61784964656E7469666965722C7B706167654974656D733A652E616A61784974656D737D2C7B64617461547970653A226A736F6E222C737563636573733A6675';
wwv_flow_api.g_varchar2_table(81) := '6E6374696F6E2869297B696628617065782E646562756728652E726567696F6E49642B2220737563636573732070446174613D222B692E736F757468776573742E6C61742B222C222B692E736F757468776573742E6C6E672B2220222B692E6E6F727468';
wwv_flow_api.g_varchar2_table(82) := '656173742E6C61742B222C222B692E6E6F727468656173742E6C6E67292C652E6D61702E666974426F756E6473287B736F7574683A692E736F757468776573742E6C61742C776573743A692E736F757468776573742E6C6E672C6E6F7274683A692E6E6F';
wwv_flow_api.g_varchar2_table(83) := '727468656173742E6C61742C656173743A692E6E6F727468656173742E6C6E677D292C652E69772626652E69772E636C6F736528292C652E72657070696E297B617065782E646562756728652E726567696F6E49642B222072656D6F766520616C6C2072';
wwv_flow_api.g_varchar2_table(84) := '65706F72742070696E7322293B666F722876617220743D303B743C652E72657070696E2E6C656E6774683B742B2B29652E72657070696E5B745D2E6D61726B65722E7365744D6170286E756C6C293B652E72657070696E5B2264656C657465225D7D6966';
wwv_flow_api.g_varchar2_table(85) := '28652E636972636C6573297B617065782E646562756728652E726567696F6E49642B222072656D6F766520616C6C20636972636C657322293B666F722876617220743D303B743C652E636972636C65732E6C656E6774683B742B2B29652E636972636C65';
wwv_flow_api.g_varchar2_table(86) := '735B745D2E636972632E7365744D6170286E756C6C293B652E636972636C65735B2264656C657465225D7D696628617065782E646562756728652E726567696F6E49642B222070446174612E6D6170646174612E6C656E6774683D222B692E6D61706461';
wwv_flow_api.g_varchar2_table(87) := '74612E6C656E677468292C652E6D6170646174613D692E6D6170646174612C652E6578706563744461746126266A6B3634706C7567696E5F72657050696E732865292C2222213D3D652E73796E634974656D297B766172206E3D247628652E73796E6349';
wwv_flow_api.g_varchar2_table(88) := '74656D293B6966286E756C6C213D3D6E26266E2E696E6465784F6628222C22293E2D31297B766172206F3D6E2E73706C697428222C22293B617065782E646562756728652E726567696F6E49642B2220696E69742066726F6D206974656D20222B6E292C';
wwv_flow_api.g_varchar2_table(89) := '6A6B3634706C7567696E5F7573657250696E28652C6F5B305D2C6F5B315D297D7D617065782E6A5175657279282223222B652E726567696F6E4964292E7472696767657228226170657861667465727265667265736822297D7D292C617065782E646562';
wwv_flow_api.g_varchar2_table(90) := '756728652E726567696F6E49642B2220726566726573684D61702066696E697368656422297D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(1099162346077186532)
,p_plugin_id=>wwv_flow_api.id(1386439698601833505)
,p_file_name=>'jk64plugin.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/com_jk64_simple_google_map
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(1468871577665106855)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.JK64.SIMPLE_GOOGLE_MAP'
,p_display_name=>'JK64 Simple Google Map'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.JK64.SIMPLE_GOOGLE_MAP'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_map (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'return apex_plugin.t_region_render_result',
'as',
'    subtype plugin_attr is varchar2(32767);',
'',
'    -- Variables',
'    l_result    apex_plugin.t_region_render_result;',
'    l_script    varchar2(32767);',
'    l_region    varchar2(100);',
'    l_js_params varchar2(1000);',
'    l_lat       number;',
'    l_lng       number;',
'    l_readonly  varchar2(1000) := ''false'';',
'',
'    -- Plugin attributes (application level)',
'    l_api_key       plugin_attr := p_plugin.attribute_01;',
'',
'    -- Component attributes',
'    l_latlong       plugin_attr := p_region.attribute_01;',
'    l_zoom          plugin_attr := p_region.attribute_02;',
'    l_region_height plugin_attr := p_region.attribute_03;',
'    l_item_name     plugin_attr := p_region.attribute_04;',
'    l_marker_zoom   plugin_attr := p_region.attribute_05;',
'    l_icon          plugin_attr := p_region.attribute_06;',
'    l_sign_in       plugin_attr := p_region.attribute_07;',
'    l_geocode_item  plugin_attr := p_region.attribute_08;',
'    l_country       plugin_attr := p_region.attribute_09;',
'    l_mapstyle      plugin_attr := p_region.attribute_10;',
'    l_address_item  plugin_attr := p_region.attribute_11;',
'    l_geolocate     plugin_attr := p_region.attribute_12;',
'    l_geoloc_zoom   plugin_attr := p_region.attribute_13;',
'    l_readonly_expr plugin_attr := p_region.attribute_14;',
'    ',
'begin',
'    apex_plugin_util.debug_region (',
'        p_plugin => p_plugin,',
'        p_region => p_region,',
'        p_is_printer_friendly => p_is_printer_friendly);',
'',
'    if l_api_key is not null then',
'        l_js_params := ''?key='' || l_api_key;',
'        if l_sign_in = ''Y'' then',
'            l_js_params := l_js_params||''&''||''signed_in=true'';',
'        end if;',
'    else',
'        -- these features require a Google API Key',
'        l_sign_in      := ''N'';',
'        l_geocode_item := null;',
'        l_country      := null;',
'        l_address_item := null;',
'    end if;',
'    ',
'    if l_readonly_expr is not null then',
'      l_readonly := apex_plugin_util.get_plsql_expression_result (',
'        ''case when ('' || l_readonly_expr',
'        || '') then ''''true'''' else ''''false'''' end'');',
'      if l_readonly not in (''true'',''false'') then',
'        raise_application_error(-20000, ''Read-only attribute must evaluate to true or false.'');',
'      end if;',
'    end if;',
'',
'    apex_javascript.add_library',
'      (p_name                  => ''js'' || l_js_params',
'      ,p_directory             => ''https://maps.googleapis.com/maps/api/''',
'      ,p_skip_extension        => true);',
'',
'    apex_javascript.add_library',
'      (p_name                  => ''simplemap''',
'      ,p_directory             => p_plugin.file_prefix',
'      ,p_check_to_add_minified => true);',
'    ',
'    l_lat := to_number(substr(l_latlong,1,instr(l_latlong,'','')-1));',
'    l_lng := to_number(substr(l_latlong,instr(l_latlong,'','')+1));',
'    ',
'    l_region := case',
'                when p_region.static_id is not null',
'                then p_region.static_id',
'                else ''R''||p_region.id',
'                end;',
'    ',
'    l_script := replace(''',
'var opt_#REGION# = {',
'   container: "map_#REGION#_container"',
'  ,regionId: "#REGION#"',
'  ,initZoom: ''||l_zoom||''',
'  ,initLat: ''||TO_CHAR(l_lat,''fm999.9999999999999999'')||''',
'  ,initLng: ''||TO_CHAR(l_lng,''fm999.9999999999999999'')||''',
'  ,markerZoom: ''||l_marker_zoom||''',
'  ,icon: "''||l_icon||''"',
'  ,syncItem: "''||l_item_name||''"',
'  ,geocodeItem: "''||l_geocode_item||''"',
'  ,country: "''||l_country||''"''||',
'  CASE WHEN l_mapstyle IS NOT NULL THEN ''',
'  ,mapstyle: ''||l_mapstyle',
'  END || ''',
'  ,addressItem: "''||l_address_item||''"''||',
'  CASE WHEN l_geolocate = ''Y'' THEN ''',
'  ,geolocate: true'' ||',
'    CASE WHEN l_geoloc_zoom IS NOT NULL THEN ''',
'  ,geolocateZoom: ''||l_geoloc_zoom',
'    END',
'  END || ''',
'  ,readonly: ''||l_readonly||''',
'};',
'function r_#REGION#(f){/in/.test(document.readyState)?setTimeout("r_#REGION#("+f+")",9):f()}',
'r_#REGION#(function(){',
'  simplemap.init(opt_#REGION#);',
'});',
'function click_#REGION#(lat,lng) {',
'  simplemap.setMarker(opt_#REGION#,lat,lng);',
'}',
''',''#REGION#'',l_region);',
'',
'  sys.htp.p(''<script>''||l_script||''</script>'');',
'  sys.htp.p(''<div id="map_''||l_region||''_container" style="min-height:''||l_region_height||''px"></div>'');',
'',
'  return l_result;',
'end render_map;'))
,p_render_function=>'render_map'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Add a region of this type to your page and you have a map which the user can click to set a single Marker. If you set Synchronize with Item it will copy the lat,lng that the user clicks into that item; also, if the item is changed the map will move t'
||'he marker to the new location. If you set an Address item and your Google API Key, it will do a reverse geocode and put the first address result into it.'
,p_version_identifier=>'0.4'
,p_about_url=>'https://github.com/jeffreykemp/jk64-plugin-simplemap'
,p_files_version=>18
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1478036238273809592)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Google API Key'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Optional. If you don''t set this, you may get a "Google Maps API warning: NoApiKeys" warning in the console log. Refer: https://developers.google.com/maps/documentation/javascript/get-api-key#get-an-api-key'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1468902021055869073)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Initial Map Position'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'0,0'
,p_max_length=>100
,p_unit=>'lat,long'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'Set the latitude and longitude as a pair of numbers to be used to position the map on page load, if no pin coordinates have been provided by the page item.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1468881439164374340)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Initial Zoom Level'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'1'
,p_max_length=>2
,p_unit=>'(0-23)'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'Set the initial map zoom level on page load, to be used if the page item has no coordinates to show.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1468882086865399900)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Min. Map Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'400'
,p_max_length=>5
,p_unit=>'pixels'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'Set the desired height for the map region. Note: the map width will adjust to the maximum available space.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1470540396498745010)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Synchronize with Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'Position of the marker will be retrieved from and stored in this item as a Lat,Long value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1470544411275918188)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Marker Zoom Level'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'16'
,p_unit=>'(0-23)'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'If a marker is set or moved, zoom the map to this level. Leave blank to make the map not zoom when the marker is moved.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1472810340632003326)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Marker Icon'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_max_length=>4000
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
'http://maps.google.com/mapfiles/ms/icons/purple-dot.png',
'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png',
'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
'http://maps.google.com/mapfiles/ms/icons/ylw-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/blue-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/grn-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/ltblu-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/pink-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/purple-pushpin.png',
'http://maps.google.com/mapfiles/ms/icons/red-pushpin.png'))
,p_help_text=>'URL to the icon to show for the marker. Leave blank for the default red Google pin.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1478037313651815839)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Enable Google Sign-In'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Set to Yes to enable Google sign-in on the map. Only works if you set the Google API Key.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1478039709851903168)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Geocode Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Set to a text item on the page. If the text item contains the name of a location or an address, a Google Maps Geocode search will be done and, if found, the map will be moved to that location and a pin shown. NOTE: requires a Google API key to be set'
||' at the application level.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1478040466141906549)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Restrict to Country code'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>2
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1478039709851903168)
,p_depending_on_condition_type=>'NOT_NULL'
,p_text_case=>'UPPER'
,p_examples=>'AU'
,p_help_text=>'Leave blank to allow geocoding to find any place on earth. Set to country code (see https://developers.google.com/public-data/docs/canonical/countries_csv for valid values) to restrict geocoder to that country.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1403202108253330793)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Map Style'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Here is an example, a light greyscale style map:',
'<pre>',
'[{"featureType":"water","elementType":"geometry","stylers":[{"color":"#e9e9e9"},{"lightness":17}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":20}]},{"featureType":"road.highway","elementType":"geom'
||'etry.fill","stylers":[{"color":"#ffffff"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","style'
||'rs":[{"color":"#ffffff"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":16}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":21}]},{"featu'
||'reType":"poi.park","elementType":"geometry","stylers":[{"color":"#dedede"},{"lightness":21}]},{"elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"lightness":16}]},{"elementType":"labels.text.fill","stylers":[{"sat'
||'uration":36},{"color":"#333333"},{"lightness":40}]},{"elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#f2f2f2"},{"lightness":19}]},{"featureType":"administrative","el'
||'ementType":"geometry.fill","stylers":[{"color":"#fefefe"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#fefefe"},{"lightness":17},{"weight":1.2}]}]',
'</pre>',
'<p>',
'To hide the (clickable) POIs from the map, use this:',
'<code>[{featureType:"poi",elementType:"labels",stylers:[{visibility:"off"}]}]</code>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'You can generate map styles using this tool: http://gmaps-samples-v3.googlecode.com/svn/trunk/styledmaps/wizard/index.html',
'<p>',
'Another way is to copy one from a site like https://snazzymaps.com/'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1252198341543383575)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Address Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Google API Key required. When the user clicks a point on the map, a Google Maps reverse geocode will be executed and the first result (usually the address) will be copied to the item you specify here.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1183209810175114637)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Geolocate'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'If Yes, on load the map will attempt to locate the user''s position and pan&zoom to that location (it might prompt the user for permission first).'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1183211411312185902)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Zoom on Geolocate'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'13'
,p_display_length=>2
,p_max_length=>2
,p_unit=>'(0-23)'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1183209810175114637)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'If geolocation is successful, pan map and zoom to this level.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1101180393529802524)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Read-only'
,p_attribute_type=>'PLSQL EXPRESSION BOOLEAN'
,p_is_required=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<code>true</code>',
'<p>',
'<code>:P1_ITEM IS NOT NULL</code>'))
,p_help_text=>'By default, this plugin allows the user to click the map to move the marker. To make the map "readonly" (i.e. disallow the user from moving the marker), set this to a PL/SQL expression that evaluates to TRUE.'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1183212980134202939)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_name=>'geolocate'
,p_display_name=>'geolocate'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1468885240434535946)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_name=>'mapclick'
,p_display_name=>'mapClick'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1478038250200818709)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_name=>'maploaded'
,p_display_name=>'mapLoaded'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7661722073696D706C656D6170203D207B0A0A67656F636F6465203A2066756E6374696F6E20286F70742C67656F636F64657229207B0A2020617065782E6465627567282273696D706C656D61702E67656F636F646522293B0A202067656F636F646572';
wwv_flow_api.g_varchar2_table(2) := '2E67656F636F6465280A202020207B616464726573733A202476286F70742E67656F636F64654974656D290A202020202C636F6D706F6E656E745265737472696374696F6E733A206F70742E636F756E747279213D3D22223F7B636F756E7472793A6F70';
wwv_flow_api.g_varchar2_table(3) := '742E636F756E7472797D3A7B7D0A20207D2C2066756E6374696F6E28726573756C74732C2073746174757329207B0A2020202069662028737461747573203D3D20676F6F676C652E6D6170732E47656F636F6465725374617475732E4F4B29207B0A2020';
wwv_flow_api.g_varchar2_table(4) := '20202020617065782E6465627567286F70742E726567696F6E49642B222067656F636F6465206F6B22293B0A20202020202076617220706F73203D20726573756C74735B305D2E67656F6D657472792E6C6F636174696F6E3B0A20202020202073696D70';
wwv_flow_api.g_varchar2_table(5) := '6C656D61702E7365744D61726B6572286F70742C706F732E6C617428292C706F732E6C6E672829290A202020202020696620286F70742E73796E634974656D213D3D222229207B0A20202020202020202473286F70742E73796E634974656D2C706F732E';
wwv_flow_api.g_varchar2_table(6) := '6C617428292B222C222B706F732E6C6E672829293B0A2020202020207D0A202020207D20656C7365207B0A202020202020617065782E6465627567286F70742E726567696F6E49642B222067656F636F64652077617320756E7375636365737366756C20';
wwv_flow_api.g_varchar2_table(7) := '666F722074686520666F6C6C6F77696E6720726561736F6E3A20222B737461747573293B0A202020207D0A20207D293B0A7D2C0A0A7365744D61726B6572203A2066756E6374696F6E20286F70742C6C61742C6C6E6729207B0A2020617065782E646562';
wwv_flow_api.g_varchar2_table(8) := '7567282273696D706C656D61702E7365744D61726B657222293B0A2020696620286C6174213D3D6E756C6C202626206C6E67213D3D6E756C6C29207B0A20202020766172206F6C64706F73203D206F70742E6D61726B65723F6F70742E6D61726B65722E';
wwv_flow_api.g_varchar2_table(9) := '676574506F736974696F6E28293A6E657720676F6F676C652E6D6170732E4C61744C6E6728302C30293B0A20202020696620286C61743D3D6F6C64706F732E6C61742829202626206C6E673D3D6F6C64706F732E6C6E67282929207B0A20202020202061';
wwv_flow_api.g_varchar2_table(10) := '7065782E6465627567286F70742E726567696F6E49642B22206D61726B6572206E6F74206368616E67656422293B0A202020207D20656C7365207B0A202020202020617065782E6465627567286F70742E726567696F6E49642B22206D6F7665206D6172';
wwv_flow_api.g_varchar2_table(11) := '6B657222293B0A20202020202076617220706F73203D206E657720676F6F676C652E6D6170732E4C61744C6E67286C61742C6C6E67293B0A2020202020206F70742E6D61702E70616E546F28706F73293B0A202020202020696620286F70742E6D61726B';
wwv_flow_api.g_varchar2_table(12) := '65725A6F6F6D29207B0A20202020202020206F70742E6D61702E7365745A6F6F6D286F70742E6D61726B65725A6F6F6D293B0A2020202020207D0A202020202020696620286F70742E6D61726B657229207B0A20202020202020206F70742E6D61726B65';
wwv_flow_api.g_varchar2_table(13) := '722E7365744D6170286F70742E6D6170293B0A20202020202020206F70742E6D61726B65722E736574506F736974696F6E28706F73293B0A2020202020207D20656C7365207B0A20202020202020206F70742E6D61726B6572203D206E657720676F6F67';
wwv_flow_api.g_varchar2_table(14) := '6C652E6D6170732E4D61726B6572287B6D61703A206F70742E6D61702C20706F736974696F6E3A20706F732C2069636F6E3A206F70742E69636F6E7D293B0A2020202020207D0A202020207D0A20207D20656C736520696620286F70742E6D61726B6572';
wwv_flow_api.g_varchar2_table(15) := '29207B0A20202020617065782E6465627567286F70742E726567696F6E49642B222072656D6F7665206D61726B657222293B0A202020206F70742E6D61726B65722E7365744D6170286E756C6C293B0A20207D0A7D2C0A0A67657441646472657373203A';
wwv_flow_api.g_varchar2_table(16) := '2066756E6374696F6E20286F70742C6C61742C6C6E6729207B0A2020617065782E6465627567282273696D706C656D61702E6765744164647265737322293B0A09766172206C61746C6E67203D207B6C61743A206C61742C206C6E673A206C6E677D3B0A';
wwv_flow_api.g_varchar2_table(17) := '096F70742E67656F636F6465722E67656F636F6465287B276C6F636174696F6E273A206C61746C6E677D2C2066756E6374696F6E28726573756C74732C2073746174757329207B0A090969662028737461747573203D3D3D20676F6F676C652E6D617073';
wwv_flow_api.g_varchar2_table(18) := '2E47656F636F6465725374617475732E4F4B29207B0A090909666F722028693D303B20693C726573756C74732E6C656E6774683B20692B2B29207B0A09090909617065782E6465627567286F70742E726567696F6E49642B2220726573756C745B222B69';
wwv_flow_api.g_varchar2_table(19) := '2B225D3D222B726573756C74735B695D2E666F726D61747465645F616464726573732B222028222B726573756C74735B695D2E74797065732E6A6F696E28292B222922293B0A0909097D0A09090969662028726573756C74735B315D29207B0A09090909';
wwv_flow_api.g_varchar2_table(20) := '2473286F70742E616464726573734974656D2C726573756C74735B305D2E666F726D61747465645F61646472657373293B0A0909097D20656C7365207B0A0909090977696E646F772E616C6572742827496E73756666696369656E7420726573756C7473';
wwv_flow_api.g_varchar2_table(21) := '20666F756E6427293B0A0909097D0A09097D20656C73652069662028737461747573203D3D3D20676F6F676C652E6D6170732E47656F636F6465725374617475732E5A45524F5F524553554C545329207B0A09090977696E646F772E616C65727428224E';
wwv_flow_api.g_varchar2_table(22) := '6F20726573756C747320666F756E6422293B0A09097D20656C7365207B0A09090977696E646F772E616C657274282747656F636F646572206661696C65642064756520746F3A2027202B20737461747573293B0A09097D0A097D293B0A7D2C0A0A696E69';
wwv_flow_api.g_varchar2_table(23) := '74203A2066756E6374696F6E20286F707429207B0A2020617065782E6465627567282273696D706C656D61702E696E697422293B0A09766172206D794F7074696F6E73203D207B0A09097A6F6F6D3A206F70742E696E69745A6F6F6D2C0A090963656E74';
wwv_flow_api.g_varchar2_table(24) := '65723A206E657720676F6F676C652E6D6170732E4C61744C6E67286F70742E696E69744C61742C6F70742E696E69744C6E67292C0A09096D61705479706549643A20676F6F676C652E6D6170732E4D61705479706549642E524F41444D41500A097D3B0A';
wwv_flow_api.g_varchar2_table(25) := '096F70742E6D6170203D206E657720676F6F676C652E6D6170732E4D617028646F63756D656E742E676574456C656D656E7442794964286F70742E636F6E7461696E6572292C6D794F7074696F6E73293B0A09696620286F70742E6D61707374796C6529';
wwv_flow_api.g_varchar2_table(26) := '207B0A09096F70742E6D61702E7365744F7074696F6E73287B7374796C65733A206F70742E6D61707374796C657D293B0A097D0A2020696620286F70742E726561646F6E6C7929207B0A202020202F2F64697361626C65207A6F6F6D2F70616E20696620';
wwv_flow_api.g_varchar2_table(27) := '726561646F6E6C790A202020206F70742E6D61702E7365744F7074696F6E73287B0A2020202020202064697361626C6544656661756C7455493A20747275650A2020202020202C647261676761626C653A2066616C73650A2020202020202C7A6F6F6D43';
wwv_flow_api.g_varchar2_table(28) := '6F6E74726F6C3A2066616C73650A2020202020202C7363726F6C6C776865656C3A2066616C73650A2020202020202C64697361626C65446F75626C65436C69636B5A6F6F6D3A20747275650A202020207D293B0A20207D0A09696620286F70742E73796E';
wwv_flow_api.g_varchar2_table(29) := '634974656D213D3D222229207B0A09097661722076616C203D202476286F70742E73796E634974656D293B0A09096966202876616C213D3D6E756C6C2026262076616C2E696E6465784F6628222C2229203E202D3129207B0A0909097661722061727220';
wwv_flow_api.g_varchar2_table(30) := '3D2076616C2E73706C697428222C22293B0A09090973696D706C656D61702E7365744D61726B6572286F70742C6172725B305D2C6172725B315D293B0A09097D0A090924282223222B6F70742E73796E634974656D292E6368616E67652866756E637469';
wwv_flow_api.g_varchar2_table(31) := '6F6E28297B200A090909766172206C61746C6E67203D20746869732E76616C75653B0A090909696620286C61746C6E67213D3D6E756C6C202626206C61746C6E67213D3D756E646566696E6564202626206C61746C6E672E696E6465784F6628222C2229';
wwv_flow_api.g_varchar2_table(32) := '203E202D3129207B0A0909090976617220617272203D206C61746C6E672E73706C697428222C22293B0A0909090973696D706C656D61702E7365744D61726B6572286F70742C6172725B305D2C6172725B315D293B0A0909097D202020200A09097D293B';
wwv_flow_api.g_varchar2_table(33) := '0A097D0A09696620286F70742E616464726573734974656D213D3D222229207B0A09096F70742E67656F636F646572203D206E657720676F6F676C652E6D6170732E47656F636F6465723B0A097D0A202069662028216F70742E726561646F6E6C792920';
wwv_flow_api.g_varchar2_table(34) := '7B0A20202020676F6F676C652E6D6170732E6576656E742E6164644C697374656E6572286F70742E6D61702C2022636C69636B222C2066756E6374696F6E20286576656E7429207B0A202020202020766172206C6174203D206576656E742E6C61744C6E';
wwv_flow_api.g_varchar2_table(35) := '672E6C617428290A2020202020202020202C6C6E67203D206576656E742E6C61744C6E672E6C6E6728293B0A20202020202073696D706C656D61702E7365744D61726B6572286F70742C6C61742C6C6E67293B0A202020202020696620286F70742E7379';
wwv_flow_api.g_varchar2_table(36) := '6E634974656D213D3D222229207B0A20202020202020202473286F70742E73796E634974656D2C6C61742B222C222B6C6E67293B0A2020202020207D0A202020202020696620286F70742E616464726573734974656D213D3D222229207B0A2020202020';
wwv_flow_api.g_varchar2_table(37) := '20202073696D706C656D61702E67657441646472657373286F70742C6C61742C6C6E67293B0A2020202020207D0A202020202020617065782E6A5175657279282223222B6F70742E726567696F6E4964292E7472696767657228226D6170636C69636B22';
wwv_flow_api.g_varchar2_table(38) := '2C207B6D61703A6F70742E6D61702C206C61743A6C61742C206C6E673A6C6E677D293B0A202020207D293B0A20207D0A09696620286F70742E67656F636F64654974656D213D222229207B0A09097661722067656F636F646572203D206E657720676F6F';
wwv_flow_api.g_varchar2_table(39) := '676C652E6D6170732E47656F636F64657228293B0A090924282223222B6F70742E67656F636F64654974656D292E6368616E67652866756E6374696F6E28297B0A09090973696D706C656D61702E67656F636F6465286F70742C67656F636F646572293B';
wwv_flow_api.g_varchar2_table(40) := '0A09097D293B0A097D0A09696620286F70742E67656F6C6F6361746529207B0A0909696620286E6176696761746F722E67656F6C6F636174696F6E29207B0A090909617065782E6465627567286F70742E726567696F6E49642B222067656F6C6F636174';
wwv_flow_api.g_varchar2_table(41) := '6522293B0A0909096E6176696761746F722E67656F6C6F636174696F6E2E67657443757272656E74506F736974696F6E2866756E6374696F6E28706F736974696F6E29207B0A0909090976617220706F73203D207B0A09090909096C61743A20706F7369';
wwv_flow_api.g_varchar2_table(42) := '74696F6E2E636F6F7264732E6C617469747564652C0A09090909096C6E673A20706F736974696F6E2E636F6F7264732E6C6F6E6769747564650A090909097D3B0A090909096F70742E6D61702E70616E546F28706F73293B0A09090909696620286F7074';
wwv_flow_api.g_varchar2_table(43) := '2E67656F6C6F636174655A6F6F6D29207B0A0909090920206F70742E6D61702E7365745A6F6F6D286F70742E67656F6C6F636174655A6F6F6D293B0A090909097D0A09090909617065782E6A5175657279282223222B6F70742E726567696F6E4964292E';
wwv_flow_api.g_varchar2_table(44) := '74726967676572282267656F6C6F63617465222C207B6D61703A6F70742E6D61702C206C61743A706F732E6C61742C206C6E673A706F732E6C6E677D293B0A0909097D293B0A09097D20656C7365207B0A090909617065782E6465627567286F70742E72';
wwv_flow_api.g_varchar2_table(45) := '6567696F6E49642B222062726F7773657220646F6573206E6F7420737570706F72742067656F6C6F636174696F6E22293B0A09097D0A097D0A09617065782E6A5175657279282223222B6F70742E726567696F6E4964292E7472696767657228226D6170';
wwv_flow_api.g_varchar2_table(46) := '6C6F61646564222C207B6D61703A6F70742E6D61707D293B0A7D0A0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(1101182109483849233)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_file_name=>'simplemap.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7661722073696D706C656D61703D7B67656F636F64653A66756E6374696F6E28652C6F297B617065782E6465627567282273696D706C656D61702E67656F636F646522292C6F2E67656F636F6465287B616464726573733A247628652E67656F636F6465';
wwv_flow_api.g_varchar2_table(2) := '4974656D292C636F6D706F6E656E745265737472696374696F6E733A2222213D3D652E636F756E7472793F7B636F756E7472793A652E636F756E7472797D3A7B7D7D2C66756E6374696F6E286F2C61297B696628613D3D676F6F676C652E6D6170732E47';
wwv_flow_api.g_varchar2_table(3) := '656F636F6465725374617475732E4F4B297B617065782E646562756728652E726567696F6E49642B222067656F636F6465206F6B22293B76617220743D6F5B305D2E67656F6D657472792E6C6F636174696F6E3B73696D706C656D61702E7365744D6172';
wwv_flow_api.g_varchar2_table(4) := '6B657228652C742E6C617428292C742E6C6E672829292C2222213D3D652E73796E634974656D2626247328652E73796E634974656D2C742E6C617428292B222C222B742E6C6E672829297D656C736520617065782E646562756728652E726567696F6E49';
wwv_flow_api.g_varchar2_table(5) := '642B222067656F636F64652077617320756E7375636365737366756C20666F722074686520666F6C6C6F77696E6720726561736F6E3A20222B61297D297D2C7365744D61726B65723A66756E6374696F6E28652C6F2C61297B696628617065782E646562';
wwv_flow_api.g_varchar2_table(6) := '7567282273696D706C656D61702E7365744D61726B657222292C6E756C6C213D3D6F26266E756C6C213D3D61297B76617220743D652E6D61726B65723F652E6D61726B65722E676574506F736974696F6E28293A6E657720676F6F676C652E6D6170732E';
wwv_flow_api.g_varchar2_table(7) := '4C61744C6E6728302C30293B6966286F3D3D742E6C617428292626613D3D742E6C6E67282929617065782E646562756728652E726567696F6E49642B22206D61726B6572206E6F74206368616E67656422293B656C73657B617065782E64656275672865';
wwv_flow_api.g_varchar2_table(8) := '2E726567696F6E49642B22206D6F7665206D61726B657222293B766172206E3D6E657720676F6F676C652E6D6170732E4C61744C6E67286F2C61293B652E6D61702E70616E546F286E292C652E6D61726B65725A6F6F6D2626652E6D61702E7365745A6F';
wwv_flow_api.g_varchar2_table(9) := '6F6D28652E6D61726B65725A6F6F6D292C652E6D61726B65723F28652E6D61726B65722E7365744D617028652E6D6170292C652E6D61726B65722E736574506F736974696F6E286E29293A652E6D61726B65723D6E657720676F6F676C652E6D6170732E';
wwv_flow_api.g_varchar2_table(10) := '4D61726B6572287B6D61703A652E6D61702C706F736974696F6E3A6E2C69636F6E3A652E69636F6E7D297D7D656C736520652E6D61726B6572262628617065782E646562756728652E726567696F6E49642B222072656D6F7665206D61726B657222292C';
wwv_flow_api.g_varchar2_table(11) := '652E6D61726B65722E7365744D6170286E756C6C29297D2C676574416464726573733A66756E6374696F6E28652C6F2C61297B617065782E6465627567282273696D706C656D61702E6765744164647265737322293B76617220743D7B6C61743A6F2C6C';
wwv_flow_api.g_varchar2_table(12) := '6E673A617D3B652E67656F636F6465722E67656F636F6465287B6C6F636174696F6E3A747D2C66756E6374696F6E286F2C61297B696628613D3D3D676F6F676C652E6D6170732E47656F636F6465725374617475732E4F4B297B666F7228693D303B693C';
wwv_flow_api.g_varchar2_table(13) := '6F2E6C656E6774683B692B2B29617065782E646562756728652E726567696F6E49642B2220726573756C745B222B692B225D3D222B6F5B695D2E666F726D61747465645F616464726573732B222028222B6F5B695D2E74797065732E6A6F696E28292B22';
wwv_flow_api.g_varchar2_table(14) := '2922293B6F5B315D3F247328652E616464726573734974656D2C6F5B305D2E666F726D61747465645F61646472657373293A77696E646F772E616C6572742822496E73756666696369656E7420726573756C747320666F756E6422297D656C736520613D';
wwv_flow_api.g_varchar2_table(15) := '3D3D676F6F676C652E6D6170732E47656F636F6465725374617475732E5A45524F5F524553554C54533F77696E646F772E616C65727428224E6F20726573756C747320666F756E6422293A77696E646F772E616C657274282247656F636F646572206661';
wwv_flow_api.g_varchar2_table(16) := '696C65642064756520746F3A20222B61297D297D2C696E69743A66756E6374696F6E2865297B617065782E6465627567282273696D706C656D61702E696E697422293B766172206F3D7B7A6F6F6D3A652E696E69745A6F6F6D2C63656E7465723A6E6577';
wwv_flow_api.g_varchar2_table(17) := '20676F6F676C652E6D6170732E4C61744C6E6728652E696E69744C61742C652E696E69744C6E67292C6D61705479706549643A676F6F676C652E6D6170732E4D61705479706549642E524F41444D41507D3B696628652E6D61703D6E657720676F6F676C';
wwv_flow_api.g_varchar2_table(18) := '652E6D6170732E4D617028646F63756D656E742E676574456C656D656E744279496428652E636F6E7461696E6572292C6F292C652E6D61707374796C652626652E6D61702E7365744F7074696F6E73287B7374796C65733A652E6D61707374796C657D29';
wwv_flow_api.g_varchar2_table(19) := '2C652E726561646F6E6C792626652E6D61702E7365744F7074696F6E73287B64697361626C6544656661756C7455493A21302C647261676761626C653A21312C7A6F6F6D436F6E74726F6C3A21312C7363726F6C6C776865656C3A21312C64697361626C';
wwv_flow_api.g_varchar2_table(20) := '65446F75626C65436C69636B5A6F6F6D3A21307D292C2222213D3D652E73796E634974656D297B76617220613D247628652E73796E634974656D293B6966286E756C6C213D3D612626612E696E6465784F6628222C22293E2D31297B76617220743D612E';
wwv_flow_api.g_varchar2_table(21) := '73706C697428222C22293B73696D706C656D61702E7365744D61726B657228652C745B305D2C745B315D297D24282223222B652E73796E634974656D292E6368616E67652866756E6374696F6E28297B766172206F3D746869732E76616C75653B696628';
wwv_flow_api.g_varchar2_table(22) := '6E756C6C213D3D6F2626766F69642030213D3D6F26266F2E696E6465784F6628222C22293E2D31297B76617220613D6F2E73706C697428222C22293B73696D706C656D61702E7365744D61726B657228652C615B305D2C615B315D297D7D297D69662822';
wwv_flow_api.g_varchar2_table(23) := '22213D3D652E616464726573734974656D262628652E67656F636F6465723D6E657720676F6F676C652E6D6170732E47656F636F646572292C652E726561646F6E6C797C7C676F6F676C652E6D6170732E6576656E742E6164644C697374656E65722865';
wwv_flow_api.g_varchar2_table(24) := '2E6D61702C22636C69636B222C66756E6374696F6E286F297B76617220613D6F2E6C61744C6E672E6C617428292C743D6F2E6C61744C6E672E6C6E6728293B73696D706C656D61702E7365744D61726B657228652C612C74292C2222213D3D652E73796E';
wwv_flow_api.g_varchar2_table(25) := '634974656D2626247328652E73796E634974656D2C612B222C222B74292C2222213D3D652E616464726573734974656D262673696D706C656D61702E6765744164647265737328652C612C74292C617065782E6A5175657279282223222B652E72656769';
wwv_flow_api.g_varchar2_table(26) := '6F6E4964292E7472696767657228226D6170636C69636B222C7B6D61703A652E6D61702C6C61743A612C6C6E673A747D297D292C2222213D652E67656F636F64654974656D297B766172206E3D6E657720676F6F676C652E6D6170732E47656F636F6465';
wwv_flow_api.g_varchar2_table(27) := '723B24282223222B652E67656F636F64654974656D292E6368616E67652866756E6374696F6E28297B73696D706C656D61702E67656F636F646528652C6E297D297D652E67656F6C6F636174652626286E6176696761746F722E67656F6C6F636174696F';
wwv_flow_api.g_varchar2_table(28) := '6E3F28617065782E646562756728652E726567696F6E49642B222067656F6C6F6361746522292C6E6176696761746F722E67656F6C6F636174696F6E2E67657443757272656E74506F736974696F6E2866756E6374696F6E286F297B76617220613D7B6C';
wwv_flow_api.g_varchar2_table(29) := '61743A6F2E636F6F7264732E6C617469747564652C6C6E673A6F2E636F6F7264732E6C6F6E6769747564657D3B652E6D61702E70616E546F2861292C652E67656F6C6F636174655A6F6F6D2626652E6D61702E7365745A6F6F6D28652E67656F6C6F6361';
wwv_flow_api.g_varchar2_table(30) := '74655A6F6F6D292C617065782E6A5175657279282223222B652E726567696F6E4964292E74726967676572282267656F6C6F63617465222C7B6D61703A652E6D61702C6C61743A612E6C61742C6C6E673A612E6C6E677D297D29293A617065782E646562';
wwv_flow_api.g_varchar2_table(31) := '756728652E726567696F6E49642B222062726F7773657220646F6573206E6F7420737570706F72742067656F6C6F636174696F6E2229292C617065782E6A5175657279282223222B652E726567696F6E4964292E7472696767657228226D61706C6F6164';
wwv_flow_api.g_varchar2_table(32) := '6564222C7B6D61703A652E6D61707D297D7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(1101187012974087519)
,p_plugin_id=>wwv_flow_api.id(1468871577665106855)
,p_file_name=>'simplemap.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(886631353612332672)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(886589182023332533)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(886623595922332636)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(886631286435332672)
,p_nav_bar_list_template_id=>wwv_flow_api.id(886623449326332633)
,p_nav_bar_template_options=>'#DEFAULT#'
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
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513165351'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1017063341927744148)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(890589888629900873)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1017063430266744149)
,p_plug_name=>'Forms'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--horizontal'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(1018416386218835297)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1017063593323744150)
,p_plug_name=>'Happy Holiday Booking System'
,p_icon_css_classes=>'fa-database'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(886603735329332572)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Track and Manage Pitches,Caravans,Owners </p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'MultiCaravan Owners'
,p_page_mode=>'NORMAL'
,p_step_title=>'MultiCaravan Owners'
,p_step_sub_title=>'Multi-caravan Owners'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513194408'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(887456942663533206)
,p_name=>'Multi-Caravan Owners'
,p_template=>wwv_flow_api.id(886605394926332583)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT o.owner_name  ,COUNT(co.caravan_no) ,TRUNC(SUM(c.annual_rent/12),1) ',
'FROM owner o , caravan_owner co,caravan c',
'WHERE  o.owner_id=co.owner_id AND c.caravan_id=co.caravan_no',
'GROUP BY o.owner_name',
'HAVING COUNT(co.caravan_no)>=2'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(886614144961332608)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887457615952533207)
,p_query_column_id=>1
,p_column_alias=>'OWNER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Owner Name'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887458021297533207)
,p_query_column_id=>2
,p_column_alias=>'COUNT(CO.CARAVAN_NO)'
,p_column_display_sequence=>2
,p_column_heading=>'Number of Caravans'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887458402831533207)
,p_query_column_id=>3
,p_column_alias=>'TRUNC(SUM(C.ANNUAL_RENT/12),1)'
,p_column_display_sequence=>3
,p_column_heading=>'Rent PCM'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Max Berth''s Caravan by Park'
,p_page_mode=>'NORMAL'
,p_step_title=>'Max Berth''s Caravan by Park'
,p_step_sub_title=>'Max Beth''s Caravan by Park'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513195608'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(887752494756607814)
,p_name=>'Max Berth''s Caravan by Park'
,p_template=>wwv_flow_api.id(886605394926332583)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT c.caravan_park_id ,c.caravan_id ,c.RParty_size_max,c.rental_caravan, o.owner_name',
'FROM caravan c,owner o ,caravan_owner co',
'WHERE o.owner_id(+)=co.owner_id AND c.caravan_id=co.caravan_no ',
'     AND (c.RParty_size_max,c.caravan_park_id) IN',
'		(SELECT MAX(c.RParty_size_max),c.caravan_park_id',
'		FROM caravan c',
'		GROUP BY c.caravan_park_id)'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(886614144961332608)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887753183122607814)
,p_query_column_id=>1
,p_column_alias=>'CARAVAN_PARK_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Park ID'
,p_use_as_row_header=>'N'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887753513407607815)
,p_query_column_id=>2
,p_column_alias=>'CARAVAN_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Caravan ID'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017063256933744147)
,p_query_column_id=>3
,p_column_alias=>'RPARTY_SIZE_MAX'
,p_column_display_sequence=>4
,p_column_heading=>'Berths'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887754337035607815)
,p_query_column_id=>4
,p_column_alias=>'RENTAL_CARAVAN'
,p_column_display_sequence=>3
,p_column_heading=>'Rental Caravan'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887754707983607815)
,p_query_column_id=>5
,p_column_alias=>'OWNER_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Owner Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Pitch Description '
,p_page_mode=>'NORMAL'
,p_step_title=>'Pitch Description '
,p_step_sub_title=>'Pitch Description '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513163709'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(887833928034679656)
,p_name=>'Pitch Description '
,p_template=>wwv_flow_api.id(886605394926332583)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CP_NUMBER ,',
'       CARAVAN_NO,',
'       RENTAL_CARAVAN,',
'       RBEDROOM_NO,',
'       RPARTY_SIZE_MAX,',
'       OWNER_NAME',
'  from CAR_DESC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(886614144961332608)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887835007813679657)
,p_query_column_id=>1
,p_column_alias=>'CP_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Pitch Number'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017062865067744143)
,p_query_column_id=>2
,p_column_alias=>'CARAVAN_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Caravan ID'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887835892112679658)
,p_query_column_id=>3
,p_column_alias=>'RENTAL_CARAVAN'
,p_column_display_sequence=>3
,p_column_heading=>'Rental Caravan'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887836222387679658)
,p_query_column_id=>4
,p_column_alias=>'RBEDROOM_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Beds'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887836631340679658)
,p_query_column_id=>5
,p_column_alias=>'RPARTY_SIZE_MAX'
,p_column_display_sequence=>5
,p_column_heading=>'Berths'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(887837066549679658)
,p_query_column_id=>6
,p_column_alias=>'OWNER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Owner Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Caravans by Owner'
,p_page_mode=>'NORMAL'
,p_step_title=>'Caravans by Owner'
,p_step_sub_title=>'Caravans by Owner'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513152922'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(947325978152775018)
,p_plug_name=>'Caravans by Owner'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(947326327563775018)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Caravans by Owner'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_947326327563775018'
,p_chart_width=>700
,p_chart_height=>500
,p_display_attr=>':H:N:V:X::N:::Y:None:::N:::Default:::S'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME:Y:Y:::::Y:N'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_label_font=>'Tahoma:10:#000000'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(947326792582775020)
,p_chart_id=>wwv_flow_api.id(947326327563775018)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null link, OWNER_NAME label, COUNT(CARAVAN_NO) value1',
'from  "C7172336"."CAR_DESC"',
' group by OWNER_NAME'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Owners of Caravans at Diff. Parks '
,p_page_mode=>'NORMAL'
,p_step_title=>'Owners of Caravans at Different Parks '
,p_step_sub_title=>'Owners of Caravans at Diff. Parks '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513194942'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(889971482050873403)
,p_name=>'Owners of Caravans at Diff. Parks '
,p_template=>wwv_flow_api.id(886605394926332583)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT DISTINCT(o.owner_name),o.owner_address,o.notes',
'FROM caravan_owner co,owner o,caravan c',
'WHERE o.owner_id=co.owner_id AND c.caravan_id=co.caravan_no ',
'      AND  co.owner_id in (',
'		SELECT co.owner_id',
'		FROM caravan c,caravan_owner co,owner o',
'		WHERE c.caravan_id=co.caravan_no AND o.owner_id=co.owner_id',
'		GROUP BY co.owner_id',
'		HAVING COUNT(DISTINCT c.caravan_park_id)>=2 )'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(886614144961332608)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(889972166490873404)
,p_query_column_id=>1
,p_column_alias=>'OWNER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Owner Name'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017062960099744144)
,p_query_column_id=>2
,p_column_alias=>'OWNER_ADDRESS'
,p_column_display_sequence=>2
,p_column_heading=>'Address'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017063078908744145)
,p_query_column_id=>3
,p_column_alias=>'NOTES'
,p_column_display_sequence=>3
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Pitch Description '
,p_page_mode=>'NORMAL'
,p_step_title=>'Pitch Description '
,p_step_sub_title=>'Pitch Description '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160509154011'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(890773550337909884)
,p_name=>'Pitch Description '
,p_template=>wwv_flow_api.id(886605394926332583)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CPPITCH_ID,',
'       CP_NUMBER,',
'       CARAVAN_ID,',
'       RENTAL_CARAVAN,',
'       RBEDROOM_NO,',
'       RPARTY_SIZE_MAX,',
'       OWNER_NAME',
'  from CAR_DESC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(886614144961332608)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(890774286804909884)
,p_query_column_id=>1
,p_column_alias=>'CPPITCH_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Cppitch Id'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(890774612337909885)
,p_query_column_id=>2
,p_column_alias=>'CP_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Cp Number'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(890775014339909885)
,p_query_column_id=>3
,p_column_alias=>'CARAVAN_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Caravan Id'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(890775442590909885)
,p_query_column_id=>4
,p_column_alias=>'RENTAL_CARAVAN'
,p_column_display_sequence=>4
,p_column_heading=>'Rental Caravan'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(890775878642909885)
,p_query_column_id=>5
,p_column_alias=>'RBEDROOM_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Rbedroom No'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(890776264044909885)
,p_query_column_id=>6
,p_column_alias=>'RPARTY_SIZE_MAX'
,p_column_display_sequence=>6
,p_column_heading=>'Rparty Size Max'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(890776684167909886)
,p_query_column_id=>7
,p_column_alias=>'OWNER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Owner Name'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Reports'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reports'
,p_step_sub_title=>'Reports'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160509154540'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(891213239176929321)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(890589888629900873)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(886621991885332625)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Owners'
,p_page_mode=>'NORMAL'
,p_step_title=>'Owners'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513182757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1018469921979991058)
,p_plug_name=>'Owners'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(886604868451332578)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "CARAVAN_ID", ',
'"RENTAL_CARAVAN",',
'"ANNUAL_RENT",',
'"CARAVAN_DESCRIPTION",',
'"RBEDROOM_NO",',
'"RPARTY_SIZE_MAX",',
'"CARAVAN_CAT_ID",',
'"CARAVAN_PARK_ID",',
'"CARAVAN_PITCH_ID"',
'from "#OWNER#"."CARAVAN" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1018476310749007010)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'C7172336'
,p_internal_uid=>1018476310749007010
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018476495693007011)
,p_db_column_name=>'CARAVAN_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Caravan ID'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:P17_CARAVAN_ID:#CARAVAN_ID#'
,p_column_linktext=>'#CARAVAN_ID#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018476513045007012)
,p_db_column_name=>'RENTAL_CARAVAN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Rental caravan'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018476660823007013)
,p_db_column_name=>'ANNUAL_RENT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Annual rent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018476715699007014)
,p_db_column_name=>'CARAVAN_DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018476826279007015)
,p_db_column_name=>'RBEDROOM_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Beds'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018476961440007016)
,p_db_column_name=>'RPARTY_SIZE_MAX'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Berths'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018477029744007017)
,p_db_column_name=>'CARAVAN_CAT_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'CategoryID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018477107029007018)
,p_db_column_name=>'CARAVAN_PARK_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'ParkID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1018477299625007019)
,p_db_column_name=>'CARAVAN_PITCH_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'PitchID'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP:P21_CPPITCH_ID:#CARAVAN_PITCH_ID#'
,p_column_linktext=>'#CARAVAN_PITCH_ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1018493321948011844)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10184934'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'CARAVAN_ID:RENTAL_CARAVAN:ANNUAL_RENT:CARAVAN_DESCRIPTION:RBEDROOM_NO:RPARTY_SIZE_MAX:CARAVAN_CAT_ID:CARAVAN_PARK_ID:CARAVAN_PITCH_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1018474092605991062)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1018469921979991058)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Form on CARAVAN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on CARAVAN'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513203454'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1018461489399991004)
,p_plug_name=>'Create CARAVAN'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1018477402160007021)
,p_plug_name=>'First select ParkID and PitchID'
,p_icon_css_classes=>'fa-align-justify'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(886603735329332572)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1018461966345991004)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P17_CARAVAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1018462162068991004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1018461876916991004)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P17_CARAVAN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1018462099641991004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_CARAVAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1018463728146991005)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018464159621991052)
,p_name=>'P17_CARAVAN_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_source=>'CARAVAN_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018464484629991053)
,p_name=>'P17_RENTAL_CARAVAN'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rental Caravan'
,p_source=>'RENTAL_CARAVAN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_field_template=>wwv_flow_api.id(886625859414332654)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018464850971991053)
,p_name=>'P17_ANNUAL_RENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Annual Rent'
,p_source=>'ANNUAL_RENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018465293223991053)
,p_name=>'P17_CARAVAN_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'CARAVAN_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018465668173991053)
,p_name=>'P17_RBEDROOM_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Beds'
,p_source=>'RBEDROOM_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Currently available Beths options :<br>',
'For 1 bed - max 2 beth<br>',
'For 2 bed - max 4 beth<br>',
'For 3 bed - max 6 beth'))
,p_attribute_01=>'1'
,p_attribute_02=>'3'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018466066031991053)
,p_name=>'P17_RPARTY_SIZE_MAX'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Berths'
,p_source=>'RPARTY_SIZE_MAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625859414332654)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Currently available Beths options :<br>',
'For 1 bed - max 2 beth<br>',
'For 2 bed - max 4 beth<br>',
'For 3 bed - max 6 beth'))
,p_attribute_01=>'1'
,p_attribute_02=>'6'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018466442229991054)
,p_name=>'P17_CARAVAN_CAT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category ID'
,p_source=>'CARAVAN_CAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>'.'||wwv_flow_api.id(913046018585448206)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018466890730991054)
,p_name=>'P17_CARAVAN_PARK_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Park ID'
,p_source=>'CARAVAN_PARK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARAVANS_PARKS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct caravan_park_id first, caravan_park_id ',
'from caravan_pitch'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1018467254429991054)
,p_name=>'P17_CARAVAN_PITCH_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1018461489399991004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Caravan Pitch Id'
,p_source=>'CARAVAN_PITCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARAVANS_PITCH'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select cp_number,cppitch_id ',
'from caravan_pitch',
'where caravan_park_id= :p17_caravan_park_id'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1018468098761991054)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CARAVAN'
,p_attribute_02=>'CARAVAN'
,p_attribute_03=>'P17_CARAVAN_ID'
,p_attribute_04=>'CARAVAN_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1018468451011991055)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P17_CARAVAN_ID is null then',
'        select "#OWNER#"."CARAVAN_APP_SEQ1".nextval',
'          into :P17_CARAVAN_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1018461876916991004)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1018468828413991055)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CARAVAN'
,p_attribute_02=>'CARAVAN'
,p_attribute_03=>'P17_CARAVAN_ID'
,p_attribute_04=>'CARAVAN_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1018469206594991055)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1018462099641991004)
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Create CARAVAN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create CARAVAN'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513202440'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(938855451104814306)
,p_plug_name=>'Create CARAVAN'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(938855972205814306)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(938855451104814306)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P19_CARAVAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(938856194016814306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(938855451104814306)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(938855848317814306)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(938855451104814306)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P19_CARAVAN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(938856055277814306)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(938855451104814306)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_CARAVAN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(938857798093814307)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938858182550814308)
,p_name=>'P19_CARAVAN_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Caravan Id'
,p_source=>'CARAVAN_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938858563091814308)
,p_name=>'P19_RENTAL_CARAVAN'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rental Caravan'
,p_source=>'RENTAL_CARAVAN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>5
,p_field_template=>wwv_flow_api.id(886625859414332654)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Happy Holiday''s caravans - "YES"<br>',
'Private - "NO"'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938858983337814308)
,p_name=>'P19_ANNUAL_RENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Annual Rent'
,p_source=>'ANNUAL_RENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938859369290814308)
,p_name=>'P19_CARAVAN_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'CARAVAN_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938859792944814309)
,p_name=>'P19_RBEDROOM_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rbedroom No'
,p_source=>'RBEDROOM_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Currently available Beths options :<br>',
'For 1 bed - max 2 beth<br>',
'For 2 bed - max 4 beth<br>',
'For 3 bed - max 6 beth'))
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938860159328814309)
,p_name=>'P19_RPARTY_SIZE_MAX'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rparty Size Max'
,p_source=>'RPARTY_SIZE_MAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625859414332654)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Currently available Beths options :<br>',
'For 1 bed - max 2 beth<br>',
'For 2 bed - max 4 beth<br>',
'For 3 bed - max 6 beth'))
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938860595786814309)
,p_name=>'P19_CARAVAN_CAT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category ID'
,p_source=>'CARAVAN_CAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>'.'||wwv_flow_api.id(913046018585448206)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938860934107814309)
,p_name=>'P19_CARAVAN_PARK_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Caravan Park Id'
,p_source=>'CARAVAN_PARK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARAVANS_PARKS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct caravan_park_id first, caravan_park_id ',
'from caravan_pitch'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(938861369006814309)
,p_name=>'P19_CARAVAN_PITCH_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(938855451104814306)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Caravan Pitch Id'
,p_source=>'CARAVAN_PITCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARAVANS_PITCH'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select cp_number,cppitch_id ',
'from caravan_pitch',
'where caravan_park_id= :p17_caravan_park_id'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(938862101454814310)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CARAVAN'
,p_attribute_02=>'CARAVAN'
,p_attribute_03=>'P19_CARAVAN_ID'
,p_attribute_04=>'CARAVAN_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(938862526931814310)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P19_CARAVAN_ID is null then',
'        select "#OWNER#"."CARAVAN_APP_SEQ1".nextval',
'          into :P19_CARAVAN_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(938855848317814306)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(938862970405814310)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CARAVAN'
,p_attribute_02=>'CARAVAN'
,p_attribute_03=>'P19_CARAVAN_ID'
,p_attribute_04=>'CARAVAN_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(938863386852814310)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(938856055277814306)
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Pitches'
,p_page_mode=>'NORMAL'
,p_step_title=>'Pitches'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160510132113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(946150651982622917)
,p_plug_name=>'Pitches'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(886604868451332578)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "CPPITCH_ID", ',
'"CP_NUMBER",',
'"PITCH_DESCRIPTION",',
'"PITCH_LENGTH",',
'"PITCH_WIDTH",',
'"CARAVAN_PARK_ID"',
'from "#OWNER#"."CARAVAN_PITCH" ',
'order by cp_number  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(914946469488125744)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'C7172336'
,p_internal_uid=>914946469488125744
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(914946538707125745)
,p_db_column_name=>'CPPITCH_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cppitch id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(914946630784125746)
,p_db_column_name=>'CP_NUMBER'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pitch #'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP:P21_CPPITCH_ID:#CPPITCH_ID#'
,p_column_linktext=>'#CP_NUMBER#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(914946724773125747)
,p_db_column_name=>'PITCH_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(914946866082125748)
,p_db_column_name=>'PITCH_LENGTH'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(914946942301125749)
,p_db_column_name=>'PITCH_WIDTH'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Width'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(914947073592125750)
,p_db_column_name=>'CARAVAN_PARK_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'ParkID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(946662270508645027)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9466623'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'CPPITCH_ID:CP_NUMBER:PITCH_DESCRIPTION:PITCH_LENGTH:PITCH_WIDTH:CARAVAN_PARK_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(946153560196622920)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(946150651982622917)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Form on CARAVAN_PITCH'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on CARAVAN_PITCH'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513215451'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(946143293702622894)
,p_plug_name=>'Form on CARAVAN_PITCH'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(946143744413622894)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(946143293702622894)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P21_CPPITCH_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(946143936316622894)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(946143293702622894)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(946143601435622894)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(946143293702622894)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P21_CPPITCH_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(946143849081622894)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(946143293702622894)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_CPPITCH_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(946145529960622895)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(946145922940622896)
,p_name=>'P21_CPPITCH_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(946143293702622894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cppitch Id'
,p_source=>'CPPITCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(946146319146622896)
,p_name=>'P21_CP_NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(946143293702622894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CP Number'
,p_source=>'CP_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625859414332654)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Must be UNIQUE'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(946146715792622897)
,p_name=>'P21_PITCH_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(946143293702622894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'PITCH_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(946147155040622897)
,p_name=>'P21_PITCH_LENGTH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(946143293702622894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Length (m)'
,p_source=>'PITCH_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Max 15(m)'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(946147557584622897)
,p_name=>'P21_PITCH_WIDTH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(946143293702622894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Width (m)'
,p_source=>'PITCH_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Max 15(m)'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(946147986559622897)
,p_name=>'P21_CARAVAN_PARK_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(946143293702622894)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Park ID'
,p_source=>'CARAVAN_PARK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATIC_PARKS'
,p_lov=>'.'||wwv_flow_api.id(914723316803959573)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(914945515514125735)
,p_name=>'Check_for_length'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_PITCH_LENGTH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(914945659371125736)
,p_event_id=>wwv_flow_api.id(914945515514125735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_PITCH_WIDTH'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(914945712626125737)
,p_event_id=>wwv_flow_api.id(914945515514125735)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_PITCH_WIDTH'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(946148791733622898)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CARAVAN_PITCH'
,p_attribute_02=>'CARAVAN_PITCH'
,p_attribute_03=>'P21_CPPITCH_ID'
,p_attribute_04=>'CPPITCH_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(946149117836622898)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P21_CPPITCH_ID is null then',
'        select "#OWNER#"."PITCH_APP_SEQ1".nextval',
'          into :P21_CPPITCH_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(946143601435622894)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(946149595342622898)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CARAVAN_PITCH'
,p_attribute_02=>'CARAVAN_PITCH'
,p_attribute_03=>'P21_CPPITCH_ID'
,p_attribute_04=>'CPPITCH_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(946149981957622898)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(946143849081622894)
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Create CARAVAN_PITCH'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on CARAVAN_PITCH'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513171758'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(943899655749115544)
,p_plug_name=>'Create CARAVAN_PITCH'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(943900192884115544)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(943899655749115544)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P23_CPPITCH_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(943900348511115544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(943899655749115544)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(943900026108115544)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(943899655749115544)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P23_CPPITCH_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(943900291698115544)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(943899655749115544)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P23_CPPITCH_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(943901928441115545)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(943902348768115545)
,p_name=>'P23_CPPITCH_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(943899655749115544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cppitch Id'
,p_source=>'CPPITCH_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(943902713718115546)
,p_name=>'P23_CP_NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(943899655749115544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CP Number'
,p_source=>'CP_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625859414332654)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Must be UNIQUE'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(943903160713115546)
,p_name=>'P23_PITCH_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(943899655749115544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'PITCH_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(943903574992115546)
,p_name=>'P23_PITCH_LENGTH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(943899655749115544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Length (m)'
,p_source=>'PITCH_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Max 15m'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(943903980911115546)
,p_name=>'P23_PITCH_WIDTH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(943899655749115544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Width (m)'
,p_source=>'PITCH_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Max 15m'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(943904310603115546)
,p_name=>'P23_CARAVAN_PARK_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(943899655749115544)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Park ID'
,p_source=>'CARAVAN_PARK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STATIC_PARKS'
,p_lov=>'.'||wwv_flow_api.id(914723316803959573)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(813012990145013038)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_PITCH_LENGTH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(813013006294013039)
,p_event_id=>wwv_flow_api.id(813012990145013038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_PITCH_WIDTH'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(813013123811013040)
,p_event_id=>wwv_flow_api.id(813012990145013038)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_PITCH_WIDTH'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(943905175294115547)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CARAVAN_PITCH'
,p_attribute_02=>'CARAVAN_PITCH'
,p_attribute_03=>'P23_CPPITCH_ID'
,p_attribute_04=>'CPPITCH_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(943905559022115547)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P23_CPPITCH_ID is null then',
'        select "#OWNER#"."PITCH_APP_SEQ1".nextval',
'          into :P23_CPPITCH_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(943900026108115544)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(943905964618115547)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CARAVAN_PITCH'
,p_attribute_02=>'CARAVAN_PITCH'
,p_attribute_03=>'P23_CPPITCH_ID'
,p_attribute_04=>'CPPITCH_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(943906385121115547)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(943900291698115544)
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'OWNER'
,p_page_mode=>'NORMAL'
,p_step_title=>'OWNER'
,p_step_sub_title=>'OWNER'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513225837'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1017062391650744138)
,p_plug_name=>'Owners Map'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select lat as lat, lng as lng, owner_name as name, owner_id as id, owner_name  as info ',
'from owner',
'where lat is not null and lng is not null'))
,p_plug_source_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'400'
,p_attribute_03=>'13'
,p_attribute_08=>'N'
,p_attribute_13=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1017279243902804088)
,p_name=>'OWNER'
,p_template=>wwv_flow_api.id(886605394926332583)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select OWNER_ID,',
'       OWNER_NAME,',
'       OWNER_ADDRESS,',
'       LAT,',
'       LNG,',
'       NOTES',
'  from OWNER',
'order by owner_id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(886614144961332608)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017280389813804104)
,p_query_column_id=>1
,p_column_alias=>'OWNER_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017280772316804104)
,p_query_column_id=>2
,p_column_alias=>'OWNER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Owner Name'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP:P30_OWNER_ID:#OWNER_ID#'
,p_column_linktext=>'#OWNER_NAME#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017281145225804104)
,p_query_column_id=>3
,p_column_alias=>'OWNER_ADDRESS'
,p_column_display_sequence=>3
,p_column_heading=>'Owner Address'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017281522254804105)
,p_query_column_id=>4
,p_column_alias=>'LAT'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017281916321804105)
,p_query_column_id=>5
,p_column_alias=>'LNG'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017282302346804105)
,p_query_column_id=>6
,p_column_alias=>'NOTES'
,p_column_display_sequence=>6
,p_column_heading=>'Notes'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017284889945804106)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1017279243902804088)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(1017285367889804107)
,p_computation_sequence=>1
,p_computation_item=>'P30_OWNER_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Master Detail Owner'
,p_page_mode=>'NORMAL'
,p_step_title=>'Master Detail'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513231313'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1017279306264804088)
,p_name=>'CARAVAN_OWNER Detail'
,p_template=>wwv_flow_api.id(886605394926332583)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CARAVAN_NO,',
'       OWNER_ID',
'  from CARAVAN_OWNER',
' where CARAVAN_OWNER.OWNER_ID = :P30_OWNER_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P30_OWNER_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P30_OWNER_ID'
,p_query_row_template=>wwv_flow_api.id(886614144961332608)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017299409722804131)
,p_query_column_id=>1
,p_column_alias=>'CARAVAN_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Caravan No'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017299819690804131)
,p_query_column_id=>2
,p_column_alias=>'OWNER_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1017062135052744136)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>3
,p_column_heading=>'View Caravan'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:P17_CARAVAN_ID:#CARAVAN_NO#'
,p_column_linktext=>'Click here'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1017286035246804107)
,p_plug_name=>'Edit OWNER'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017286580288804107)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P30_OWNER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017293143327804126)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_button_name=>'GET_PREVIOUS_OWNER_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626004109332660)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_OWNER_ID'')'
,p_button_condition=>'P30_OWNER_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017293039993804126)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_button_name=>'GET_NEXT_OWNER_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626004109332660)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_OWNER_ID'')'
,p_button_condition=>'P30_OWNER_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017286717949804107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017301497159804132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1017279306264804088)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31:P31_OWNER_ID:&P30_OWNER_ID.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017286471319804107)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P30_OWNER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017286655333804107)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P30_OWNER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1017288316189804108)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1017297531758804129)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_OWNER_ID:&P30_OWNER_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1017293039993804126)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1017297907685804129)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_OWNER_ID:&P30_OWNER_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1017293143327804126)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017288768744804109)
,p_name=>'P30_OWNER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Owner Id'
,p_source=>'OWNER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017289107943804124)
,p_name=>'P30_OWNER_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Owner Name'
,p_source=>'OWNER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625859414332654)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017289529282804125)
,p_name=>'P30_OWNER_ADDRESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Owner Address'
,p_source=>'OWNER_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017289998166804125)
,p_name=>'P30_LAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Latitude '
,p_source=>'LAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To Find Latitude and Longtitude  <a href="http://www.latlong.net">click here</a>'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017290343817804125)
,p_name=>'P30_LNG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Longtitude'
,p_source=>'LNG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'To Find Latitude and Longtitude  <a href="http://www.latlong.net">click here</a>'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017290743158804125)
,p_name=>'P30_NOTES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017295305551804127)
,p_name=>'P30_OWNER_ID_NEXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_prompt=>'P30_OWNER_ID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017295792266804128)
,p_name=>'P30_OWNER_ID_PREV'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_prompt=>'P30_OWNER_ID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017296108362804128)
,p_name=>'P30_OWNER_ID_COUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1017286035246804107)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(1017301948126804132)
,p_computation_sequence=>1
,p_computation_item=>'P31_CARAVAN_NO'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1017062663162744141)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P30_OWNER_NAME'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>'Name must contain only alphanumeric values!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1017289107943804124)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1017062793793744142)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P30_OWNER_ADDRESS'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>'Address must contain only alphanumeric values!'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(1017289529282804125)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1017061664436744131)
,p_name=>'Check_for_address'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_OWNER_ADDRESS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1017061746402744132)
,p_event_id=>wwv_flow_api.id(1017061664436744131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_LAT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1017061927688744134)
,p_event_id=>wwv_flow_api.id(1017061664436744131)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_LAT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1017061882647744133)
,p_event_id=>wwv_flow_api.id(1017061664436744131)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_LNG'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1017062042189744135)
,p_event_id=>wwv_flow_api.id(1017061664436744131)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_LNG'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017291555937804126)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from OWNER'
,p_attribute_02=>'OWNER'
,p_attribute_03=>'P30_OWNER_ID'
,p_attribute_04=>'OWNER_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017297116542804129)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'OWNER'
,p_attribute_03=>'P30_OWNER_ID'
,p_attribute_04=>'OWNER_ID'
,p_attribute_07=>'OWNER_ID'
,p_attribute_09=>'P30_OWNER_ID_NEXT'
,p_attribute_10=>'P30_OWNER_ID_PREV'
,p_attribute_13=>'P30_OWNER_ID_COUNT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017291956558804126)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P30_OWNER_ID is null then',
'        select "#OWNER#"."OWNER_APP_SEQ1".nextval',
'          into :P30_OWNER_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1017286471319804107)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017292318528804126)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of OWNER'
,p_attribute_02=>'OWNER'
,p_attribute_03=>'P30_OWNER_ID'
,p_attribute_04=>'OWNER_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017292719660804126)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1017286655333804107)
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'CARAVAN_OWNER'
,p_page_mode=>'NORMAL'
,p_step_title=>'CARAVAN_OWNER'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'C7172336'
,p_last_upd_yyyymmddhh24miss=>'20160513142757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1017302652588804132)
,p_plug_name=>'Edit CARAVAN_OWNER'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017303198692804133)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1017302652588804132)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P31_CARAVAN_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017062299673744137)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1017302652588804132)
,p_button_name=>'AddCaravan'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Add Caravan'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017303388370804133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1017302652588804132)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017303059630804133)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1017302652588804132)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_CARAVAN_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1017303291764804133)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1017302652588804132)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P31_CARAVAN_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1017304955889804133)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017305372361804134)
,p_name=>'P31_CARAVAN_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1017302652588804132)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CaravanNo'
,p_source=>'CARAVAN_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FREE_CARAVANS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select caravan_id as hello,caravan_id',
'from caravan ',
'where caravan_id not in (select caravan_no from caravan_owner);'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select Free Caravans.<br> ',
'If there are <strong>NO</strong> Caravans to select, click button <strong >"ADD CARAVAN"</strong>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1017305750459804134)
,p_name=>'P31_OWNER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1017302652588804132)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Owner Id'
,p_source=>'OWNER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_cattributes_element=>'class="fielddatabold"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017306541273804135)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CARAVAN_OWNER'
,p_attribute_02=>'CARAVAN_OWNER'
,p_attribute_03=>'P31_CARAVAN_NO'
,p_attribute_04=>'CARAVAN_NO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017306937860804135)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'    if :P31_CARAVAN_NO is null then',
'        select "#OWNER#"."CARAVAN_OWNER_APP_SEQ1".nextval',
'          into :P31_CARAVAN_NO',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1017303059630804133)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017307328610804135)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CARAVAN_OWNER'
,p_attribute_02=>'CARAVAN_OWNER'
,p_attribute_03=>'P31_CARAVAN_NO'
,p_attribute_04=>'CARAVAN_NO'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1017307735773804135)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1017303291764804133)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(886631353612332672)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Happy Holiday - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(886591128479332538)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20160509140359'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(886631811650332672)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(886605394926332583)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(886632111144332673)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(886631811650332672)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(886626157883332662)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(886631997757332673)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(886631811650332672)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(886632027760332673)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(886631811650332672)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(886625615130332649)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(886632351368332673)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(886632219297332673)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(886632542222332673)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(886632434581332673)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(914135489014559015)
);
end;
/
prompt --application/deployment/install
begin
null;
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
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
