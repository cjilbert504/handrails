require "handrails/version"
require "handrails/array"

module Handrails
  class Application
    def call(env)
      `echo debug > debug.txt`
      [200, { "Content-Type" => "text/html" },
      ["Hello from Ruby on Handrails!"]]
    end
  end
end
