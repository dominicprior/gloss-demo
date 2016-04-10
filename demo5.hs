import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
main = play win white 20 (replicate 30 (0,0)) draw ev step
win = InWindow "" (400, 300) (10, 10)
draw (_:blobs) = Pictures $ map drawBlob blobs
drawBlob (x,y) = Translate x y $ Color c $ ThickCircle 5 10
c = withAlpha 0.3 azure
ev (EventMotion xy) (_:b) = xy:b
ev _ w = w
step _ (m:blobs) = m : (zipWith drift blobs (m:blobs))
drift (x,y) (u,v) = (0.9 * x + 0.1 * u, 0.9 * y + 0.1 * v)