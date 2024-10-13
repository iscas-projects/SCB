(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1720 0)
(declare-sort var1817 0)
(declare-sort var3664 0)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var1817) (Array Int Int))
(declare-fun var2410_copyFrom/683684084 ((Array Int Int)) var2410)
(declare-const null-String String)
(declare-const var3664-ISO_8859_1 var1817)
(declare-const var3013 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3013 null-String)))
(define-const var3086 var1817 var3664-ISO_8859_1) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1> 
(assert true)
(define-const var1146 (Array Int Int) (getBytes/-163691139 var3013 var3086)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
(define-const var2598 var2410 (var2410_copyFrom/683684084 var1146)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[])>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var2410_copyFrom/683684084=([byte[]], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)}
; {var3013=r0, var1720=null_type, var1817=java.nio.charset.Charset, var3664=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var3086=$r1, var1146=$r2, var2410=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var2598=$r3}
; {r0=var3013, null_type=var1720, java.nio.charset.Charset=var1817, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var3664, $r1=var3086, $r2=var1146, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var2410, $r3=var2598}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset ISO_8859_1>;	$r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString copyFrom(byte[])>($r2);	return $r3
;block_num 1