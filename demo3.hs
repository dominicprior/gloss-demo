import Graphics.Gloss
win = InWindow "" (400, 300) (10, 10)
main = animate win white draw
draw t = Pictures (map f [1..20])
  where f n = Rotate (t*n*5) blob
blob = Translate 100 0 (Color c (ThickCircle 10 20))
c = withAlpha 0.3 azure
