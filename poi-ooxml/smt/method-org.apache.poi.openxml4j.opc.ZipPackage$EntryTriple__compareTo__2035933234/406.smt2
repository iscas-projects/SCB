(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var659 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var117) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-fun partName/1989383810 (var117) var659)
(declare-fun compareTo/-789371402 (var659 var659) Int)
(declare-const null-var117 var117)
(declare-const var2702 var117) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var2702 null-var117)))
(declare-const var2511 var117) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var2511 null-var117)))
(define-const var1597 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var2263 String (contentType/1989383810 var2702)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var1604 Bool (= var1597 var2263)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (not (= (ite var1604 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var122 Int (- 1)) ; Statement: $b2 = -1 
 ; Statement: goto [?= b0 = $b2] 
(assert true) ; Non Conditional
(define-const var1994 Int var122) ; Statement: b0 = $b2 
(define-const var127 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var3942 String (contentType/1989383810 var2511)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var2068 Bool (= var127 var3942)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (= (ite var2068 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1432 Int 1) ; Statement: $b3 = 1 
(assert true) ; Non Conditional
(define-const var3642 Int (Int_compare/-152067297 var1994 var1432)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (= var3642 0)) ; Cond: $i1 == 0 
(define-const var110 var659 (partName/1989383810 var2702)) ; Statement: $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(define-const var870 var659 (partName/1989383810 var2511)) ; Statement: $r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert true)
(define-const var3241 Int (compareTo/-789371402 var110 var870)) ; Statement: $i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6) 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int), partName/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], org.apache.poi.openxml4j.opc.PackagePartName), compareTo/-789371402=([org.apache.poi.openxml4j.opc.PackagePartName, org.apache.poi.openxml4j.opc.PackagePartName], int)}
; {var117=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var2702=r0, var2511=r3, var1597=$r2, var2263=$r1, var1604=$z0, var122=$b2, var1994=b0, var127=$r5, var3942=$r4, var2068=$z1, var1432=$b3, var3642=$i1, var659=org.apache.poi.openxml4j.opc.PackagePartName, var110=$r7, var870=$r6, var3241=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var117, r0=var2702, r3=var2511, $r2=var1597, $r1=var2263, $z0=var1604, $b2=var122, b0=var1994, $r5=var127, $r4=var3942, $z1=var2068, $b3=var1432, $i1=var3642, org.apache.poi.openxml4j.opc.PackagePartName=var659, $r7=var110, $r6=var870, $i4=var3241}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = -1;	goto [?= b0 = $b2];	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = 1;	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6);	return $i4
;block_num 7