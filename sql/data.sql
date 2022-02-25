-- 表头类型
insert into `configure_header_category`
( `key`, `name`, `description`, `sort_order`, `is_open`)
values
( 'backend-logs-access', '后管系统——接口访问日志', '后管系统——接口访问日志', '127', '0');

-- 表头选项
insert into `configure_header_option`
( `key`, `field`, `label`, `width`, `fixed`, `default`, `align`, `is_tooltip`, `is_resizable`, `is_editable`, `component`, `options`, `params`, `description`, `sort_order`, `is_required`, `is_default`, `is_enable`, `operate_ip`, `operate_uid`)
values
( 'backend-logs-access', '_idx', '序号', '80', 'left', '', '', '0', '0', '0', '', '\"\"', '\"\"', '', '1', '0', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'trace_id', '链路ID', '280', '', '', '', '1', '0', '0', '', '\"\"', '\"\"', '', '1', '0', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'url_path', '接口path', '200', 'left', '', 'left', '1', '1', '0', '', '\"\"', '\"\"', '', '2', '1', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'method', '请求类型', '80', '', '', '', '0', '0', '0', '', '\"\"', '\"\"', '', '3', '1', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'system_name', '系统名称', '100', '', '', 'left', '1', '1', '0', '', '\"\"', '\"\"', '', '4', '1', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'id', 'ID', '80', '', '', 'left', '0', '0', '0', '', '\"\"', '\"\"', '', '5', '0', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'is_success', '是否成功', '80', '', '', '', '0', '0', '0', '', '[\"否\", \"是\"]', '\"\"', '', '7', '1', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'use_time', '接口耗时', '100', '', '', 'left', '0', '0', '0', '', '\"\"', '\"\"', '', '8', '0', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'response_code', '响应码', '80', '', '', '', '0', '0', '0', '', '\"\"', '\"\"', '', '9', '1', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'ip', '操作IP', '120', '', '', 'left', '1', '0', '0', '', '\"\"', '\"\"', '', '10', '0', '0', '0', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'uid', '操作UID', '100', '', '', 'left', '0', '0', '0', '', '\"\"', '\"\"', '', '11', '0', '0', '0', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'created_at', '创建时间', '160', '', '', '', '0', '0', '0', '', '\"\"', '\"\"', '', '12', '1', '1', '1', '127.0.0.1', '100000000'),
( 'backend-logs-access', 'operate', '操作', '', 'right', '', 'left', '0', '0', '0', 'operate', '\"\"', '[]', '', '13', '1', '1', '1', '127.0.0.1', '100000000');

-- 表单类型
insert into `configure_form_category`
( `key`, `name`, `description`, `sort_order`, `is_setting`, `is_open`, `created_at`, `updated_at`)
values
( 'backend-logs-access', '后管系统——接口访问日志', '后管系统——接口访问日志', '127', '0', '1', '2021-06-25 09:51:56', '2022-02-24 22:14:24');

-- 表单选项
insert into `configure_form_option`
( `key`, `field`, `label`, `input_type`, `default`, `description`, `sort_order`, `is_enable`, `exts`, `rules`, `is_required`, `required_msg`, `created_at`, `updated_at`)
values
( 'backend-logs-access', 'system_name', '系统', 'view-text', '', '', '1', '1', '\"\"', '\"\"', '1', ''),
( 'backend-logs-access', 'id', 'ID', 'view-text', '', '', '2', '1', '\"\"', '\"\"', '1', ''),
( 'backend-logs-access', 'trace_id', 'Trace-ID', 'view-text', '', '', '3', '1', '\"\"', '\"\"', '1', ''),
( 'backend-logs-access', 'uri_path', '接口path', 'view-text', '', '', '4', '1', '\"\"', '\"\"', '1', ''),
( 'backend-logs-access', 'method', '请求方式', 'view-text', '', '', '5', '1', '\"\"', '\"\"', '1', ''),
( 'backend-logs-access', 'use_time', '接口耗时', 'view-text', '', '', '6', '1', '\"\"', '\"\"', '0', ''),
( 'backend-logs-access', 'is_success', '是否成功', 'input-select', '', '', '7', '1', '{\"options\": [\"否\", \"是\"]}', '\"\"', '1', ''),
( 'backend-logs-access', 'message', '消息', 'view-text', '', '', '8', '1', '\"\"', '\"\"', '0', ''),
( 'backend-logs-access', 'response_code', '响应码', 'view-text', '', '', '9', '1', '\"\"', '\"\"', '1', ''),
( 'backend-logs-access', 'request_data', '请求参数', 'json-editor', '', '', '10', '1', '\"\"', '\"\"', '0', ''),
( 'backend-logs-access', 'response_data', '响应数据', 'json-editor', '0', '', '11', '1', '\"\"', '\"\"', '0', ''),
( 'backend-logs-access', 'exts', '扩展数据', 'json-editor', '0', '', '12', '1', '\"\"', '\"\"', '0', ''),
( 'backend-logs-access', 'uid', 'UID', 'view-text', '', '', '13', '1', '\"\"', '\"\"', '0', ''),
( 'backend-logs-access', 'ip', 'IP', 'view-text', '', '', '14', '1', '\"\"', '\"\"', '0', ''),
( 'backend-logs-access', 'created_at', '创建时间', 'view-text', '', '', '15', '1', '\"\"', '\"\"', '1', '');
