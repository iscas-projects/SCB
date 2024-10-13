(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2729 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2729 null-String)))
(assert true)
(define-const var3506 Int (length/-134980193 var2729)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert (not (not (= var3506 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2729=r0, var2244=null_type, var3506=i0}
; {r0=var2729, null_type=var2244, i0=var3506}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != 0 goto $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	return r0
;block_num 2