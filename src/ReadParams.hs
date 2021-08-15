module ReadParams where

import Options.Applicative as O
import Pyrelude as P hiding (option)
import Pyrelude.Test as T

data ExeType = ETFallBack | ETResultSegmentation deriving (Show, Read)
