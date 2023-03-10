module Control.Effect.Class.Teletype 
    ( Teletype(..)
    , TeletypeLower(..)
    ) 
where


import Data.Text


-- | "teletype"/"terminal"/"console"/"command-line"/"tty" 
-- effect. Used typically to print and read from the .
class Teletype m where
    printLine :: Text -> m ()
    readLine  :: m Text


class TeletypeLower m where
    printChar :: Char -> m ()
    readChar  :: m Char
