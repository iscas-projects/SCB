(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2341 0)
(declare-sort var2541 0)
(declare-sort var3089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPrefix/1099482225 (var3089) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2341 var2341)
(declare-const null-String String)
(declare-const null-var3089 var3089)
(declare-const var2560 var2341) ; Statement: r8 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller 
(assert (not (= var2560 null-var2341)))
(declare-const var42 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var42 null-String)))
(declare-const var1859 var3089) ; Statement: r0 := @parameter1: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl 
(assert (not (= var1859 null-var3089)))
(assert true)
(define-const var2040 String (getPrefix/1099482225 var1859)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>() 
(assert true)
(define-const var135 Bool (isEmpty/-1285796103 var2040)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var135 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2653 String var42) ; Statement: $r9 = r5 
 ; Statement: goto [?= return $r9] 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getPrefix/1099482225=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2341=org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller, var2560=r8, var42=r5, var2541=null_type, var3089=org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl, var1859=r0, var2040=$r1, var135=$z0, var2653=$r9}
; {org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller=var2341, r8=var2560, r5=var42, null_type=var2541, org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl=var3089, r0=var1859, $r1=var2040, $z0=var135, $r9=var2653}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r8 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller;	r5 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl;	$r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r9 = r5;	goto [?= return $r9];	return $r9
;block_num 3