require 'redmine'
require 'digest/md5'
require 'yaml'
include ActionView::Helpers::JavaScriptHelper

module GoogleAppsMacros
  unloadable
  class SpreadsheetMacros
    def self.get_spreadsheet(obj,args)
      out = "<iframe src='#{args[0]}' width='800' height='400'></iframe>"
    end
  end

  class DocumentMacros
    def self.get_doc(obj,args)
      out = "<iframe src='#{args[0]}' width='800' height='400'></iframe>"
    end
  end
end