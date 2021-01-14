require 'rails_helper'


describe 'Authentication', type: :request do
    describe 'POST #login' do
        let(:user) { FactoryBot.create(:user, email: 'user@gmail.com', password: '123456') }

        it 'authenticates the client' do
            post '/api/v1/login', params: { email: user.email, password: '123456'}
            token = AuthenticationTokenService.call(user.id)
            expect(response).to have_http_status(:ok)
            expect(response_body).to eq({
                'token' => token
            })
        end

        it 'returns error when email is missing' do
            post '/api/v1/login', params: {  password: '123456'}

            expect(response).to have_http_status(:unprocessable_entity)
            expect(response_body).to eq({
                'error' => 'param is missing or the value is empty: email'
            })
        end

        it 'returns error when password is missing' do
            post '/api/v1/login', params: {  email: 'user@gmail.com'}

            expect(response).to have_http_status(:unprocessable_entity)
            expect(response_body).to eq({
                'error' => 'param is missing or the value is empty: password'
            })
        end

        it 'returns error when password is incorrect' do
            post '/api/v1/login', params: { email: user.email, password: 'incorrect'}

            expect(response).to have_http_status(:unauthorized)
        end
    end
end