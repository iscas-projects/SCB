(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3859 0)
(declare-sort var313 0)
(declare-sort var3130 0)
(declare-sort var2698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3130_checkNotNull/1446102589 (var2698) var2698)
(declare-fun cast-from-String-to-var2698 (String) var2698)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3859 var3859)
(declare-const null-String String)
(declare-const var1371 var3859) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper 
(assert (not (= var1371 null-var3859)))
(declare-const var983 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var983 null-String)))
;(assert (var3130_checkNotNull/1446102589 (cast-from-String-to-var2698 var983))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var983!1 String)
(assert true)
(define-const var2479 Int (length/-134980193 var983!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var174 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r0 
(assert (>= var174 var2479)) ; Cond: i2 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3130_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2698=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var3859=com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper, var1371=r1, var983=r0, var313=null_type, var3130=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2698=java.lang.Object, var2479=i0, var174=i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper=var3859, r1=var1371, r0=var983, null_type=var313, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3130, java.lang.Object=var2698, i0=var2479, i2=var174}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaper;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = 0;	if i2 >= i0 goto return r0;	return r0
;block_num 3