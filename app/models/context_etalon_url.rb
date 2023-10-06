class ContextEtalonUrl < ApplicationRecord
  belongs_to :context_region
  belongs_to :author, class_name: 'User'
  belongs_to :updater, class_name: 'User', optional: true

  validates_presence_of :url
  validates_format_of :url, with: URI::regexp(%w(http https))

  # дополнительные валидации и логика...
end
