class profile::jenkins () {
  include jenkins
  jenkins::plugin { 'git':
    version => '3.0.1'
  }
  jenkins::plugin { 'structs':
    version => '1.5'
  }
  jenkins::plugin { 'workflow-scm-step':
    version => '2.3'
  }
  jenkins::plugin { 'workflow-step-api':
    version => '2.6'
  }
  jenkins::plugin { 'git-client':
    version => '2.1.0'
  }
  jenkins::plugin { 'mailer':
    version => '1.18'
  }
  jenkins::plugin { 'display-url-api':
    version => '0.5'
  }
  jenkins::plugin { 'matrix-project':
    version => '1.7.1'
  }
  jenkins::plugin { 'junit':
    version => '1.19'
  }
  jenkins::plugin { 'script-security':
    version => '1.24'
  }
  jenkins::plugin { 'scm-api':
    version => '1.3'
  }
  jenkins::plugin { 'ssh-credentials':
    version => '1.12'
  }

  # jenkins::job { 'test-build-job':
  #   config => template("${templates}/test-build-job.xml.erb"),
  # }
}