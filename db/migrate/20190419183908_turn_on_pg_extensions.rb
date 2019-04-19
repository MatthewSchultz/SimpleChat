class TurnOnPgExtensions < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    enable_extension 'hstore' unless extension_enabled?('hstore')
    enable_extension 'cube' unless extension_enabled?('cube')
    enable_extension 'earthdistance' unless extension_enabled?('earthdistance')
    enable_extension 'intarray' unless extension_enabled?('intarray')
  end
end
