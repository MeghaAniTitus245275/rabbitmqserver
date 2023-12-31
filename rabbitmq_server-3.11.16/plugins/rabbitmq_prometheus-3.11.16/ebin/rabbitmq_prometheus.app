{application, 'rabbitmq_prometheus', [
	{description, ""},
	{vsn, "3.11.16"},
	{id, "v3.11.16"},
	{modules, ['prometheus_process_collector','prometheus_rabbitmq_alarm_metrics_collector','prometheus_rabbitmq_core_metrics_collector','prometheus_rabbitmq_global_metrics_collector','rabbit_prometheus_app','rabbit_prometheus_dispatcher','rabbit_prometheus_handler']},
	{registered, [rabbitmq_prometheus_sup]},
	{applications, [kernel,stdlib,accept,rabbit,rabbitmq_management_agent,prometheus,rabbitmq_web_dispatch]},
	{mod, {rabbit_prometheus_app, []}},
	{env, [
	{tcp_config, [{port, 15692}]},
	{ssl_config, []},
	{return_per_object_metrics, false}
]}
]}.