(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var11 0)
(declare-sort var3677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var11) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-fun partName/1989383810 (var11) var3677)
(declare-fun compareTo/-789371402 (var3677 var3677) Int)
(declare-const null-var11 var11)
(declare-const var1039 var11) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var1039 null-var11)))
(declare-const var1885 var11) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var1885 null-var11)))
(define-const var592 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var231 String (contentType/1989383810 var1039)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3484 Bool (= var592 var231)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (= (ite var3484 1 0) 0)) ; Cond: $z0 == 0 
(define-const var458 Int 1) ; Statement: $b2 = 1 
(assert true) ; Non Conditional
(define-const var2422 Int var458) ; Statement: b0 = $b2 
(define-const var759 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var100 String (contentType/1989383810 var1885)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var1755 Bool (= var759 var100)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (not (= (ite var1755 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var590 Int (- 1)) ; Statement: $b3 = -1 
 ; Statement: goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)] 
(assert true) ; Non Conditional
(define-const var1533 Int (Int_compare/-152067297 var2422 var590)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (= var1533 0)) ; Cond: $i1 == 0 
(define-const var1063 var3677 (partName/1989383810 var1039)) ; Statement: $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(define-const var3029 var3677 (partName/1989383810 var1885)) ; Statement: $r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert true)
(define-const var1828 Int (compareTo/-789371402 var1063 var3029)) ; Statement: $i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6) 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int), partName/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], org.apache.poi.openxml4j.opc.PackagePartName), compareTo/-789371402=([org.apache.poi.openxml4j.opc.PackagePartName, org.apache.poi.openxml4j.opc.PackagePartName], int)}
; {var11=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var1039=r0, var1885=r3, var592=$r2, var231=$r1, var3484=$z0, var458=$b2, var2422=b0, var759=$r5, var100=$r4, var1755=$z1, var590=$b3, var1533=$i1, var3677=org.apache.poi.openxml4j.opc.PackagePartName, var1063=$r7, var3029=$r6, var1828=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var11, r0=var1039, r3=var1885, $r2=var592, $r1=var231, $z0=var3484, $b2=var458, b0=var2422, $r5=var759, $r4=var100, $z1=var1755, $b3=var590, $i1=var1533, org.apache.poi.openxml4j.opc.PackagePartName=var3677, $r7=var1063, $r6=var3029, $i4=var1828}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = 1;	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = -1;	goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)];	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6);	return $i4
;block_num 7