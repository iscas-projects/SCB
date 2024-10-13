(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3195 0)
(declare-sort var2940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2940) ClassObject)
(declare-fun cast-from-var3195-to-var2940 (var3195) var2940)
(declare-fun append/-1031950772 (String var2940) String)
(declare-fun cast-from-ClassObject-to-var2940 (ClassObject) var2940)
(declare-fun getRawText/1423564263 (var3195) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3195 var3195)
(declare-const var2869 var3195) ; Statement: r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextRun 
(assert (not (= var2869 null-var3195)))
(define-const var2945 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2945)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2945!1 String)
(assert (= var2945!1 ""))
(assert true)
(define-const var2207 String (append/672562846 var2945!1 "[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2945!2 String)
(assert (= var2945!2 (str.++ var2945!1 "[")))
(assert true)
(define-const var217 ClassObject (getClass/1258963082 (cast-from-var3195-to-var2940 var2869))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var895 String (append/-1031950772 var2207 (cast-from-ClassObject-to-var2940 var217))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2207!1 String)
(assert (str.prefixof var2207 var2207!1))
(assert true)
(define-const var3329 String (append/672562846 var895 "]")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var895!1 String)
(assert (= var895!1 (str.++ var895 "]")))
(assert true)
(define-const var527 String (getRawText/1423564263 var2869)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xslf.usermodel.XSLFTextRun: java.lang.String getRawText()>() 
(assert true)
(define-const var2875 String (append/672562846 var3329 var527)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3329!1 String)
(assert (= var3329!1 (str.++ var3329 var527)))
(assert true)
(define-const var715 String (toString/-2075883882 var2875)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3195-to-var2940=([org.apache.poi.xslf.usermodel.XSLFTextRun], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2940=([java.lang.Class], java.lang.Object), getRawText/1423564263=([org.apache.poi.xslf.usermodel.XSLFTextRun], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3195=org.apache.poi.xslf.usermodel.XSLFTextRun, var2869=r1, var2945=$r0, var2207=$r3, var2940=java.lang.Object, var217=$r2, var895=$r4, var3329=$r6, var527=$r5, var2875=$r7, var715=$r8}
; {org.apache.poi.xslf.usermodel.XSLFTextRun=var3195, r1=var2869, $r0=var2945, $r3=var2207, java.lang.Object=var2940, $r2=var217, $r4=var895, $r6=var3329, $r5=var527, $r7=var2875, $r8=var715}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextRun;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke r1.<org.apache.poi.xslf.usermodel.XSLFTextRun: java.lang.String getRawText()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1