=begin
NOTEPAD--
A Free Open Source "TEXT EDITOR"
                    [NOW PORTED TO RUBY!]

Dom G. 2023
=end

# Last Updated: 5/6/2023

# Constants
PROG_VERSION = 1.0
BREAK_CASE_STR = "Notepad--, please exit this program. I am done typing my file now."

# Main Function
def main()
    # Display program title
    printTitle()

    # Display welcome message and instructions
    puts "Please enter the word START to start having extreme amounts of fun."
    puts "You can't type start. This is case sensitive. This is by design. Feature not bug."
    puts "\n\n"

    # Loop to get and validate user input
    loop do
        # Get user's input string
        print "Do you want to start?: "
        start_intent = gets.chomp

        # Check if the string is equal to "START"
        if start_intent != "START"
            # If not, print error message and continue prompting
            puts "THAT IS NOT 'START'!!!! TYPE IT RIGHT OR YOU WON'T EVER GET TO SEE YOUR FAMILY AGAIN."
        else
            # Otherwise, move on
            break
        end     # End of validation
    end     # End of loop

    # Call writing function
    writingFile()
end


def printTitle()
    puts "======================================================"
    puts "eeeee eeeee eeeee eeee eeeee eeeee eeeee"
    puts "8   8 8  88   8   8    8   8 8   8 8   8"
    puts "8e  8 8   8   8e  8eee 8eee8 8eee8 8e  8   #### ####"
    puts "88  8 8   8   88  88   88    88  8 88  8"
    puts "88  8 8eee8   88  88ee 88    88  8 88ee8"
    puts "======================================================"
    puts "                                                 v#{PROG_VERSION.round(1)}"
    puts "\n\n"
end

def writingFile()
    # Set empty matrix to hold text input for file writing
    text_to_output = []

    # Print the instruction text
    puts "\n\n\n"
    puts "You can now start typing. To finish your file, please type this exact phrase (excluding quotation marks):"
    puts "Notepad--, please exit this program. I am done typing my file now."
    puts "\n\n"

    # Start looping to write file
    loop do
        # Allow user to type a line
        current_line = gets.chomp
        
        # Check if that line is equal to the break case string
        if current_line == BREAK_CASE_STR
            # If so, break loop
            break
        end
        
        # Push written line onto text_to_output array
        text_to_output.push(current_line)
    end

    # Get file name
    print "Enter file name to output to (ENDING IN YOUR FILE EXTENSION): "
    file_name = gets.chomp

    # Write lines to file with given file name
    File.open(file_name, "w") do |file|
        # Iterate over each line in text_to_output
        text_to_output.each do |line|
            # Write line to file
            file.puts line
        end     # End of line iteration
    end     # End of file writing
end

# Run program
main()