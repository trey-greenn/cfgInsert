INSERT INTO ci.CFG_FLOWS
           (FLOW_ID
           ,FLOW_NAME
           ,ROW_UPDATE_DATE
           ,SOURCE_CONNECTION_ID
           ,TABLE_NAME
           ,SOURCE_SCHEMA
           ,LAYOUT
           ,WORK_ITEM_TYPE_ID
           ,CUSTOMER_ID_FIELD
           ,WORK_ITEM_ID_FIELD)
     VALUES
           ('<FLOW_ID, nvarchar(50),>'
           ,'<FLOW_NAME, nvarchar(50),>'
           ,'2024-09-17 14:35:23.213'
           ,'<SOURCE_CONNECTION_ID, nvarchar(50),>'
           ,'<TABLE_NAME, nvarchar(50),>'
           ,'<SOURCE_SCHEMA, nvarchar(max),>'
           ,'<LAYOUT, nvarchar(max),>'
           ,'<WORK_ITEM_TYPE_ID, nvarchar(50),>'
           ,'<CUSTOMER_ID_FIELD, nvarchar(50),>'
           ,'<WORK_ITEM_ID_FIELD, nvarchar(50),>');



INSERT INTO ci.CFG_VIEWS
           (VIEW_ID
           ,VIEW_NAME
           ,ROW_UPDATE_DATE
           ,WORK_ITEM_TYPE_ID
           ,OWNER_ID
           ,FEEDBACK_TYPE_ID
           ,DISPLAY_ORDER)
     VALUES
           ('<VIEW_ID, nvarchar(50),>'
           ,'<VIEW_NAME, nvarchar(50),>'
           ,'2024-09-17 14:35:23.213'
           ,'<WORK_ITEM_TYPE_ID, nvarchar(50),>'
           ,'<OWNER_ID, nvarchar(50),>'
           ,'<FEEDBACK_TYPE_ID, nvarchar(max),>'
           ,0);

INSERT INTO ci.CFG_QUERIES
           (QUERY_ID
           ,QUERY_NAME
           ,ROW_UPDATE_DATE
           ,CHART_TYPE_ID
           ,QUERY_STRING
           ,X_LABEL
           ,Y_LABEL
           ,MODULE_ID
           ,MAPPED_VALUES
           ,DISPLAY_ORDER)
     VALUES
(3,	'Alerts with feedbacks', '2022-01-08 17:09:37.840',	'scalar', $$SELECT 	'Alerts' x, 	CAST(SUM(CASE WHEN V_CSM_LATEST_FEEDBACKS.FEEDBACK_ID IS NOT NULL THEN 1 ELSE 0 END) as NVARCHAR) + '/' +  CAST(COUNT(*) as NVARCHAR) y FROM 	CSM_WORK_ITEMS 	LEFT OUTER JOIN	V_CSM_LATEST_FEEDBACKS		ON			CSM_WORK_ITEMS.WORK_ITEM_ID = V_CSM_LATEST_FEEDBACKS.WORK_ITEM_ID WHERE 	TUNING_CYCLE_ID = ?$$,	'N/A',	'N/A',	'sandbox',	'tuningCycleId',	1);


INSERT INTO ci.CFG_FEEDBACK_TYPES
           (FEEDBACK_TYPE_ID
           ,FEEDBACK_TYPE_NAME
           ,NEXT_FEEDBACK_TYPE_IDS)
     VALUES
         (0, 'Inconclusive', 'Inconclusive');


INSERT INTO ci.CFG_REPORTS
           (REPORT_ID
           ,REPORT_NAME
           ,ROW_UPDATE_DATE
           ,SOURCE_CONNECTION_ID
           ,QUERY_STRING
           ,MODULE_ID
           ,COLUMN_NAMES
           ,MAPPED_VALUES
           ,MAPPED_TYPES
           ,DISPLAY_ORDER)
     VALUES
           ('<REPORT_ID, nvarchar(50),>'
           ,'<REPORT_NAME, nvarchar(50),>'
           ,'2024-09-17 14:35:23.213'
           ,'<SOURCE_CONNECTION_ID, nvarchar(50),>'
           ,'<QUERY_STRING, nvarchar(max),>'
           ,'<MODULE_ID, nvarchar(50),>'
           ,'<COLUMN_NAMES, nvarchar(max),>'
           ,'<MAPPED_VALUES, nvarchar(max),>'
           ,'<MAPPED_TYPES, nvarchar(max),>'
           ,1);

