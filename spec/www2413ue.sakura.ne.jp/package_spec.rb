require 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe package('zsh') do
  it { should be_installed }
end
