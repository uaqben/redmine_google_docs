require 'redmine'
require 'digest/md5'
require 'yaml'
include ActionView::Helpers::JavaScriptHelper

module GoogleAppsMacros
  unloadable

  class DocumentMacros
    def self.get_doc(obj,args)
      wid = 100%
      hei = 600
      if args.length > 1
        if args.length != 3
          raise "You will need two dimensions of iframe as arguments."
        else
          unless (args[1].to_i >= 300) && (args[2].to_i >= 300)
            raise "Dimensions must be integers, both >= 300."
          else
            wid = args[1]
            hei = args[2]
          end
        end
      end
      if args[0].start_with?("https://docs.google.com/")
        out = "<iframe src='#{args[0]}' width='#{wid}' height='#{hei}'></iframe></br><a id='gdoc-btn' href='#{args[0]}' target='_blank'>Open in Google Doc</a>"
      else
        raise "It is not Google Apps document..."
      end
    end
  end
end
