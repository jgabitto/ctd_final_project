require 'rails_helper'


describe 'Authentication', type: :request do
    describe 'POST /authenticate' do
        it 'authenticates the client' do
            post '/api/v1/authenticate', params: { email: 'j@gmail.com', password: '123456'}

            expect(response).to have_http_status(:created)
            expect(response_body).to eq({
                'token' => '123'
            })
        end

        it 'returns error when email is missing' do
            post '/api/v1/authenticate', params: {  password: '123456'}

            expect(response).to have_http_status(:unprocessable_entity)
            expect(response_body).to eq({
                'error' => 'param is missing or the value is empty: email'
            })
        end

        it 'returns error when password is missing' do
            post '/api/v1/authenticate', params: {  email: 'j@gmail.com'}

            expect(response).to have_http_status(:unprocessable_entity)
            expect(response_body).to eq({
                'error' => 'param is missing or the value is empty: password'
            })
        end
    end
end