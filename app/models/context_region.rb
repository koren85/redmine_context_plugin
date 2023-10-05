class ContextRegion < ApplicationRecord
  belongs_to :user_created, class_name: 'User'
  belongs_to :user_modified, class_name: 'User', optional: true
  has_many :context_etalon_urls
  has_many :context_prod_urls

  # дополнительные атрибуты и методы
end
