require 'kramdown'

class EditorController < ApplicationController
  def index
    @text = params['text']

    if @text.present?
      @html = Kramdown::Document.new(@text).to_html
    else
      @html = ''
    end
  end
end
