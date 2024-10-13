(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort var3439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInputStreamImpl/215624685 (var1012) var3439)
(declare-const null-var1012 var1012)
(declare-const null-var3439 var3439)
(declare-const var382 var1012) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.PackagePart 
(assert (not (= var382 null-var1012)))
(assert true)
(define-const var259 var3439 (getInputStreamImpl/215624685 var382)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePart: java.io.InputStream getInputStreamImpl()>() 
 ; Statement: if r1 != null goto return r1 
(assert (not (= var259 null-var3439))) ; Cond: r1 != null 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getInputStreamImpl/215624685=([org.apache.poi.openxml4j.opc.PackagePart], java.io.InputStream)}
; {var1012=org.apache.poi.openxml4j.opc.PackagePart, var382=r0, var3439=java.io.InputStream, var259=r1}
; {org.apache.poi.openxml4j.opc.PackagePart=var1012, r0=var382, java.io.InputStream=var3439, r1=var259}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.PackagePart;	r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.PackagePart: java.io.InputStream getInputStreamImpl()>();	if r1 != null goto return r1;	return r1
;block_num 2