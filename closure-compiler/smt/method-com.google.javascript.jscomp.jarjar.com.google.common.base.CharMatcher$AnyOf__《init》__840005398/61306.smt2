(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var893 0)
(declare-sort var1034 0)
(declare-sort var390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/786151916 (var1034) void)
(declare-fun cast-from-var893-to-var1034 (var893) var1034)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun chars/1733952202 (var893) (Array Int Int))
(declare-fun var390_sort/1062595847 ((Array Int Int)) void)
(declare-const null-var893 var893)
(declare-const null-String String)
(declare-const var3955 var893) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf 
(assert (not (= var3955 null-var893)))
(declare-const var220 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var220 null-String)))
(assert true)
;(assert (<init>/786151916 (cast-from-var893-to-var1034 var3955))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: void <init>()>() 

(declare-const var3955!1 var893)
(define-const var1130 String (String_toString/-1426662429 var220)) ; Statement: $r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var1269 (Array Int Int) (toCharArray/415275702 var1130)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(declare-const var3955!2 var893)
(assert (not (= var3955!2 null-var893)))
(assert (= (chars/1733952202 var3955!2) var1269)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: char[] chars> = $r3 
(define-const var1573 (Array Int Int) (chars/1733952202 var3955!2)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: char[] chars> 
;(assert (var390_sort/1062595847 var1573)) ; Statement: staticinvoke <java.util.Arrays: void sort(char[])>($r4) 

(declare-const var1573!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/786151916=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher], void), cast-from-var893-to-var1034=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), chars/1733952202=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf], char[]), var390_sort/1062595847=([char[]], void)}
; {var893=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf, var3955=r0, var220=r1, var1034=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1130=$r2, var1269=$r3, var1573=$r4, var390=java.util.Arrays}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf=var893, r0=var3955, r1=var220, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1034, $r2=var1130, $r3=var1269, $r4=var1573, java.util.Arrays=var390}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf;	r1 := @parameter0: java.lang.CharSequence;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: void <init>()>();	$r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: char[] chars> = $r3;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: char[] chars>;	staticinvoke <java.util.Arrays: void sort(char[])>($r4);	return
;block_num 1