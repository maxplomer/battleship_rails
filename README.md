# Javascript Test
## Challenge Details:
### A Simplified Game of Battleship
### YOUR MISSION (Should you choose to accept it)

Build a game for a variation of Battleship that works via an API.<br>
Traditionally, Battleship has different sized ships that are placed on the board, to keep it simple, our ships will take up a single cell.

### DETAILS

The API should feature endpoints that will:

• Create a game<br>
• Destroy a game<br>
• Accepts coordinates for the player’s next move.<br>
• Returns the coordinates for the CPU’s next move.<br>

For reference here’s how the game should work:

• The starting board will be 5x5.<br>
• The player starts a game and places 10 ships on the board.<br>
• The player submits their positions on the board via the API.<br>
• The CPU places its ships on the board.<br>
• The player is given the first move and submits coordinates to strike.<br>
• If a ship is hit, it is destroyed.<br>
• Allow the CPU to attack.<br>
• Alternate moves between player and CPU.<br>
• The first player to have all ships destroyed is the loser.<br>

### KEYS OF THE CHALLENGE

• Focus on building a clean API that uses semantically correct status codes and request methods (GET, POST, PUT, DELETE, etc).<br>
• Build the UI as a web browser client (Ember would be great, but React/Angular as a client is fine too).<br>
• Feel free to use whatever server-side technology you are comfortable with.<br>

### BONUS(OPTIONAL)

• Add in user sessions so the server can handle more than one game at a time.<br>
• Add a leaderboard that keeps winner’s initials and ranks them according to the time it took them to win.<br>
• Deploy the application somewhere.<br>

### TAKE AWAYS

• Please have fun with the challenge, don’t worry about visual design too much, but be proud of your submission.



For further reference on Battleship: https://en.wikipedia.org/wiki/Battleship_(game)