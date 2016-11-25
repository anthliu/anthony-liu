{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Homepage
    ( Home(Home)
    ) where

import Servant.HTML.Lucid
import Lucid
import Lucid.Html5

data Home = Home

instance ToHtml Home where
    toHtml _ = render
    toHtmlRaw = toHtml

render :: Monad m => HtmlT m ()
render = doctypehtml_ $ html_ $ do
    head_ $ do
        meta_ [charset_ "utf-8"]
        meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1"]
        title_ "Anthony Liu"
        link_ [rel_ "stylesheet", type_ "text/css", href_ "static/bootstrap.min.css"]
    body_ $ do
        with div_ [class_ "container"] $ do
            h1_ "Anthony Liu"
            contactinfo

contactinfo :: Monad m => HtmlT m ()
contactinfo = do
    p_ $ do
        "anthliu@umich.edu"
        br_ []
        with a_ [href_ "https://github.com/liu916"] "github.com/liu916"
        br_ []
        with a_ [href_ "static/anthony_liu_cv.pdf"] "CV"
