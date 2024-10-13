(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var520 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var520 null-String)))
(assert true)
(define-const var499 Int (length/-134980193 var520)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3831 String "com.oracle.jdk.") ; Statement: $r1 = "com.oracle.jdk." 
(assert true)
(define-const var2543 Int (length/-134980193 var3831)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 > $i0 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("com.oracle.jdk.") 
(assert (not (> var499 var2543))) ; Negate: Cond: $i1 > $i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var520=r0, var1315=null_type, var499=$i1, var3831=$r1, var2543=$i0}
; {r0=var520, null_type=var1315, $i1=var499, $r1=var3831, $i0=var2543}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = "com.oracle.jdk.";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i1 > $i0 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("com.oracle.jdk.");	return r0
;block_num 2