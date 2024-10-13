(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3682 0)
(declare-sort var3373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun original/-1740331575 (var3682) var3373)
(declare-fun countIn/-774279374 (var3373 String) Int)
(declare-const null-var3682 var3682)
(declare-const null-String String)
(declare-const var3705 var3682) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated 
(assert (not (= var3705 null-var3682)))
(declare-const var1652 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1652 null-String)))
(define-const var3219 Int (String_length/-667254855 var1652)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2352 var3373 (original/-1740331575 var3705)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher original> 
(assert true)
(define-const var2366 Int (countIn/-774279374 var2352 var1652)) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int countIn(java.lang.CharSequence)>(r0) 
(define-const var2146 Int (- var3219 var2366)) ; Statement: $i2 = $i1 - $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), original/-1740331575=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), countIn/-774279374=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], int)}
; {var3682=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated, var3705=r1, var1652=r0, var3219=$i1, var3373=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2352=$r2, var2366=$i0, var2146=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated=var3682, r1=var3705, r0=var1652, $i1=var3219, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3373, $r2=var2352, $i0=var2366, $i2=var2146}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated;	r0 := @parameter0: java.lang.CharSequence;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Negated: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher original>;	$i0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: int countIn(java.lang.CharSequence)>(r0);	$i2 = $i1 - $i0;	return $i2
;block_num 1