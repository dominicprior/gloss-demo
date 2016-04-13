import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
win = InWindow "" (400, 300) (10, 10)
main = play win white 60 (100,100) draw ev step
draw (x,y) = Pictures (map f [1..20])
  where f n = Rotate (x*n*0.1) (blob y)
blob r = Translate r 0 (Color c (ThickCircle 10 20))
c = withAlpha 0.3 azure
ev (EventMotion xy) _ = xy
ev _ w = w
step _ w = w
