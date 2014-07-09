module ApplicationHelper

  def pad(code, source_extract)
    ' ' * source_extract.column + code
  end

end
