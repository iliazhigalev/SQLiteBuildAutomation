# Сборка SQLite с использованием Docker

## Требования

- Docker
- Интернет-соединение для загрузки необходимых пакетов

## Инструкции по сборке

1. Откройте командную строку.
2. Выполните команды:
1)cd /path/to/project , где project - название папки, в которой хранится проект(где находится Dockerfile)

2) Выполните следующую команду для создания Docker образа:
docker build -t sqlite-builder .

3)Выполните следующую команду для запуска Docker контейнера и выполнения команд внутри него:
docker run --rm -v $(pwd):/project -w /project sqlite-builder:latest /bin/sh -c "
    mkdir build && cd build &&
    cmake .. &&
    make
"

Была ошибка при запуске докер образа:
iliya@iliya-VirtualBox:~/sqlite_project$ docker run -it --rm sqlite-builder ./sqlite_shell
Error loading shared library libsqlite3.so: No such file or directory (needed by ./sqlite_shell)
Error relocating ./sqlite_shell: sqlite3_malloc64: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_value: symbol not found
Error relocating ./sqlite_shell: sqlite3_db_config: symbol not found
Error relocating ./sqlite_shell: sqlite3_set_authorizer: symbol not found
Error relocating ./sqlite_shell: sqlite3_bind_int: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_int: symbol not found
Error relocating ./sqlite_shell: sqlite3_vfs_find: symbol not found
Error relocating ./sqlite_shell: sqlite3_bind_blob: symbol not found
Error relocating ./sqlite_shell: sqlite3_extended_errcode: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_type: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_null: symbol not found
Error relocating ./sqlite_shell: sqlite3_value_type: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_blob: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_error_nomem: symbol not found
Error relocating ./sqlite_shell: sqlite3_close: symbol not found
Error relocating ./sqlite_shell: sqlite3_value_blob: symbol not found
Error relocating ./sqlite_shell: sqlite3_load_extension: symbol not found
Error relocating ./sqlite_shell: sqlite3_strlike: symbol not found
Error relocating ./sqlite_shell: sqlite3_value_text: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_error: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_bytes: symbol not found
Error relocating ./sqlite_shell: sqlite3_open: symbol not found
Error relocating ./sqlite_shell: sqlite3_stmt_status: symbol not found
Error relocating ./sqlite_shell: sqlite3_keyword_name: symbol not found
Error relocating ./sqlite_shell: sqlite3_trace_v2: symbol not found
Error relocating ./sqlite_shell: sqlite3_vmprintf: symbol not found
Error relocating ./sqlite_shell: sqlite3_create_function: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_double: symbol not found
Error relocating ./sqlite_shell: sqlite3_bind_null: symbol not found
Error relocating ./sqlite_shell: sqlite3_changes: symbol not found
Error relocating ./sqlite_shell: sqlite3_value_int: symbol not found
Error relocating ./sqlite_shell: sqlite3_keyword_check: symbol not found
Error relocating ./sqlite_shell: sqlite3_bind_double: symbol not found
Error relocating ./sqlite_shell: sqlite3_finalize: symbol not found
Error relocating ./sqlite_shell: sqlite3_declare_vtab: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_text: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_int64: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_text64: symbol not found
Error relocating ./sqlite_shell: sqlite3_vfs_register: symbol not found
Error relocating ./sqlite_shell: sqlite3_vtab_collation: symbol not found
Error relocating ./sqlite_shell: sqlite3_user_data: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_count: symbol not found
Error relocating ./sqlite_shell: sqlite3_sleep: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_blob: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_value: symbol not found
Error relocating ./sqlite_shell: sqlite3_backup_step: symbol not found
Error relocating ./sqlite_shell: sqlite3_status64: symbol not found
Error relocating ./sqlite_shell: sqlite3_reset: symbol not found
Error relocating ./sqlite_shell: sqlite3_create_module: symbol not found
Error relocating ./sqlite_shell: sqlite3_errmsg: symbol not found
Error relocating ./sqlite_shell: sqlite3_malloc: symbol not found
Error relocating ./sqlite_shell: sqlite3_realloc64: symbol not found
Error relocating ./sqlite_shell: sqlite3_backup_init: symbol not found
Error relocating ./sqlite_shell: sqlite3_step: symbol not found
Error relocating ./sqlite_shell: sqlite3_value_bytes: symbol not found
Error relocating ./sqlite_shell: sqlite3_value_int64: symbol not found
Error relocating ./sqlite_shell: sqlite3_limit: symbol not found
Error relocating ./sqlite_shell: sqlite3_sourceid: symbol not found
Error relocating ./sqlite_shell: sqlite3_enable_load_extension: symbol not found
Error relocating ./sqlite_shell: sqlite3_busy_timeout: symbol not found
Error relocating ./sqlite_shell: sqlite3_errcode: symbol not found
Error relocating ./sqlite_shell: sqlite3_complete: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_int64: symbol not found
Error relocating ./sqlite_shell: sqlite3_config: symbol not found
Error relocating ./sqlite_shell: sqlite3_db_status: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_text: symbol not found
Error relocating ./sqlite_shell: sqlite3_context_db_handle: symbol not found
Error relocating ./sqlite_shell: sqlite3_stmt_readonly: symbol not found
Error relocating ./sqlite_shell: sqlite3_keyword_count: symbol not found
Error relocating ./sqlite_shell: sqlite3_bind_int64: symbol not found
Error relocating ./sqlite_shell: sqlite3_prepare_v2: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_double: symbol not found
Error relocating ./sqlite_shell: sqlite3_interrupt: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_int: symbol not found
Error relocating ./sqlite_shell: sqlite3_strnicmp: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_name: symbol not found
Error relocating ./sqlite_shell: sqlite3_randomness: symbol not found
Error relocating ./sqlite_shell: sqlite3_open_v2: symbol not found
Error relocating ./sqlite_shell: sqlite3_value_double: symbol not found
Error relocating ./sqlite_shell: sqlite3_stricmp: symbol not found
Error relocating ./sqlite_shell: sqlite3_strglob: symbol not found
Error relocating ./sqlite_shell: sqlite3_mprintf: symbol not found
Error relocating ./sqlite_shell: sqlite3_realloc: symbol not found
Error relocating ./sqlite_shell: sqlite3_libversion: symbol not found
Error relocating ./sqlite_shell: sqlite3_bind_text: symbol not found
Error relocating ./sqlite_shell: sqlite3_initialize: symbol not found
Error relocating ./sqlite_shell: sqlite3_snprintf: symbol not found
Error relocating ./sqlite_shell: sqlite3_get_autocommit: symbol not found
Error relocating ./sqlite_shell: sqlite3_backup_finish: symbol not found
Error relocating ./sqlite_shell: sqlite3_vsnprintf: symbol not found
Error relocating ./sqlite_shell: sqlite3_test_control: symbol not found
Error relocating ./sqlite_shell: sqlite3_table_column_metadata: symbol not found
Error relocating ./sqlite_shell: sqlite3_sql: symbol not found
Error relocating ./sqlite_shell: sqlite3_total_changes: symbol not found
Error relocating ./sqlite_shell: sqlite3_column_decltype: symbol not found
Error relocating ./sqlite_shell: sqlite3_file_control: symbol not found
Error relocating ./sqlite_shell: sqlite3_result_blob64: symbol not found
Error relocating ./sqlite_shell: sqlite3_exec: symbol not found
Error relocating ./sqlite_shell: sqlite3_free: symbol not found

Решил эту проблему тем, что добавил сборку динамической библиотеки SQLite (libsqlite3.so).
