class Document < ActiveRecord::Base
  has_many :attachments

  def to_indexable
    {
        department: department,
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
