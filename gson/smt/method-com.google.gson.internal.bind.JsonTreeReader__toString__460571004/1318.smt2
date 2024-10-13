(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2459 0)
(declare-sort var315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var315) ClassObject)
(declare-fun cast-from-var2459-to-var315 (var2459) var315)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/-286819006 (var2459) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2459 var2459)
(declare-const var1295 var2459) ; Statement: r1 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var1295 null-var2459)))
(define-const var1096 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1096)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1096!1 String)
(assert (= var1096!1 ""))
(assert true)
(define-const var2475 ClassObject (getClass/1258963082 (cast-from-var2459-to-var315 var1295))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1594 String (getSimpleName/-390194377 var2475)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3179 String (append/672562846 var1096!1 var1594)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1096!2 String)
(assert (= var1096!2 (str.++ var1096!1 var1594)))
(assert true)
(define-const var165 String (locationString/-286819006 var1295)) ; Statement: $r4 = specialinvoke r1.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>() 
(assert true)
(define-const var38 String (append/672562846 var3179 var165)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3179!1 String)
(assert (= var3179!1 (str.++ var3179 var165)))
(assert true)
(define-const var1735 String (toString/-2075883882 var38)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2459-to-var315=([com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/-286819006=([com.google.gson.internal.bind.JsonTreeReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2459=com.google.gson.internal.bind.JsonTreeReader, var1295=r1, var1096=$r0, var315=java.lang.Object, var2475=$r2, var1594=$r3, var3179=$r5, var165=$r4, var38=$r6, var1735=$r7}
; {com.google.gson.internal.bind.JsonTreeReader=var2459, r1=var1295, $r0=var1096, java.lang.Object=var315, $r2=var2475, $r3=var1594, $r5=var3179, $r4=var165, $r6=var38, $r7=var1735}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.bind.JsonTreeReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = specialinvoke r1.<com.google.gson.internal.bind.JsonTreeReader: java.lang.String locationString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1