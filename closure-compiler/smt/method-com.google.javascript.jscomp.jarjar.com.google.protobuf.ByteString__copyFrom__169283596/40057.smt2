(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3261 0)
(declare-sort var3948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3948-init () var3948)
(declare-fun getBytes/-343950658 (String String) (Array Int Int))
(declare-fun <init>/347836052 (var3948 (Array Int Int)) void)
(declare-const null-String String)
(declare-const var285 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var285 null-String)))
(declare-const var1380 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1380 null-String)))
(define-const var2594 var3948 var3948-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString 
(assert true)
(define-const var1888 (Array Int Int) (getBytes/-343950658 var285 var1380)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.lang.String)>(r2) 
(assert true)
;(assert (<init>/347836052 var2594 var1888)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: void <init>(byte[])>($r3) 

(declare-const var2594!1 var3948)
(declare-const var1888!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3948-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString), getBytes/-343950658=([java.lang.String, java.lang.String], byte[]), <init>/347836052=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, byte[]], void)}
; {var285=r1, var3261=null_type, var1380=r2, var3948=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString, var2594=$r0, var1888=$r3}
; {r1=var285, null_type=var3261, r2=var1380, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString=var3948, $r0=var2594, $r3=var1888}
;seq <java.lang.String: byte[] getBytes(java.lang.String)>
;cnt {"<java.lang.String: byte[] getBytes(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString;	$r3 = virtualinvoke r1.<java.lang.String: byte[] getBytes(java.lang.String)>(r2);	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString$LiteralByteString: void <init>(byte[])>($r3);	return $r0
;block_num 1