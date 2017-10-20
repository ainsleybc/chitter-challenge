feature 'signing up for chitter' do
  
    scenario 'I can sign up to chitter' do
      expect { sign_up }.to change { User.all.count }.by 1
      expect(current_path).to eq '/peeps'
      expect(page).to have_content 'Welcome, Ainsley'
    end
    scenario 'I cannot sign up twice with the same email' do
      sign_up(email: 'example@email.com')
      expect { sign_up(email: 'example@email.com') }.to_not change(User, :count)
      expect(page).to have_content 'email already exists'
    end
    scenario 'I cannot sign up twice with same handle' do
      sign_up(handle: '#hashtag')
      expect { sign_up(handle: '#hashtag') }.to_not change(User, :count)
      expect(page).to have_content 'handle already exists'
    end
    scenario 'I cannot sign up with an invalid email address' do
      sign_up(email: 'no@email')
      expect(current_path).to eq '/users'
      expect(page).to have_content 'enter a valid email'
    end
  
  end
