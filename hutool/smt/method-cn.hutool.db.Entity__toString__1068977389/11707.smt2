(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1992 0)
(declare-sort var944 0)
(declare-sort var3745 0)
(declare-sort var2805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tableName/-1376375795 (var1992) String)
(declare-fun fieldNames/-1376375795 (var1992) var944)
(declare-fun append/-1031950772 (String var3745) String)
(declare-fun cast-from-var944-to-var3745 (var944) var3745)
(declare-fun toString/1714821946 (var2805) String)
(declare-fun cast-from-var1992-to-var2805 (var1992) var2805)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1992 var1992)
(declare-const var3335 var1992) ; Statement: r1 := @this: cn.hutool.db.Entity 
(assert (not (= var3335 null-var1992)))
(define-const var2104 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2104)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2104!1 String)
(assert (= var2104!1 ""))
(assert true)
(define-const var175 String (append/672562846 var2104!1 "Entity {tableName=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity {tableName=") 
(declare-const var2104!2 String)
(assert (= var2104!2 (str.++ var2104!1 "Entity {tableName=")))
(define-const var658 String (tableName/-1376375795 var3335)) ; Statement: $r2 = r1.<cn.hutool.db.Entity: java.lang.String tableName> 
(assert true)
(define-const var1692 String (append/672562846 var175 var658)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var175!1 String)
(assert (= var175!1 (str.++ var175 var658)))
(assert true)
(define-const var375 String (append/672562846 var1692 ", fieldNames=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fieldNames=") 
(declare-const var1692!1 String)
(assert (= var1692!1 (str.++ var1692 ", fieldNames=")))
(define-const var1341 var944 (fieldNames/-1376375795 var3335)) ; Statement: $r5 = r1.<cn.hutool.db.Entity: java.util.Set fieldNames> 
(assert true)
(define-const var3346 String (append/-1031950772 var375 (cast-from-var944-to-var3745 var1341))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var375!1 String)
(assert (str.prefixof var375 var375!1))
(assert true)
(define-const var2806 String (append/672562846 var3346 ", fields=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fields=") 
(declare-const var3346!1 String)
(assert (= var3346!1 (str.++ var3346 ", fields=")))
(assert true)
(define-const var1337 String (toString/1714821946 (cast-from-var1992-to-var2805 var3335))) ; Statement: $r8 = specialinvoke r1.<cn.hutool.core.lang.Dict: java.lang.String toString()>() 
(assert true)
(define-const var3106 String (append/672562846 var2806 var1337)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2806!1 String)
(assert (= var2806!1 (str.++ var2806 var1337)))
(assert true)
(define-const var2246 String (append/672562846 var3106 "}")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3106!1 String)
(assert (= var3106!1 (str.++ var3106 "}")))
(assert true)
(define-const var2204 String (toString/-2075883882 var2246)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tableName/-1376375795=([cn.hutool.db.Entity], java.lang.String), fieldNames/-1376375795=([cn.hutool.db.Entity], java.util.Set), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var944-to-var3745=([java.util.Set], java.lang.Object), toString/1714821946=([java.util.AbstractMap], java.lang.String), cast-from-var1992-to-var2805=([cn.hutool.db.Entity], java.util.AbstractMap), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1992=cn.hutool.db.Entity, var3335=r1, var2104=$r0, var175=$r3, var658=$r2, var1692=$r4, var375=$r6, var944=java.util.Set, var1341=$r5, var3745=java.lang.Object, var3346=$r7, var2806=$r9, var2805=java.util.AbstractMap, var1337=$r8, var3106=$r10, var2246=$r11, var2204=$r12}
; {cn.hutool.db.Entity=var1992, r1=var3335, $r0=var2104, $r3=var175, $r2=var658, $r4=var1692, $r6=var375, java.util.Set=var944, $r5=var1341, java.lang.Object=var3745, $r7=var3346, $r9=var2806, java.util.AbstractMap=var2805, $r8=var1337, $r10=var3106, $r11=var2246, $r12=var2204}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.AbstractMap: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.db.Entity;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity {tableName=");	$r2 = r1.<cn.hutool.db.Entity: java.lang.String tableName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fieldNames=");	$r5 = r1.<cn.hutool.db.Entity: java.util.Set fieldNames>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fields=");	$r8 = specialinvoke r1.<cn.hutool.core.lang.Dict: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1