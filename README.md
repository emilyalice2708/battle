# Battle

## Learning Goals 
- Improve understanding of how HTTP is used to send information over the web.
- Improve understanding of client/server relationships.
- Web templating with HTML/CSS.
- Use Sinatra in code.
- Test apps that have user interaction and visual output.
- Trace data between the browser and server.

## How To Use
1. Clone this repository:
```
git clone
```
2. Run bundle install:
```
bundle install
```
3. Run configuration file:
```
rackup config.ru
```
4. Visit localhost in your browser:
```
http://localhost:9292/
```
5. Enter player names and play!

## User Stories

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them
```
Required:
- A form to accept user input for two player names.
- A session hash to store name variables.
- A redirect to a new web page with player names displayed.

```
As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points
```
Required:
- Display player 2 points.

```
As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation
```
Required:
- Attack button with post action.

```
As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10
```
Required:
- Extract players into a Player class and test-drive it's development. 
- Players will have name and points attributes.

```
As two Players,
So we can continue our game of Battle,
We want to switch turns
```

```
As Player 1,
So I can see how close I am to losing,
I want to see my own hit points
```

```
As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation
```

```
As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10
```

```
As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```
