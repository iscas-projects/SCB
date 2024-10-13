(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1143 0)
(declare-sort var1831 0)
(declare-sort var1969 0)
(declare-sort var1380 0)
(declare-sort var489 0)
(declare-sort var2730 0)
(declare-sort var21 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun throwExceptionIfReadOnly/55912360 (var1969) void)
(declare-fun cast-from-var1143-to-var1969 (var1143) var1969)
(declare-fun var1380-init () var1380)
(declare-fun <init>/1168562472 (var1380 var1831) void)
(declare-fun var2730-init () var2730)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var21) String)
(declare-fun cast-from-var489-to-var21 (var489) var21)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/151292387 (var2730 String var21) void)
(declare-const null-var1143 var1143)
(declare-const null-var1831 var1831)
(declare-const null-var489 var489)
(declare-const var2578 var1143) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage 
(assert (not (= var2578 null-var1143)))
(declare-const var0 var1831) ; Statement: r1 := @parameter0: java.io.OutputStream 
(assert (not (= var0 null-var1831)))
(assert true)
;(assert (throwExceptionIfReadOnly/55912360 (cast-from-var1143-to-var1969 var2578))) ; Statement: virtualinvoke r0.<org.apache.poi.openxml4j.opc.ZipPackage: void throwExceptionIfReadOnly()>() 

(declare-const var2578!1 var1143)
(define-const var3640 Bool true) ; Statement: $z0 = r1 instanceof org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
 ; Statement: if $z0 == 0 goto $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
(assert (= (ite var3640 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3182 var1380 var1380-init) ; Statement: $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
(define-const var2320 var1380 var3182) ; Statement: $r45 = $r56 
(assert true)
;(assert (<init>/1168562472 var3182 var0)) ; Statement: specialinvoke $r56.<org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream: void <init>(java.io.OutputStream)>(r1) 

(declare-const var3182!1 var1380)
(declare-const var0!1 var1831)
(assert true) ; Non Conditional
(define-const var2256 var1380 var2320) ; Statement: r2 = $r45 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1269 var489) ; Statement: $r37 := @caughtexception 
(assert (not (= var1269 null-var489)))
(define-const var1151 var2730 var2730-init) ; Statement: $r60 = new org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException 
(define-const var3208 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3208)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3208!1 String)
(assert (= var3208!1 ""))
(assert true)
(define-const var2499 String (append/672562846 var3208!1 "Fail to save: an error occurs while saving the package : ")) ; Statement: $r41 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fail to save: an error occurs while saving the package : ") 
(declare-const var3208!2 String)
(assert (= var3208!2 (str.++ var3208!1 "Fail to save: an error occurs while saving the package : ")))
(assert true)
(define-const var1369 String (getMessage/849299655 (cast-from-var489-to-var21 var1269))) ; Statement: $r40 = virtualinvoke $r37.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2109 String (append/672562846 var2499 var1369)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2499!1 String)
(assert (= var2499!1 (str.++ var2499 var1369)))
(assert true)
(define-const var2638 String (toString/-2075883882 var2109)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/151292387 var1151 var2638 (cast-from-var489-to-var21 var1269))) ; Statement: specialinvoke $r60.<org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r43, $r37) 

(declare-const var1151!1 var2730)
(declare-const var2638!1 String)
(declare-const var1269!1 var489)
 ; Statement: throw $r60 
(check-sat)
(get-model)
(get-unsat-core)
; {throwExceptionIfReadOnly/55912360=([org.apache.poi.openxml4j.opc.OPCPackage], void), cast-from-var1143-to-var1969=([org.apache.poi.openxml4j.opc.ZipPackage], org.apache.poi.openxml4j.opc.OPCPackage), var1380-init=([], org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream), <init>/1168562472=([org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, java.io.OutputStream], void), var2730-init=([], org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var489-to-var21=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/151292387=([org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var1143=org.apache.poi.openxml4j.opc.ZipPackage, var2578=r0, var1831=java.io.OutputStream, var0=r1, var1969=org.apache.poi.openxml4j.opc.OPCPackage, var3640=$z0, var1380=org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, var3182=$r56, var2320=$r45, var2256=r2, var489=java.lang.Exception, var1269=$r37, var2730=org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException, var1151=$r60, var3208=$r59, var2499=$r41, var21=java.lang.Throwable, var1369=$r40, var2109=$r42, var2638=$r43}
; {org.apache.poi.openxml4j.opc.ZipPackage=var1143, r0=var2578, java.io.OutputStream=var1831, r1=var0, org.apache.poi.openxml4j.opc.OPCPackage=var1969, $z0=var3640, org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream=var1380, $r56=var3182, $r45=var2320, r2=var2256, java.lang.Exception=var489, $r37=var1269, org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException=var2730, $r60=var1151, $r59=var3208, $r41=var2499, java.lang.Throwable=var21, $r40=var1369, $r42=var2109, $r43=var2638}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage;	r1 := @parameter0: java.io.OutputStream;	virtualinvoke r0.<org.apache.poi.openxml4j.opc.ZipPackage: void throwExceptionIfReadOnly()>();	$z0 = r1 instanceof org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	if $z0 == 0 goto $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	$r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	$r45 = $r56;	specialinvoke $r56.<org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream: void <init>(java.io.OutputStream)>(r1);	r2 = $r45;	$r37 := @caughtexception;	$r60 = new org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fail to save: an error occurs while saving the package : ");	$r40 = virtualinvoke $r37.<java.lang.Exception: java.lang.String getMessage()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r60.<org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r43, $r37);	throw $r60
;block_num 4