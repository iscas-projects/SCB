(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var1918 var1918)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var678 var1918) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var678 null-var1918)))
(declare-const var2102 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2102 null-String)))
(declare-const var2440 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var2440 null-Int)))
(define-const var1367 Int (String_length/-667254855 var2102)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1) 
(assert (not (= var1367 0))) ; Cond: $i0 != 0 
(define-const var3065 String (String_valueOf/-371898945 var2440)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_valueOf/-371898945=([char], java.lang.String)}
; {var1918=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var678=r1, var2102=r0, var2440=c1, var1367=$i0, var3065=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var1918, r1=var678, r0=var2102, c1=var2440, $i0=var1367, $r2=var3065}
;seq <java.lang.CharSequence: int length()>;	<java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	c1 := @parameter1: char;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1);	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1);	return $r2
;block_num 3