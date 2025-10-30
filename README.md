# ECE-4300-Coing-Assignment-1
- mux.v – Selects the next program counter (PC) source: either from PC_from_ExMem or the incrementer.

- pc.v – Stores the current PC value and updates it with the selected next PC address each clock cycle.

- incrementer.v – Calculates the next sequential instruction address by adding 1 to the current PC value.

- instrMem.v – Holds the instruction memory and outputs the instruction corresponding to the current PC address.

- ifIdLatch.v – Latches both the fetched instruction and the next PC value for the decode stage.

- fetch.v – Integrates all components to the next stage.
