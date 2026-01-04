# Digital Clock in Assembly (MASM)

A **console-based real-time digital clock** developed in **x86 Assembly Language** using **MASM**, the **Irvine32 library**, and the **Windows API**.
The application retrieves the system time and displays it in **HH:MM:SS format**, updating every second with a dynamic text color.

## Overview

This project demonstrates the use of **Windows API integration**, **data structures**, and **console manipulation** in Assembly language.
It efficiently updates the display only when the system second changes, ensuring smooth execution and minimal screen refresh.

## Key Features

* Real-time system clock display
* Uses Windows API `GetLocalTime`
* Displays time in `HH:MM:SS` format
* Random text color update every second
* Efficient second-based refresh mechanism
* Clean console layout with fixed positioning
* Graceful exit using the **ESC** key

## Technologies & Tools

* **x86 Assembly Language**
* **MASM (Microsoft Macro Assembler)**
* **Irvine32 Library**
* **Windows API**
* **Windows Console Application**

## Project Structure

```text
DigitalClock.asm    Main Assembly source code
README.md           Project documentation
```

## Program Workflow

1. Initializes the console and clears the screen.
2. Displays the application title at a fixed location.
3. Retrieves current system time using `GetLocalTime`.
4. Stores time data in a `SYSTEMTIME` structure.
5. Converts numeric time values into ASCII characters.
6. Displays formatted time (`HH:MM:SS`) on the console.
7. Updates the display and text color once per second.
8. Monitors keyboard input for program termination.

## User Controls

| Key | Action               |
| --- | -------------------- |
| ESC | Exit the application |

## System Requirements

* Windows Operating System
* MASM installed and configured
* Irvine32 library properly set up
* Visual Studio or compatible assembler environment

## Learning Outcomes

* Practical use of Windows API in Assembly
* Understanding and usage of structures (`SYSTEMTIME`)
* Console cursor positioning and text formatting
* Real-time program control using loops
* Keyboard input handling in low-level programming

## Sample Output

```text
            DIGITAL_CLOCK

                 14:35:09
```

*(Text color changes every second)*
## Author
Just let me know.
