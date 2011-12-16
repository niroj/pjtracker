require 'spec_helper'

describe User do

  it {should have_valid(:email).when('lujaw@hotmail.com') }
  it {should_not have_valid(:email).when('asdfasdf','','asdf@hj') }
  it { should validate_presence_of :email }

end
