class ContextProdUrl < ApplicationRecord
  belongs_to :user_created, class_name: 'User'
  belongs_to :user_modified, class_name: 'User', optional: true
  belongs_to :context_region

  validates :url, presence: true, format: URI::regexp(%w[http https])

  # дополнительные атрибуты и методы
end
