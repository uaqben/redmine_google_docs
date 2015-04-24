require 'redmine'
require 'digest/md5'
require 'yaml'
include ActionView::Helpers::JavaScriptHelper

module GoogleAppsMacros
  unloadable

  class DocumentMacros
    def self.get_doc(obj,args)
      if args[0].start_with?("https://docs.google.com/")
        out = "<iframe src='#{args[0]}' width='800' height='400'></iframe></br><a href='#{args[0]}' target='_blank'>Go to original Google Document</a>"
      else
        raise "It is not Google Apps document..."
      end
    end
  end
end