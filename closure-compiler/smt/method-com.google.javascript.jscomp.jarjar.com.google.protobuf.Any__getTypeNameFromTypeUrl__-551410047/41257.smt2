(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3019 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1910 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1910 null-String)))
(assert true)
(define-const var3108 Int (lastIndexOf/-1292097097 var1910 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var2184 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (not (= var3108 var2184)))) ; Negate: Cond: i0 != $i3  
(define-const var2434 String "") ; Statement: $r1 = "" 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1910=r0, var3019=null_type, var3108=i0, var2184=$i3, var2434=$r1}
; {r0=var1910, null_type=var3019, i0=var3108, $i3=var2184, $r1=var2434}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	$r1 = "";	goto [?= return $r1];	return $r1
;block_num 3