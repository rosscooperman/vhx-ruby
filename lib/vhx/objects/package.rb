module Vhx
  class Package < VhxObject
    include Vhx::ApiOperations::Create
    include Vhx::ApiOperations::Request

    def add_video(identifier)
      response = Vhx.connection.put do |req|
        req.url('/packages/' + self.id.to_s + '/videos')
        req.body = { video: get_hypermedia(identifier, 'Video') }
      end

      self
    end

    def remove_video(identifier)
      response = Vhx.connection.delete do |req|
        req.url('/packages/' + self.id.to_s + '/videos')
        req.body = { video: get_hypermedia(identifier, 'Video') }
      end

      self
    end

  end
end