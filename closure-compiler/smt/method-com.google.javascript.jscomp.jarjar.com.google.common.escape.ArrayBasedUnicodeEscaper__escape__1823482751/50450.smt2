(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3091 0)
(declare-sort var2155 0)
(declare-sort var3969 0)
(declare-sort var1599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3969_checkNotNull/1446102589 (var1599) var1599)
(declare-fun cast-from-String-to-var1599 (String) var1599)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3091 var3091)
(declare-const null-String String)
(declare-const var538 var3091) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedUnicodeEscaper 
(assert (not (= var538 null-var3091)))
(declare-const var3717 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3717 null-String)))
;(assert (var3969_checkNotNull/1446102589 (cast-from-String-to-var1599 var3717))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3717!1 String)
(define-const var2 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3345 Int (length/-134980193 var3717!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto return r0 
(assert (>= var2 var3345)) ; Cond: i5 >= $i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3969_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1599=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var3091=com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedUnicodeEscaper, var538=r1, var3717=r0, var2155=null_type, var3969=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1599=java.lang.Object, var2=i5, var3345=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedUnicodeEscaper=var3091, r1=var538, r0=var3717, null_type=var2155, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3969, java.lang.Object=var1599, i5=var2, $i0=var3345}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedUnicodeEscaper;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto return r0;	return r0
;block_num 3