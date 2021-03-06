module CapybaraDslExtensions
    def click_link_with_text(text)
        find('a', :text => text).click
    end

    def current_path_with_fragment
      current_url.sub(%r{.*?://},'')[%r{[/\?\#].*}] || '/'
    end

    def wait_until
        Timeout.timeout(Capybara.default_wait_time) { value = yield until value }
    end
end    