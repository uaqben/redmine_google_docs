require 'redmine'
require 'digest/md5'
require 'yaml'
include ActionView::Helpers::JavaScriptHelper

module GoogleAppsMacros
  unloadable
  class SpreadsheetMacros
    def self.get_spreadsheet(obj)
      out = "<iframe src='#{obj}' width='800' height='400'></iframe>"
    end
  end

  class DocumentMacros
    def self.get_doc(obj)
      out = "<iframe src='#{obj}' width='800' height='400'></iframe>"
    end
  end
end