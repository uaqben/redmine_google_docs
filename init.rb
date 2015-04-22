require 'redmine'

require File.dirname(__FILE__) + '/lib/google_apps_macros.rb'

Redmine::Plugin.register :redmine_googlesss do
  name "Google Docs Plugin"
  author 'Tavish Armstrong'
  description 'Embed Google Docs in your redmine pages.'
  version '0.0.2'

  Redmine::WikiFormatting::Macros.register do
    desc = "Redmine Google Spreadsheet Macro (gs)"
    macro :gs do |obj|
      out = GoogleAppsMacros::SpreadsheetMacros.get_spreadsheet(obj).html_safe
    end
    
    desc = "Redmine Google Document Macro (googledoc)"
    macro :googledoc do |obj|
      GoogleAppsMacros::DocumentMacros.get_doc(obj).html_safe
    end
  end
end
