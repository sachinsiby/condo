require 'active_record'
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'condo/extensions/controller'
require 'condo/extensions/model'
require 'condo/tenant/switch'

ActiveRecord::Base.extend(Condo::Extensions::Model)
