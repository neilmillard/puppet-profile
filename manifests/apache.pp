class profile::apache (
  $manage_php = true
){
  # Web Server Component
  class { 'apache':
    package => 'httpd24',
  }
  apache::mod { 'headers': }
  apache::mod { 'rewrite': }

  user { 'apache':
    ensure => present,
    uid    => 48,
    home   => '/var/www/sites',
    shell  => '/sbin/nologin',
    password=> '$1$vcd7uhSX$snGC28SndiQ4eZ1HGwF9W.',
    require  => Package['apache'],
    before   => Service['apache']
  }

  apache::vhost { 'default':
    docroot             => '/var/www/sites/default',
    server_name         => false,
    priority            => '0',
    template            => 'apache/virtualhost/vhost.conf.erb',
  }

}