prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.05.24'
,p_release=>'18.2.0.00.12'
,p_default_workspace_id=>2241255089154129
,p_default_application_id=>1000
,p_default_owner=>'PPBAPPS'
);
end;
/
 
prompt APPLICATION 1000 - PSL
--
-- Application Export:
--   Application:     1000
--   Name:            PSL
--   Date and Time:   03:07 Wednesday July 28, 2021
--   Exported By:     RKATHERIA
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         18.2.0.00.12
--   Instance ID:     248265186665009
--

prompt --application/pages/delete_00020
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>20);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(2684762032679069)
,p_name=>'Manage Help HTML'
,p_step_title=>'Manage Help HTML'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'',
'    .utility-options {',
'    width: auto;',
'}',
'@media only screen and (max-device-width: 1024px) and (min-device-width: 481px) and (orientation: portrait){',
'     .Breadcrumb_vws #toggle { right: 63%;}',
'    div[id$=_DIV] div[id$=_SPAN] {width: 127px;} button#B24824277735144107 {  margin-top: 15px;}',
'    #menu .col.col-2.apex-col-auto div[id$=_DIV] c{  max-width: 110px;} ',
'    #menu .col.col-2.apex-col-auto div[id$=_DIV] ul[id$=_LIST]{   max-height: 209px;  max-width: 128px;}',
'    #menu .col.col-2.apex-col-auto div[id$=_DIV] {  width: 120px;} ',
'    .form_section fieldset {  padding: 20px 0 20px 60px;}',
'  }',
'    @media only screen and (max-device-width: 1024px) and (min-device-width: 481px) and (orientation: landscape){',
'        .Breadcrumb_vws #toggle {  right: 47% !important; } ',
'        .filter-container .search_form {width: 95%;  margin-left: auto;}',
'        .filter-container .form_section fieldset { padding: 21px 6px 9px 12px;}',
'  }',
'    ',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function arefresh_click(item_name){',
'    if(item_name==''P20_MODULE'')',
'    apex.event.trigger(''#P20_MODULE'',''select''); ',
'    if(item_name==''P20_REPORT'')',
'    apex.event.trigger(''#P20_REPORT'',''select'');',
'     if(item_name==''P20_PAGE_NUMBER'')',
'    apex.event.trigger(''#P20_PAGE_NUMBER'',''select'');',
'     if(item_name==''P20_PAGE_SECTION'')',
'    apex.event.trigger(''#P20_PAGE_SECTION'',''select'');',
'     if(item_name==''P20_TYPE'')',
'    apex.event.trigger(''#P20_TYPE'',''select'');    ',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''[headers="C001"]'').attr(''data-title'', ''Edit'');',
'$(''[headers="C001"]'').css(''position'',''relative'');',
'$(''#Test_Breadcrumb a'').attr(''data-title'', ''Parts & Service IQ Dashboard'');',
'$(''div#Test_Breadcrumb a:nth-child(1)'').attr({''href'':''f?p=2000:102:::::P102_USERNAME,P102_TARGET:&P0_USER_HASH_KEY.,AIQ_70'',''data-title'':''Parts & Service IQ Dashboard''});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#menu .col.col-2.apex-col-auto {margin-right: 30px;margin-bottom: 10px;}',
'#menu .col.col-2.apex-col-auto div[id$=_DIV] { width: 180px;}',
'#menu .col.col-2.apex-col-auto div[id$=_DIV] ul[id$=_LIST] {max-width: 180px;}',
'#menu .col.col-2.apex-col-auto div[id$=_DIV] c {max-width: 150px; text-overflow: ellipsis; overflow: hidden;}',
'.form_section fieldset {padding: 20px 15px 20px 15px;}',
'.utility-options i.fa-star, .utility-options .download-icons, #schedule_report{display: none;}',
'[data-title="Edit"]:hover:before {top: 10px !important;}',
'span#schedule_report {display: none;}',
'.utility-options span[data-title=Help]:hover:before {margin-left:3px;}',
'div#R6144135291438717 { width: 112px !important;}',
'.t-Report .t-Report-wrap .t-Report-tableWrap .t-Report-report thead th.t-Report-colHead {',
'    z-index: 1;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RKATHERIA'
,p_last_upd_yyyymmddhh24miss=>'20210728020745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24823682805144101)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(5850548915340053)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24823989154144104)
,p_plug_name=>'&nbsp;'
,p_region_name=>'buttonrgn'
,p_parent_plug_id=>wwv_flow_api.id(24823682805144101)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(5858405995442126)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(28815971326768901)
,p_name=>'&nbsp;'
,p_template=>wwv_flow_api.id(6187412796641714)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001,',
'  C002,',
'  C003,',
'  C004,',
'  C005,',
'  C006',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PPB_20_MANAGE_HELP_HTML''',
'ORDER BY C003'))
,p_display_when_condition=>':P20_TYPE = ''HTD'''
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(6168633617511811)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29015931101851609)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.:edit:&DEBUG.::P21_TYPE,P21_MODULE,P21_REPORT,P21_PAGE_NUMBER,P21_PAGE_SECTION,P21_MOD_ID,P21_HEADER_NAME:&P20_TYPE.,&P20_MODULE.,&P20_REPORT.,#C003#,#C005#,#C001#,EDIT'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29016007312851610)
,p_query_column_id=>2
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'Definition Type'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29016129161851611)
,p_query_column_id=>3
,p_column_alias=>'C003'
,p_column_display_sequence=>2
,p_column_heading=>'Page Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29016237417851612)
,p_query_column_id=>4
,p_column_alias=>'C004'
,p_column_display_sequence=>3
,p_column_heading=>'App Report Description'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29217284050899103)
,p_query_column_id=>5
,p_column_alias=>'C005'
,p_column_display_sequence=>4
,p_column_heading=>'Page Section/ Metric'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29444820169913907)
,p_query_column_id=>6
,p_column_alias=>'C006'
,p_column_display_sequence=>6
,p_column_heading=>'HTML Description'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(29217402533899105)
,p_name=>'&nbsp;'
,p_template=>wwv_flow_api.id(6187412796641714)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C001,',
'  C002,',
'  C003,',
'  C004,',
'  C005,',
'  C006',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''PPB_20_MANAGE_HELP_HTML''',
'ORDER BY C003'))
,p_display_when_condition=>':P20_TYPE = ''KPID'''
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(6168633617511811)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29217581316899106)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.:edit:&DEBUG.::P21_TYPE,P21_MODULE,P21_REPORT,P21_PAGE_NUMBER,P21_PAGE_SECTION,P21_MOD_ID,P21_HEADER_NAME,P0_FOCUS_BACK:&P20_TYPE.,&P20_MODULE.,&P20_REPORT.,#C003#,#C005#,#C001#,EDIT,20'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29217698971899107)
,p_query_column_id=>2
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'Definition Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29217776579899108)
,p_query_column_id=>3
,p_column_alias=>'C003'
,p_column_display_sequence=>2
,p_column_heading=>'Page Number'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29217894429899109)
,p_query_column_id=>4
,p_column_alias=>'C004'
,p_column_display_sequence=>3
,p_column_heading=>'App Report Description'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29217988037899110)
,p_query_column_id=>5
,p_column_alias=>'C005'
,p_column_display_sequence=>4
,p_column_heading=>'Page Section/ Metric'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29444923014913908)
,p_query_column_id=>6
,p_column_alias=>'C006'
,p_column_display_sequence=>6
,p_column_heading=>'KPI Definition'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24824006669144105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24823989154144104)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2662817149679057)
,p_button_image_alt=>'Filter'
,p_button_position=>'BOTTOM'
,p_button_css_classes=>'btn-primary'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24824179308144106)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24823989154144104)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2662817149679057)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_css_classes=>'btn-primary'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24824277735144107)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24823989154144104)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2662817149679057)
,p_button_image_alt=>'Reset'
,p_button_position=>'BOTTOM'
,p_button_css_classes=>'btn-secondary'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(29015664008851606)
,p_branch_name=>'SEARCH'
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.:SEARCH:&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24824006669144105)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(29015738104851607)
,p_branch_name=>'RESET'
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.:reset:&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24824277735144107)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(29552783252123202)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,21:P21_TYPE,P21_MODULE,P21_REPORT,P21_PAGE_NUMBER,P21_PAGE_SECTION,P21_HEADER_NAME:&P20_TYPE.,&P20_MODULE.,&P20_REPORT.,&P20_PAGE_NUMBER.,&P20_PAGE_SECTION.,CREATE&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24824179308144106)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24823754760144102)
,p_name=>'P20_UPDATED_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24823682805144101)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28986888989010401)
,p_name=>'P20_MODULE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24823989154144104)
,p_prompt=>'<small>Module</small>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'  CASE',
'    WHEN MENU_NAME = ''Dashboard''',
'    THEN ''Part Stocking and Loyalty Dashboard''',
'    ELSE MENU_NAME',
'  END D,',
'  MENU_NAME R',
'FROM APP_MODULES AM,',
'  APP_MODULE_HELP_TEXT AMHT',
'WHERE AM.MOD_ID = AMHT.MOD_ID',
'AND MENU_NAME  != ''Null''',
'AND :P20_TYPE   = ''HTD''',
'UNION ALL',
'SELECT DISTINCT MENU_NAME D,',
'  MENU_NAME R',
'FROM APP_MODULES AM,',
'  APP_MODULE_HELP_TEXT AMHT',
'WHERE AM.MOD_ID    = AMHT.MOD_ID',
'AND MENU_NAME NOT IN (''Null'',''Dashboard'')',
'AND :P20_TYPE      = ''KPID'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Module--'
,p_lov_cascade_parent_items=>'P20_TYPE'
,p_ajax_items_to_submit=>'P20_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6020978183769047)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28986981430010402)
,p_name=>'P20_REPORT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24823989154144104)
,p_prompt=>'<small>Report</small>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'  CASE',
'    WHEN APP_MODULE_DESC = ''HOME''',
'    THEN ''PSL Dashboard''',
'    WHEN APP_MODULE_DESC = ''Primary Dashboard''',
'    THEN',
'      CASE',
'        WHEN :P20_MODULE = ''Stocking''',
'        THEN ''Stocking Dashboard''',
'        WHEN :P20_MODULE = ''Loyalty''',
'        THEN ''Loyalty Dashboard''',
'        ELSE APP_MODULE_DESC',
'      END',
'    WHEN APP_MODULE_DESC LIKE ''GPU%''',
'    THEN ''Sales Loyalty'' || LTRIM(APP_MODULE_DESC,''GPU'')',
'    ELSE APP_MODULE_DESC',
'  END D,',
'  APP_MODULE_DESC R',
'FROM APP_MODULES AM,',
'  APP_MODULE_HELP_TEXT AMHT',
'WHERE AM.MOD_ID = AMHT.MOD_ID(+)',
'AND MENU_NAME   = :P20_MODULE',
'AND APP_MODULE_PAGE NOT IN (''9007'',''9009'',''99999'')',
'ORDER BY D'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Report--'
,p_lov_cascade_parent_items=>'P20_MODULE'
,p_ajax_items_to_submit=>'P20_MODULE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6020978183769047)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28987078123010403)
,p_name=>'P20_PAGE_NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24823989154144104)
,p_prompt=>'<small>Page Number</small>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT APP_MODULE_PAGE D,',
'  APP_MODULE_PAGE R',
'FROM APP_MODULES AM,',
'  APP_MODULE_HELP_TEXT AMHT',
'WHERE AM.MOD_ID          = AMHT.MOD_ID(+)',
'AND APP_MODULE_DESC = :P20_REPORT',
'AND MENU_NAME       = :P20_MODULE',
'AND APP_MODULE_PAGE NOT IN (''9007'',''9009'',''99999'')',
'ORDER BY D'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Page Number--'
,p_lov_cascade_parent_items=>'P20_REPORT'
,p_ajax_items_to_submit=>'P20_REPORT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6020978183769047)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28987142060010404)
,p_name=>'P20_PAGE_SECTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24823989154144104)
,p_prompt=>'<small>Page Section</small>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PAGE_SECTION D,',
'  PAGE_SECTION R',
'FROM APP_MODULE_HELP_TEXT',
'WHERE MOD_ID IN',
'  (SELECT MOD_ID',
'  FROM APP_MODULES',
'  WHERE APP_MODULE_PAGE = :P20_PAGE_NUMBER',
'  AND OEM_CODE          = ''ST''',
'  )',
'AND AMHT_DEF_TYPE = ''Help Text Definition''',
'AND :P20_TYPE     = ''HTD''',
'AND OEM_CODE      = ''ST''',
'AND PAGE_SECTION <> ''Null''',
'UNION ALL',
'SELECT METRIC_EN_VAL D,',
'  METRIC_EN_VAL r',
'FROM APP_MODULE_METRIC_DROP_DOWN AMMDD,',
'  APP_MODULES AP',
'WHERE AMMDD.MOD_ID   = AP.MOD_ID',
'AND (APP_MODULE_PAGE = :P20_PAGE_NUMBER',
'OR :P20_PAGE_NUMBER IS NULL)',
'AND METRIC_NAME     NOT IN (''MEASURE'',''PAYTYPE'')',
'AND :P20_TYPE        = ''KPID''',
'AND METRIC_EN_VAL <> ''Null'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Page Section--'
,p_lov_cascade_parent_items=>'P20_PAGE_NUMBER'
,p_ajax_items_to_submit=>'P20_PAGE_NUMBER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6020978183769047)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29016470059851614)
,p_name=>'P20_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24823989154144104)
,p_prompt=>'<small>Definition Type</small>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:KPI Definition;KPID,Help Text Definition;HTD'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6020978183769047)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33053948316548902)
,p_name=>'P20_BREADCRUMB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24823682805144101)
,p_item_default=>'<font>Manage Help HTML</font>'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29015164014851601)
,p_name=>'Refresh Module'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_MODULE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29015248454851602)
,p_event_id=>wwv_flow_api.id(29015164014851601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_REPORT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'  CASE',
'    WHEN APP_MODULE_DESC = ''HOME''',
'    THEN ''PSL Dashboard''',
'    ELSE APP_MODULE_DESC',
'  END D,',
'  APP_MODULE_DESC R',
'FROM APP_MODULES AM,',
'  APP_MODULE_HELP_TEXT AMHT',
'WHERE AM.MOD_ID = AMHT.MOD_ID',
'AND MENU_NAME   = :P20_MODULE',
'  ORDER BY D'))
,p_attribute_07=>'P20_REPORT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29015352738851603)
,p_name=>'Refresh Page Number'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_REPORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29015480463851604)
,p_event_id=>wwv_flow_api.id(29015352738851603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_PAGE_NUMBER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT APP_MODULE_PAGE D,',
'  APP_MODULE_PAGE R',
'FROM APP_MODULES AM,',
'  APP_MODULE_HELP_TEXT AMHT',
'WHERE AM.MOD_ID = AMHT.MOD_ID',
'AND MENU_NAME   = :P20_REPORT',
'ORDER BY D'))
,p_attribute_07=>'P20_PAGE_NUMBER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29350157353988903)
,p_name=>'After refresh P20_REPORT'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_REPORT'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29350225359988904)
,p_event_id=>wwv_flow_api.id(29350157353988903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($(''#P20_REPORT option'').length==1){',
'	$(''#P20_REPORT_SPAN'').addClass(''dddisabled'');',
'}',
'else{',
'	$(''#P20_REPORT_SPAN'').removeClass(''dddisabled'');',
'}',
'$(''#P20_REPORT_SPAN'').removeClass(''load'');',
'',
'/*',
'$("#P20_REPORT_DIV #P20_REPORT select").change(function(){',
'if("P20_REPORT option[value==''HOME'']" || "P20_REPORT option[value~=''Dashboard'']" && ("#P20_TYPE_SPAN c").text()=="Help Text Definition")',
'{ ',
'	$(''#P20_PAGE_SECTION_SPAN'').addClass(''dddisabled'');',
'}',
'    else',
'        {',
'            $(''#P20_REPORT_SPAN'').removeClass(''dddisabled'');',
'        }',
'});',
'*/'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29350379128988905)
,p_name=>'After refresh P20_PAGE_NUMBER'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_PAGE_NUMBER'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29350479737988906)
,p_event_id=>wwv_flow_api.id(29350379128988905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($(''#P20_PAGE_NUMBER option'').length==1){',
'	$(''#P20_PAGE_NUMBER_SPAN'').addClass(''dddisabled'');',
'}else{',
'	$(''#P20_PAGE_NUMBER_SPAN'').removeClass(''dddisabled'');',
'}',
'$(''#P20_PAGE_NUMBER_SPAN'').removeClass(''load'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29350583691988907)
,p_name=>'After refresh P20_PAGE_SECTION'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_PAGE_SECTION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29350657488988908)
,p_event_id=>wwv_flow_api.id(29350583691988907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($(''#P20_PAGE_SECTION option'').length==1){',
'	$(''#P20_PAGE_SECTION_SPAN'').addClass(''dddisabled'');',
'}else{',
'	$(''#P20_PAGE_SECTION_SPAN'').removeClass(''dddisabled'');',
'}',
'$(''#P20_PAGE_SECTION_SPAN'').removeClass(''load'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29152655631796901)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Values'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P0_HELP_TITLE := ''Manage Help HTML'';',
':P0_PAGE_TITLE := ''Manage Help HTML'';',
':P0_TITLE      := ''Manage Help HTML'';',
'IF :REQUEST     = ''first'' THEN',
'  :P20_TYPE    := ''HTD'';',
'END IF;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29015506558851605)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P20_MODULE       := NULL;',
':P20_REPORT       := NULL;',
':P20_PAGE_NUMBER  := NULL;',
':P20_PAGE_SECTION := NULL;',
':P20_TYPE         := ''HTD'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'reset'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29015829599851608)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Data'
,p_process_sql_clob=>'PPB_20_MANAGE_HELP_HTML.GENERATE_DATA;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
