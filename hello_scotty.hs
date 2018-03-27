{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty

main :: IO ()
main = scotty 3000 $
  get "/" $ do
    text $ "Hello world!"

{-

Install Haskell Stack:

$ brew install haskell-stack

Build:

$ stack exec --package scotty -- ghc --make hello_scotty.hs
[1 of 1] Compiling Main             ( hello_scotty.hs, hello_scotty.o )
Linking hello_scotty ...

Run:

$ ./hello_scotty

-}
