(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-312987580 (var1292) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1292 var1292)
(declare-const var2535 var1292) ; Statement: r0 := @parameter0: org.apache.commons.compress.archivers.zip.ZipArchiveEntry 
(assert (not (= var2535 null-var1292)))
(assert true)
(define-const var1366 String (getName/-312987580 var2535)) ; Statement: r1 = virtualinvoke r0.<org.apache.commons.compress.archivers.zip.ZipArchiveEntry: java.lang.String getName()>() 
(assert true)
(define-const var1084 Bool (startsWith/-1785782452 var1366 "[trash]")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("[trash]") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1084 1 0) 0))) ; Cond: $z0 != 0 
(define-const var190 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-312987580=([org.apache.commons.compress.archivers.zip.ZipArchiveEntry], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1292=org.apache.commons.compress.archivers.zip.ZipArchiveEntry, var2535=r0, var1366=r1, var1084=$z0, var190=$z2}
; {org.apache.commons.compress.archivers.zip.ZipArchiveEntry=var1292, r0=var2535, r1=var1366, $z0=var1084, $z2=var190}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.apache.commons.compress.archivers.zip.ZipArchiveEntry;	r1 = virtualinvoke r0.<org.apache.commons.compress.archivers.zip.ZipArchiveEntry: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("[trash]");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3