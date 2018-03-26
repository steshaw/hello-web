{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

import Data.Monoid (mconcat)

main = scotty 3000 $
  get "/" $ do
    text $ "Hello world!"

{-

Install Haskell Stack:

$ brew install haskell-stack

Compile with:

$ stack exec --package scotty -- ghc --make hello_hs.hs
[1 of 1] Compiling Main             ( hello_hs.hs, hello_hs.o )
Linking hello_hs ...

Run with:

$ ./hello_hs

-}
