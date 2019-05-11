class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCoNvARbOw5vJu7wuXw9vEhI3SGFI4WfGO27hjh8v4dML0AveHaZh9nQMuVPmiprlDQxefOoVv0V39YNcpSVeW8EOKW0Usdb8vVKuJEJDJSbNcRR8qQT/wnWZkfS8edFmENpMgkox0HJ9seMP8GECBGNIvlokvHa3QLv3zSKYyAABu7o9Ao/0QI0lBtCT+eOq+qDt80D4oMgdz99sThj8mi4Z1fNkxRe6BMJDAkNg0M5/CPsBIOFQETQt9i/xaf5lOrKSB3SRVqN+onqCiYnKPyS7EcqzI5zpCbtBVY8Qekiz8M9CjuXHHeyDD8nCuZsQnbfxxxrA3pU071hnCbwOBF',
	}  
}
