class Crz::Contract < Document
  has_one :details, class_name: 'Crz::DocumentDetail', foreign_key: :document_id
end
