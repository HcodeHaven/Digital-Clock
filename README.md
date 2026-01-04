# Digital-Clock
🕒 Digital Clock in Assembly (MASM + Irvine32)

This project is a real-time digital clock written in x86 Assembly Language using MASM, Irvine32 library, and the Windows API.
It displays the current system time in HH:MM:SS format and updates every second with random text colors.

📌 Features

Displays real-time system clock (Hour : Minute : Second)

Uses GetLocalTime Windows API

Updates only when the second changes (efficient refresh)

Random text color on every second change

Clean console UI with title

Exit program by pressing ESC


🛠 Technologies Used

x86 Assembly Language

MASM (Microsoft Macro Assembler)

Irvine32 Library

Windows API (GetLocalTime)

Windows Console

📂 Project Structure
DigitalClock.asm   → Main assembly source file
README.md          → Project documentation

▶️ How It Works

The program clears the console screen.

A title DIGITAL_CLOCK is displayed at a fixed position.

The GetLocalTime API fetches the current system time.

Hours, minutes, and seconds are converted into ASCII format.

The time is displayed in HH:MM:SS format.

Each second update changes the text color randomly.

The program keeps running in a loop.

Press ESC to exit the program.

⌨️ Controls
Key	Action
ESC	Exit the program
⚙️ Requirements


Windows OS

MASM installed

Irvine32 library properly configured

Visual Studio or MASM-compatible assembler

🧠 Learning Outcomes

Understanding Windows API calls in Assembly

Working with structures (SYSTEMTIME)

Console text positioning and colors

Real-time loop handling

Keyboard input handling in Assembly

📸 Output Preview
           DIGITAL_CLOCK

                14:35:09


(Color changes every second)

📜 License

This project is for educational purposes.
Feel free to use, modify, and share it.
