class profile::jenkins () {
  include jenkins

  # jenkins::job { 'test-build-job':
  #   config => template("${templates}/test-build-job.xml.erb"),
  # }
}