{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red96\green113\blue169;
\red216\green216\blue219;\red252\green136\blue146;\red139\green255\blue255;\red200\green240\blue152;\red253\green184\blue124;
\red175\green210\blue255;\red255\green255\blue255;\red230\green169\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c1\c1;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c45047\c52542\c72038;
\cssrgb\c87657\c87658\c88616;\cssrgb\c99871\c61382\c63884;\cssrgb\c60118\c100000\c100000;\cssrgb\c81923\c94447\c65975;\cssrgb\c99908\c77092\c55665;
\cssrgb\c73697\c85896\c100000;\cssrgb\c100000\c100000\c99971;\cssrgb\c92538\c73726\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 #!/bin/bash\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 PSQL\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 "psql --username=freecodecamp --dbname=number_guess -t --no-align -c"\cf2 \cb3 \strokec5 \
\
\cf2 \cb3 \strokec6 COUNTER\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec9 0\cf2 \cb3 \strokec5 \
\cf2 \cb3 \strokec6 RANDOM_NUMBER\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 $(( \cf2 \cb3 \strokec6 $RANDOM\cf2 \cb3 \strokec8  \cf2 \cb3 \strokec7 %\cf2 \cb3 \strokec8  \cf2 \cb3 \strokec9 1000\cf2 \cb3 \strokec8  ))\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nEnter your username:"\cf2 \cb3 \strokec5 \
\cf2 \cb3 \strokec10 read\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 USERNAME\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # check if username already exists\cf2 \cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 USERNAME_ID\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec8  "SELECT username_id FROM usernames WHERE username='\cf2 \cb3 \strokec6 $USERNAME\cf2 \cb3 \strokec8 '")\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # if the user doesn't exist\cf2 \cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec12 if\cf2 \cb3 \strokec5  [[ \cf2 \cb3 \strokec7 -z\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec6 $USERNAME_ID\cf2 \cb3 \strokec5  ]]; \cf2 \cb3 \strokec12 then\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec6 REGISTER_USERNAME\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec8  "INSERT INTO usernames(username) VALUES('\cf2 \cb3 \strokec6 $USERNAME\cf2 \cb3 \strokec8 ');")\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec6 USERNAME_ID\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec8  "SELECT username_id FROM usernames WHERE username='\cf2 \cb3 \strokec6 $USERNAME\cf2 \cb3 \strokec8 '")\cf2 \cb3 \strokec5 \
\
  \cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nWelcome, \cf2 \cb3 \strokec6 $USERNAME\cf2 \cb3 \strokec8 ! It looks like this is your first time here."\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # if the user alredy exists\cf2 \cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec12 else\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec6 BEST_GAME\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec8  "SELECT MIN(guesses) FROM games WHERE user_id=\cf2 \cb3 \strokec6 $USERNAME_ID\cf2 \cb3 \strokec8 ")\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec6 TOTAL_GAMES\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec8  "SELECT COUNT(*) FROM games WHERE user_id=\cf2 \cb3 \strokec6 $USERNAME_ID\cf2 \cb3 \strokec8 ")\cf2 \cb3 \strokec5 \
\
  \cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nWelcome back, \cf2 \cb3 \strokec6 $USERNAME\cf2 \cb3 \strokec8 ! You have played \cf2 \cb3 \strokec6 $TOTAL_GAMES\cf2 \cb3 \strokec8  games, and your best game took \cf2 \cb3 \strokec6 $BEST_GAME\cf2 \cb3 \strokec8  guesses."\cf2 \cb3 \strokec5 \
\cf2 \cb3 \strokec12 fi\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nGuess the secret number between 1 and 1000:"\cf2 \cb3 \strokec5 \
\cf2 \cb3 \strokec10 read\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 USER_NUMBER\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # game loop\cf2 \cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec12 until\cf2 \cb3 \strokec5  [[ \cf2 \cb3 \strokec6 $USER_NUMBER\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec7 ==\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec6 $RANDOM_NUMBER\cf2 \cb3 \strokec5  ]]\
\cf2 \cb3 \strokec12 do\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec4 # check if the number id valid\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec12 if\cf2 \cb3 \strokec5  [[ \cf2 \cb3 \strokec6 $USER_NUMBER\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec7 =~\cf2 \cb3 \strokec5  ^[\cf2 \cb3 \strokec9 0\cf2 \cb3 \strokec5 -9]+$ ]]; \cf2 \cb3 \strokec12 then\cf2 \cb3 \strokec5 \
    \cf2 \cb3 \strokec4 # check fi the sumber is greater\cf2 \cb3 \strokec5 \
    \cf2 \cb3 \strokec12 if\cf2 \cb3 \strokec5  (( USER_NUMBER \cf2 \cb3 \strokec7 >\cf2 \cb3 \strokec5  RANDOM_NUMBER )); \cf2 \cb3 \strokec12 then\cf2 \cb3 \strokec5 \
      \cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nIt's lower than that, guess again:"\cf2 \cb3 \strokec5 \
      (( COUNTER\cf2 \cb3 \strokec7 ++\cf2 \cb3 \strokec5  ))\
      \cf2 \cb3 \strokec10 read\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 USER_NUMBER\cf2 \cb3 \strokec5 \
\
    \cf2 \cb3 \strokec12 else\cf2 \cb3 \strokec5 \
      \cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nIt's higher than that, guess again:"\cf2 \cb3 \strokec5 \
      (( COUNTER\cf2 \cb3 \strokec7 ++\cf2 \cb3 \strokec5  ))\
      \cf2 \cb3 \strokec10 read\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 USER_NUMBER\cf2 \cb3 \strokec5 \
    \cf2 \cb3 \strokec12 fi\cf2 \cb3 \strokec5 \
\
  \cf2 \cb3 \strokec12 else\cf2 \cb3 \strokec5 \
    \cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nThat is not an integer, guess again:"\cf2 \cb3 \strokec5 \
    \cf2 \cb3 \strokec10 read\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 USER_NUMBER\cf2 \cb3 \strokec5 \
  \cf2 \cb3 \strokec12 fi\cf2 \cb3 \strokec5 \
\cf2 \cb3 \strokec12 done\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # the number was guessed\cf2 \cb3 \strokec5 \
(( COUNTER\cf2 \cb3 \strokec7 ++\cf2 \cb3 \strokec5  ))\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec10 echo\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec11 -e\cf2 \cb3 \strokec5  \cf2 \cb3 \strokec8 "\\nYou guessed it in \cf2 \cb3 \strokec6 $COUNTER\cf2 \cb3 \strokec8  tries. The secret number was \cf2 \cb3 \strokec6 $RANDOM_NUMBER\cf2 \cb3 \strokec8 . Nice job!"\cf2 \cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # save the game\cf2 \cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 SAVE_GAME\cf2 \cb3 \strokec7 =\cf2 \cb3 \strokec8 $(\cf2 \cb3 \strokec6 $PSQL\cf2 \cb3 \strokec8  "INSERT INTO games(user_id, guesses) VALUES(\cf2 \cb3 \strokec6 $USERNAME_ID\cf2 \cb3 \strokec8 , \cf2 \cb3 \strokec6 $COUNTER\cf2 \cb3 \strokec8 )")\cf2 \cb3 \strokec5 \
}