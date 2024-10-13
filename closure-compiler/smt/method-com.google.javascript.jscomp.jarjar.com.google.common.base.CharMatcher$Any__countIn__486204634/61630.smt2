(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3142 var3142)
(declare-const null-String String)
(declare-const var3893 var3142) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var3893 null-var3142)))
(declare-const var2780 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2780 null-String)))
(define-const var3437 Int (String_length/-667254855 var2780)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3142=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var3893=r1, var2780=r0, var3437=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var3142, r1=var3893, r0=var2780, $i0=var3437}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	return $i0
;block_num 1