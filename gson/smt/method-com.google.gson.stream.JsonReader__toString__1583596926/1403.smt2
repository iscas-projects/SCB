(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var398 0)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var654) ClassObject)
(declare-fun cast-from-var398-to-var654 (var398) var654)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locationString/1083242436 (var398) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var398 var398)
(declare-const var2940 var398) ; Statement: r1 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2940 null-var398)))
(define-const var1417 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1417)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1417!1 String)
(assert (= var1417!1 ""))
(assert true)
(define-const var2510 ClassObject (getClass/1258963082 (cast-from-var398-to-var654 var2940))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2564 String (getSimpleName/-390194377 var2510)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2538 String (append/672562846 var1417!1 var2564)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1417!2 String)
(assert (= var1417!2 (str.++ var1417!1 var2564)))
(assert true)
(define-const var549 String (locationString/1083242436 var2940)) ; Statement: $r4 = virtualinvoke r1.<com.google.gson.stream.JsonReader: java.lang.String locationString()>() 
(assert true)
(define-const var2003 String (append/672562846 var2538 var549)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2538!1 String)
(assert (= var2538!1 (str.++ var2538 var549)))
(assert true)
(define-const var503 String (toString/-2075883882 var2003)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var398-to-var654=([com.google.gson.stream.JsonReader], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locationString/1083242436=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var398=com.google.gson.stream.JsonReader, var2940=r1, var1417=$r0, var654=java.lang.Object, var2510=$r2, var2564=$r3, var2538=$r5, var549=$r4, var2003=$r6, var503=$r7}
; {com.google.gson.stream.JsonReader=var398, r1=var2940, $r0=var1417, java.lang.Object=var654, $r2=var2510, $r3=var2564, $r5=var2538, $r4=var549, $r6=var2003, $r7=var503}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.stream.JsonReader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke r1.<com.google.gson.stream.JsonReader: java.lang.String locationString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1