(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var1842) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-const null-var1842 var1842)
(declare-const var3189 var1842) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var3189 null-var1842)))
(declare-const var3108 var1842) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var3108 null-var1842)))
(define-const var293 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var3546 String (contentType/1989383810 var3189)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3717 Bool (= var293 var3546)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (= (ite var3717 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1160 Int 1) ; Statement: $b2 = 1 
(assert true) ; Non Conditional
(define-const var916 Int var1160) ; Statement: b0 = $b2 
(define-const var127 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var2611 String (contentType/1989383810 var3108)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3143 Bool (= var127 var2611)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (not (= (ite var3143 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1946 Int (- 1)) ; Statement: $b3 = -1 
 ; Statement: goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)] 
(assert true) ; Non Conditional
(define-const var69 Int (Int_compare/-152067297 var916 var1946)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (not (= var69 0))) ; Negate: Cond: $i1 == 0  
(define-const var1722 Int var69) ; Statement: $i4 = $i1 
 ; Statement: goto [?= return $i4] 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int)}
; {var1842=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var3189=r0, var3108=r3, var293=$r2, var3546=$r1, var3717=$z0, var1160=$b2, var916=b0, var127=$r5, var2611=$r4, var3143=$z1, var1946=$b3, var69=$i1, var1722=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var1842, r0=var3189, r3=var3108, $r2=var293, $r1=var3546, $z0=var3717, $b2=var1160, b0=var916, $r5=var127, $r4=var2611, $z1=var3143, $b3=var1946, $i1=var69, $i4=var1722}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = 1;	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = -1;	goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)];	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = $i1;	goto [?= return $i4];	return $i4
;block_num 7