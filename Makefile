all:
	pio -c vim run

upload:
	pio -c vim run --target upload

clean:
	pio -c vim run --target clean

program:
	pio -c vim run --target program

uploadfs:
	pio -c vim run --target uploadfs

update:
	pio -c vim update

upload_monitor:
	pio -c vim run -t upload -t monitor

init:
ifdef BOARD
	pio project init --ide vim --board ${BOARD}
else
	@echo "Missing BOARD. run 'make boards' to find board ID"
endif

boards:
	pio boards | fzf
