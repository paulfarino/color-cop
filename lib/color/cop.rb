require "color/cop/version"

module Color
  module Cop
    # Your code goes here...
    class CLI
      def execute!
        puts "SCSS files within current path that have hex codes:"
        files_names = Dir.glob("**/*") # for all files

        files_names.select do |file_name|
          if file_name =~ /^.*\.scss$/
            File.read(file_name) =~ /#\w{3,6}/
          else
            false
          end
        end.each do |files_name|
          puts "- #{files_name}"
        end
      end
    end
  end
end
