class ContextSubj < ApplicationRecord
  validates_presence_of :reason

  belongs_to :author, class_name: 'User'
  belongs_to :updater, class_name: 'User', optional: true
  has_many :issues, dependent: :destroy # предполагая, что у нас будет отдельная таблица задач, связанных с этой сущностью

  # дополнительные валидации и логика...
end
