# mini-cpu-verilog
用verilog设计的一个迷你简易cpu
# 8-bit ALU + Control Unit + Register — Verilog 数字电路设计与仿真

本项目是一个基于 Verilog HDL 的 8-bit 数字电路系统，包含算术逻辑单元（ALU）、寄存器、控制单元，以及完整的仿真验证环境。


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


大二电科学生第一次尝试做了一点自己感兴趣的东西，其实整个过程是边写边问边学，虽然verilog编程理解的时候有点痛苦，但是慢慢感到一些不懂的东西在逐一被攻破，慢慢理解，最后设计看到成果的时候，还是有点小开心的。虽然并非什么很高级的项目和编程，但是对于还没有系统性学习模电和数电的大二学生来说，做完这些东西还是有点成就感的。从下载软件困难到逐渐上手，我感觉这个过程还是很值得的。不过现在还是有点迷茫，不知道是继续走fgpa还是走嵌入式开发，我本人更喜欢fgpa和数字前端，但是从现实的角度来讲，嵌入式开发对我而言或许是一个更好的选择。还是有点焦虑，感觉大二了还不会做这些，大一感觉转专业以后就有点碌碌无为了，很迷茫，想走的发展方向似乎没有前景，而没有项目和进组经历对于想考研的本科生真的算是很大的破绽和缺陷了。我的编程能力也没有很突出，包括这个项目也是在一知半解的过程中缓慢推进的，好无力，或许我还是太功利了，我不喜欢优绩主义，但也在被推着走，算了，现在还是先走一步看一步吧。2026.09.05
