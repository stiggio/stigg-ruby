# frozen_string_literal: true

module Stigg
  module Internal
    # @generic Elem
    #
    # @example
    #   if my_cursor_id_page.has_next?
    #     my_cursor_id_page = my_cursor_id_page.next_page
    #   end
    #
    # @example
    #   my_cursor_id_page.auto_paging_each do |customer|
    #     puts(customer)
    #   end
    class MyCursorIDPage
      include Stigg::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Pagination]
      attr_accessor :pagination

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && (!pagination&.prev.to_s.empty? || !pagination&.next_.to_s.empty?)
      end

      # @raise [Stigg::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Stigg::Internal::Util.deep_merge(
          @req,
          {query: pagination&.prev.nil? ? {after: pagination&.next_} : {before: pagination&.prev}}
        )
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Stigg::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { Stigg::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {pagination: Hash | nil => pagination}
          @pagination =
            Stigg::Internal::Type::Converter.coerce(Stigg::Internal::MyCursorIDPage::Pagination, pagination)
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Stigg::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class Pagination < Stigg::Internal::Type::BaseModel
        # @!attribute next_
        #
        #   @return [String, nil]
        optional :next_, String, api_name: :next

        # @!attribute prev
        #
        #   @return [String, nil]
        optional :prev, String

        # @!method initialize(next_: nil, prev: nil)
        #   @param next_ [String]
        #   @param prev [String]
      end
    end
  end
end
