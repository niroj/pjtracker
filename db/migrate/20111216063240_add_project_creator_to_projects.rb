class AddProjectCreatorToProjects < ActiveRecord::Migration
  def change
     add_column :projects, :project_head, :integer
  end
end
