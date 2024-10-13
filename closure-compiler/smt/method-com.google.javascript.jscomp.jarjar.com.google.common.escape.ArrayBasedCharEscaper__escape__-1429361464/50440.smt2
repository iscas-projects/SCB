(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var1798 0)
(declare-sort var2457 0)
(declare-sort var588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2457_checkNotNull/1446102589 (var588) var588)
(declare-fun cast-from-String-to-var588 (String) var588)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var262 var262)
(declare-const null-String String)
(declare-const var1544 var262) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper 
(assert (not (= var1544 null-var262)))
(declare-const var25 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var25 null-String)))
;(assert (var2457_checkNotNull/1446102589 (cast-from-String-to-var588 var25))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var25!1 String)
(define-const var1930 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3172 Int (length/-134980193 var25!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto return r0 
(assert (>= var1930 var3172)) ; Cond: i5 >= $i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2457_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var588=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var262=com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper, var1544=r1, var25=r0, var1798=null_type, var2457=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var588=java.lang.Object, var1930=i5, var3172=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper=var262, r1=var1544, r0=var25, null_type=var1798, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2457, java.lang.Object=var588, i5=var1930, $i0=var3172}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto return r0;	return r0
;block_num 3