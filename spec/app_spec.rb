describe "App" do
  it "responds with HTML" do
    
    get "/"
    # Inspect the body of the response
    expect(last_response.body).to include("<h2>Hello <em>World</em>!</h2>")
  end
end
