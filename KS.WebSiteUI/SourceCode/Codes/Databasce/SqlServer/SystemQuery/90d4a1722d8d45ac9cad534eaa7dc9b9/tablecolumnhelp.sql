﻿SELECT COLUMN_NAME,* 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = '@tableName' AND TABLE_SCHEMA='@schemaName'

--SELECT COLUMN_NAME,* 
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'LanguageAndCultures' AND TABLE_SCHEMA='contentmanagement'