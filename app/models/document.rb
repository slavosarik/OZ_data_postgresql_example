class Document < ActiveRecord::Base
  has_many :attachments

  def to_indexable
    {
        customer: details.customer,
        content: attachments.first.pages.map(&:text).join(' ')
    }
  end
end
#
# document = Document.first
#
# json = document.to_indexable
#
# faraday.post('...', json.to_json)
#
