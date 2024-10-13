(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3154 0)
(declare-sort var202 0)
(declare-sort var266 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var266_checkNotNull/1446102589 (var737) var737)
(declare-fun cast-from-String-to-var737 (String) var737)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3154 var3154)
(declare-const null-String String)
(declare-const var2924 var3154) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper 
(assert (not (= var2924 null-var3154)))
(declare-const var2819 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2819 null-String)))
;(assert (var266_checkNotNull/1446102589 (cast-from-String-to-var737 var2819))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2819!1 String)
(assert true)
(define-const var813 Int (length/-134980193 var2819!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3063 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto return r0 
(assert (>= var3063 var813)) ; Cond: i3 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var266_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var737=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var3154=com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper, var2924=r1, var2819=r0, var202=null_type, var266=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var737=java.lang.Object, var813=i0, var3063=i3}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper=var3154, r1=var2924, r0=var2819, null_type=var202, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var266, java.lang.Object=var737, i0=var813, i3=var3063}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.PercentEscaper;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto return r0;	return r0
;block_num 3