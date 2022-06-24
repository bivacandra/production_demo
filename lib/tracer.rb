# frozen_string_literal: true
# module Tracer
#   def self.tag_web_param(params)
#     current_span = Datadog.tracer.active_span
#     params&.each do |key, value|
#       current_span.set_tag(key, value)
#     end
#   end
# end
