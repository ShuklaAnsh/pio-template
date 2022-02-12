all:
	pio -f -c vim run

upload:
	pio -f -c vim run --target upload

clean:
	pio -f -c vim run --target clean

program:
	pio -f -c vim run --target program

uploadfs:
	pio -f -c vim run --target uploadfs

update:
	pio -f -c vim update

init:
ifdef BOARD
	pio project init --ide vim --board ${BOARD}
else
	@echo "Missing BOARD. run 'make boards' to find board ID"
endif

boards:
	pio boards | fzf
