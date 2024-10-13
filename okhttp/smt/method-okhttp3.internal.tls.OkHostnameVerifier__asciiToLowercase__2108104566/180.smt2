(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var355 0)
(declare-sort var48 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAscii/-1326924409 (var355 String) Bool)
(declare-const null-var355 var355)
(declare-const null-String String)
(declare-const var1426 var355) ; Statement: r0 := @this: okhttp3.internal.tls.OkHostnameVerifier 
(assert (not (= var1426 null-var355)))
(declare-const var2886 String) ; Statement: $r1 := @parameter0: java.lang.String 
(assert (not (= var2886 null-String)))
(assert true)
(define-const var1634 Bool (isAscii/-1326924409 var1426 var2886)) ; Statement: $z0 = specialinvoke r0.<okhttp3.internal.tls.OkHostnameVerifier: boolean isAscii(java.lang.String)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = $r1 
(assert (= (ite var1634 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1477 String var2886) ; Statement: $r3 = $r1 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isAscii/-1326924409=([okhttp3.internal.tls.OkHostnameVerifier, java.lang.String], boolean)}
; {var355=okhttp3.internal.tls.OkHostnameVerifier, var1426=r0, var2886=$r1, var48=null_type, var1634=$z0, var1477=$r3}
; {okhttp3.internal.tls.OkHostnameVerifier=var355, r0=var1426, $r1=var2886, null_type=var48, $z0=var1634, $r3=var1477}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.tls.OkHostnameVerifier;	$r1 := @parameter0: java.lang.String;	$z0 = specialinvoke r0.<okhttp3.internal.tls.OkHostnameVerifier: boolean isAscii(java.lang.String)>($r1);	if $z0 == 0 goto $r3 = $r1;	$r3 = $r1;	return $r3
;block_num 3