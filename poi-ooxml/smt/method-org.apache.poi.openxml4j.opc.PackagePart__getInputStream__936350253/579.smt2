(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3325 0)
(declare-sort var2598 0)
(declare-sort var2057 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInputStreamImpl/215624685 (var3325) var2598)
(declare-fun var2057-init () var2057)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _partName/-1441654136 (var3325) var1383)
(declare-fun getName/32427362 (var1383) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2057 String) void)
(declare-const null-var3325 var3325)
(declare-const null-var2598 var2598)
(declare-const var1959 var3325) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var1959 null-var3325)))
(assert true)
(define-const var2525 var2598 (getInputStreamImpl/215624685 var1959)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePart: java.io.InputStream getInputStreamImpl()>() 
 ; Statement: if r1 != null goto return r1 
(assert (not (not (= var2525 null-var2598)))) ; Negate: Cond: r1 != null  
(define-const var2523 var2057 var2057-init) ; Statement: $r2 = new java.io.IOException 
(define-const var2685 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2685)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2685!1 String)
(assert (= var2685!1 ""))
(assert true)
(define-const var1218 String (append/672562846 var2685!1 "Can\u0027t obtain the input stream from ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t obtain the input stream from ") 
(declare-const var2685!2 String)
(assert (= var2685!2 (str.++ var2685!1 "Can\u0027t obtain the input stream from ")))
(define-const var1017 var1383 (_partName/-1441654136 var1959)) ; Statement: $r4 = r0.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName _partName> 
(assert true)
(define-const var2794 String (getName/32427362 var1017)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>() 
(assert true)
(define-const var3986 String (append/672562846 var1218 var2794)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1218!1 String)
(assert (= var1218!1 (str.++ var1218 var2794)))
(assert true)
(define-const var3881 String (toString/-2075883882 var3986)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2523 var3881)) ; Statement: specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var2523!1 var2057)
(declare-const var3881!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getInputStreamImpl/215624685=([org.apache.poi.openxml4j.opc.PackagePart], java.io.InputStream), var2057-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), _partName/-1441654136=([org.apache.poi.openxml4j.opc.PackagePart], org.apache.poi.openxml4j.opc.PackagePartName), getName/32427362=([org.apache.poi.openxml4j.opc.PackagePartName], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3325=org.apache.poi.openxml4j.opc.PackagePart, var1959=r0, var2598=java.io.InputStream, var2525=r1, var2057=java.io.IOException, var2523=$r2, var2685=$r3, var1218=$r6, var1383=org.apache.poi.openxml4j.opc.PackagePartName, var1017=$r4, var2794=$r5, var3986=$r7, var3881=$r8}
; {org.apache.poi.openxml4j.opc.PackagePart=var3325, r0=var1959, java.io.InputStream=var2598, r1=var2525, java.io.IOException=var2057, $r2=var2523, $r3=var2685, $r6=var1218, org.apache.poi.openxml4j.opc.PackagePartName=var1383, $r4=var1017, $r5=var2794, $r7=var3986, $r8=var3881}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.PackagePart;	r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePart: java.io.InputStream getInputStreamImpl()>();	if r1 != null goto return r1;	$r2 = new java.io.IOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t obtain the input stream from ");	$r4 = r0.<org.apache.poi.openxml4j.opc.PackagePart: org.apache.poi.openxml4j.opc.PackagePartName _partName>;	$r5 = virtualinvoke $r4.<org.apache.poi.openxml4j.opc.PackagePartName: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2