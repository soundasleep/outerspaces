module Railswiki
  module TitleHelper
    def title(page_title)
      page_title = ["OuterSpaces Charitable Trust"] if page_title == ["Home"]

      content_for(:title) { page_title.join(" - ") }
    end
  end
end
