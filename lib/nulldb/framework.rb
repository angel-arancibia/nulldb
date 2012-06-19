require 'nulldb/core'

# Need to defer calling Rails.root because when bundler loads, Rails.root is nil

# Ugly quick fix ..
root = nil
root = Rails.root unless defined?(Rails).nil?
root = Padrino.root unless defined?(Padrino).nil?

raise Exception, "Project root not defined" if root.nil?

NullDB.configure {|ndb| def ndb.project_root;root;end}
