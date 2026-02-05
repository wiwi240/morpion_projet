# 🕹️ Ultimate OOP Tic-Tac-Toe

Welcome to the **Ultimate Tic-Tac-Toe**, a professional terminal-based game built using **Object-Oriented Programming (OOP)** principles. This project focuses on clean code architecture, modularity, and a polished user experience.

---

## 📝 Project Overview

This is a classic Tic-Tac-Toe where two players compete to align three symbols (X and O) on a 3x3 grid. The game is entirely controlled via the terminal and features a robust engine that handles everything from win detection to user error management.

### ✨ Key Highlights
* **Language:** Ruby 3.4.2
* **Paradigm:** Full Object-Oriented Programming (OOP)
* **Architecture:** Separation of Logic (`lib/app`) and Interface (`lib/views`)
* **Visuals:** Colorized terminal output for better UX

---

## 📂 File Structure & Roles

The project follows a strict organization to keep the code modular and maintainable:

```text
morpion_projet/
├── app.rb                # Entry point. Launches the application.
├── Gemfile               # Dependencies (colorize, pry).
└── lib/
    ├── app/              # THE BRAIN (Logic classes)
    │   ├── player.rb     # Manages player names and symbols.
    │   ├── board_case.rb # Represents a single cell (A1, B2, etc.).
    │   ├── board.rb      # Grid logic: checks for wins and draws.
    │   ├── game.rb       # Orchestrates a single match flow.
    │   └── application.rb # Handles the replay menu & global loop.
    └── views/            # THE EYES (Display classes)
        └── show.rb       # Renders the board in the terminal.

🛠️ Development Steps
Data Modeling: Designing BoardCase and Player to hold state.

Logic Implementation: Building Board to recognize the 8 winning combinations (rows, columns, and diagonals).

The Game Loop: Creating Game to manage turns using the .rotate! method.

UI/UX Design: Developing Show to render a colorized ASCII grid.

User Flow: Wrapping everything in an Application class to allow infinite replays and a polished start/end experience.

🚀 How to Launch
1. Prerequisites
Ensure you have Ruby installed on your machine. You will also need Bundler to manage the gems.

2. Installation
Clone the repository and install the dependencies:

Bash

git clone [https://github.com/your-username/morpion_projet.git](https://github.com/your-username/morpion_projet.git)
cd morpion_projet
bundle install
3. Run the Game
Simply execute the launcher script from the root folder:

Bash

ruby app.rb
🎮 Game Rules
Input: Type the coordinate of the case you want when prompted (e.g., A1, B2, C3).

Win Condition: Align 3 identical symbols horizontally, vertically, or diagonally.

Color Code: - Player 1 (X): Red

Player 2 (O): Blue

💎 Technologies Used
Ruby: The core programming language.

Colorize Gem: For a vibrant and readable terminal interface.

Pry Gem: Used as a powerful console for debugging during development.

Created by William & Chloé - FullStack Project - 2026