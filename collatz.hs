-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--                                                 --
-- ���Ȋw���_�@�v���O���~���O����_�@�ۑ�        --
--                                                 --
-- (1)���L�̊֐� f �iCollatz�֐��j���������Ȃ����D --
--   f(n) = n/2 (n�������̂Ƃ�)                    --
--   f(n) = 3n+1 (n����̂Ƃ�)                   --
--                                                 --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

main = do putStr ("Type a number->\n")
          cs <- getLine
          putStr (show (funcCollatz (read cs)))


funcCollatz :: Int -> Int
funcCollatz n = if ((n `mod` 2) == 0)
                  then div n 2
                else (3 * n) + 1
