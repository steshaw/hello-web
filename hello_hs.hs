{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

main = scotty 3000 $
  get "/" $ do
    text $ "Hello world!"

{-

Install Haskell Stack:

$ brew install haskell-stack

Build:

$ stack exec --package scotty -- ghc --make hello_hs.hs
[1 of 1] Compiling Main             ( hello_hs.hs, hello_hs.o )
Linking hello_hs ...

Run:

$ ./hello_hs

-}
