class ContextRegion < ApplicationRecord
  has_many :etalon_urls, class_name: 'ContextEtalonUrl', dependent: :destroy
  has_many :prod_urls, class_name: 'ContextProdUrl', dependent: :destroy

  belongs_to :author, class_name: 'User'
  belongs_to :updater, class_name: 'User', optional: true

  # дополнительные валидации и логика...
end
