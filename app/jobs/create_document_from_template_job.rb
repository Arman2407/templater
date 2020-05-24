class CreateDocumentFromTemplateJob < ApplicationJob
  queue_as :default

  def perform(document, filename = "result.docx")
    template = document.template

    template.doc_template.open do |tempfile|
      doc_template = Sablon.template(tempfile.path)

      context = document.context
      contents = doc_template.render_to_string context

      document.doc.attach(io: StringIO.new(contents), filename: filename)
    end
  end
end
