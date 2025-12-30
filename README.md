# 8-bit Priority Encoder (Verilog)

A **priority encoder** is a combinational circuit that outputs the binary index of the highest-priority asserted input bit (commonly the MSB). If multiple input bits are `1`, the encoder selects the highest one and asserts `valid=1`. If the input is all zeros, `valid=0` and `out` falls back to a default value.

Concept reference: https://en.wikipedia.org/wiki/Priority_encoder

---

## I/O

- Input:
  - `in[7:0]`
- Output:
  - `out[2:0]`: index (0–7) of the highest-priority `1` bit (MSB-first)
  - `valid`: `1` when `in != 0`, otherwise `0`

---

## Behavior (MSB has highest priority)

- If `in[7]=1` → `out=7`
- else if `in[6]=1` → `out=6`
- ...
- else if `in[0]=1` → `out=0`
- If `in==0` → `valid=0`, `out=0` (default)

---

## Simulation

Simulate and print results at specific timestamps (ns). Example output:
<p align="center">
  <img width="436" height="169" alt="image"
       src="https://github.com/user-attachments/assets/8a951080-14a3-4554-920a-91a1d771d899" />
</p>
Quick interpretation:

- `in = 128` (`1000_0000b`) → bit 7 is `1` ⇒ `out = 7`, `valid = 1`
- `in = 144` (`1001_0000b`) → bits 7 and 4 are `1`, MSB wins ⇒ `out = 7`, `valid = 1`
- `in = 0` → no asserted bits ⇒ `valid = 0`, `out = 0`

---

