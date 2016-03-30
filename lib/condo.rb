require 'active_record'
require 'request_store'
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'condo/tenant/switch'
require 'condo/extensions/model'

ActiveRecord::Base.extend(Condo::Extensions::Model)
