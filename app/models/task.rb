class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

    validates :name, :status, :presence => true
    validates :name, :format => { :with => /^[a-zA-Z]+(\w|\s)*$/, :message => "Only letters allowed" }
    validates :status, :length => 5..40
end
