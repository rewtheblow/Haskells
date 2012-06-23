-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
--                                                                      --
-- ���Ȋw���_�@�v���O���~���O����_�@�ۑ�                             --
--                                                                      --
-- (2) N �� 1�ȏ�256�����̐����̂Ƃ��CN �ɑ΂��Ċ֐� f ��               --
-- �L����J��Ԃ��K�p����� 1 �ɂȂ邱�Ƃ������v���O�����������Ȃ����D  --
--                                                                      --
-- �q���g:  N=8 �̂Ƃ��ɂ� f(8)=4, f(4)=2, f(2)=1 �Ȃ̂ŁC              --
-- f(f(f(N)))=1�ł���D�܂�CN��3�� f ��K�p�����1�ƂȂ�D           --
-- �K�v�� f �̓K�p�񐔂͈�ʓI�� N �̒l�ɂ���ĈقȂ�D                 --
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