INSERT INTO ci.CFG_SOURCE_CONNECTIONS
           (SOURCE_CONNECTION_ID
           ,SOURCE_CONNECTION_NAME
           ,ROW_UPDATE_DATE
           ,SOURCE_TYPE_ID
           ,URL
           ,USERNAME
           ,PWD
           ,DEFAULT_DB)
     VALUES(1,'Source alerts',	'2024-08-14 15:41:14.867',	'file',	'C:\demo\filedrop',	NULL,	NULL,	NULL);


INSERT INTO ci.CFG_TARGET_CONNECTIONS
           (TARGET_CONNECTION_ID
           ,TARGET_CONNECTION_NAME
           ,ROW_UPDATE_DATE
           ,TARGET_TYPE_ID
           ,URL
           ,USERNAME)
     VALUES
          (1,
		  'TARGET_CONNECTION_NAME, nvarchar(50)'
           ,'2024-09-17 14:35:23.213'
           ,'<TARGET_TYPE_ID, nvarchar(50)'
           ,'<URL, nvarchar(255)'
           ,'<USERNAME, nvarchar(255)');


-------------------------

CREATE TABLE ci.CFG_FEEDBACK_TYPES (
    FEEDBACK_TYPE_ID varchar(50),
    FEEDBACK_TYPE_NAME varchar(50),
    NEXT_FEEDBACK_TYPE_IDS varchar(50)
);

CREATE TABLE ci.CFG_FLOWS (
    FLOW_ID varchar(50),
    FLOW_NAME varchar(50),
    ROW_UPDATE_DATE timestamp,
    SOURCE_CONNECTION_ID varchar(50),
    TABLE_NAME varchar(50),
    SOURCE_SCHEMA text,
    LAYOUT text,
    WORK_ITEM_TYPE_ID varchar(50),
    CUSTOMER_ID_FIELD varchar(50),
    WORK_ITEM_ID_FIELD varchar(50)
);

CREATE TABLE ci.CFG_QUERIES (
    QUERY_ID varchar(50),
    QUERY_NAME varchar(50),
    ROW_UPDATE_DATE timestamp,
    CHART_TYPE_ID varchar(50),
    QUERY_STRING text,
    X_LABEL varchar(50),
    Y_LABEL varchar(50),
    MODULE_ID varchar(50),
    MAPPED_VALUES varchar(50),
    DISPLAY_ORDER integer
);

CREATE TABLE ci.CFG_REPORTS (
    REPORT_ID varchar(50),
    REPORT_NAME varchar(50),
    ROW_UPDATE_DATE timestamp,
    SOURCE_CONNECTION_ID varchar(50),
    QUERY_STRING text,
    MODULE_ID varchar(50),
    COLUMN_NAMES text,
    MAPPED_VALUES text,
    MAPPED_TYPES text,
    DISPLAY_ORDER integer
);

CREATE TABLE ci.CFG_SOURCE_CONNECTIONS (
    SOURCE_CONNECTION_ID varchar(50),
    SOURCE_CONNECTION_NAME varchar(50),
    ROW_UPDATE_DATE timestamp,
    SOURCE_TYPE_ID varchar(50),
    URL varchar(255),
    USERNAME varchar(255),
    PWD text,
    DEFAULT_DB varchar(50)
);

CREATE TABLE ci.CFG_TARGET_CONNECTIONS (
    TARGET_CONNECTION_ID varchar(50),
    TARGET_CONNECTION_NAME varchar(50),
    ROW_UPDATE_DATE timestamp,
    TARGET_TYPE_ID varchar(50),
    URL varchar(255),
    USERNAME varchar(255)
);

CREATE TABLE ci.CFG_VIEWS (
    VIEW_ID varchar(50),
    VIEW_NAME varchar(50),
    ROW_UPDATE_DATE timestamp,
    WORK_ITEM_TYPE_ID varchar(50),
    OWNER_ID varchar(50),
    FEEDBACK_TYPE_ID text,
    DISPLAY_ORDER integer
);

