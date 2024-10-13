(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputSequence/-44828506 (var3467) String)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var3467 var3467)
(declare-const null-Int Int)
(declare-const var3386 var3467) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var3386 null-var3467)))
(declare-const var389 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var389 null-Int)))
(declare-const var2319 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2319 null-Int)))
(define-const var3815 String (inputSequence/-44828506 var3386)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.CharSequence inputSequence> 
(define-const var80 String (String_subSequence/-1087362312 var3815 var389 var2319)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, i1) 
(define-const var1605 String (String_toString/-1426662429 var80)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {inputSequence/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.lang.CharSequence), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3467=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var3386=r0, var389=i0, var2319=i1, var3815=$r1, var80=$r2, var1605=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var3467, r0=var3386, i0=var389, i1=var2319, $r1=var3815, $r2=var80, $r3=var1605}
;seq <java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.CharSequence inputSequence>;	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, i1);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 1