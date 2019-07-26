module ApplicationHelper
  CLASSES = {
      success: "alert-success",
      error:"alert-danger",
      danger:"alert-danger",
      alert:"alert-warning",
      notice:"alert-info"
  }
  def bootstrap_class_for(name)

        [name.to_sym] || CLASSES
  end
end
