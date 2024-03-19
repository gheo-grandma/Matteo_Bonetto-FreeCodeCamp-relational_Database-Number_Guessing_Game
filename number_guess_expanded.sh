{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red97\green114\blue170;
\red217\green217\blue219;\red252\green135\blue145;\red140\green255\blue255;\red200\green240\blue151;\red231\green171\blue255;
\red176\green211\blue255;\red253\green184\blue123;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c45389\c52926\c72309;
\cssrgb\c87860\c87863\c88602;\cssrgb\c99738\c61192\c63450;\cssrgb\c60236\c100000\c100000;\cssrgb\c81884\c94381\c65674;\cssrgb\c92916\c74116\c100000;
\cssrgb\c74057\c86298\c100000;\cssrgb\c99812\c76925\c55249;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 #!/bin/bash\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 PSQL\cb3 \strokec7 =\cb3 \strokec8 "psql --username=freecodecamp --dbname=number_guess -t --no-align -c"\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 function\cb3 \strokec5  \cb3 \strokec10 SAVE_GAME\cb3 \strokec5 ()\{\
  \cb3 \strokec4 # saves game to the database\cb3 \strokec5 \
\
  \cb3 \strokec6 COUNTER\cb3 \strokec7 =\cb3 \strokec8 $(( \cb3 \strokec6 $COUNTER\cb3 \strokec8  \cb3 \strokec7 +\cb3 \strokec8  \cb3 \strokec11 1\cb3 \strokec8  ))\cb3 \strokec5 \
  \cb3 \strokec10 echo\cb3 \strokec5  \cb3 \strokec8 "You guessed it in \cb3 \strokec6 $COUNTER\cb3 \strokec8  tries. The secret number was \cb3 \strokec6 $RANDOM_NUMBER\cb3 \strokec8 . Nice job!"\cb3 \strokec5 \
\
  \cb3 \strokec4 # save game to database\cb3 \strokec5 \
  \cb3 \strokec6 SAVE_GAME\cb3 \strokec7 =\cb3 \strokec8 $(\cb3 \strokec6 $PSQL\cb3 \strokec8  "INSERT INTO games(user_id, guesses) VALUES(\cb3 \strokec6 $USERNAME_ID\cb3 \strokec8 , \cb3 \strokec6 $COUNTER\cb3 \strokec8 );")\cb3 \strokec5 \
\}\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 function\cb3 \strokec5  \cb3 \strokec10 IS_GUESSED\cb3 \strokec5 ()\{\
  \cb3 \strokec4 # checks if the player guessed the number\cb3 \strokec5 \
\
  \cb3 \strokec4 # the user's number is correct\cb3 \strokec5 \
  \cb3 \strokec9 if\cb3 \strokec5  (( USR_NUM \cb3 \strokec7 ==\cb3 \strokec5  RANDOM_NUMBER )); \cb3 \strokec9 then\cb3 \strokec5 \
    \cb3 \strokec10 SAVE_GAME\cb3 \strokec5 \
  \
  \cb3 \strokec4 # user number is lower\cb3 \strokec5 \
  \cb3 \strokec9 elif\cb3 \strokec5  (( USR_NUM \cb3 \strokec7 <\cb3 \strokec5  RANDOM_NUMBER )); \cb3 \strokec9 then\cb3 \strokec5 \
    \cb3 \strokec6 COUNTER\cb3 \strokec7 =\cb3 \strokec8 $(( \cb3 \strokec6 $COUNTER\cb3 \strokec8  \cb3 \strokec7 +\cb3 \strokec8  \cb3 \strokec11 1\cb3 \strokec8  ))\cb3 \strokec5 \
    \cb3 \strokec10 MAIN_GAME\cb3 \strokec5  \cb3 \strokec8 "It's higher than that, guess again:"\cb3 \strokec5 \
\
  \cb3 \strokec4 # user number is higher\cb3 \strokec5 \
  \cb3 \strokec9 else\cb3 \strokec5 \
    \cb3 \strokec6 COUNTER\cb3 \strokec7 =\cb3 \strokec8 $(( \cb3 \strokec6 $COUNTER\cb3 \strokec8  \cb3 \strokec7 +\cb3 \strokec8  \cb3 \strokec11 1\cb3 \strokec8  ))\cb3 \strokec5 \
    \cb3 \strokec10 MAIN_GAME\cb3 \strokec5  \cb3 \strokec8 "It's lower than that, guess again:"\cb3 \strokec5 \
  \cb3 \strokec9 fi\cb3 \strokec5 \
\}\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 function\cb3 \strokec5  \cb3 \strokec10 IS_VALID_INPUT\cb3 \strokec5 ()\{\
  \cb3 \strokec4 # checks if the input is valid\cb3 \strokec5 \
\
  \cb3 \strokec9 if\cb3 \strokec5  [[ \cb3 \strokec6 $USR_NUM\cb3 \strokec5  \cb3 \strokec7 =~\cb3 \strokec5  ^[\cb3 \strokec11 0\cb3 \strokec5 -9]\{\cb3 \strokec11 1\cb3 \strokec5 ,3\}$ ]]; \cb3 \strokec9 then\cb3 \strokec5 \
    \cb3 \strokec10 IS_GUESSED\cb3 \strokec5 \
\
  \cb3 \strokec9 else\cb3 \strokec5 \
    \cb3 \strokec10 MAIN_GAME\cb3 \strokec5  \cb3 \strokec8 "That is not an integer, guess again:"\cb3 \strokec5 \
  \cb3 \strokec9 fi\cb3 \strokec5 \
\}\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 function\cb3 \strokec5  \cb3 \strokec10 MAIN_GAME\cb3 \strokec5 ()\{\
  \cb3 \strokec10 echo\cb3 \strokec5  \cb3 \strokec11 $1\cb3 \strokec5 \
\
  \cb3 \strokec10 read\cb3 \strokec5  \cb3 \strokec8 USR_NUM\cb3 \strokec5 \
\
  \cb3 \strokec10 IS_VALID_INPUT\cb3 \strokec5 \
\}\
\
\cb3 \strokec9 function\cb3 \strokec5  \cb3 \strokec10 CHECK_NEW_USER\cb3 \strokec5 ()\{\
  \cb3 \strokec6 USERNAME_ID\cb3 \strokec7 =\cb3 \strokec8 $(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT username_id FROM usernames WHERE username='\cb3 \strokec6 $USRNAME\cb3 \strokec8 '")\cb3 \strokec5 \
\
  \cb3 \strokec4 # if the user is new\cb3 \strokec5 \
  \cb3 \strokec9 if\cb3 \strokec5  [[ \cb3 \strokec7 -z\cb3 \strokec5  \cb3 \strokec6 $USERNAME_ID\cb3 \strokec5  ]]; \cb3 \strokec9 then\cb3 \strokec5 \
    \cb3 \strokec6 REGISTER_USER\cb3 \strokec7 =\cb3 \strokec8 $(\cb3 \strokec6 $PSQL\cb3 \strokec8  "INSERT INTO usernames(username) VALUES('\cb3 \strokec6 $USRNAME\cb3 \strokec8 ');")\cb3 \strokec5 \
    \cb3 \strokec10 echo\cb3 \strokec5  \cb3 \strokec8 "Welcome, \cb3 \strokec6 $USRNAME\cb3 \strokec8 ! It looks like this is your first time here."\cb3 \strokec5 \
    \cb3 \strokec6 USERNAME_ID\cb3 \strokec7 =\cb3 \strokec8 $(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT username_id FROM usernames WHERE username='\cb3 \strokec6 $USRNAME\cb3 \strokec8 '")\cb3 \strokec5 \
\
  \cb3 \strokec4 # if the user already exists\cb3 \strokec5 \
  \cb3 \strokec9 else\cb3 \strokec5 \
    \cb3 \strokec6 GAMES_PLAYED\cb3 \strokec7 =\cb3 \strokec8 $(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT COUNT(*) FROM games WHERE user_id=\cb3 \strokec6 $USERNAME_ID\cb3 \strokec8 ")\cb3 \strokec5 \
    \cb3 \strokec6 BEST_SCORE\cb3 \strokec7 =\cb3 \strokec8 $(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT MIN(guesses) FROM games WHERE user_id=\cb3 \strokec6 $USERNAME_ID\cb3 \strokec8 ")\cb3 \strokec5 \
\
    \cb3 \strokec10 echo\cb3 \strokec5  \cb3 \strokec8 "Welcome back, \cb3 \strokec6 $USRNAME\cb3 \strokec8 ! You have played \cb3 \strokec6 $GAMES_PLAYED\cb3 \strokec8  games, and your best game took \cb3 \strokec6 $BEST_SCORE\cb3 \strokec8  guesses."\cb3 \strokec5 \
  \cb3 \strokec9 fi\cb3 \strokec5 \
\
  \cb3 \strokec10 MAIN_GAME\cb3 \strokec5  \cb3 \strokec8 "Guess the secret number between 1 and 1000:"\cb3 \strokec5 \
\}\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec10 echo\cb3 \strokec5  \cb3 \strokec8 "Enter your username:"\cb3 \strokec5 \
\
\cb3 \strokec10 read\cb3 \strokec5  \cb3 \strokec8 USRNAME\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 COUNTER\cb3 \strokec7 =\cb3 \strokec11 0\cb3 \strokec5 \
\cb3 \strokec6 RANDOM_NUMBER\cb3 \strokec7 =\cb3 \strokec8 $(( \cb3 \strokec6 $RANDOM\cb3 \strokec8  \cb3 \strokec7 %\cb3 \strokec8  \cb3 \strokec11 1000\cb3 \strokec8  ))\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec10 CHECK_NEW_USER\cb3 \strokec5 \
}