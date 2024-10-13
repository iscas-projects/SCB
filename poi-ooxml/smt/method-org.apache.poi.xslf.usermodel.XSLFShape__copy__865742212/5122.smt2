(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1233 0)
(declare-sort var1816 0)
(declare-sort var3338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1816) ClassObject)
(declare-fun cast-from-var1233-to-var1816 (var1233) var1816)
(declare-fun isInstance/451912363 (ClassObject var1816) Bool)
(declare-fun var3338-init () var3338)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3338 String) void)
(declare-const null-var1233 var1233)
(declare-const var1943 var1233) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFShape 
(assert (not (= var1943 null-var1233)))
(declare-const var1381 var1233) ; Statement: r1 := @parameter0: org.apache.poi.xslf.usermodel.XSLFShape 
(assert (not (= var1381 null-var1233)))
(assert true)
(define-const var3560 ClassObject (getClass/1258963082 (cast-from-var1233-to-var1816 var1943))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2020 Bool (isInstance/451912363 var3560 (cast-from-var1233-to-var1816 var1381))) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z1 = r0 instanceof org.apache.poi.sl.usermodel.PlaceableShape 
(assert (not (not (= (ite var2020 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2195 var3338 var3338-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3021 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3021)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3021!1 String)
(assert (= var3021!1 ""))
(assert true)
(define-const var3032 String (append/672562846 var3021!1 "Can\u0027t copy ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t copy ") 
(declare-const var3021!2 String)
(assert (= var3021!2 (str.++ var3021!1 "Can\u0027t copy ")))
(assert true)
(define-const var3760 ClassObject (getClass/1258963082 (cast-from-var1233-to-var1816 var1381))) ; Statement: $r7 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var271 String (getSimpleName/-390194377 var3760)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var983 String (append/672562846 var3032 var271)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3032!1 String)
(assert (= var3032!1 (str.++ var3032 var271)))
(assert true)
(define-const var1491 String (append/672562846 var983 " into ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into ") 
(declare-const var983!1 String)
(assert (= var983!1 (str.++ var983 " into ")))
(assert true)
(define-const var173 ClassObject (getClass/1258963082 (cast-from-var1233-to-var1816 var1943))) ; Statement: $r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2441 String (getSimpleName/-390194377 var173)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2804 String (append/672562846 var1491 var2441)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1491!1 String)
(assert (= var1491!1 (str.++ var1491 var2441)))
(assert true)
(define-const var3053 String (toString/-2075883882 var2804)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2195 var3053)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var2195!1 var3338)
(declare-const var3053!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1233-to-var1816=([org.apache.poi.xslf.usermodel.XSLFShape], java.lang.Object), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), var3338-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1233=org.apache.poi.xslf.usermodel.XSLFShape, var1943=r0, var1381=r1, var1816=java.lang.Object, var3560=$r2, var2020=$z0, var3338=java.lang.IllegalArgumentException, var2195=$r5, var3021=$r6, var3032=$r9, var3760=$r7, var271=$r8, var983=$r10, var1491=$r13, var173=$r11, var2441=$r12, var2804=$r14, var3053=$r15}
; {org.apache.poi.xslf.usermodel.XSLFShape=var1233, r0=var1943, r1=var1381, java.lang.Object=var1816, $r2=var3560, $z0=var2020, java.lang.IllegalArgumentException=var3338, $r5=var2195, $r6=var3021, $r9=var3032, $r7=var3760, $r8=var271, $r10=var983, $r13=var1491, $r11=var173, $r12=var2441, $r14=var2804, $r15=var3053}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFShape;	r1 := @parameter0: org.apache.poi.xslf.usermodel.XSLFShape;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	if $z0 != 0 goto $z1 = r0 instanceof org.apache.poi.sl.usermodel.PlaceableShape;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t copy ");	$r7 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into ");	$r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getSimpleName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r5
;block_num 2