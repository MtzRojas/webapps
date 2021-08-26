module RoleTypes
    extend ActiveSupport::Concern

    ROLES = %i[dev admin manager enterprise enterprise_manager enterprise_seeker]

    ROLES.each do |r|
      define_method("#{r}?") do
        user_roles = roles.map { |r| r.name.to_sym}
        user_roles.include? r
      end
    end
end