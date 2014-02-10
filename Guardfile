require "./app"

guard "sprockets2", :sprockets => App.sprockets  do
  watch %r(^assets/.+$)
  watch "app.rb"
end

guard "livereload" do
  watch %r(^assets/.+$)
  watch %r(^views/.+$)
  watch "app.rb"
end
