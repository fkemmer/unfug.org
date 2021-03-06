# Tag helpers


def all_tags items
  items.map { |i| i.attributes[:tags] || [] }.flatten.uniq.sort
end

def generate_tag_pages
  all_tags(items).each do |tag|
    items << Nanoc::Item.new("", { :tag => tag }, "/tags/#{tag}/")
  end
end

