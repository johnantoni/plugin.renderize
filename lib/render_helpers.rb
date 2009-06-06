module RenderHelpers
  def text_filter(body, filter_id)
    case filter_id.to_i
      when 1
        return body.to_s
      when 2
        return RDiscount.new(body).to_html
      when 3
        return RedCloth.new(body).to_html
    end
  end
end