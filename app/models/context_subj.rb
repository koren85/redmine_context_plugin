class ContextSubj < ApplicationRecord
  belongs_to :user_created, class_name: 'User'
  belongs_to :user_modified, class_name: 'User', optional: true

  validates :reason, presence: true

  # дополнительные атрибуты и методы
end
