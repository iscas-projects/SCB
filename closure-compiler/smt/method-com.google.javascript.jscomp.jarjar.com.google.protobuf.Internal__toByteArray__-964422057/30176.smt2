(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3444 0)
(declare-sort var1622 0)
(declare-sort var959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var1622) (Array Int Int))
(declare-const null-String String)
(declare-const var959-UTF_8 var1622)
(declare-const var1471 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1471 null-String)))
(define-const var800 var1622 var959-UTF_8) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var2723 (Array Int Int) (getBytes/-163691139 var1471 var800)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var1471=r0, var3444=null_type, var1622=java.nio.charset.Charset, var959=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var800=$r1, var2723=$r2}
; {r0=var1471, null_type=var3444, java.nio.charset.Charset=var1622, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var959, $r1=var800, $r2=var2723}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	$r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	return $r2
;block_num 1