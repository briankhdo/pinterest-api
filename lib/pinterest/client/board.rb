module Pinterest
  class Client
    module Board

      def get_board(id, options={})
        get("boards/#{id}", options)
      end

      def create_board(params={})
        post('boards', params)
      end

      def update_board(params={})
        patch('boards', params)
      end

      def delete_board(id)
        delete("boards/#{id}")
      end

      def get_board_pins(id, cursor = nil, options={})
        options[:cursor] = cursor if cursor.present?
        get("boards/#{id}/pins", options)
      end

    end
  end
end
