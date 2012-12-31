module ApplicationHelper


  def devise_error_messages2!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="row">
    <div id="error_explanation" class="alert alert-error span4">
      <strong>#{sentence}</strong>
      <ul>#{messages}</ul>
    </div>
    </div>
    HTML

    html.html_safe
  end
  
end
