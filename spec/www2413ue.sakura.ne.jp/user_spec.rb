require 'spec_helper'

describe user('hfm') do
  it { should exist }
  it { should have_uid 1001 }
  it { should belong_to_group 'wheel' }
  it { should belong_to_group 'hfm' }
  it { should have_home_directory '/home/hfm' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3w0dFBaob531ZMa8YfkBZz5GVQIarpdO/oshzvzU0H29FSplyYFy3KJoTVnnoHNJQZ2Ix/KPtNFS0kt/iBJDrEDSEqt6W8wQP95JKzCh0QY4KVlAXPXilHIIyMKMA2KZrlR+eas1OV7XulD7NwroARAH+YeyOcS+02N+b8dc13FcHHUN0eeeJMJKdpe5t//QxebM63u36BgYWgGEz54aDpXKDNoEIwImC8ENpx+twCV5A2FpC35/QLEwdKLq1HOImEgDGd7wheACCr4ycS3xdMza1yu+m1Vep8/ARtL/kmW1nHc2ffRxvQunkJqQMV0aLAkyXOx+8df1NTSACcLhv hfm@giant.local' }
end

describe user('root') do
  it { should have_login_shell '/usr/local/bin/zsh' }
end
