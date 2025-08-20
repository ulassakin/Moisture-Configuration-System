# FPGA-Based Smart Plant Moisture Monitoring System 🌱💧

## 🎥 Demo Video

[![Watch the video](https://img.youtube.com/vi/RiimP4g_YFQ/0.jpg)](https://www.youtube.com/watch?v=RiimP4g_YFQ)


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
          |(top_module.vhd)|
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

```
## ⚙️ Functional Description

### 🔹 Data Acquisition
- The **Arduino Uno** continuously reads values from the soil moisture sensor.  
- These values are transmitted to the **Basys3 FPGA** for further processing.  
- The FPGA treats this input as the **actual soil moisture percentage** of the plant.  

---

### 🔹 Decision Logic
- The central controller (`top_module.vhd`) compares the **actual soil moisture** with the **desired threshold**.  
- The desired threshold can be set dynamically using the **Basys3 onboard switches**.  
- Based on this comparison, the FPGA generates a decision output:  
  - ✅ **Enough Water** → when actual moisture ≥ desired value  
  - ⚠️ **Needs Water** → when actual moisture < desired value  

---

### 🔹 LCD Display (`lcd16x2.vhd`)
- **Line 1** → Displays the **current soil moisture percentage** measured by the sensor.  
- **Line 2** → Displays the irrigation status, such as:  
  - `"NEEDS WATER"`  
  - `"ENOUGH WATER"`  

This provides the user with **real-time soil condition feedback** directly on the LCD screen.  

---

### 🔹 7-Segment Display (`ssd_top.vhd` + `ssd_sub.vhd`)
- The **desired moisture threshold** set by the user is shown on the Basys3’s **4-digit 7-segment display**.  
- Example: If the switches are configured to represent 60% as binary input, the 7-seg display shows:  60


This ensures the user always knows the target value against which the FPGA is making decisions.  

---

### 🔹 Switches (User Input)
- The Basys3’s onboard **16 switches** are used to set the **desired moisture threshold** in **percentage (0–99%)**.  
- This provides **real-time calibration** capability: different plants or soil types may require different thresholds, and the user can adjust this instantly without modifying the code.  


