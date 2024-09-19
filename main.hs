module main where

import Text.Megaparsec
import Text.Megaparsec.Char
import Warp
import OpenGL

type Parser = Parsec Void String

parseType :: Parser String
parseType = do 
    char ' '    
    theType <- parseIsStitch--trys each of the string parsers for the message tupe
    many eol 
    pure theType



parseIsStitch :: Parser String
parseIsStitch = do
    stitch <- try sc <|> try dc <|> tc
    pure stitch