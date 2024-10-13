(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var160 0)
(declare-sort var655 0)
(declare-sort var1880 0)
(declare-sort var2679 0)
(declare-sort var2828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isRelationshipPartURI/-924399053 (var655) Bool)
(declare-fun var2828-init () var2828)
(declare-fun <init>/58038504 (var2828 String) void)
(declare-const null-var160 var160)
(declare-const null-var655 var655)
(declare-const null-var1880 var1880)
(declare-const null-String String)
(declare-const var3630 var160) ; Statement: r2 := @this: org.apache.poi.openxml4j.opc.OPCPackage 
(assert (not (= var3630 null-var160)))
(declare-const var3035 var655) ; Statement: r1 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var3035 null-var655)))
(declare-const var2852 var1880) ; Statement: r4 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode 
(assert (not (= var2852 null-var1880)))
(declare-const var2748 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2748 null-String)))
(declare-const var929 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var929 null-String)))
(assert true)
(define-const var1019 Bool (= var2748 "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>() 
(assert (= (ite var1019 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3716 Bool (isRelationshipPartURI/-924399053 var3035)) ; Statement: $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r2.<org.apache.poi.openxml4j.opc.OPCPackage: void ensureRelationships()>() 
(assert (not (= (ite var3716 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2434 var2828 var2828-init) ; Statement: $r8 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException 
(assert true)
;(assert (<init>/58038504 var2434 "Rule M1.25: The Relationships part shall not have relationships to any other part.")) ; Statement: specialinvoke $r8.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String)>("Rule M1.25: The Relationships part shall not have relationships to any other part.") 

(declare-const var2434!1 var2828)
(declare-const var3207 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isRelationshipPartURI/-924399053=([org.apache.poi.openxml4j.opc.PackagePartName], boolean), var2828-init=([], org.apache.poi.openxml4j.exceptions.InvalidOperationException), <init>/58038504=([org.apache.poi.openxml4j.exceptions.InvalidOperationException, java.lang.String], void)}
; {var160=org.apache.poi.openxml4j.opc.OPCPackage, var3630=r2, var655=org.apache.poi.openxml4j.opc.PackagePartName, var3035=r1, var1880=org.apache.poi.openxml4j.opc.TargetMode, var2852=r4, var2748=r0, var2679=null_type, var929=r5, var1019=$z0, var3716=$z1, var2828=org.apache.poi.openxml4j.exceptions.InvalidOperationException, var2434=$r8, var3207="Rule M1.25: The Relationships part shall not have relationships to any other part."}
; {org.apache.poi.openxml4j.opc.OPCPackage=var160, r2=var3630, org.apache.poi.openxml4j.opc.PackagePartName=var655, r1=var3035, org.apache.poi.openxml4j.opc.TargetMode=var1880, r4=var2852, r0=var2748, null_type=var2679, r5=var929, $z0=var1019, $z1=var3716, org.apache.poi.openxml4j.exceptions.InvalidOperationException=var2828, $r8=var2434, "Rule M1.25: The Relationships part shall not have relationships to any other part."=var3207}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.poi.openxml4j.opc.OPCPackage;	r1 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName;	r4 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode;	r0 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties");	if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>();	$z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>();	if $z1 == 0 goto virtualinvoke r2.<org.apache.poi.openxml4j.opc.OPCPackage: void ensureRelationships()>();	$r8 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException;	specialinvoke $r8.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String)>("Rule M1.25: The Relationships part shall not have relationships to any other part.");	throw $r8
;block_num 3