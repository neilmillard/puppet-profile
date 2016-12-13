class profile::jenkins () {
  include jenkins

  jenkins::job { 'build%20webserver':
    config => template("${module_name}/jenkins/build_webserver.xml.erb")
  }
  # jenkins::job { 'test-build-job':
  #   config => template("${templates}/test-build-job.xml.erb"),
  # }
}