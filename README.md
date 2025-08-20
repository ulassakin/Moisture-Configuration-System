# FPGA-Based Smart Plant Moisture Monitoring System 🌱💧

## 📖 Project Overview
This project implements a **smart soil moisture monitoring system** using a **Basys3 FPGA board** and an **Arduino Uno with a soil moisture sensor**.  
The goal is to determine whether the plant needs water, based on real-time soil moisture data, and provide **interactive visualization and control** through FPGA peripherals.

The system includes:
- **Arduino → FPGA data transfer** (sensor interface).
- **LCD Display (16x2)** showing current soil moisture level and irrigation status.
- **7-Segment Display** showing the **desired soil moisture threshold** as a percentage.
- **Basys3 Switches** for adjusting the desired soil moisture level in real-time.
- **Decision Logic** that compares the current vs. desired moisture and determines watering needs.

---

## 🛠️ Hardware Components
- **Digilent Basys3 FPGA Board (Xilinx Artix-7)**  
- **Arduino Uno** (for reading soil moisture sensor)  
- **Soil Moisture Sensor**  
- **16x2 LCD Display**  
- **4-digit 7-Segment Display (on Basys3)**  
- **Basys3 On-board Switches & LEDs**  

---

## 🧩 System Architecture
```text
          +----------------+
          | Soil Moisture  |
          |    Sensor      |
          +--------+-------+
                   |
                   v
          +----------------+
          |    Arduino     |
          |  (ADC + UART)  |
          +--------+-------+
                   |
                   v
          +----------------+
          |    Basys3 FPGA |
          | (top_module.vhd)|
          +--------+-------+
                   |
   -----------------------------------
   |                 |               |
   v                 v               v
+------+       +-----------+     +-----------+
| LCD  |       |  7-Seg    |     | Switches  |
|16x2  |       | Display   |     | (User Set |
|      |       | (ssd_top) |     | Threshold)|
+------+       +-----------+     +-----------+
