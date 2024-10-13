(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2288 0)
(declare-sort var1312 0)
(declare-sort var720 0)
(declare-sort var3942 0)
(declare-sort var1364 0)
(declare-sort var2352 0)
(declare-sort var1567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isRelationshipPartURI/-924399053 (var1312) Bool)
(declare-fun ensureRelationships/431392749 (var2288) void)
(declare-fun relationships/-1753201611 (var2288) var1364)
(declare-fun getURI/185978187 (var1312) var2352)
(declare-fun addRelationship/-588653166 (var1364 var2352 var720 String String) var1567)
(declare-fun isDirty/-1753201611 (var2288) Bool)
(declare-const null-var2288 var2288)
(declare-const null-var1312 var1312)
(declare-const null-var720 var720)
(declare-const null-String String)
(declare-const var2143 var2288) ; Statement: r2 := @this: org.apache.poi.openxml4j.opc.OPCPackage 
(assert (not (= var2143 null-var2288)))
(declare-const var2823 var1312) ; Statement: r1 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var2823 null-var1312)))
(declare-const var2527 var720) ; Statement: r4 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode 
(assert (not (= var2527 null-var720)))
(declare-const var1184 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1184 null-String)))
(declare-const var1548 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var1548 null-String)))
(assert true)
(define-const var3162 Bool (= var1184 "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>() 
(assert (= (ite var3162 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1208 Bool (isRelationshipPartURI/-924399053 var2823)) ; Statement: $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r2.<org.apache.poi.openxml4j.opc.OPCPackage: void ensureRelationships()>() 
(assert (= (ite var1208 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (ensureRelationships/431392749 var2143)) ; Statement: virtualinvoke r2.<org.apache.poi.openxml4j.opc.OPCPackage: void ensureRelationships()>() 

(declare-const var2143!1 var2288)
(define-const var3408 var1364 (relationships/-1753201611 var2143!1)) ; Statement: $r3 = r2.<org.apache.poi.openxml4j.opc.OPCPackage: org.apache.poi.openxml4j.opc.PackageRelationshipCollection relationships> 
(assert true)
(define-const var2925 var2352 (getURI/185978187 var2823)) ; Statement: $r6 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: java.net.URI getURI()>() 
(assert true)
(define-const var3612 var1567 (addRelationship/-588653166 var3408 var2925 var2527 var1184 var1548)) ; Statement: r7 = virtualinvoke $r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackageRelationship addRelationship(java.net.URI,org.apache.poi.openxml4j.opc.TargetMode,java.lang.String,java.lang.String)>($r6, r4, r0, r5) 
(declare-const var2143!2 var2288)
(assert (not (= var2143!2 null-var2288)))
(assert (= (isDirty/-1753201611 var2143!2) (ite (= 1 1) true false))) ; Statement: r2.<org.apache.poi.openxml4j.opc.OPCPackage: boolean isDirty> = 1 
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isRelationshipPartURI/-924399053=([org.apache.poi.openxml4j.opc.PackagePartName], boolean), ensureRelationships/431392749=([org.apache.poi.openxml4j.opc.OPCPackage], void), relationships/-1753201611=([org.apache.poi.openxml4j.opc.OPCPackage], org.apache.poi.openxml4j.opc.PackageRelationshipCollection), getURI/185978187=([org.apache.poi.openxml4j.opc.PackagePartName], java.net.URI), addRelationship/-588653166=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection, java.net.URI, org.apache.poi.openxml4j.opc.TargetMode, java.lang.String, java.lang.String], org.apache.poi.openxml4j.opc.PackageRelationship), isDirty/-1753201611=([org.apache.poi.openxml4j.opc.OPCPackage], boolean)}
; {var2288=org.apache.poi.openxml4j.opc.OPCPackage, var2143=r2, var1312=org.apache.poi.openxml4j.opc.PackagePartName, var2823=r1, var720=org.apache.poi.openxml4j.opc.TargetMode, var2527=r4, var1184=r0, var3942=null_type, var1548=r5, var3162=$z0, var1208=$z1, var1364=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var3408=$r3, var2352=java.net.URI, var2925=$r6, var1567=org.apache.poi.openxml4j.opc.PackageRelationship, var3612=r7}
; {org.apache.poi.openxml4j.opc.OPCPackage=var2288, r2=var2143, org.apache.poi.openxml4j.opc.PackagePartName=var1312, r1=var2823, org.apache.poi.openxml4j.opc.TargetMode=var720, r4=var2527, r0=var1184, null_type=var3942, r5=var1548, $z0=var3162, $z1=var1208, org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var1364, $r3=var3408, java.net.URI=var2352, $r6=var2925, org.apache.poi.openxml4j.opc.PackageRelationship=var1567, r7=var3612}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.poi.openxml4j.opc.OPCPackage;	r1 := @parameter0: org.apache.poi.openxml4j.opc.PackagePartName;	r4 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode;	r0 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties");	if $z0 == 0 goto $z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>();	$z1 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: boolean isRelationshipPartURI()>();	if $z1 == 0 goto virtualinvoke r2.<org.apache.poi.openxml4j.opc.OPCPackage: void ensureRelationships()>();	virtualinvoke r2.<org.apache.poi.openxml4j.opc.OPCPackage: void ensureRelationships()>();	$r3 = r2.<org.apache.poi.openxml4j.opc.OPCPackage: org.apache.poi.openxml4j.opc.PackageRelationshipCollection relationships>;	$r6 = virtualinvoke r1.<org.apache.poi.openxml4j.opc.PackagePartName: java.net.URI getURI()>();	r7 = virtualinvoke $r3.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackageRelationship addRelationship(java.net.URI,org.apache.poi.openxml4j.opc.TargetMode,java.lang.String,java.lang.String)>($r6, r4, r0, r5);	r2.<org.apache.poi.openxml4j.opc.OPCPackage: boolean isDirty> = 1;	return r7
;block_num 3