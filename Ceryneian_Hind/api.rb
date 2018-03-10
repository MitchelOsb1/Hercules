require 'oauth2'
require 'colorize'

UID = ENV["SUID"]
SECRET = ENV["SECRET"]
client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")
token = client.client_credentials.get_token

response = token.get("/v2/users")
until response.status == 200 do
    puts "Waiting on connection".white    
    response = token.get("/v2/users")
    sleep(5.seconds)
end

if ARGV[0]
    if File.extname(ARGV[0]) == ".txt"
        File.open(ARGV[0]).each_line do |line|
            username = line.chomp
            begin
                user = token.get("/v2/users/#{username}").parsed
                loco = user["location"]
                level = user["cursus_users"][0]["level"]
                if loco
                    puts "#{username}".white + " is on ".blue + "#{loco}".green + " and Level: ".blue + "#{level}".green
                else
                    puts "#{username}".white + " is unavailable".yellow
                end
            rescue
                puts "#{username}".white + " does not exist".red
            end
        end
    end
else
    puts "Usage: ruby api.rb [test.txt]".red
end
