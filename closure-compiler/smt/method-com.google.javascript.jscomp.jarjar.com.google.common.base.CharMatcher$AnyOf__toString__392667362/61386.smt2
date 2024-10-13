(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun chars/1733952202 (var3930) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3930 var3930)
(declare-const var243 var3930) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf 
(assert (not (= var243 null-var3930)))
(define-const var3924 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3924 "CharMatcher.anyOf(\u0022")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("CharMatcher.anyOf(\"") 
(declare-const var3924!1 String)
(assert (= var3924!1 "CharMatcher.anyOf(\u0022"))
(define-const var1829 (Array Int Int) (chars/1733952202 var243)) ; Statement: r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: char[] chars> 
(define-const var1170 Int (getLength-Arr-Int-1 var1829)) ; Statement: i0 = lengthof r2 
(define-const var1694 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")") 
(assert (>= var1694 var1170)) ; Cond: i2 >= i0 
(assert true)
;(assert (append/672562846 var3924!1 "\u0022)")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")") 
(declare-const var3924!2 String)
(assert (= var3924!2 (str.++ var3924!1 "\u0022)")))
(assert true)
(define-const var2145 String (toString/-2075883882 var3924!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), chars/1733952202=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf], char[]), getLength-Arr-Int-1=([char[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3930=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf, var243=r1, var3924=$r0, var1829=r2, var1170=i0, var1694=i2, var2145=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf=var3930, r1=var243, $r0=var3924, r2=var1829, i0=var1170, i2=var1694, $r3=var2145}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("CharMatcher.anyOf(\"");	r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$AnyOf: char[] chars>;	i0 = lengthof r2;	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\")");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3