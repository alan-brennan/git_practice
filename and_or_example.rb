def notify(message)
    puts "*** #{message}"
end

enable_notifications = false

enable_notifications or notify "Something happened"
