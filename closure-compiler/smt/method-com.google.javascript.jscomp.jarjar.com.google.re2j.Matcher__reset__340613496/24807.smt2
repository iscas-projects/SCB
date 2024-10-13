(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputSequence/-44828506 (var3986) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun inputLength/-44828506 (var3986) Int)
(declare-fun appendPos/-44828506 (var3986) Int)
(declare-fun hasMatch/-44828506 (var3986) Bool)
(declare-fun hasGroups/-44828506 (var3986) Bool)
(declare-const null-var3986 var3986)
(declare-const var2656 var3986) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var2656 null-var3986)))
(define-const var1761 String (inputSequence/-44828506 var2656)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.CharSequence inputSequence> 
(define-const var1837 Int (String_length/-667254855 var1761)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(declare-const var2656!1 var3986)
(assert (not (= var2656!1 null-var3986)))
(assert (= (inputLength/-44828506 var2656!1) var1837)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int inputLength> = $i0 
(declare-const var2656!2 var3986)
(assert (not (= var2656!2 null-var3986)))
(assert (= (appendPos/-44828506 var2656!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int appendPos> = 0 
(declare-const var2656!3 var3986)
(assert (not (= var2656!3 null-var3986)))
(assert (= (hasMatch/-44828506 var2656!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: boolean hasMatch> = 0 
(declare-const var2656!4 var3986)
(assert (not (= var2656!4 null-var3986)))
(assert (= (hasGroups/-44828506 var2656!4) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: boolean hasGroups> = 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {inputSequence/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), inputLength/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], int), appendPos/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], int), hasMatch/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], boolean), hasGroups/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], boolean)}
; {var3986=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var2656=r0, var1761=$r1, var1837=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var3986, r0=var2656, $r1=var1761, $i0=var1837}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.lang.CharSequence inputSequence>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int inputLength> = $i0;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: int appendPos> = 0;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: boolean hasMatch> = 0;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: boolean hasGroups> = 0;	return r0
;block_num 1