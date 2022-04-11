module Tracer
  def self.tag_web_param(params)
    current_span = Datadog.tracer.active_span
    params.&.each do |key, value|
      current_span.set_tag("web.param.#{key}", value)
    end
  end
end