# frozen_string_literal: true

module PogodocApiClient
  class Documents
    # Type of template to be rendered
    class GetJobStatusResponseType
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
