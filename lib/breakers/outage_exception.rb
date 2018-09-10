require 'faraday/error'

module Breakers
  # The error that is raised when a request is made against a service that is
  # experiencing an outage
  class OutageException < Faraday::TimeoutError
    attr_reader :outage
    attr_reader :service

    def initialize(outage = nil, service = nil)
      @outage = outage
      @service = service
    end

    def service_name
      @service.try(:name) ? @service.name : 'unknown_service'
    end

    def outage_start_time
      @outage.try(:start_time) ? @outage.start_time : nil
    end

    def message
      "Outage detected on #{service_name} beginning at #{outage_start_time.to_i}"
    end
  end
end
