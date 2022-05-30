{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

main :: IO ()
main = do
  n <- readLn :: IO Int
  hello_worlds n

-- Print "Hello World" on a new line 'n' times.
hello_worlds n = do
  if (n == 0)
    then return ()
    else putStrLn "Hello World" >> hello_worlds (n -1)