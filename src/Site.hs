--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Control.Arrow ((>>>))
import           Hakyll
--------------------------------------------------------------------------------

main :: IO ()
main = hakyll $ do
    match "static/*"     copyDir
    --match "static/pa1/*" copyDir
    --match "static/pa2/*" copyDir
    --match "static/pa3/*" copyDir
    --match "static/pa4/*" copyDir
    --match "static/pa5/*" copyDir
    --match "static/pa6/*" copyDir
    --match "static/pa7/*" copyDir

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "templates/*"   $ compile templateCompiler
    match "lectures/*"    $ myMakeHTML
    -- match "slides/*"      $ myMakeHTML
    match "homeworks/*"   $ myMakeHTML
    match "final/*"       $ myMakeHTML
          
    match "lectures/theory/lambda-calculus/lect.pdf" $ do
                  route   idRoute
                  compile copyFileCompiler

    match "lectures/theory/church-encodings/lect.pdf" $ do
                  route   idRoute
                  compile copyFileCompiler                                            

    match "lectures/theory/Iffy-Lang/lect.pdf" $ do
                  route   idRoute
                  compile copyFileCompiler                                            
                          
    match (fromList tops) $ myMakeHTML


tops = [ "index.markdown"
       , "grades.markdown"
       , "lectures.markdown"
       , "links.markdown"
       , "assignments.markdown"]

copyDir = do route   idRoute
             compile copyFileCompiler


myMakeHTML 
  = do route   $ setExtension "html"
       compile $ pandocCompiler
         >>= loadAndApplyTemplate "templates/default.html" defaultContext
         >>= relativizeUrls
