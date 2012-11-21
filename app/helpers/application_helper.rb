module ApplicationHelper
  def in_years(years)
    t('helper.in_years', count: years)
  end

  def in_hours(hours)
    t('helper.in_hours', count: hours)
  end

  def action_on(resources, action=:show)
    resource = Array(resources).last
    model_name = resource.is_a?(Symbol) ? resource.to_s : resource.class.model_name
    defaults = [
      :"helper.actions.#{model_name.downcase.singularize}.#{action}",
      :"helper.actions.#{action}"
    ]
    action = nil if [:index, :show].include? action
    link_to t(defaults.shift, default: defaults), [action, *resources], class: ['action', action].join(' ')
  end

  def edit(resources)
    action_on(resources, :edit)
  end

  def delete(resources)
    action_on(resources, :delete)
  end

  def login_provider(provider) 
    link_to provider.to_s.humanize, auth_at_provider_path(provider), class: ['login',provider]
  end
  def login_twitter
    login_provider(:twitter)
  end
  def login_facebook
    login_provider(:facebook)
  end

  def login_logout
    if current_user
      link_to "logout (#{current_user.username})", logout_path, class: 'action'
    else
      link_to 'login', login_path, class: 'action'
    end
  end
end
