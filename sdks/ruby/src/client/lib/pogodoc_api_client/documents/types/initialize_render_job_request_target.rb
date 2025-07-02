# frozen_string_literal: true

module PogodocApiClient
  class Documents
    # Type of output to be rendered
    class InitializeRenderJobRequestTarget
      PDF = "pdf"
      HTML = "html"
      DOCX = "docx"
      XLSX = "xlsx"
      PPTX = "pptx"
      PNG = "png"
      JPG = "jpg"
    end
  end
end
