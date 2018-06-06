REM echo pushdata2snowflake.bat > pushdata2snowflake.log
echo %1 >> pushdata2snowflake.log
echo header > mockinfile.csv
echo 1 >> mockinfile.csv
"C:\Program Files\Snowflake SnowSQL\snowsql.exe" -f .\snowsql\snowsql.sql >> pushdata2snowflake.log
REM popd