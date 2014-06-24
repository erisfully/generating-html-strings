class HTMLGenerator

  def section(string)
  "<section>#{string}</section>"

  end

  def unordered_list (list_items)
    #unecessarily complicated? Try simplifying it
   array = []
    list_items.each do |item|
      array.push(item)
    end
    list = array.join("</li><li>")
    "<ul><li>#{list}</li></ul>"
  end

  def button(button, options = nil)
   if options == nil
    "<button>#{button}</button>"
  else
    "<button class='#{options[:class]}'>#{button}</button>"
  end
  end
end