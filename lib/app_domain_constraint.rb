class AppDomainConstraint
  def self.matches?(request)
    ['www', '', nil].include? request.subdomain
  end
end
