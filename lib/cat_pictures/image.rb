module CatPictures
    class Images
        def initialize
            @client = CatPictures::Client.new("https://api.thecatapi.com/v1/")
        end
        
        def all
            response = []
            fiber = Fiber.new do
                while response.size < 10
                    response << client.get("images/search")
                end
            end
            fiber.resume
            response 
        end

        # def list(page = nil)
        #     client.get("character/#{id}")[:results]
        # end

        # def find(id)
        #     client.get("character/#{id}")
        # end

        private

        attr_reader :client
    end
end