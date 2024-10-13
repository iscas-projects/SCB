(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2996 var2996)
(declare-const null-String String)
(declare-const var2074 var2996) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var2074 null-var2996)))
(declare-const var3781 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3781 null-String)))
(define-const var3255 Int (String_length/-667254855 var3781)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $b1 = 0 
(assert (not (not (= var3255 0)))) ; Negate: Cond: $i0 != 0  
(define-const var53 Int (- 1)) ; Statement: $b1 = -1 
 ; Statement: goto [?= return $b1] 
(assert true) ; Non Conditional
 ; Statement: return $b1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2996=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var2074=r1, var3781=r0, var3255=$i0, var53=$b1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var2996, r1=var2074, r0=var3781, $i0=var3255, $b1=var53}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $b1 = 0;	$b1 = -1;	goto [?= return $b1];	return $b1
;block_num 3