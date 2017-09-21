module Railswiki
  module TitleHelper
    def title(page_title)
      page_title = ["OuterSpaces - Te Kete o Te Kāhui"] if page_title == ["Home"]

      content_for(:title) { (page_title + ["OuterSpaces"]).join(" - ") }
    end
  end
end
