(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2057 0)
(declare-sort var31 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var31) ClassObject)
(declare-fun cast-from-var2057-to-var31 (var2057) var31)
(declare-fun append/-1031950772 (String var31) String)
(declare-fun cast-from-ClassObject-to-var31 (ClassObject) var31)
(declare-fun getText/536316465 (var2057) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2057 var2057)
(declare-const var2015 var2057) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFTextRun 
(assert (not (= var2015 null-var2057)))
(define-const var761 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var761)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var761!1 String)
(assert (= var761!1 ""))
(assert true)
(define-const var1570 String (append/672562846 var761!1 "[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var761!2 String)
(assert (= var761!2 (str.++ var761!1 "[")))
(assert true)
(define-const var2506 ClassObject (getClass/1258963082 (cast-from-var2057-to-var31 var2015))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1996 String (append/-1031950772 var1570 (cast-from-ClassObject-to-var31 var2506))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1570!1 String)
(assert (str.prefixof var1570 var1570!1))
(assert true)
(define-const var1717 String (append/672562846 var1996 "]")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1996!1 String)
(assert (= var1996!1 (str.++ var1996 "]")))
(assert true)
(define-const var403 String (getText/536316465 var2015)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTextRun: java.lang.String getText()>() 
(assert true)
(define-const var359 String (append/672562846 var1717 var403)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1717!1 String)
(assert (= var1717!1 (str.++ var1717 var403)))
(assert true)
(define-const var2584 String (toString/-2075883882 var359)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2057-to-var31=([org.apache.poi.xssf.usermodel.XSSFTextRun], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var31=([java.lang.Class], java.lang.Object), getText/536316465=([org.apache.poi.xssf.usermodel.XSSFTextRun], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2057=org.apache.poi.xssf.usermodel.XSSFTextRun, var2015=r1, var761=$r0, var1570=$r3, var31=java.lang.Object, var2506=$r2, var1996=$r4, var1717=$r6, var403=$r5, var359=$r7, var2584=$r8}
; {org.apache.poi.xssf.usermodel.XSSFTextRun=var2057, r1=var2015, $r0=var761, $r3=var1570, java.lang.Object=var31, $r2=var2506, $r4=var1996, $r6=var1717, $r5=var403, $r7=var359, $r8=var2584}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFTextRun;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTextRun: java.lang.String getText()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1