(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1606 0)
(declare-sort var1752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun partNameURI/-954825421 (var1606) var1752)
(declare-fun getPath/39698060 (var1752) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1606 var1606)
(declare-const var3118 var1606) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.PackagePartName 
(assert (not (= var3118 null-var1606)))
(define-const var2689 var1752 (partNameURI/-954825421 var3118)) ; Statement: $r1 = r0.<org.apache.poi.openxml4j.opc.PackagePartName: java.net.URI partNameURI> 
(assert true)
(define-const var1284 String (getPath/39698060 var2689)) ; Statement: r2 = virtualinvoke $r1.<java.net.URI: java.lang.String getPath()>() 
(assert true)
(define-const var3400 Int (length/-134980193 var1284)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return "" 
(assert (<= var3400 0)) ; Cond: $i0 <= 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {partNameURI/-954825421=([org.apache.poi.openxml4j.opc.PackagePartName], java.net.URI), getPath/39698060=([java.net.URI], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1606=org.apache.poi.openxml4j.opc.PackagePartName, var3118=r0, var1752=java.net.URI, var2689=$r1, var1284=r2, var3400=$i0}
; {org.apache.poi.openxml4j.opc.PackagePartName=var1606, r0=var3118, java.net.URI=var1752, $r1=var2689, r2=var1284, $i0=var3400}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.PackagePartName;	$r1 = r0.<org.apache.poi.openxml4j.opc.PackagePartName: java.net.URI partNameURI>;	r2 = virtualinvoke $r1.<java.net.URI: java.lang.String getPath()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	if $i0 <= 0 goto return "";	return ""
;block_num 2