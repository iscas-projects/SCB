(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1326 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentType/1989383810 (var1326) String)
(declare-fun Int_compare/-152067297 (Int Int) Int)
(declare-fun partName/1989383810 (var1326) var1989)
(declare-fun compareTo/-789371402 (var1989 var1989) Int)
(declare-const null-var1326 var1326)
(declare-const var76 var1326) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var76 null-var1326)))
(declare-const var2225 var1326) ; Statement: r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple 
(assert (not (= var2225 null-var1326)))
(define-const var116 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r2 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var2806 String (contentType/1989383810 var76)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3182 Bool (= var116 var2806)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $b2 = 1 
(assert (not (= (ite var3182 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2161 Int (- 1)) ; Statement: $b2 = -1 
 ; Statement: goto [?= b0 = $b2] 
(assert true) ; Non Conditional
(define-const var784 Int var2161) ; Statement: b0 = $b2 
(define-const var3812 String "application/vnd.openxmlformats-package.relationships+xml") ; Statement: $r5 = "application/vnd.openxmlformats-package.relationships+xml" 
(define-const var1553 String (contentType/1989383810 var2225)) ; Statement: $r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType> 
(assert true)
(define-const var3365 Bool (= var3812 var1553)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: if $z1 == 0 goto $b3 = 1 
(assert (not (= (ite var3365 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1532 Int (- 1)) ; Statement: $b3 = -1 
 ; Statement: goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)] 
(assert true) ; Non Conditional
(define-const var3154 Int (Int_compare/-152067297 var784 var1532)) ; Statement: $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3) 
 ; Statement: if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert (= var3154 0)) ; Cond: $i1 == 0 
(define-const var363 var1989 (partName/1989383810 var76)) ; Statement: $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(define-const var3963 var1989 (partName/1989383810 var2225)) ; Statement: $r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName> 
(assert true)
(define-const var3295 Int (compareTo/-789371402 var363 var3963)) ; Statement: $i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6) 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {contentType/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], java.lang.String), Int_compare/-152067297=([int, int], int), partName/1989383810=([org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple], org.apache.poi.openxml4j.opc.PackagePartName), compareTo/-789371402=([org.apache.poi.openxml4j.opc.PackagePartName, org.apache.poi.openxml4j.opc.PackagePartName], int)}
; {var1326=org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple, var76=r0, var2225=r3, var116=$r2, var2806=$r1, var3182=$z0, var2161=$b2, var784=b0, var3812=$r5, var1553=$r4, var3365=$z1, var1532=$b3, var3154=$i1, var1989=org.apache.poi.openxml4j.opc.PackagePartName, var363=$r7, var3963=$r6, var3295=$i4}
; {org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple=var1326, r0=var76, r3=var2225, $r2=var116, $r1=var2806, $z0=var3182, $b2=var2161, b0=var784, $r5=var3812, $r4=var1553, $z1=var3365, $b3=var1532, $i1=var3154, org.apache.poi.openxml4j.opc.PackagePartName=var1989, $r7=var363, $r6=var3963, $i4=var3295}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	r3 := @parameter0: org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple;	$r2 = "application/vnd.openxmlformats-package.relationships+xml";	$r1 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $b2 = 1;	$b2 = -1;	goto [?= b0 = $b2];	b0 = $b2;	$r5 = "application/vnd.openxmlformats-package.relationships+xml";	$r4 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: java.lang.String contentType>;	$z1 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	if $z1 == 0 goto $b3 = 1;	$b3 = -1;	goto [?= $i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3)];	$i1 = staticinvoke <java.lang.Integer: int compare(int,int)>(b0, $b3);	if $i1 == 0 goto $r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r7 = r0.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$r6 = r3.<org.apache.poi.openxml4j.opc.ZipPackage$EntryTriple: org.apache.poi.openxml4j.opc.PackagePartName partName>;	$i4 = virtualinvoke $r7.<org.apache.poi.openxml4j.opc.PackagePartName: int compareTo(org.apache.poi.openxml4j.opc.PackagePartName)>($r6);	return $i4
;block_num 7