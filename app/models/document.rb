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


#d = Document.first

#Faraday.post("http://localhost:9200/oz/documents/#{d.id}", d.to_indexable.to_json)


#Crz::Contract.limit(1000).each {|d| Faraday.post("http://localhost:9200/oz/documents/#{d.id}", d.to_indexable.to_json) }

#v prehliadaci URL-> http://localhost:9200/oz/_search?pretty&q=content:Bratislavskom
#http://localhost:9200/oz/_search?pretty