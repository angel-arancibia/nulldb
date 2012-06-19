require 'nulldb/core'

# Need to defer calling Rails.root because when bundler loads, Rails.root is nil
# Ugly quick fix ..
NullDB.configure {|ndb| def ndb.project_root; (not defined?(Padrino).nil? )? Padrino.root : Rails.root ;end}
