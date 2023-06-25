{application, 'rabbitmq_auth_mechanism_ssl', [
	{description, "RabbitMQ SSL authentication (SASL EXTERNAL)"},
	{vsn, "3.11.16"},
	{id, "v3.11.16"},
	{modules, ['rabbit_auth_mechanism_ssl','rabbit_auth_mechanism_ssl_app']},
	{registered, [rabbitmq_auth_mechanism_ssl_sup]},
	{applications, [kernel,stdlib,rabbit_common,rabbit]},
	{mod, {rabbit_auth_mechanism_ssl_app, []}},
	{env, [
	    {name_from, distinguished_name}
	  ]},
		{broker_version_requirements, []}
]}.