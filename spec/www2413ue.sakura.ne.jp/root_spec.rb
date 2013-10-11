require 'spec_helper'

describe file('/usr/local/etc/sudoers') do
  it { should be_file }
  it { should be_mode 440 }
  it { should be_readable }
end
