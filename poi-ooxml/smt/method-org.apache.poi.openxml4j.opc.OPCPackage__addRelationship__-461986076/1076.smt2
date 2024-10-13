(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort var629 0)
(declare-sort var711 0)
(declare-sort var2018 0)
(declare-sort var623 0)
(declare-sort var181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun packageProperties/-1753201611 (var3600) var623)
(declare-fun var181-init () var181)
(declare-fun <init>/58038504 (var181 String) void)
(declare-const null-var3600 var3600)
(declare-const null-var629 var629)
(declare-const null-var711 var711)
(declare-const null-String String)
(declare-const null-var623 var623)
(declare-const var1008 var3600) ; Statement: r2 := @this: org.apache.poi.openxml4j.opc.OPCPackage 
(assert (not (= var1008 null-var3600)))
(declare-const var2075 var629) ; Statement: r1 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var2075 null-var629)))
(declare-const var1647 var711) ; Statement: r4 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode 
(assert (not (= var1647 null-var711)))
(declare-const var1508 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1508 null-String)))
(declare-const var2042 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var2042 null-String)))
(assert true)
(define-const var371 Bool (= var1508 "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>() 
(assert (not (= (ite var371 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1398 var623 (packageProperties/-1753201611 var1008)) ; Statement: $r9 = r2.<org.apache.poi.openxml4j.opc.OPCPackage: org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart packageProperties> 
 ; Statement: if $r9 == null goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>() 
(assert (not (= var1398 null-var623))) ; Negate: Cond: $r9 == null  
(define-const var3024 var181 var181-init) ; Statement: $r10 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException 
(assert true)
;(assert (<init>/58038504 var3024 "OPC Compliance error [M4.1]: can\u0027t add another core properties part ! Use the built-in package method instead.")) ; Statement: specialinvoke $r10.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String)>("OPC Compliance error [M4.1]: can\'t add another core properties part ! Use the built-in package method instead.") 

(declare-const var3024!1 var181)
(declare-const var3067 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {packageProperties/-1753201611=([org.apache.poi.openxml4j.opc.OPCPackage], org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart), var181-init=([], org.apache.poi.openxml4j.exceptions.InvalidOperationException), <init>/58038504=([org.apache.poi.openxml4j.exceptions.InvalidOperationException, java.lang.String], void)}
; {var3600=org.apache.poi.openxml4j.opc.OPCPackage, var1008=r2, var629=org.apache.poi.openxml4j.opc.PackagePartName, var2075=r1, var711=org.apache.poi.openxml4j.opc.TargetMode, var1647=r4, var1508=r0, var2018=null_type, var2042=r5, var371=$z0, var623=org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart, var1398=$r9, var181=org.apache.poi.openxml4j.exceptions.InvalidOperationException, var3024=$r10, var3067="OPC Compliance error [M4.1]: can\'t add another core properties part ! Use the built-in package method instead."}
; {org.apache.poi.openxml4j.opc.OPCPackage=var3600, r2=var1008, org.apache.poi.openxml4j.opc.PackagePartName=var629, r1=var2075, org.apache.poi.openxml4j.opc.TargetMode=var711, r4=var1647, r0=var1508, null_type=var2018, r5=var2042, $z0=var371, org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart=var623, $r9=var1398, org.apache.poi.openxml4j.exceptions.InvalidOperationException=var181, $r10=var3024, "OPC Compliance error [M4.1]: can\'t add another core properties part ! Use the built-in package method instead."=var3067}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.poi.openxml4j.opc.OPCPackage;	r1 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName;	r4 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode;	r0 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties");	if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>();	$r9 = r2.<org.apache.poi.openxml4j.opc.OPCPackage: org.apache.poi.openxml4j.opc.internal.PackagePropertiesPart packageProperties>;	if $r9 == null goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>();	$r10 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException;	specialinvoke $r10.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String)>("OPC Compliance error [M4.1]: can\'t add another core properties part ! Use the built-in package method instead.");	throw $r10
;block_num 3