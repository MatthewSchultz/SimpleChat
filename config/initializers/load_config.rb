# Load some non-sensitive config values:
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]
