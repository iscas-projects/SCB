(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort var3216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/-163691139 (String var3216) (Array Int Int))
(declare-const null-String String)
(declare-const null-var3216 var3216)
(declare-const var2601 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2601 null-String)))
(declare-const var3289 var3216) ; Statement: r1 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3289 null-var3216)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1) 
(assert (not (= var2601 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3225 (Array Int Int) (getBytes/-163691139 var2601 var3289)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[])}
; {var2601=r0, var763=null_type, var3216=java.nio.charset.Charset, var3289=r1, var3225=$r2}
; {r0=var2601, null_type=var763, java.nio.charset.Charset=var3216, r1=var3289, $r2=var3225}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.nio.charset.Charset;	if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1);	$r2 = virtualinvoke r0.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r1);	return $r2
;block_num 3