# frozen_string_literal: true

# Load imprint

legal = "#{Rails.root}/config/legal.md"

Rails.configuration.legal = if File.exist?(legal)
  File.read(legal)
else
  false
end
