class HTMLGenerator

  def initialize(layout = nil)
    @layout = layout
  end

  def section(string)
    if @layout == nil
    "<section>#{string}</section>"
    else
      "<main><section>#{string}</section></main>"
    end
  end

  def unordered_list (list_items)
    if @layout == nil
   array = []
    list_items.each do |item|
      array.push(item)
    end
    list = array.join("</li><li>")
    "<ul><li>#{list}</li></ul>"
    else
      "<div><ul><li>#{list_items[0]}</li></ul></div>"
    end
  end

  def button(button, options = nil)
   if @layout == nil
    if options == nil
    "<button>#{button}</button>"
    else
    "<button class='#{options[:class]}'>#{button}</button>"
    end
   else
     "<section><button>#{button}</button></section>"
   end
  end
end