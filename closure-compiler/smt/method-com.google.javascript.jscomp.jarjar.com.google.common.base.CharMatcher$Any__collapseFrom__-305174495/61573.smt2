(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2940 var2940)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3195 var2940) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var3195 null-var2940)))
(declare-const var3554 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3554 null-String)))
(declare-const var2068 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var2068 null-Int)))
(define-const var172 Int (String_length/-667254855 var3554)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1) 
(assert (not (not (= var172 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3057 String "") ; Statement: $r2 = "" 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2940=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var3195=r1, var3554=r0, var2068=c1, var172=$i0, var3057=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var2940, r1=var3195, r0=var3554, c1=var2068, $i0=var172, $r2=var3057}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	c1 := @parameter1: char;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1);	$r2 = "";	goto [?= return $r2];	return $r2
;block_num 3