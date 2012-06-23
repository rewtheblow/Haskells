-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--                                                 --
-- 情報科学特論　プログラミング言語論　課題        --
--                                                 --
-- (1)下記の関数 f （Collatz関数）を実装しなさい． --
--   f(n) = n/2 (nが偶数のとき)                    --
--   f(n) = 3n+1 (nが奇数のとき)                   --
--                                                 --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

main = do putStr ("Type a number->\n")
          cs <- getLine
          putStr (show (funcCollatz (read cs)))


funcCollatz :: Int -> Int
funcCollatz n = if ((n `mod` 2) == 0)
                  then div n 2
                else (3 * n) + 1
