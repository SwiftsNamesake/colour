{-
Copyright (c) 2008
Russell O'Connor

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
-}
module Data.Colour.RGB where

-- |An RGB triple for an unspecified colour space.
data RGB a = RGB {channelRed :: !a
                 ,channelGreen :: !a
                 ,channelBlue :: !a
                 } deriving (Eq, Show, Read)

-- |Uncurries a function expecting three r, g, b parameters.
uncurryRGB :: (a -> a -> a -> b) -> RGB a -> b
uncurryRGB f (RGB r g b) = f r g b

-- |Curries a function expecting one RGB parameter.
curryRGB :: (RGB a -> b) -> a -> a -> a -> b
curryRGB f r g b = f (RGB r g b)

