(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1845 0)
(declare-sort var392 0)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2061_removeAll/-411264933 (String (Array Int Int)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var392_randomString/1464131648 (String Int) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var392-BASE_CHAR_NUMBER String)
(declare-const var1373 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1373 null-Int)))
(declare-const var1976 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1976 null-String)))
(define-const var1196 String var392-BASE_CHAR_NUMBER) ; Statement: r4 = <cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER> 
(assert true)
(define-const var755 String (toLowerCase/415700667 var1976)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var1674 (Array Int Int) (toCharArray/415275702 var755)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(define-const var172 String (var2061_removeAll/-411264933 (cast-from-String-to-String var1196) var1674)) ; Statement: r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removeAll(java.lang.CharSequence,char[])>(r4, $r2) 
(define-const var1487 String (var392_randomString/1464131648 var172 var1373)) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.RandomUtil: java.lang.String randomString(java.lang.String,int)>(r5, i0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), var2061_removeAll/-411264933=([java.lang.CharSequence, char[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var392_randomString/1464131648=([java.lang.String, int], java.lang.String)}
; {var1373=i0, var1976=r0, var1845=null_type, var392=cn.hutool.core.util.RandomUtil, var1196=r4, var755=$r1, var1674=$r2, var2061=cn.hutool.core.text.CharSequenceUtil, var172=r5, var1487=$r3}
; {i0=var1373, r0=var1976, null_type=var1845, cn.hutool.core.util.RandomUtil=var392, r4=var1196, $r1=var755, $r2=var1674, cn.hutool.core.text.CharSequenceUtil=var2061, r5=var172, $r3=var1487}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r4 = <cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER>;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	$r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	r5 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String removeAll(java.lang.CharSequence,char[])>(r4, $r2);	$r3 = staticinvoke <cn.hutool.core.util.RandomUtil: java.lang.String randomString(java.lang.String,int)>(r5, i0);	return $r3
;block_num 1