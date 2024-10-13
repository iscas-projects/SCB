(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1694 0)
(declare-sort var2794 0)
(declare-sort var2018 0)
(declare-sort var680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var2794) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var680_fingerprint/-2106678387 ((Array Int Int) Int Int) Int)
(declare-const null-String String)
(declare-const var2018-UTF_8 var2794)
(declare-const var3187 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3187 null-String)))
(define-const var2896 var2794 var2018-UTF_8) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var2536 (Array Int Int) (getBytes/-163691139 var3187 var2896)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1) 
(define-const var248 Int (getLength-Arr-Int-1 var2536)) ; Statement: $i0 = lengthof r2 
(define-const var2889 Int (var680_fingerprint/-2106678387 var2536 0 var248)) ; Statement: $l1 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$FP: long fingerprint(byte[],int,int)>(r2, 0, $i0) 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int), var680_fingerprint/-2106678387=([byte[], int, int], long)}
; {var3187=r0, var1694=null_type, var2794=java.nio.charset.Charset, var2018=java.nio.charset.StandardCharsets, var2896=$r1, var2536=r2, var248=$i0, var680=com.google.javascript.jscomp.GoogleJsMessageIdGenerator$FP, var2889=$l1}
; {r0=var3187, null_type=var1694, java.nio.charset.Charset=var2794, java.nio.charset.StandardCharsets=var2018, $r1=var2896, r2=var2536, $i0=var248, com.google.javascript.jscomp.GoogleJsMessageIdGenerator$FP=var680, $l1=var2889}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r1);	$i0 = lengthof r2;	$l1 = staticinvoke <com.google.javascript.jscomp.GoogleJsMessageIdGenerator$FP: long fingerprint(byte[],int,int)>(r2, 0, $i0);	return $l1
;block_num 1