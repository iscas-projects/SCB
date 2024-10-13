(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3416 var3416)
(declare-const null-String String)
(declare-const var3604 var3416) ; Statement: r1 := @this: com.google.javascript.jscomp.GoogleCodingConvention 
(assert (not (= var3604 null-var3416)))
(declare-const var1671 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1671 null-String)))
(assert true)
(define-const var3597 Int (length/-134980193 var1671)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 1 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(36) 
(assert (not (> var3597 1))) ; Negate: Cond: $i0 > 1  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3416=com.google.javascript.jscomp.GoogleCodingConvention, var3604=r1, var1671=r0, var619=null_type, var3597=$i0}
; {com.google.javascript.jscomp.GoogleCodingConvention=var3416, r1=var3604, r0=var1671, null_type=var619, $i0=var3597}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.GoogleCodingConvention;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 1 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(36);	return 0
;block_num 2