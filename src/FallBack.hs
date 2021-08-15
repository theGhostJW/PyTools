module FallBack where

import Options.Applicative as O
import Pyrelude as P hiding (option)
import Pyrelude.Test as T

data BuildType = Build | BuildAndTest deriving (Show, Read)

data FallBack = FallBack
  { buildType :: BuildType,
    baseDirectory :: Text
  } deriving (Show, Read)

sample :: Parser FallBack
sample =
  FallBack
    <$> option auto
      ( long "buildtype"
          <> short 'b'
          <> help "Whether to build source only or build tests"
          <> showDefault
          <> value BuildAndTest
      )
    <*> option auto
      ( long "dir"
          <> short 'd'
          <> help "Directory to build - defaults to directory of this exe"
          <> showDefault
          <> value ""
      )
   
