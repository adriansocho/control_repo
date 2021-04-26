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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7skm2XDXxsDg50+B4E7BgQShREzNOnkt1YV4Yo3sL314hZ33LFkcdFyrggTmeNMeXwzKLGZCImsEPlAney3VmMRIacoBuI1n58vCRpV2JVHFqxhcP1vQ3w1UUhvJ18oZ5zJqYbVpbnynOYw0ZHa5hpMQzvoY9jiVBc0t/8ikHyFrao6eyqvPef9K7OfXPcE4hCilSpkgRUyuuzUPE9oF63sHtIAs3H8ltznQ477+BJDP4bzb+xQv8nNCLVIj4C8bzaFWzJOj6Bu3o8Hs9Ne9bc/7eCw+WMB6/+397IufU5mHixtZWnUDijxoqKz2OSSwl3rEziwc55bdfbtpz1f8j ',
	}  
}
