# mini-cpu-verilog
用verilog设计的一个迷你简易cpu
# 8-bit ALU + Control Unit + Register — Verilog 数字电路设计与仿真

本项目是一个基于 Verilog HDL 的 8-bit 数字电路系统，包含算术逻辑单元（ALU）、寄存器、控制单元，以及较为完整的仿真验证环境。


---

## 功能列表
- 8-bit 加法（ADD）
- 8-bit 减法（SUB）
- 按位与（AND）
- 按位或（OR）
- 按位异或（XOR）
- 指令译码（Control Unit）
- 数据锁存（8-bit Register）
- Testbench 自动验证
- GTKWave 波形分析

---

## 系统结构
opcode → Control Unit → ALU → result
↑
Register


---

## 仿真结果

### ALU 波形
![ALU 波形](docs/waveform.png)

### 寄存器波形
![寄存器波形](docs/register_waveform.png)

### 控制单元波形
![控制单元波形](docs/control_unit_waveform.png)

### CPU 数据通路波形
![CPU 波形](docs/cpu_waveform.png)

---

## 工具链
- Verilog HDL
- Icarus Verilog（iverilog）
- GTKWave
- VS Code

---

## 运行方式

### 1. 编译并运行 ALU 测试
```bash
iverilog -o alu_tb.vvp src/alu.v alu_tb.v
vvp alu_tb.vvp

### 2. 编译并运行寄存器测试
iverilog -o register_tb.vvp src/register.v register_tb.v
vvp register_tb.vvp

### 3. 编译并运行控制单元测试
iverilog -o control_unit_tb.vvp src/control_unit.v control_unit_tb.v
vvp control_unit_tb.vvp

### 4. 编译并运行完成CPU通路测试
iverilog -o cpu_tb.vvp src/cpu.v src/control_unit.v src/alu.v cpu_tb.v
vvp cpu_tb.vvp

### 5. 查看波形图
gtkwave x_waveform .vcd

