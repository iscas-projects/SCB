(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2460 0)
(declare-sort var1454 0)
(declare-sort var1051 0)
(declare-sort var1929 0)
(declare-sort var1385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedGroups/-44828506 (var2460) var1051)
(declare-fun var1051_get/1088891777 (var1051 var1929) var1929)
(declare-fun cast-from-String-to-var1929 (String) var1929)
(declare-fun cast-from-var1929-to-Int (var1929) Int)
(declare-fun var1385-init () var1385)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1385 String) void)
(declare-const null-var2460 var2460)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var215 var2460) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var215 null-var2460)))
(declare-const var795 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var795 null-String)))
(define-const var549 var1051 (namedGroups/-44828506 var215)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups> 
(define-const var3800 var1929 (var1051_get/1088891777 var549 (cast-from-String-to-var1929 var795))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3464 Int (cast-from-var1929-to-Int var3800)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var3464 null-Int)))) ; Negate: Cond: r4 != null  
(define-const var1789 var1385 var1385-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1046 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1046)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1046!1 String)
(assert (= var1046!1 ""))
(assert true)
(define-const var3265 String (append/672562846 var1046!1 "group \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("group \'") 
(declare-const var1046!2 String)
(assert (= var1046!2 (str.++ var1046!1 "group \u0027")))
(assert true)
(define-const var1576 String (append/672562846 var3265 var795)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3265!1 String)
(assert (= var3265!1 (str.++ var3265 var795)))
(assert true)
(define-const var856 String (append/672562846 var1576 "\u0027 not found")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found") 
(declare-const var1576!1 String)
(assert (= var1576!1 (str.++ var1576 "\u0027 not found")))
(assert true)
(define-const var1446 String (toString/-2075883882 var856)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1789 var1446)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1789!1 var1385)
(declare-const var1446!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {namedGroups/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.util.Map), var1051_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1929=([java.lang.String], java.lang.Object), cast-from-var1929-to-Int=([java.lang.Object], java.lang.Integer), var1385-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2460=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var215=r0, var795=r1, var1454=null_type, var1051=java.util.Map, var549=$r2, var1929=java.lang.Object, var3800=$r3, var3464=r4, var1385=java.lang.IllegalArgumentException, var1789=$r6, var1046=$r7, var3265=$r8, var1576=$r9, var856=$r10, var1446=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var2460, r0=var215, r1=var795, null_type=var1454, java.util.Map=var1051, $r2=var549, java.lang.Object=var1929, $r3=var3800, r4=var3464, java.lang.IllegalArgumentException=var1385, $r6=var1789, $r7=var1046, $r8=var3265, $r9=var1576, $r10=var856, $r11=var1446}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("group \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2