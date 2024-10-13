(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3193 0)
(declare-sort var1822 0)
(declare-sort var551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var551-init () var551)
(declare-fun getBytes/-163691139 (String var1822) (Array Int Int))
(declare-fun <init>/347836052 (var551 (Array Int Int)) void)
(declare-const null-String String)
(declare-const null-var1822 var1822)
(declare-const var1652 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1652 null-String)))
(declare-const var3689 var1822) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3689 null-var1822)))
(define-const var3194 var551 var551-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString 
(assert true)
(define-const var689 (Array Int Int) (getBytes/-163691139 var1652 var3689)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r2) 
(assert true)
;(assert (<init>/347836052 var3194 var689)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: void <init>(byte[])>($r3) 

(declare-const var3194!1 var551)
(declare-const var689!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var551-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), <init>/347836052=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, byte[]], void)}
; {var1652=r1, var3193=null_type, var1822=java.nio.charset.Charset, var3689=r2, var551=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, var3194=$r0, var689=$r3}
; {r1=var1652, null_type=var3193, java.nio.charset.Charset=var1822, r2=var3689, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString=var551, $r0=var3194, $r3=var689}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.nio.charset.Charset;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString;	$r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r2);	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: void <init>(byte[])>($r3);	return $r0
;block_num 1