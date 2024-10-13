(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var151 0)
(declare-sort var92 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun match/1741449008 (var151) Int)
(declare-fun var92_access$100/-1827419724 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var151 var151)
(declare-const var554 var151) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsNot 
(assert (not (= var554 null-var151)))
(define-const var339 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var339)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var339!1 String)
(assert (= var339!1 ""))
(assert true)
(define-const var578 String (append/672562846 var339!1 "CharMatcher.isNot(\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.isNot(\'") 
(declare-const var339!2 String)
(assert (= var339!2 (str.++ var339!1 "CharMatcher.isNot(\u0027")))
(define-const var1110 Int (match/1741449008 var554)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsNot: char match> 
(define-const var3513 String (var92_access$100/-1827419724 var1110)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0) 
(assert true)
(define-const var3679 String (append/672562846 var578 var3513)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var578!1 String)
(assert (= var578!1 (str.++ var578 var3513)))
(assert true)
(define-const var788 String (append/672562846 var3679 "\u0027)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')") 
(declare-const var3679!1 String)
(assert (= var3679!1 (str.++ var3679 "\u0027)")))
(assert true)
(define-const var3707 String (toString/-2075883882 var788)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), match/1741449008=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsNot], char), var92_access$100/-1827419724=([char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var151=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsNot, var554=r1, var339=$r0, var578=$r3, var1110=$c0, var92=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3513=$r2, var3679=$r4, var788=$r5, var3707=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsNot=var151, r1=var554, $r0=var339, $r3=var578, $c0=var1110, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var92, $r2=var3513, $r4=var3679, $r5=var788, $r6=var3707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsNot;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.isNot(\'");	$c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$IsNot: char match>;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1