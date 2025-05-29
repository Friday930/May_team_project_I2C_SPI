# SPI, I2C with AXI Microblaze

> **2025년 HARMAN Semicon Academy 1기** <br/> **개발기간: 2025.05.17 ~ 2025.25**

## 개발팀 소개

|박호윤                                          |박지수                                            |임윤재                                     |함영은                                      |                                                                               
| :--------------------------------------------: | :--------------------------------------------: | :---------------------------------------: | :---------------------------------------: |
|   [@cong2738](https://github.com/cong2738)     |    [@Friday930](https://github.com/Friday930)  | [@immune](https://github.com/immune1029)  | [@heyhoo46](https://github.com/heyhoo46)  |
|              I2C design & develop              |              SPI design & Simulate             |            SPI design & develop           |           I2C design & Simulate           |

## Introduce

- I2C & SPI Communication  
Learn how microcontrollers talk to peripheral devices — by actually making them talk.
This project explores I2C and SPI protocols through hands-on implementation and analysis.<br/>
**"Nothing beats learning low-level communication than writing it yourself."**<br/>
CPU가 주변 장치가 대화하는 법, 직접 구현하며 배운다.
I2C와 SPI 통신을 실습하고 분석한 프로젝트로, 하드웨어의 신호 흐름을 눈으로 보고, 손으로 느끼며 이해한다.<br/>
**"직접 하드웨어을 구현해보는 것만큼 확실한 공부법은 없다."**<br/>

## Stacks

### Environment

![Vivado](https://img.shields.io/badge/Tool-Vivado-904cab?style=for-the-badge&logo=&logoColor=white)
![Verdi](https://img.shields.io/badge/Tool-Verdi-00c853?style=for-the-badge)
![VCS](https://img.shields.io/badge/Tool-VCS-00695c?style=for-the-badge)

### Development

![C](https://img.shields.io/badge/Language-C-00599C?style=for-the-badge&logo=c)
![Verilog](https://img.shields.io/badge/HDL-Verilog-ff5722?style=for-the-badge)
![SystemVerilog](https://img.shields.io/badge/HDL-SystemVerilog-ff9800?style=for-the-badge)

### Hardware

![Basys3](https://img.shields.io/badge/Board-Basys3-2196f3?style=for-the-badge)        
![Microblaze](https://img.shields.io/badge/CPU-MicroBlaze-9c27b0?style=for-the-badge)        
![AXI](https://img.shields.io/badge/Bus-AXI-673ab7?style=for-the-badge)

## Design

### SPI

- transmission design<br/>
    ![SPI transmission design](./발표자료/spi%20데이터구조.png)        
- SPI Master ASM<br/>
    ![SPI MASTER ASM](./발표자료/SPI_Master%20ASM.png)        
- SPI Slave ASM<br/>
    ![SPI Slave ASM](./발표자료/SPI_SLAVE%20ASM.png)        

### I2C

- transmission design<br/>
    ![SPI transmission design](./발표자료/i2C%20데이터구조.png)        
- I2C Master  
    - Block Diagram<br/>
        ![I2C Master Diagram](./발표자료/I2C%20master%20blockdiagram.drawio.png)        
    - ASM FLOW<br/>
        ![I2C Master ASM](./발표자료/I2C%20ASM-MASTER.drawio.png)        
- I2C Slave<br/>
    - ASM  FLOW<br/>
        ![I2C Slave ASM](./발표자료/I2C%20ASM-SLAVE.drawio.png)        

## Layout, Circuit

![Layout](./발표자료/박_프로젝트%20개요.png)

### SPI

![SPI Layout](./발표자료/SPI%20간략한%20회로.drawio.png)        
- Master device<br/>
![SPI Circuit](./발표자료/SPI마스터블록디자인.png)        
- Slave device<br/>
![SPI Circuit](./발표자료/SPI%20슬레이브%20회로도.png)        

### I2C

![I2C Layout](./발표자료/I2C%20시뮬레이션%20회로.drawio.png)        
- Master device<br/>
![I2C Block Circuit](./발표자료/I2C%20MASTER%20블록디자인.png)        
- Slave device<br/>
![I2C Circuit](./발표자료/I2C%20Slave%20회로도.png)    

## Circuit Output

- SPI Master LogicAnalyzer Probe<br/>
    ![SPI Output](./발표자료/SPI%20마스터%20로직애널라이저.png)        
- I2C Master LogicAnalyzer Probe<br/>
    ![I2C Output Start](./발표자료/I2C%20START%20LogicAnalyzer.png)        
    ![I2C Output Stop](./발표자료/I2C%20STOP%20LogicAnalyzer.png)        
    ![I2C Output](./발표자료/I2C%20Master%20LogicAnalyzer.png)        

## video  
- SPI, I2C<br/>
    ![SPI구동영상](https://postfiles.pstatic.net/MjAyNTA1MjdfMTY1/MDAxNzQ4MzI5NzczMzQ1.0rVJIsy3Zy5-IfmdKgNdK-Q7k70kzMUZdIzlQ_JFKj4g.1kulSU3kboCS1GpMRQC4GONyKVyJptcYAsKZ_4g8voog.GIF/I2C구동영상.gif?type=w3840)
    ![I2C구동영상](https://postfiles.pstatic.net/MjAyNTA1MzBfMTIy/MDAxNzQ4NTQ0NTE5ODYx.gVIZN1fNdZ8PpO5oSpZfFQ-ktJwEtWzgrvBirKnTgzog.8m49Rc3s44-fpyPHICq0ZUGk2e3t8Lg1RCqTTy2xT70g.GIF/image44%EF%BC%8D1.gif?type=w3840)<br/>  

## 디렉토리 구조

```bash
project
├── C : program demo
├── project_i2C_microblaze : I2C device block
├── project_I2C_SIMULATION : I2C Simulation(vivado SV SIM)
├── project_I2C : I2C modules
├── SPI
│   ├── 20250522_SPI_master_Slave_moudle : SPI module
│   └── 20250523_SPI_AXI_Master_MICROBLAZE : SPI device block
├── SPI_I2C_UVM : SPI Simulation(synopsys VCS SIM, verdi)
└── 발표자료
```
