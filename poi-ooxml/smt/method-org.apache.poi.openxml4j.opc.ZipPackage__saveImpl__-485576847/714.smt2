(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var217 0)
(declare-sort var3198 0)
(declare-sort var3528 0)
(declare-sort var668 0)
(declare-sort var3845 0)
(declare-sort var17 0)
(declare-sort var3483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun throwExceptionIfReadOnly/55912360 (var3528) void)
(declare-fun cast-from-var217-to-var3528 (var217) var3528)
(declare-fun cast-from-var3198-to-var668 (var3198) var668)
(declare-fun var17-init () var17)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3483) String)
(declare-fun cast-from-var3845-to-var3483 (var3845) var3483)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/151292387 (var17 String var3483) void)
(declare-const null-var217 var217)
(declare-const null-var3198 var3198)
(declare-const null-var3845 var3845)
(declare-const var2301 var217) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage 
(assert (not (= var2301 null-var217)))
(declare-const var3138 var3198) ; Statement: r1 := @parameter0: java.io.OutputStream 
(assert (not (= var3138 null-var3198)))
(assert true)
;(assert (throwExceptionIfReadOnly/55912360 (cast-from-var217-to-var3528 var2301))) ; Statement: virtualinvoke r0.<org.apache.poi.openxml4j.opc.ZipPackage: void throwExceptionIfReadOnly()>() 

(declare-const var2301!1 var217)
(define-const var2496 Bool true) ; Statement: $z0 = r1 instanceof org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
 ; Statement: if $z0 == 0 goto $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream 
(assert (not (= (ite var2496 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2012 var668 (cast-from-var3198-to-var668 var3138)) ; Statement: $r45 = (org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream) r1 
 ; Statement: goto [?= r2 = $r45] 
(assert true) ; Non Conditional
(define-const var794 var668 var2012) ; Statement: r2 = $r45 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1825 var3845) ; Statement: $r37 := @caughtexception 
(assert (not (= var1825 null-var3845)))
(define-const var1795 var17 var17-init) ; Statement: $r60 = new org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException 
(define-const var2610 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2610)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2610!1 String)
(assert (= var2610!1 ""))
(assert true)
(define-const var805 String (append/672562846 var2610!1 "Fail to save: an error occurs while saving the package : ")) ; Statement: $r41 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fail to save: an error occurs while saving the package : ") 
(declare-const var2610!2 String)
(assert (= var2610!2 (str.++ var2610!1 "Fail to save: an error occurs while saving the package : ")))
(assert true)
(define-const var647 String (getMessage/849299655 (cast-from-var3845-to-var3483 var1825))) ; Statement: $r40 = virtualinvoke $r37.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var2950 String (append/672562846 var805 var647)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var805!1 String)
(assert (= var805!1 (str.++ var805 var647)))
(assert true)
(define-const var3130 String (toString/-2075883882 var2950)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/151292387 var1795 var3130 (cast-from-var3845-to-var3483 var1825))) ; Statement: specialinvoke $r60.<org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r43, $r37) 

(declare-const var1795!1 var17)
(declare-const var3130!1 String)
(declare-const var1825!1 var3845)
 ; Statement: throw $r60 
(check-sat)
(get-model)
(get-unsat-core)
; {throwExceptionIfReadOnly/55912360=([org.apache.poi.openxml4j.opc.OPCPackage], void), cast-from-var217-to-var3528=([org.apache.poi.openxml4j.opc.ZipPackage], org.apache.poi.openxml4j.opc.OPCPackage), cast-from-var3198-to-var668=([java.io.OutputStream], org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream), var17-init=([], org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3845-to-var3483=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/151292387=([org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var217=org.apache.poi.openxml4j.opc.ZipPackage, var2301=r0, var3198=java.io.OutputStream, var3138=r1, var3528=org.apache.poi.openxml4j.opc.OPCPackage, var2496=$z0, var668=org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, var2012=$r45, var794=r2, var3845=java.lang.Exception, var1825=$r37, var17=org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException, var1795=$r60, var2610=$r59, var805=$r41, var3483=java.lang.Throwable, var647=$r40, var2950=$r42, var3130=$r43}
; {org.apache.poi.openxml4j.opc.ZipPackage=var217, r0=var2301, java.io.OutputStream=var3198, r1=var3138, org.apache.poi.openxml4j.opc.OPCPackage=var3528, $z0=var2496, org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream=var668, $r45=var2012, r2=var794, java.lang.Exception=var3845, $r37=var1825, org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException=var17, $r60=var1795, $r59=var2610, $r41=var805, java.lang.Throwable=var3483, $r40=var647, $r42=var2950, $r43=var3130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage;	r1 := @parameter0: java.io.OutputStream;	virtualinvoke r0.<org.apache.poi.openxml4j.opc.ZipPackage: void throwExceptionIfReadOnly()>();	$z0 = r1 instanceof org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	if $z0 == 0 goto $r56 = new org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;	$r45 = (org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream) r1;	goto [?= r2 = $r45];	r2 = $r45;	$r37 := @caughtexception;	$r60 = new org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fail to save: an error occurs while saving the package : ");	$r40 = virtualinvoke $r37.<java.lang.Exception: java.lang.String getMessage()>();	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r60.<org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r43, $r37);	throw $r60
;block_num 4