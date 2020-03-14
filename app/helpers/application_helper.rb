# frozen_string_literal: true

module ApplicationHelper

    def group_icon(group)
        if group.icon.empty?
                return "https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.hotavatars.com%2Fwhat-is-an-avatar-and-its-use-on-the-internet%2F&psig=AOvVaw05xF8RdjEiWhk8kb-m4lvm&ust=1584234945183000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLDv6PbkmOgCFQAAAAAdAAAAABAD"
            else
                return group.icon
        end
    end
    
    
end
