(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2162 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2162 null-String)))
(declare-const var748 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var748 null-String)))
(define-const var2525 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1023 Int (length/-134980193 var748)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto $i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>() 
(assert (>= var2525 var1023)) ; Cond: i5 >= $i0 
(assert true)
(define-const var2374 Int (length/-171891354 var2162)) ; Statement: $i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>() 
(define-const var355 Int (- var2374 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var2874 Int (charAt/1621160911 var2162 var355)) ; Statement: $c3 = virtualinvoke r1.<java.lang.StringBuilder: char charAt(int)>($i2) 
(define-const var3635 Int (cast-from-Int-to-Int var2874)) ; Statement: $i7 = (int) $c3 
 ; Statement: if $i7 != 46 goto return r1 
(assert (not (= var3635 46))) ; Cond: $i7 != 46 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int)}
; {var2162=r1, var748=r0, var3950=null_type, var2525=i5, var1023=$i0, var2374=$i1, var355=$i2, var2874=$c3, var3635=$i7}
; {r1=var2162, r0=var748, null_type=var3950, i5=var2525, $i0=var1023, $i1=var2374, $i2=var355, $c3=var2874, $i7=var3635}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto $i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r1.<java.lang.StringBuilder: char charAt(int)>($i2);	$i7 = (int) $c3;	if $i7 != 46 goto return r1;	return r1
;block_num 4