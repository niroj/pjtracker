class Project < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :tasks

     validates :name, :description, :status, :presence => true
     validates :name, :uniqueness => true
     validates :name, :format => { :with => /^[a-zA-Z]+(\w|\s)*$/, :message => "Only letters allowed" }
     validates :status, :length => 4..40
end
