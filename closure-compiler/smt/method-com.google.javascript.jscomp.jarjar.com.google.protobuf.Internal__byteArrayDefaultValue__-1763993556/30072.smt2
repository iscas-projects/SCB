(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2755 0)
(declare-sort var3797 0)
(declare-sort var1236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var3797) (Array Int Int))
(declare-const null-String String)
(declare-const var1236-ISO_8859_1 var3797)
(declare-const var996 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var996 null-String)))
(define-const var2639 var3797 var1236-ISO_8859_1) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1> 
(assert true)
(define-const var281 (Array Int Int) (getBytes/-163691139 var996 var2639)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var996=r0, var2755=null_type, var3797=java.nio.charset.Charset, var1236=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var2639=$r1, var281=$r2}
; {r0=var996, null_type=var2755, java.nio.charset.Charset=var3797, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var1236, $r1=var2639, $r2=var281}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1>;	$r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	return $r2
;block_num 1