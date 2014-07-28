class Crz::Attachment < Attachment
  belongs_to :document
  has_many :pages
end

# Document.limit(5).includes(:attachments).to_sql
# Document.limit(5).joins(:attachments).to_sql
# Document.limit(5).where('id < ?', 5).to_sql
