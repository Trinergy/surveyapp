class FormsController < ApplicationController
  def home
  end

  def new
    @form = Form.new
    3.times do @form.questions.build end
    @form.questions.each do |question|
      question.answers.build
    end
  end

  def create
    @form = Form.new(form_params)

    if @form.save
      redirect_to @form
    else
      render 'new'
    end
  end

  def show
    @form = Form.find(params[:id])
  end

  private

  def form_params
    params.require(:form).permit(
      :title, 
      :description, 
      :template,
      questions_attributes: [
        :form_id, 
        :content,
        :order, 
        '_destroy', 
        answers_attributes: [ 
          :question_id, 
          :name, 
          :content, 
          :answer_type, 
          :selected, 
          :order,
          :correct]
        ]
      )
  end

end
