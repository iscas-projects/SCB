(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1264 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1264 null-String)))
(declare-const var966 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var966 null-Int)))
(define-const var2629 Int (div var966 10)) ; Statement: $i1 = i0 / 10 
(define-const var252 Int (+ 48 var2629)) ; Statement: $i2 = 48 + $i1 
(define-const var1085 Int (cast-from-Int-to-Int var252)) ; Statement: $c3 = (char) $i2 
(assert true)
(define-const var3938 String (append/-1166366385 var1264 var1085)) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var1264!1 String)
(assert (str.prefixof var1264 var1264!1))
(define-const var315 Int (mod var966 10)) ; Statement: $i4 = i0 % 10 
(define-const var3279 Int (+ 48 var315)) ; Statement: $i5 = 48 + $i4 
(define-const var2557 Int (cast-from-Int-to-Int var3279)) ; Statement: $c6 = (char) $i5 
(assert true)
(define-const var2863 String (append/-1166366385 var3938 var2557)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var3938!1 String)
(assert (str.prefixof var3938 var3938!1))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1264=r0, var966=i0, var2629=$i1, var252=$i2, var1085=$c3, var3938=$r1, var315=$i4, var3279=$i5, var2557=$c6, var2863=$r2}
; {r0=var1264, i0=var966, $i1=var2629, $i2=var252, $c3=var1085, $r1=var3938, $i4=var315, $i5=var3279, $c6=var2557, $r2=var2863}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$i1 = i0 / 10;	$i2 = 48 + $i1;	$c3 = (char) $i2;	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$i4 = i0 % 10;	$i5 = 48 + $i4;	$c6 = (char) $i5;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	return $r2
;block_num 1