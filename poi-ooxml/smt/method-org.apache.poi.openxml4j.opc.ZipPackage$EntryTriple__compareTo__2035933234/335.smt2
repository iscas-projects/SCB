(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var3351) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-const null-var3351 var3351)
(declare-const var1792 var3351) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var1792 null-var3351)))
(declare-const var653 var3351) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var653 null-var3351)))
(define-const var1405 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var3255 String (contentType/1989383810 var1792)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var1510 Bool (= var1405 var3255)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (not (= (ite var1510 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2462 Int (- 1)) ; Statement: $b2 = -1 
 ; Statement: goto [?= b0 = $b2] 
(assert true) ; Non Conditional
(define-const var1978 Int var2462) ; Statement: b0 = $b2 
(define-const var1299 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var2423 String (contentType/1989383810 var653)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var364 Bool (= var1299 var2423)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (not (= (ite var364 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var846 Int (- 1)) ; Statement: $b3 = -1 
 ; Statement: goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)] 
(assert true) ; Non Conditional
(define-const var520 Int (Int_compare/-152067297 var1978 var846)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (not (= var520 0))) ; Negate: Cond: $i1 == 0  
(define-const var1748 Int var520) ; Statement: $i4 = $i1 
 ; Statement: goto [?= return $i4] 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int)}
; {var3351=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var1792=r0, var653=r3, var1405=$r2, var3255=$r1, var1510=$z0, var2462=$b2, var1978=b0, var1299=$r5, var2423=$r4, var364=$z1, var846=$b3, var520=$i1, var1748=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var3351, r0=var1792, r3=var653, $r2=var1405, $r1=var3255, $z0=var1510, $b2=var2462, b0=var1978, $r5=var1299, $r4=var2423, $z1=var364, $b3=var846, $i1=var520, $i4=var1748}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = -1;	goto [?= b0 = $b2];	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = -1;	goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)];	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = $i1;	goto [?= return $i4];	return $i4
;block_num 7