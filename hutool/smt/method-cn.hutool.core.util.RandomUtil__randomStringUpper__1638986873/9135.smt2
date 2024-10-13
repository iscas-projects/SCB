(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var627_randomString/1464131648 (String Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-const null-Int Int)
(declare-const var627-BASE_CHAR_NUMBER String)
(declare-const var3463 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3463 null-Int)))
(define-const var2991 String var627-BASE_CHAR_NUMBER) ; Statement: $r0 = <cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER> 
(define-const var1152 String (var627_randomString/1464131648 var2991 var3463)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.RandomUtil: java.lang.String randomString(java.lang.String,int)>($r0, i0) 
(assert true)
(define-const var1689 String (toUpperCase/1156088314 var1152)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var627_randomString/1464131648=([java.lang.String, int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String)}
; {var3463=i0, var627=cn.hutool.core.util.RandomUtil, var2991=$r0, var1152=$r1, var1689=$r2}
; {i0=var3463, cn.hutool.core.util.RandomUtil=var627, $r0=var2991, $r1=var1152, $r2=var1689}
;seq <java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts i0 := @parameter0: int;	$r0 = <cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER>;	$r1 = staticinvoke <cn.hutool.core.util.RandomUtil: java.lang.String randomString(java.lang.String,int)>($r0, i0);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase()>();	return $r2
;block_num 1