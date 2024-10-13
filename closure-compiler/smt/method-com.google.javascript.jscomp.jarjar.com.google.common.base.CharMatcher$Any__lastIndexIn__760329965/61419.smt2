(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3281 var3281)
(declare-const null-String String)
(declare-const var753 var3281) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var753 null-var3281)))
(declare-const var559 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var559 null-String)))
(define-const var645 Int (String_length/-667254855 var559)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2301 Int (- var645 1)) ; Statement: $i1 = $i0 - 1 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3281=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var753=r1, var559=r0, var645=$i0, var2301=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var3281, r1=var753, r0=var559, $i0=var645, $i1=var2301}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = $i0 - 1;	return $i1
;block_num 1