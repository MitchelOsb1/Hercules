require 'oauth2'
require 'colorize'

UID = ENV["SUID"]
SECRET = ENV["SECRET"]
client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")
token = client.client_credentials.get_token

# def locator(username)
#     begin
#         location = token.get("/v2/users/#{username}/locations?filter[active]=true").parsed
#         if location[0]
#             host = location[0]["host"]
#             puts "#{username} is in #{host}".green
#         else
#             puts "#{username} is unavailable".red
#         end
#     rescue
#         puts "#{username} ".blue + "does not exist".red
#     end
# end

if (ARGV[0])
    if File.extname(ARGV[0]) == ".txt"
        File.open(ARGV[0]).each_line do |line|
            username = line.chomp
            begin
                location = token.get("/v2/users/#{username}/locations?filter[active]=true").parsed
                if location[0]
                    host = location[0]["host"]
                    puts "#{username} ".blue + "is in #{host}".green
                else
                    puts "#{username} ".blue + "is unavailable".red
                end
            rescue
                puts "#{username} ".blue + "does not exist".red
            end
        end
    end
else
    puts "Usage: ruby api.rb [test.txt]".red
end

