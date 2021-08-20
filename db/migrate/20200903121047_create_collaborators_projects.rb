class CreateCollaboratorsProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :collaborators_projects do |t|
      t.references :collaborator, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
