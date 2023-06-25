.SILENT: all clean
TITLE = Guessing game
output = README.md
script = guessinggame.sh

all:
	echo "- The title of the project: *$(TITLE)*" > $(output)
	echo "- The date and time at which make was run: *$$(date)*" >> $(output)
	echo "- The number of lines of code contained in $(script): *$$(cat $(script) | wc -l)*" >> $(output)

clean:
	rm -f $(output)
