# frozen_string_literal: true

module PogodocApiClient
  class Templates
    # Type of template to be rendered
    class GenerateTemplatePreviewsRequestType
      DOCX = "docx"
      XLSX = "xlsx"
      PPTX = "pptx"
      EJS = "ejs"
      HTML = "html"
      LATEX = "latex"
      REACT = "react"
    end
  end
end
