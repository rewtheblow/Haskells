-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--                                                                      --
-- 情報科学特論　プログラミング言語論　課題                             --
--                                                                      --
-- (2) N が 1以上256未満の整数のとき，N に対して関数 f を               --
-- 有限回繰り返し適用すると 1 になることを示すプログラムを書きなさい．  --
--                                                                      --
-- ヒント:  N=8 のときには f(8)=4, f(4)=2, f(2)=1 なので，              --
-- f(f(f(N)))=1である．つまり，Nに3回 f を適用すると1となる．           --
-- 必要な f の適用回数は一般的に N の値によって異なる．                 --
--                                                                      --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

main = do putStr ("Type a number->\n")
          cs <- getLine
          if(((read cs) >= 1) && ((read cs) < 256))
            then putStr (show (funcCollatz (read cs)))
          else
            putStr "Out of range!"

funcCollatz 1 = 1
funcCollatz n | n > 1 = funcCollatz (if ((n `mod` 2) == 0)
                                       then div n 2
                                     else (3 * n) + 1)