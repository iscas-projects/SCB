(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3592 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3592 null-String)))
(assert true)
(define-const var1903 Int (lastIndexOf/-1292097097 var3592 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(assert true)
(define-const var2319 Int (length/-134980193 var3592)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2315 Int (- var2319 1)) ; Statement: $i1 = i4 - 1 
(assert (not (and true (and (> (str.len var3592) var2315) (<= 0 var2315)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3592=r0, var1649=null_type, var1903=i0, var2319=i4, var2315=$i1, var1761=$c2, var2304=$i5, var1325=$i9, var1345=$r1}
; {r0=var3592, null_type=var1649, i0=var1903, i4=var2319, $i1=var2315, $c2=var1761, $i5=var2304, $i9=var1325, $r1=var1345}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	i4 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = i4 - 1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1);	$i5 = (int) $c2;	if $i5 != 59 goto $i9 = (int) -1;	$i9 = (int) -1;	if i0 != $i9 goto $i3 = i0 + 1;	$r1 = r0;	goto [?= return $r1];	return $r1
;block_num 4