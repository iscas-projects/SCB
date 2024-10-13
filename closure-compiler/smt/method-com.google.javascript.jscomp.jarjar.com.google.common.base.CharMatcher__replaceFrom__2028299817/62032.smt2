(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun removeFrom/-1583252372 (var2800 String) String)
(declare-const null-var2800 var2800)
(declare-const null-String String)
(declare-const var1628 var2800) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var1628 null-var2800)))
(declare-const var231 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var231 null-String)))
(declare-const var2110 String) ; Statement: r0 := @parameter1: java.lang.CharSequence 
(assert (not (= var2110 null-String)))
(define-const var1022 Int (String_length/-667254855 var2110)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var1022 0)))) ; Negate: Cond: i0 != 0  
(assert true)
(define-const var2850 String (removeFrom/-1583252372 var1628 var231)) ; Statement: $r7 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String removeFrom(java.lang.CharSequence)>(r1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), removeFrom/-1583252372=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], java.lang.String)}
; {var2800=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1628=r3, var231=r1, var2110=r0, var1022=i0, var2850=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2800, r3=var1628, r1=var231, r0=var2110, i0=var1022, $r7=var2850}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i0 != 0 goto (branch);	$r7 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String removeFrom(java.lang.CharSequence)>(r1);	return $r7
;block_num 2