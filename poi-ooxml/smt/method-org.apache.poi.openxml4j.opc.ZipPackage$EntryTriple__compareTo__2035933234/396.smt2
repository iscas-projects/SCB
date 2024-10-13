(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var2917) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-const null-var2917 var2917)
(declare-const var638 var2917) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var638 null-var2917)))
(declare-const var1254 var2917) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var1254 null-var2917)))
(define-const var1251 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var3667 String (contentType/1989383810 var638)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var571 Bool (= var1251 var3667)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (not (= (ite var571 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3857 Int (- 1)) ; Statement: $b2 = -1 
 ; Statement: goto [?= b0 = $b2] 
(assert true) ; Non Conditional
(define-const var1583 Int var3857) ; Statement: b0 = $b2 
(define-const var359 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var3468 String (contentType/1989383810 var1254)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3102 Bool (= var359 var3468)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (= (ite var3102 1 0) 0)) ; Cond: $z1 == 0 
(define-const var905 Int 1) ; Statement: $b3 = 1 
(assert true) ; Non Conditional
(define-const var2032 Int (Int_compare/-152067297 var1583 var905)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (not (= var2032 0))) ; Negate: Cond: $i1 == 0  
(define-const var3242 Int var2032) ; Statement: $i4 = $i1 
 ; Statement: goto [?= return $i4] 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int)}
; {var2917=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var638=r0, var1254=r3, var1251=$r2, var3667=$r1, var571=$z0, var3857=$b2, var1583=b0, var359=$r5, var3468=$r4, var3102=$z1, var905=$b3, var2032=$i1, var3242=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var2917, r0=var638, r3=var1254, $r2=var1251, $r1=var3667, $z0=var571, $b2=var3857, b0=var1583, $r5=var359, $r4=var3468, $z1=var3102, $b3=var905, $i1=var2032, $i4=var3242}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = -1;	goto [?= b0 = $b2];	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = 1;	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = $i1;	goto [?= return $i4];	return $i4
;block_num 7