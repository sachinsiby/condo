require 'active_record'
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'condo/extensions/controller'
require 'condo/extensions/model'

ActiveRecord::Base.extend(Condo::Extensions::Model)
