{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}

import Data.Proxy (Proxy)
import Data.Text (Text)
import Network.Wai.Handler.Warp (run)
import Servant

type API = Get '[PlainText] Text

handleHome :: Handler Text
handleHome = return "Hello world!"

server :: Server API
server = handleHome

api :: Proxy API
api = Proxy

main :: IO ()
main = run 8080 (serve api server)

{-
Build:

$ stack exec --package http-client --package servant --package servant-server -- ghc -Wall -O2 --make hello_servant.hs

Run:

$ ./hello_servant
-}
