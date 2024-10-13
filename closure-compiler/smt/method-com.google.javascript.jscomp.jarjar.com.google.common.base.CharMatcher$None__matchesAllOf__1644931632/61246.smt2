(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2512 var2512)
(declare-const null-String String)
(declare-const var2071 var2512) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var2071 null-var2512)))
(declare-const var3942 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3942 null-String)))
(define-const var3364 Int (String_length/-667254855 var3942)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var3364 0)))) ; Negate: Cond: $i0 != 0  
(define-const var970 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2512=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var2071=r1, var3942=r0, var3364=$i0, var970=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var2512, r1=var2071, r0=var3942, $i0=var3364, $z0=var970}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3