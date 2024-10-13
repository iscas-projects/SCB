(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1365 0)
(declare-sort var2605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2605) ClassObject)
(declare-fun cast-from-var1365-to-var2605 (var1365) var2605)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/-42154701 (var1365) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1365 var1365)
(declare-const var1884 var1365) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var1884 null-var1365)))
(define-const var3416 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3416)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3416!1 String)
(assert (= var3416!1 ""))
(assert true)
(define-const var2211 ClassObject (getClass/1258963082 (cast-from-var1365-to-var2605 var1884))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3258 String (getSimpleName/-390194377 var2211)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3605 String (append/672562846 var3416!1 var3258)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3416!2 String)
(assert (= var3416!2 (str.++ var3416!1 var3258)))
(assert true)
(define-const var2233 String (locationString/-42154701 var1884)) ; Statement: $r4 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var1047 String (append/672562846 var3605 var2233)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3605!1 String)
(assert (= var3605!1 (str.++ var3605 var2233)))
(assert true)
(define-const var2066 String (toString/-2075883882 var1047)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1365-to-var2605=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/-42154701=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1365=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var1884=r1, var3416=$r0, var2605=java.lang.Object, var2211=$r2, var3258=$r3, var3605=$r5, var2233=$r4, var1047=$r6, var2066=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var1365, r1=var1884, $r0=var3416, java.lang.Object=var2605, $r2=var2211, $r3=var3258, $r5=var3605, $r4=var2233, $r6=var1047, $r7=var2066}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1