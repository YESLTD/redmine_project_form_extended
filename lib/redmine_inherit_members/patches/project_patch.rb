module RedmineInheritMembers
  module Patches
    module ProjectPatch
      def self.included(base)
        base.class_eval do
          unloadable

          def inherit_members
            default = super
            self.new_record? || default.nil? ? Setting.plugin_redmine_inherit_members.try(:[], 'inherit_members') == '1' : default
          end
        end
      end
    end
  end
end
