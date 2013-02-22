module SiteHelpers

  def page_title
    title = settings.site_title
    if data.page.title
      title << " | " + data.page.title
    end
    title
  end

  def page_description
    if data.page.description
      description = data.page.description
    else
      description = settings.site_description
    end
    description
  end

  def page_keywords
    keywords = settings.site_keywords
    if data.page.keywords
      keywords << "," + data.page.keywords
    end
    keywords
  end

end