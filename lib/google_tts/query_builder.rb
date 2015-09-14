module GoogleTts

  class QueryBuilder

    def initialize(lang = :en)
      @lang = lang
    end

    def generate_from(*sentences)
      sentences.each_with_index.map do |sentence, index|
        "/translate_tts?ie=UTF-8&tl=#{@lang.to_s}&q=#{sentence}&client=t"
      end
    end

  end

end