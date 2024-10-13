(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1228 0)
(declare-sort var362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun match/-512465757 (var1228) Int)
(declare-fun var362_access$100/-1827419724 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1228 var1228)
(declare-const var955 var1228) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is 
(assert (not (= var955 null-var1228)))
(define-const var3340 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3340)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3340!1 String)
(assert (= var3340!1 ""))
(assert true)
(define-const var2890 String (append/672562846 var3340!1 "CharMatcher.is(\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.is(\'") 
(declare-const var3340!2 String)
(assert (= var3340!2 (str.++ var3340!1 "CharMatcher.is(\u0027")))
(define-const var2427 Int (match/-512465757 var955)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is: char match> 
(define-const var1356 String (var362_access$100/-1827419724 var2427)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0) 
(assert true)
(define-const var2368 String (append/672562846 var2890 var1356)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2890!1 String)
(assert (= var2890!1 (str.++ var2890 var1356)))
(assert true)
(define-const var1981 String (append/672562846 var2368 "\u0027)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')") 
(declare-const var2368!1 String)
(assert (= var2368!1 (str.++ var2368 "\u0027)")))
(assert true)
(define-const var1180 String (toString/-2075883882 var1981)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), match/-512465757=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is], char), var362_access$100/-1827419724=([char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1228=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is, var955=r1, var3340=$r0, var2890=$r3, var2427=$c0, var362=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1356=$r2, var2368=$r4, var1981=$r5, var1180=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is=var1228, r1=var955, $r0=var3340, $r3=var2890, $c0=var2427, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var362, $r2=var1356, $r4=var2368, $r5=var1981, $r6=var1180}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CharMatcher.is(\'");	$c0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Is: char match>;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String access$100(char)>($c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\')");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1