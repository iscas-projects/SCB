(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var507 0)
(declare-sort var3093 0)
(declare-sort var2180 0)
(declare-sort var2690 0)
(declare-sort var3408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedGroups/-44828506 (var507) var2180)
(declare-fun var2180_get/1088891777 (var2180 var2690) var2690)
(declare-fun cast-from-String-to-var2690 (String) var2690)
(declare-fun cast-from-var2690-to-Int (var2690) Int)
(declare-fun var3408-init () var3408)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3408 String) void)
(declare-const null-var507 var507)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var699 var507) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var699 null-var507)))
(declare-const var1208 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1208 null-String)))
(define-const var2217 var2180 (namedGroups/-44828506 var699)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups> 
(define-const var211 var2690 (var2180_get/1088891777 var2217 (cast-from-String-to-var2690 var1208))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2917 Int (cast-from-var2690-to-Int var211)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var2917 null-Int)))) ; Negate: Cond: r4 != null  
(define-const var1300 var3408 var3408-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1298 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1298)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1298!1 String)
(assert (= var1298!1 ""))
(assert true)
(define-const var75 String (append/672562846 var1298!1 "group \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("group \'") 
(declare-const var1298!2 String)
(assert (= var1298!2 (str.++ var1298!1 "group \u0027")))
(assert true)
(define-const var2183 String (append/672562846 var75 var1208)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var75!1 String)
(assert (= var75!1 (str.++ var75 var1208)))
(assert true)
(define-const var475 String (append/672562846 var2183 "\u0027 not found")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found") 
(declare-const var2183!1 String)
(assert (= var2183!1 (str.++ var2183 "\u0027 not found")))
(assert true)
(define-const var1362 String (toString/-2075883882 var475)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1300 var1362)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1300!1 var3408)
(declare-const var1362!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {namedGroups/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.util.Map), var2180_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2690=([java.lang.String], java.lang.Object), cast-from-var2690-to-Int=([java.lang.Object], java.lang.Integer), var3408-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var507=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var699=r0, var1208=r1, var3093=null_type, var2180=java.util.Map, var2217=$r2, var2690=java.lang.Object, var211=$r3, var2917=r4, var3408=java.lang.IllegalArgumentException, var1300=$r5, var1298=$r6, var75=$r7, var2183=$r8, var475=$r9, var1362=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var507, r0=var699, r1=var1208, null_type=var3093, java.util.Map=var2180, $r2=var2217, java.lang.Object=var2690, $r3=var211, r4=var2917, java.lang.IllegalArgumentException=var3408, $r5=var1300, $r6=var1298, $r7=var75, $r8=var2183, $r9=var475, $r10=var1362}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("group \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2