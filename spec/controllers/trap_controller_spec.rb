require 'rails_helper'

RSpec.describe TrapController, type: :controller do
  it 'should show index page' do
    get :index
    expect(response).to render_template 'index'
  end

  it 'should show requests page' do
    get :requests, params: {trap_id: 'new'}
    expect(response).to render_template 'requests'
  end

  it 'should render request template' do
    get :render_request
    expect(response).to render_template '_request'
  end
end