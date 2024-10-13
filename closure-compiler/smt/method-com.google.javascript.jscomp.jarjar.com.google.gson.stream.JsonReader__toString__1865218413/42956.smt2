(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2433 0)
(declare-sort var1689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1689) ClassObject)
(declare-fun cast-from-var2433-to-var1689 (var2433) var1689)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/391724147 (var2433) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2433 var2433)
(declare-const var3776 var2433) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3776 null-var2433)))
(define-const var1922 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1922)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1922!1 String)
(assert (= var1922!1 ""))
(assert true)
(define-const var2769 ClassObject (getClass/1258963082 (cast-from-var2433-to-var1689 var3776))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var850 String (getSimpleName/-390194377 var2769)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2591 String (append/672562846 var1922!1 var850)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1922!2 String)
(assert (= var1922!2 (str.++ var1922!1 var850)))
(assert true)
(define-const var3701 String (locationString/391724147 var3776)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var3779 String (append/672562846 var2591 var3701)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2591!1 String)
(assert (= var2591!1 (str.++ var2591 var3701)))
(assert true)
(define-const var2341 String (toString/-2075883882 var3779)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2433-to-var1689=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/391724147=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2433=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3776=r1, var1922=$r0, var1689=java.lang.Object, var2769=$r2, var850=$r3, var2591=$r5, var3701=$r4, var3779=$r6, var2341=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2433, r1=var3776, $r0=var1922, java.lang.Object=var1689, $r2=var2769, $r3=var850, $r5=var2591, $r4=var3701, $r6=var3779, $r7=var2341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1