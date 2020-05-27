# module Slugifiable
#     def slug
#         self.name.downcase.gsub(" ","-")
#     end

#     def self.find_by_slug(params)
#         self.all.find {|a| a.slug == "#{params[:slug]}"}
#     end

# end

module Slugifiable
    def self.find_by_slug(slug)
        self.all.find {|a| a.slug == "#{slug}"}
    end
    module InstanceMethods
      def slug
        self.name.downcase.gsub(" ", "-")
      end
    end
  end