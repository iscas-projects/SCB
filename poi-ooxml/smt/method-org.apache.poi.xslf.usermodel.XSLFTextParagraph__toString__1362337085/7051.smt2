(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var795) ClassObject)
(declare-fun cast-from-var3895-to-var795 (var3895) var795)
(declare-fun append/-1031950772 (String var795) String)
(declare-fun cast-from-ClassObject-to-var795 (ClassObject) var795)
(declare-fun getText/-588004978 (var3895) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3895 var3895)
(declare-const var1532 var3895) ; Statement: r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextParagraph 
(assert (not (= var1532 null-var3895)))
(define-const var1405 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1405)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1405!1 String)
(assert (= var1405!1 ""))
(assert true)
(define-const var2691 String (append/672562846 var1405!1 "[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1405!2 String)
(assert (= var1405!2 (str.++ var1405!1 "[")))
(assert true)
(define-const var1304 ClassObject (getClass/1258963082 (cast-from-var3895-to-var795 var1532))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2981 String (append/-1031950772 var2691 (cast-from-ClassObject-to-var795 var1304))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2691!1 String)
(assert (str.prefixof var2691 var2691!1))
(assert true)
(define-const var3924 String (append/672562846 var2981 "]")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 "]")))
(assert true)
(define-const var3951 String (getText/-588004978 var1532)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.xslf.usermodel.XSLFTextParagraph: java.lang.String getText()>() 
(assert true)
(define-const var73 String (append/672562846 var3924 var3951)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3924!1 String)
(assert (= var3924!1 (str.++ var3924 var3951)))
(assert true)
(define-const var2698 String (toString/-2075883882 var73)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3895-to-var795=([org.apache.poi.xslf.usermodel.XSLFTextParagraph], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var795=([java.lang.Class], java.lang.Object), getText/-588004978=([org.apache.poi.xslf.usermodel.XSLFTextParagraph], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3895=org.apache.poi.xslf.usermodel.XSLFTextParagraph, var1532=r1, var1405=$r0, var2691=$r3, var795=java.lang.Object, var1304=$r2, var2981=$r4, var3924=$r6, var3951=$r5, var73=$r7, var2698=$r8}
; {org.apache.poi.xslf.usermodel.XSLFTextParagraph=var3895, r1=var1532, $r0=var1405, $r3=var2691, java.lang.Object=var795, $r2=var1304, $r4=var2981, $r6=var3924, $r5=var3951, $r7=var73, $r8=var2698}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke r1.<org.apache.poi.xslf.usermodel.XSLFTextParagraph: java.lang.String getText()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1