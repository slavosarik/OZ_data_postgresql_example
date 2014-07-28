class Egovsk::Contract < Document
  has_one :details, class_name: 'Egovsk::DocumentDetail', foreign_key: :document_id
end
