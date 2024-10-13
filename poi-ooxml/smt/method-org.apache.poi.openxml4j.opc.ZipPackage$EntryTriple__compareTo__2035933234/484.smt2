(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var2244) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-const null-var2244 var2244)
(declare-const var1480 var2244) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var1480 null-var2244)))
(declare-const var1132 var2244) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var1132 null-var2244)))
(define-const var683 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var2656 String (contentType/1989383810 var1480)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var2397 Bool (= var683 var2656)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (= (ite var2397 1 0) 0)) ; Cond: $z0 == 0 
(define-const var935 Int 1) ; Statement: $b2 = 1 
(assert true) ; Non Conditional
(define-const var3433 Int var935) ; Statement: b0 = $b2 
(define-const var3217 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var2284 String (contentType/1989383810 var1132)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3105 Bool (= var3217 var2284)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (= (ite var3105 1 0) 0)) ; Cond: $z1 == 0 
(define-const var409 Int 1) ; Statement: $b3 = 1 
(assert true) ; Non Conditional
(define-const var2124 Int (Int_compare/-152067297 var3433 var409)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (not (= var2124 0))) ; Negate: Cond: $i1 == 0  
(define-const var2007 Int var2124) ; Statement: $i4 = $i1 
 ; Statement: goto [?= return $i4] 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int)}
; {var2244=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var1480=r0, var1132=r3, var683=$r2, var2656=$r1, var2397=$z0, var935=$b2, var3433=b0, var3217=$r5, var2284=$r4, var3105=$z1, var409=$b3, var2124=$i1, var2007=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var2244, r0=var1480, r3=var1132, $r2=var683, $r1=var2656, $z0=var2397, $b2=var935, b0=var3433, $r5=var3217, $r4=var2284, $z1=var3105, $b3=var409, $i1=var2124, $i4=var2007}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = 1;	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = 1;	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = $i1;	goto [?= return $i4];	return $i4
;block_num 7