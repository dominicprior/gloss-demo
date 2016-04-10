import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
main = play win white 60 (100,100) draw ev step
win = InWindow "" (400, 300) (10, 10)
draw (x,y) = Pictures $ map (f x y) [1..20]
f x y n = Rotate (x*n*0.1) (blob y)
blob r = Translate r 0 $ Color c $ ThickCircle 10 20
c = withAlpha 0.3 azure
ev (EventMotion (x,y)) _ = (x,y)
ev _ w = w
step _ w = w
