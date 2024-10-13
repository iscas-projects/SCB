(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3296 0)
(declare-sort var265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineSeparator/1595639176 (var3296) String)
(declare-fun getBytes/-163691139 (String var265) (Array Int Int))
(declare-const null-var3296 var3296)
(declare-const null-var265 var265)
(declare-const var439 var3296) ; Statement: r0 := @this: org.apache.commons.io.StandardLineSeparator 
(assert (not (= var439 null-var3296)))
(declare-const var3450 var265) ; Statement: r1 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3450 null-var265)))
(define-const var2620 String (lineSeparator/1595639176 var439)) ; Statement: $r2 = r0.<org.apache.commons.io.StandardLineSeparator: java.lang.String lineSeparator> 
(assert true)
(define-const var1316 (Array Int Int) (getBytes/-163691139 var2620 var3450)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {lineSeparator/1595639176=([org.apache.commons.io.StandardLineSeparator], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var3296=org.apache.commons.io.StandardLineSeparator, var439=r0, var265=java.nio.charset.Charset, var3450=r1, var2620=$r2, var1316=$r3}
; {org.apache.commons.io.StandardLineSeparator=var3296, r0=var439, java.nio.charset.Charset=var265, r1=var3450, $r2=var2620, $r3=var1316}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: org.apache.commons.io.StandardLineSeparator;	r1 := @parameter0: java.nio.charset.Charset;	$r2 = r0.<org.apache.commons.io.StandardLineSeparator: java.lang.String lineSeparator>;	$r3 = virtualinvoke $r2.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1);	return $r3
;block_num 1