import Graphics.Gloss
win = InWindow "" (400, 300) (10, 10)
main = display win white (Pictures (map f [1..20]))
f n = Rotate (n*15) blob
blob = Translate 100 0 (Color c (ThickCircle 10 20))
c = withAlpha 0.3 azure
