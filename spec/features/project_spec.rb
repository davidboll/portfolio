describe 'Projects Page', type: :feature do
  it 'displays project list' do
    visit '/'

    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_content 'FizzBuzz'
    end
  end

  it 'renders footer partial' do
    visit '/'

    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'My Portfolio'
      expect(page).to have_content 'Built using the awesome Middleman framework'
    end
  end

  it 'renders projects' do
    visit '/'

    expect(page).to have_selector 'come-at-me'
    within 'come-at-me' do
      expect(page).to have_content 'See project on GitHub'
      expect(page).to have_content '.. or just hire me - I need the cash to feed my friend @Holger!!!'
    end
  end


end
