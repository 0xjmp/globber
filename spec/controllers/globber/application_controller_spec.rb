require 'rails_helper'

describe ApplicationController, type: :controller do

  describe 'GET #index' do
    it 'should return JSON response from remote server' do
      get :index, route: '/1/caliber/popular'
      expect(assigns(:data)).to be
    end
  end

end