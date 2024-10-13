(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var808 0)
(declare-sort var490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var490) ClassObject)
(declare-fun cast-from-var808-to-var490 (var808) var490)
(declare-fun append/-1031950772 (String var490) String)
(declare-fun cast-from-ClassObject-to-var490 (ClassObject) var490)
(declare-fun getText/-1503445906 (var808) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var808 var808)
(declare-const var1254 var808) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFTextParagraph 
(assert (not (= var1254 null-var808)))
(define-const var2633 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2633)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2633!1 String)
(assert (= var2633!1 ""))
(assert true)
(define-const var1042 String (append/672562846 var2633!1 "[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2633!2 String)
(assert (= var2633!2 (str.++ var2633!1 "[")))
(assert true)
(define-const var2558 ClassObject (getClass/1258963082 (cast-from-var808-to-var490 var1254))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1959 String (append/-1031950772 var1042 (cast-from-ClassObject-to-var490 var2558))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1042!1 String)
(assert (str.prefixof var1042 var1042!1))
(assert true)
(define-const var1990 String (append/672562846 var1959 "]")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1959!1 String)
(assert (= var1959!1 (str.++ var1959 "]")))
(assert true)
(define-const var2573 String (getText/-1503445906 var1254)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>() 
(assert true)
(define-const var3317 String (append/672562846 var1990 var2573)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1990!1 String)
(assert (= var1990!1 (str.++ var1990 var2573)))
(assert true)
(define-const var1873 String (toString/-2075883882 var3317)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var808-to-var490=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var490=([java.lang.Class], java.lang.Object), getText/-1503445906=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var808=org.apache.poi.xssf.usermodel.XSSFTextParagraph, var1254=r1, var2633=$r0, var1042=$r3, var490=java.lang.Object, var2558=$r2, var1959=$r4, var1990=$r6, var2573=$r5, var3317=$r7, var1873=$r8}
; {org.apache.poi.xssf.usermodel.XSSFTextParagraph=var808, r1=var1254, $r0=var2633, $r3=var1042, java.lang.Object=var490, $r2=var2558, $r4=var1959, $r6=var1990, $r5=var2573, $r7=var3317, $r8=var1873}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFTextParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.lang.String getText()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1