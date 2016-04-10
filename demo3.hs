import Graphics.Gloss
main = animate win white draw
win = InWindow "" (400, 300) (10, 10)
draw t = Pictures $ map (f t) [1..20]
f t n = Rotate (t*n*5) blob
blob = Translate 100 0 $ Color c $ ThickCircle 10 20
c = withAlpha 0.3 azure
