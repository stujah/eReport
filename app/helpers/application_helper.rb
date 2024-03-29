module ApplicationHelper
  def link_to_add_fields(name, fi, association)
    new_object = fi.object.send(association).klass.new
    id = new_object.object_id
    fields = fi.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", fi: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
end
