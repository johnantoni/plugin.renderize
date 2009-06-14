module RenderHelpers
end

class String
  def text_filter(type = :plain)
    case type
      when :plain
        return self.to_s
      when :markdown
        require 'rdiscount'
        return RDiscount.new(self).to_html
      when :textile
        require 'redcloth'
        return RedCloth.new(self).to_html
    end
  end
end