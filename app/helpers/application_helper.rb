module ApplicationHelper
  def in_years(years)
    t('helper.in_years', count: years)
  end

  def in_hours(hours)
    t('helper.in_hours', count: hours)
  end

  def action_on(resources, action)
    resource = Array(resources).last
    model_name = resource.is_a?(Symbol) ? resource.to_s : resource.class.model_name
    defaults = [
      :"helper.actions.#{model_name.downcase}.#{action}",
      :"helper.actions.#{action}"
    ]
    link_to t(defaults.shift, default: defaults), [action, *resources], class: ['action', action].join(' ')
  end

  def edit(resources)
    action_on(resources, :edit)
  end

  def delete(resources)
    action_on(resources, :delete)
  end
end
