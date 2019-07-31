ActiveAdmin.register Post do
  permit_params :title, :content
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :content
      f.file_field :avatars
      f.input :tag_ids, as: :select, collection: Tag.order(:name), label_method: :name, input_html: { multiple: true }
    end
    f.actions
  end
end
