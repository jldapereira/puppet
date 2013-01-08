# coredb_mysql required packages
class coredb_mysql::packages {
	if $::lsbdistid == "Ubuntu" and versioncmp($::lsbdistrelease, "12.04") >= 0 {
		package { [ 'mysqlfb-client-5.1', 'mysqlfb-server-core-5.1', 'mysqlfb-server-5.1', 'libmysqlfbclient16' ]:
			ensure => "5.1.53-fb3875-wm1",
		}
	}

  if $::lsbdistid == "Ubuntu" and versioncmp($::lsbdistrelease, "10.04") == 0 {
    package { [ 'mysql-client-5.1', 'mysql-server-core-5.1', 'mysql-server-5.1', 'libmysqlclient16' ]:
      ensure => "5.1.53-fb3753-wm1",
    }
  }

	package { ["percona-xtrabackup", "percona-toolkit", "libaio1",	"lvm2" ]:
		ensure => latest,
	}
}
