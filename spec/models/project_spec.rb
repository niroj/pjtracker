require 'spec_helper'

describe Project do
    it {should have_valid(:name).when('cloud factory', 'the palace', 'ward no 9') }
    it {should_not have_valid(:name).when('',123123123) }
    it {should have_valid(:status).when('in progress', 'postponed', 'canceled') }
    it {should_not have_valid(:status).when('', 'nic', 'we'*200) }
end
