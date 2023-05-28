data Colour = Red | Orange | Yellow | Green | Blue | Indigo | Violet
  deriving (Eq, Ord, Show, Bounded, Enum)

{-
 - The Colour typeclass is of type Ord
 - What is the "first" (or least) colour
 -}
firstColour :: Colour
firstColour = minBound :: Colour

-- List the colours in reverse order
reverseColourOrder :: [Colour]
reverseColourOrder = reverse [(minBound :: Colour) .. (maxBound :: Colour)]

{-
 - Mix two colours together, to produce the average value of the two.
 - Example: paintMix Orange Green = Yellow
 - If necessary, favour the "higher" value when computing the average.
 - For example: paintMix Green Violet = Indigo
 - Hint: Integer division can be performed with the quot function: quot 7 2 = 3
 -}
paintMix :: Colour -> Colour -> Colour
paintMix c1 c2 = [(min c1 c2) .. (max c1 c2)] !! quot (length [(min c1 c2) .. (max c1 c2)]) 2