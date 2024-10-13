(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1438 0)
(declare-sort var386 0)
(declare-sort var456 0)
(declare-sort var738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var386-init () var386)
(declare-fun getBytes/-163691139 (String var456) (Array Int Int))
(declare-fun <init>/347836052 (var386 (Array Int Int)) void)
(declare-const null-String String)
(declare-const var738-UTF_8 var456)
(declare-const var3343 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3343 null-String)))
(define-const var618 var386 var386-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString 
(define-const var2009 var456 var738-UTF_8) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var964 (Array Int Int) (getBytes/-163691139 var3343 var2009)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2) 
(assert true)
;(assert (<init>/347836052 var618 var964)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: void <init>(byte[])>($r3) 

(declare-const var618!1 var386)
(declare-const var964!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var386-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/347836052=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, byte[]], void)}
; {var3343=r1, var1438=null_type, var386=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, var618=$r0, var456=java.nio.charset.Charset, var738=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var2009=$r2, var964=$r3}
; {r1=var3343, null_type=var1438, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString=var386, $r0=var618, java.nio.charset.Charset=var456, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var738, $r2=var2009, $r3=var964}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	$r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: void <init>(byte[])>($r3);	return $r0
;block_num 1