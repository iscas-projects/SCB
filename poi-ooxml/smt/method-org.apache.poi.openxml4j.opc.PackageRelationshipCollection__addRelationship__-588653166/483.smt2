(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort var3687 0)
(declare-sort var3041 0)
(declare-sort var2116 0)
(declare-sort var3127 0)
(declare-sort var503 0)
(declare-sort var3048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3127-init () var3127)
(declare-fun container/1897838155 (var1381) var503)
(declare-fun sourcePart/1897838155 (var1381) var3048)
(declare-fun <init>/-389323439 (var3127 var503 var3048 var3687 var3041 String String) void)
(declare-fun addRelationship/-143778224 (var1381 var3127) void)
(declare-const null-var1381 var1381)
(declare-const null-var3687 var3687)
(declare-const null-var3041 var3041)
(declare-const null-String String)
(declare-const var3041-INTERNAL var3041)
(declare-const var3516 var1381) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection 
(assert (not (= var3516 null-var1381)))
(declare-const var728 var3687) ; Statement: r2 := @parameter0: java.net.URI 
(assert (not (= var728 null-var3687)))
(declare-const var180 var3041) ; Statement: r3 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode 
(assert (not (= var180 null-var3041)))
(declare-const var484 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var484 null-String)))
(declare-const var2626 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var2626 null-String)))
 ; Statement: if r10 == null goto $i0 = r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int nextRelationshipId> 
(assert (not (= var2626 null-String))) ; Negate: Cond: r10 == null  
(assert true)
(define-const var166 Bool (isEmpty/-1285796103 var2626)) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r18 = new org.apache.poi.openxml4j.opc.PackageRelationship 
(assert (= (ite var166 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2352 var3127 var3127-init) ; Statement: $r18 = new org.apache.poi.openxml4j.opc.PackageRelationship 
(define-const var3613 var503 (container/1897838155 var3516)) ; Statement: $r6 = r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.OPCPackage container> 
(define-const var1816 var3048 (sourcePart/1897838155 var3516)) ; Statement: $r5 = r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart sourcePart> 
(assert true)
;(assert (<init>/-389323439 var2352 var3613 var1816 var728 var180 var484 var2626)) ; Statement: specialinvoke $r18.<org.apache.poi.openxml4j.opc.PackageRelationship: void <init>(org.apache.poi.openxml4j.opc.OPCPackage,org.apache.poi.openxml4j.opc.PackagePart,java.net.URI,org.apache.poi.openxml4j.opc.TargetMode,java.lang.String,java.lang.String)>($r6, $r5, r2, r3, r4, r10) 

(declare-const var2352!1 var3127)
(declare-const var3613!1 var503)
(declare-const var1816!1 var3048)
(declare-const var728!1 var3687)
(declare-const var180!1 var3041)
(declare-const var484!1 String)
(declare-const var2626!1 String)
(assert true)
;(assert (addRelationship/-143778224 var3516 var2352!1)) ; Statement: virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: void addRelationship(org.apache.poi.openxml4j.opc.PackageRelationship)>($r18) 

(declare-const var3516!1 var1381)
(declare-const var2352!2 var3127)
(define-const var1317 var3041 var3041-INTERNAL) ; Statement: $r7 = <org.apache.poi.openxml4j.opc.TargetMode: org.apache.poi.openxml4j.opc.TargetMode INTERNAL> 
 ; Statement: if r3 != $r7 goto return $r18 
(assert (not (= var180!1 var1317))) ; Cond: r3 != $r7 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var3127-init=([], org.apache.poi.openxml4j.opc.PackageRelationship), container/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.OPCPackage), sourcePart/1897838155=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection], org.apache.poi.openxml4j.opc.PackagePart), <init>/-389323439=([org.apache.poi.openxml4j.opc.PackageRelationship, org.apache.poi.openxml4j.opc.OPCPackage, org.apache.poi.openxml4j.opc.PackagePart, java.net.URI, org.apache.poi.openxml4j.opc.TargetMode, java.lang.String, java.lang.String], void), addRelationship/-143778224=([org.apache.poi.openxml4j.opc.PackageRelationshipCollection, org.apache.poi.openxml4j.opc.PackageRelationship], void)}
; {var1381=org.apache.poi.openxml4j.opc.PackageRelationshipCollection, var3516=r0, var3687=java.net.URI, var728=r2, var3041=org.apache.poi.openxml4j.opc.TargetMode, var180=r3, var484=r4, var2116=null_type, var2626=r10, var166=$z0, var3127=org.apache.poi.openxml4j.opc.PackageRelationship, var2352=$r18, var503=org.apache.poi.openxml4j.opc.OPCPackage, var3613=$r6, var3048=org.apache.poi.openxml4j.opc.PackagePart, var1816=$r5, var1317=$r7}
; {org.apache.poi.openxml4j.opc.PackageRelationshipCollection=var1381, r0=var3516, java.net.URI=var3687, r2=var728, org.apache.poi.openxml4j.opc.TargetMode=var3041, r3=var180, r4=var484, null_type=var2116, r10=var2626, $z0=var166, org.apache.poi.openxml4j.opc.PackageRelationship=var3127, $r18=var2352, org.apache.poi.openxml4j.opc.OPCPackage=var503, $r6=var3613, org.apache.poi.openxml4j.opc.PackagePart=var3048, $r5=var1816, $r7=var1317}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.PackageRelationshipCollection;	r2 := @parameter0: java.net.URI;	r3 := @parameter1: org.apache.poi.openxml4j.opc.TargetMode;	r4 := @parameter2: java.lang.String;	r10 := @parameter3: java.lang.String;	if r10 == null goto $i0 = r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: int nextRelationshipId>;	$z0 = virtualinvoke r10.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r18 = new org.apache.poi.openxml4j.opc.PackageRelationship;	$r18 = new org.apache.poi.openxml4j.opc.PackageRelationship;	$r6 = r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.OPCPackage container>;	$r5 = r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: org.apache.poi.openxml4j.opc.PackagePart sourcePart>;	specialinvoke $r18.<org.apache.poi.openxml4j.opc.PackageRelationship: void <init>(org.apache.poi.openxml4j.opc.OPCPackage,org.apache.poi.openxml4j.opc.PackagePart,java.net.URI,org.apache.poi.openxml4j.opc.TargetMode,java.lang.String,java.lang.String)>($r6, $r5, r2, r3, r4, r10);	virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackageRelationshipCollection: void addRelationship(org.apache.poi.openxml4j.opc.PackageRelationship)>($r18);	$r7 = <org.apache.poi.openxml4j.opc.TargetMode: org.apache.poi.openxml4j.opc.TargetMode INTERNAL>;	if r3 != $r7 goto return $r18;	return $r18
;block_num 4