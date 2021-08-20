class CollaboratorsProject < ApplicationRecord
  belongs_to :collaborator
  belongs_to :project
end
