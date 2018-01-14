
compile:
	echo "var output=`solc --optimize --combined-json abi,bin,interface ethtest.sol`" >ethtest.js

run:
	geth --datadir ${HOME}/.ethereum --dev

clean:
	rm -vf ethtest.js

.PHONY: compile run clean

