(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort var424 0)
(declare-sort var1075 0)
(declare-sort var3832 0)
(declare-sort var163 0)
(declare-sort var714 0)
(declare-sort var3033 0)
(declare-sort var1453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/551985271 (var3832 var1075) void)
(declare-fun cast-from-var2976-to-var3832 (var2976) var3832)
(declare-fun var714-init () var714)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3033) String)
(declare-fun cast-from-var424-to-var3033 (var424) var3033)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1134025768 (var714 String var1453) void)
(declare-fun cast-from-var163-to-var1453 (var163) var1453)
(declare-const null-var2976 var2976)
(declare-const null-var424 var424)
(declare-const null-var1075 var1075)
(declare-const null-var163 var163)
(declare-const var1075-WRITE var1075)
(declare-const var1341 var2976) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage 
(assert (not (= var1341 null-var2976)))
(declare-const var19 var424) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var19 null-var424)))
(declare-const var1121 var1075) ; Statement: r1 := @parameter1: org.apache.poi.openxml4j.opc.PackageAccess 
(assert (not (= var1121 null-var1075)))
(assert true)
;(assert (<init>/551985271 (cast-from-var2976-to-var3832 var1341) var1121)) ; Statement: specialinvoke r0.<org.apache.poi.openxml4j.opc.OPCPackage: void <init>(org.apache.poi.openxml4j.opc.PackageAccess)>(r1) 

(declare-const var1341!1 var2976)
(declare-const var1121!1 var1075)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1096 var163) ; Statement: $r4 := @caughtexception 
(assert (not (= var1096 null-var163)))
(define-const var3606 var1075 var1075-WRITE) ; Statement: $r5 = <org.apache.poi.openxml4j.opc.PackageAccess: org.apache.poi.openxml4j.opc.PackageAccess WRITE> 
 ; Statement: if r1 != $r5 goto $r6 = <org.apache.poi.openxml4j.opc.ZipPackage: org.apache.logging.log4j.Logger LOG> 
(assert (not (not (= var1121!1 var3606)))) ; Negate: Cond: r1 != $r5  
(define-const var1872 var714 var714-init) ; Statement: $r8 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException 
(define-const var3284 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3284)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3284!1 String)
(assert (= var3284!1 ""))
(assert true)
(define-const var2375 String (append/672562846 var3284!1 "Can\u0027t open the specified file: \u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t open the specified file: \'") 
(declare-const var3284!2 String)
(assert (= var3284!2 (str.++ var3284!1 "Can\u0027t open the specified file: \u0027")))
(assert true)
(define-const var2543 String (append/-1031950772 var2375 (cast-from-var424-to-var3033 var19))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2375!1 String)
(assert (str.prefixof var2375 var2375!1))
(assert true)
(define-const var3547 String (append/672562846 var2543 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2543!1 String)
(assert (= var2543!1 (str.++ var2543 "\u0027")))
(assert true)
(define-const var2413 String (toString/-2075883882 var3547)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1134025768 var1872 var2413 (cast-from-var163-to-var1453 var1096))) ; Statement: specialinvoke $r8.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4) 

(declare-const var1872!1 var714)
(declare-const var2413!1 String)
(declare-const var1096!1 var163)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/551985271=([org.apache.poi.openxml4j.opc.OPCPackage, org.apache.poi.openxml4j.opc.PackageAccess], void), cast-from-var2976-to-var3832=([org.apache.poi.openxml4j.opc.ZipPackage], org.apache.poi.openxml4j.opc.OPCPackage), var714-init=([], org.apache.poi.openxml4j.exceptions.InvalidOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var424-to-var3033=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1134025768=([org.apache.poi.openxml4j.exceptions.InvalidOperationException, java.lang.String, java.lang.Throwable], void), cast-from-var163-to-var1453=([java.io.IOException], java.lang.Throwable)}
; {var2976=org.apache.poi.openxml4j.opc.ZipPackage, var1341=r0, var424=java.io.File, var19=r2, var1075=org.apache.poi.openxml4j.opc.PackageAccess, var1121=r1, var3832=org.apache.poi.openxml4j.opc.OPCPackage, var163=java.io.IOException, var1096=$r4, var3606=$r5, var714=org.apache.poi.openxml4j.exceptions.InvalidOperationException, var1872=$r8, var3284=$r9, var2375=$r10, var3033=java.lang.Object, var2543=$r11, var3547=$r12, var2413=$r13, var1453=java.lang.Throwable}
; {org.apache.poi.openxml4j.opc.ZipPackage=var2976, r0=var1341, java.io.File=var424, r2=var19, org.apache.poi.openxml4j.opc.PackageAccess=var1075, r1=var1121, org.apache.poi.openxml4j.opc.OPCPackage=var3832, java.io.IOException=var163, $r4=var1096, $r5=var3606, org.apache.poi.openxml4j.exceptions.InvalidOperationException=var714, $r8=var1872, $r9=var3284, $r10=var2375, java.lang.Object=var3033, $r11=var2543, $r12=var3547, $r13=var2413, java.lang.Throwable=var1453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage;	r2 := @parameter0: java.io.File;	r1 := @parameter1: org.apache.poi.openxml4j.opc.PackageAccess;	specialinvoke r0.<org.apache.poi.openxml4j.opc.OPCPackage: void <init>(org.apache.poi.openxml4j.opc.PackageAccess)>(r1);	$r4 := @caughtexception;	$r5 = <org.apache.poi.openxml4j.opc.PackageAccess: org.apache.poi.openxml4j.opc.PackageAccess WRITE>;	if r1 != $r5 goto $r6 = <org.apache.poi.openxml4j.opc.ZipPackage: org.apache.logging.log4j.Logger LOG>;	$r8 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t open the specified file: \'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4);	throw $r8
;block_num 3