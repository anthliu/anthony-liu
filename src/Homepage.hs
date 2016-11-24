{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Homepage
    ( Home(Home)
    ) where

import Servant.HTML.Lucid
import Lucid

data Home = Home

instance ToHtml Home where
    toHtml _ = html_ $ do
        head_ $
            title_ "Anthony Liu"
        body_ $ do
            p_ "Welcome!"
    toHtmlRaw = toHtml
