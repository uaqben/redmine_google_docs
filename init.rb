require 'redmine'

require File.dirname(__FILE__) + '/lib/google_apps_macros.rb'

Redmine::Plugin.register :redmine_google_docs do
  name "Google Docs Plugin"
  author 'Tavish Armstrong'
  description 'Embed Google Docs in your redmine pages.'
  version '0.0.2'

  Redmine::WikiFormatting::Macros.register do
    
    desc = "Redmine Google Document Macro (googledoc)"
    macro :google do |obj,args|
      GoogleAppsMacros::DocumentMacros.get_doc(obj,args).html_safe
    end
  end
end
