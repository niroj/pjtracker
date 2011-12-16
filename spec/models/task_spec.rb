require 'spec_helper'

describe Task do
  it {should have_valid(:name).when('css coding', 'testing') }
  it {should_not have_valid(:name).when('','ward no. 9') }
  it {should have_valid(:status).when('in progress', 'postponed', 'canceled') }
  it {should_not have_valid(:status).when('', 'nice', 'we'*200) }
  it {should belong_to(:user) }
  it {should belong_to(:project) }
end
