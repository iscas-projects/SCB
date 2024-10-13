(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3839 0)
(declare-sort var3673 0)
(declare-sort var2002 0)
(declare-sort var2163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRPr/518476346 (var3839 Bool) var3673)
(declare-fun doubleValue/-2921339 (Float64) Float64)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2002-init () var2002)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2163) String)
(declare-fun cast-from-Float64-to-var2163 (Float64) var2163)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2002 String) void)
(declare-const null-var3839 var3839)
(declare-const null-Float64 Float64)
(declare-const var2571 var3839) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTextRun 
(assert (not (= var2571 null-var3839)))
(declare-const var555 Float64) ; Statement: r2 := @parameter0: java.lang.Double 
(assert (not (= var555 null-Float64)))
(assert true)
(define-const var3974 var3673 (getRPr/518476346 var2571 (ite (= 1 1) true false))) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTextRun: org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties getRPr(boolean)>(1) 
 ; Statement: if r2 != null goto $d0 = virtualinvoke r2.<java.lang.Double: double doubleValue()>() 
(assert (not (= var555 null-Float64))) ; Cond: r2 != null 
(assert true)
(define-const var1429 Float64 (doubleValue/-2921339 var555)) ; Statement: $d0 = virtualinvoke r2.<java.lang.Double: double doubleValue()>() 
(define-const var1285 Int (ite (fp.gt var1429 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var1429 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b0 = $d0 cmpg 1.0 
(define-const var3772 Int (cast-from-Int-to-Int var1285)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 >= 0 goto $d1 = virtualinvoke r2.<java.lang.Double: double doubleValue()>() 
(assert (not (>= var3772 0))) ; Negate: Cond: $i2 >= 0  
(define-const var1961 var2002 var2002-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var1133 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1133)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1133!1 String)
(assert (= var1133!1 ""))
(assert true)
(define-const var644 String (append/672562846 var1133!1 "Minimum font size is 1pt but was ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Minimum font size is 1pt but was ") 
(declare-const var1133!2 String)
(assert (= var1133!2 (str.++ var1133!1 "Minimum font size is 1pt but was ")))
(assert true)
(define-const var3632 String (append/-1031950772 var644 (cast-from-Float64-to-var2163 var555))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var644!1 String)
(assert (str.prefixof var644 var644!1))
(assert true)
(define-const var674 String (toString/-2075883882 var3632)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1961 var674)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1961!1 var2002)
(declare-const var674!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getRPr/518476346=([org.apache.poi.xslf.usermodel.XSLFTextRun, boolean], org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties), doubleValue/-2921339=([java.lang.Double], double), cast-from-Int-to-Int=([byte], int), var2002-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Float64-to-var2163=([java.lang.Double], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3839=org.apache.poi.xslf.usermodel.XSLFTextRun, var2571=r0, var555=r2, var3673=org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties, var3974=r1, var1429=$d0, var1285=$b0, var3772=$i2, var2002=java.lang.IllegalArgumentException, var1961=$r9, var1133=$r8, var644=$r5, var2163=java.lang.Object, var3632=$r6, var674=$r7}
; {org.apache.poi.xslf.usermodel.XSLFTextRun=var3839, r0=var2571, r2=var555, org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties=var3673, r1=var3974, $d0=var1429, $b0=var1285, $i2=var3772, java.lang.IllegalArgumentException=var2002, $r9=var1961, $r8=var1133, $r5=var644, java.lang.Object=var2163, $r6=var3632, $r7=var674}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTextRun;	r2 := @parameter0: java.lang.Double;	r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTextRun: org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties getRPr(boolean)>(1);	if r2 != null goto $d0 = virtualinvoke r2.<java.lang.Double: double doubleValue()>();	$d0 = virtualinvoke r2.<java.lang.Double: double doubleValue()>();	$b0 = $d0 cmpg 1.0;	$i2 = (int) $b0;	if $i2 >= 0 goto $d1 = virtualinvoke r2.<java.lang.Double: double doubleValue()>();	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Minimum font size is 1pt but was ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 3