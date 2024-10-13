(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var297 0)
(declare-sort var2251 0)
(declare-sort var247 0)
(declare-sort var453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var2251) (Array Int Int))
(declare-fun var453_hash64/-1727200960 ((Array Int Int) Int) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var247-UTF_8 var2251)
(declare-const var3432 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3432 null-String)))
(declare-const var3300 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3300 null-Int)))
 ; Statement: if r0 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert (not (= var3432 null-String))) ; Cond: r0 != null 
(define-const var379 var2251 var247-UTF_8) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var2944 (Array Int Int) (getBytes/-163691139 var3432 var379)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
(define-const var2055 Int (var453_hash64/-1727200960 var2944 var3300)) ; Statement: $l1 = staticinvoke <com.google.javascript.jscomp.JsMessage$Hash: long hash64(byte[],long)>($r2, l0) 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var453_hash64/-1727200960=([byte[], long], long)}
; {var3432=r0, var297=null_type, var3300=l0, var2251=java.nio.charset.Charset, var247=java.nio.charset.StandardCharsets, var379=$r1, var2944=$r2, var453=com.google.javascript.jscomp.JsMessage$Hash, var2055=$l1}
; {r0=var3432, null_type=var297, l0=var3300, java.nio.charset.Charset=var2251, java.nio.charset.StandardCharsets=var247, $r1=var379, $r2=var2944, com.google.javascript.jscomp.JsMessage$Hash=var453, $l1=var2055}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	l0 := @parameter1: long;	if r0 != null goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	$l1 = staticinvoke <com.google.javascript.jscomp.JsMessage$Hash: long hash64(byte[],long)>($r2, l0);	return $l1
;block_num 2