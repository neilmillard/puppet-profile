class profile::jenkins () {
  include jenkins
  jenkins::plugin { 'git':
    version => '3.0.1'
  }
  # jenkins::job { 'test-build-job':
  #   config => template("${templates}/test-build-job.xml.erb"),
  # }
}