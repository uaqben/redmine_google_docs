require 'redmine'
require 'digest/md5'
require 'yaml'
include ActionView::Helpers::JavaScriptHelper

module GoogleAppsMacros
  unloadable

  class DocumentMacros
    def self.get_doc(obj,args)
      wid = 800
      hei = 400
      if args.length > 1
        if args.length != 3
          raise "You will need two dimensions of iframe as arguments."
        else
          unless (args[1].to_i > 0) && (args[2].to_i >0)
            raise "Dimensions must be integers."
          else
            wid = args[1]
            hei = args[2]
          end
        end
      end
      if args[0].start_with?("https://docs.google.com/")
        out = "<iframe src='#{args[0]}' width='#{wid}' height='#{hei}'></iframe></br><a href='#{args[0]}' target='_blank'>Go to original Google Document</a>"
      else
        raise "It is not Google Apps document..."
      end
    end
  end
end