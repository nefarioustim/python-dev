$user = 'vagrant'
$project = 'python-dev'

Exec {
    path => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin'
}

include core-env

class { "user":
    projectpath =>  "/home/${user}/${project}",
    username => $user,
    groupname => $user
}

include libxml

class { "mysql":
    root_password => "pythondev"
}

include python
include python::virtualenv
include python::supervisor

include redis
