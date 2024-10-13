(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2334 String "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") ; Statement: $r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" 
(assert true)
(define-const var2504 Int (length/-134980193 var2334)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var3318 Int var2504) ; Statement: <com.google.javascript.jscomp.Xid: int START_RADIX> = $i0 
(define-const var3991 String "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789") ; Statement: $r1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" 
(assert true)
(define-const var1586 Int (length/-134980193 var3991)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3671 Int var1586) ; Statement: <com.google.javascript.jscomp.Xid: int RADIX> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2334=$r0, var2504=$i0, var3318=<com.google.javascript.jscomp.Xid: int START_RADIX>, var3991=$r1, var1586=$i1, var3671=<com.google.javascript.jscomp.Xid: int RADIX>}
; {$r0=var2334, $i0=var2504, <com.google.javascript.jscomp.Xid: int START_RADIX>=var3318, $r1=var3991, $i1=var1586, <com.google.javascript.jscomp.Xid: int RADIX>=var3671}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts $r0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<com.google.javascript.jscomp.Xid: int START_RADIX> = $i0;	$r1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	<com.google.javascript.jscomp.Xid: int RADIX> = $i1;	return
;block_num 1