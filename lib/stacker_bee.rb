require_stacker_bee = if defined?(require_relative)
  lambda do |path|
    require_relative path
  end
else # for 1.8.7
  lambda do |path|
    require "stacker_bee/#{path}"
  end
end

%w(version utilities api configuration connection client request response middleware/request/signed_query).each do |file_name|
  require_stacker_bee["stacker_bee/#{file_name}"]
end
