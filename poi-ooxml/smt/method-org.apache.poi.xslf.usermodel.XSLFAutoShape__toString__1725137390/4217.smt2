(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var490 0)
(declare-sort var3533 0)
(declare-sort var3611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3533) ClassObject)
(declare-fun cast-from-var490-to-var3533 (var490) var3533)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun getShapeName/1249626931 (var3611) String)
(declare-fun cast-from-var490-to-var3611 (var490) var3611)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var490 var490)
(declare-const var702 var490) ; Statement: r1 := @this: org.apache.poi.xslf.usermodel.XSLFAutoShape 
(assert (not (= var702 null-var490)))
(define-const var2071 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2071)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2071!1 String)
(assert (= var2071!1 ""))
(assert true)
(define-const var1293 String (append/672562846 var2071!1 "[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2071!2 String)
(assert (= var2071!2 (str.++ var2071!1 "[")))
(assert true)
(define-const var1849 ClassObject (getClass/1258963082 (cast-from-var490-to-var3533 var702))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3448 String (getSimpleName/-390194377 var1849)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1408 String (append/672562846 var1293 var3448)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1293!1 String)
(assert (= var1293!1 (str.++ var1293 var3448)))
(assert true)
(define-const var2642 String (append/672562846 var1408 "] ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1408!1 String)
(assert (= var1408!1 (str.++ var1408 "] ")))
(assert true)
(define-const var695 String (getShapeName/1249626931 (cast-from-var490-to-var3611 var702))) ; Statement: $r6 = virtualinvoke r1.<org.apache.poi.xslf.usermodel.XSLFAutoShape: java.lang.String getShapeName()>() 
(assert true)
(define-const var2621 String (append/672562846 var2642 var695)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2642!1 String)
(assert (= var2642!1 (str.++ var2642 var695)))
(assert true)
(define-const var2479 String (toString/-2075883882 var2621)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var490-to-var3533=([org.apache.poi.xslf.usermodel.XSLFAutoShape], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), getShapeName/1249626931=([org.apache.poi.xslf.usermodel.XSLFShape], java.lang.String), cast-from-var490-to-var3611=([org.apache.poi.xslf.usermodel.XSLFAutoShape], org.apache.poi.xslf.usermodel.XSLFShape), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var490=org.apache.poi.xslf.usermodel.XSLFAutoShape, var702=r1, var2071=$r0, var1293=$r4, var3533=java.lang.Object, var1849=$r2, var3448=$r3, var1408=$r5, var2642=$r7, var3611=org.apache.poi.xslf.usermodel.XSLFShape, var695=$r6, var2621=$r8, var2479=$r9}
; {org.apache.poi.xslf.usermodel.XSLFAutoShape=var490, r1=var702, $r0=var2071, $r4=var1293, java.lang.Object=var3533, $r2=var1849, $r3=var3448, $r5=var1408, $r7=var2642, org.apache.poi.xslf.usermodel.XSLFShape=var3611, $r6=var695, $r8=var2621, $r9=var2479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xslf.usermodel.XSLFAutoShape;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r6 = virtualinvoke r1.<org.apache.poi.xslf.usermodel.XSLFAutoShape: java.lang.String getShapeName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1