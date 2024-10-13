(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var402 0)
(declare-sort var2697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var402) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-fun partName/1989383810 (var402) var2697)
(declare-fun compareTo/-789371402 (var2697 var2697) Int)
(declare-const null-var402 var402)
(declare-const var2728 var402) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var2728 null-var402)))
(declare-const var1299 var402) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var1299 null-var402)))
(define-const var2314 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var3464 String (contentType/1989383810 var2728)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3002 Bool (= var2314 var3464)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (= (ite var3002 1 0) 0)) ; Cond: $z0 == 0 
(define-const var249 Int 1) ; Statement: $b2 = 1 
(assert true) ; Non Conditional
(define-const var3691 Int var249) ; Statement: b0 = $b2 
(define-const var2193 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var3233 String (contentType/1989383810 var1299)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var1386 Bool (= var2193 var3233)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (= (ite var1386 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1069 Int 1) ; Statement: $b3 = 1 
(assert true) ; Non Conditional
(define-const var2413 Int (Int_compare/-152067297 var3691 var1069)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (= var2413 0)) ; Cond: $i1 == 0 
(define-const var168 var2697 (partName/1989383810 var2728)) ; Statement: $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(define-const var521 var2697 (partName/1989383810 var1299)) ; Statement: $r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert true)
(define-const var1348 Int (compareTo/-789371402 var168 var521)) ; Statement: $i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6) 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int), partName/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], org.apache.poi.openxml4j.opc.PackagePartName), compareTo/-789371402=([org.apache.poi.openxml4j.opc.PackagePartName, org.apache.poi.openxml4j.opc.PackagePartName], int)}
; {var402=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var2728=r0, var1299=r3, var2314=$r2, var3464=$r1, var3002=$z0, var249=$b2, var3691=b0, var2193=$r5, var3233=$r4, var1386=$z1, var1069=$b3, var2413=$i1, var2697=org.apache.poi.openxml4j.opc.PackagePartName, var168=$r7, var521=$r6, var1348=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var402, r0=var2728, r3=var1299, $r2=var2314, $r1=var3464, $z0=var3002, $b2=var249, b0=var3691, $r5=var2193, $r4=var3233, $z1=var1386, $b3=var1069, $i1=var2413, org.apache.poi.openxml4j.opc.PackagePartName=var2697, $r7=var168, $r6=var521, $i4=var1348}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = 1;	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = 1;	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6);	return $i4
;block_num 7