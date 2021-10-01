module ApplicationHelper
  def avatar_url(profile, size: 100)
    "https://eu.ui-avatars.com/api/?name=#{profile.name}&size=#{size * 2}}"
  end
end
