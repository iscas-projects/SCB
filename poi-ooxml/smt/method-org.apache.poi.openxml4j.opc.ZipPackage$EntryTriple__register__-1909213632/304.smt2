(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2673 0)
(declare-sort var997 0)
(declare-sort var1291 0)
(declare-sort var3852 0)
(declare-sort var2532 0)
(declare-sort var513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var2673) String)
(declare-fun var3852-init () var3852)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun partName/1989383810 (var2673) var2532)
(declare-fun getURI/185978187 (var2532) var513)
(declare-fun getPath/39698060 (var513) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-937058452 (var3852 String) void)
(declare-const null-var2673 var2673)
(declare-const null-var997 var997)
(declare-const null-String String)
(declare-const var922 var2673) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var922 null-var2673)))
(declare-const var37 var997) ; Statement: r2 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartCollection 
(assert (not (= var37 null-var997)))
(define-const var163 String (contentType/1989383810 var922)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (not (not (= var163 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3837 var3852 var3852-init) ; Statement: $r17 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException 
(define-const var3630 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3630)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3630!1 String)
(assert (= var3630!1 ""))
(assert true)
(define-const var3893 String (append/672562846 var3630!1 "The part ")) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The part ") 
(declare-const var3630!2 String)
(assert (= var3630!2 (str.++ var3630!1 "The part ")))
(define-const var584 var2532 (partName/1989383810 var922)) ; Statement: $r19 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert true)
(define-const var1605 var513 (getURI/185978187 var584)) ; Statement: $r20 = virtualinvoke $r19.<org.apache.poi.openxml4j.opc.PackagePartName: java.net.URI getURI()>() 
(assert true)
(define-const var1410 String (getPath/39698060 var1605)) ; Statement: $r21 = virtualinvoke $r20.<java.net.URI: java.lang.String getPath()>() 
(assert true)
(define-const var3616 String (append/672562846 var3893 var1410)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3893!1 String)
(assert (= var3893!1 (str.++ var3893 var1410)))
(assert true)
(define-const var457 String (append/672562846 var3616 " does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]") 
(declare-const var3616!1 String)
(assert (= var3616!1 (str.++ var3616 " does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]")))
(assert true)
(define-const var2560 String (toString/-2075883882 var457)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-937058452 var3837 var2560)) ; Statement: specialinvoke $r17.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r25) 

(declare-const var3837!1 var3852)
(declare-const var2560!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), var3852-init=([], org.apache.poi.openxml4j.exceptions.InvalidFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), partName/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], org.apache.poi.openxml4j.opc.PackagePartName), getURI/185978187=([org.apache.poi.openxml4j.opc.PackagePartName], java.net.URI), getPath/39698060=([java.net.URI], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-937058452=([org.apache.poi.openxml4j.exceptions.InvalidFormatException, java.lang.String], void)}
; {var2673=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var922=r0, var997=org.apache.poi.openxml4j.opc.PackagePartCollection, var37=r2, var163=$r1, var1291=null_type, var3852=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var3837=$r17, var3630=$r18, var3893=$r22, var2532=org.apache.poi.openxml4j.opc.PackagePartName, var584=$r19, var513=java.net.URI, var1605=$r20, var1410=$r21, var3616=$r23, var457=$r24, var2560=$r25}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var2673, r0=var922, org.apache.poi.openxml4j.opc.PackagePartCollection=var997, r2=var37, $r1=var163, null_type=var1291, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var3852, $r17=var3837, $r18=var3630, $r22=var3893, org.apache.poi.openxml4j.opc.PackagePartName=var2532, $r19=var584, java.net.URI=var513, $r20=var1605, $r21=var1410, $r23=var3616, $r24=var457, $r25=var2560}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r2 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartCollection;	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	if $r1 != null goto $r3 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r17 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The part ");	$r19 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r20 = virtualinvoke $r19.<org.apache.poi.openxml4j.opc.PackagePartName: java.net.URI getURI()>();	$r21 = virtualinvoke $r20.<java.net.URI: java.lang.String getPath()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not have any content type ! Rule: Package require content types when retrieving a part from a package. [M.1.14]");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r25);	throw $r17
;block_num 2