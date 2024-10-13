(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1713 0)
(declare-sort var1470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-1774502042 (var1713) String)
(declare-fun length/-171891354 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1713 var1713)
(declare-const null-String String)
(declare-const var2573 var1713) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var2573 null-var1713)))
(declare-const var2145 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2145 null-String)))
(define-const var1025 String (sb/-1774502042 var2573)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> 
(assert true)
(define-const var3518 Int (length/-171891354 var1025)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var2449 Int (length/-134980193 var2145)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= $i0 goto $z1 = 0 
(assert (<= var3518 var2449)) ; Cond: $i1 <= $i0 
(define-const var3873 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), length/-134980193=([java.lang.String], int)}
; {var1713=com.google.javascript.jscomp.Compiler$CodeBuilder, var2573=r0, var2145=r2, var1470=null_type, var1025=$r1, var3518=$i1, var2449=$i0, var3873=$z1}
; {com.google.javascript.jscomp.Compiler$CodeBuilder=var1713, r0=var2573, r2=var2145, null_type=var1470, $r1=var1025, $i1=var3518, $i0=var2449, $z1=var3873}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb>;	$i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i1 <= $i0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3