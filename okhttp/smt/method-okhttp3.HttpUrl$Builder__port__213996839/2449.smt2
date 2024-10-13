(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var483-to-var483 ((arg var483)) var483 arg)
(declare-fun port/627676127 (var483) Int)
(declare-const null-var483 var483)
(declare-const null-Int Int)
(declare-const var561 var483) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var561 null-var483)))
(declare-const var2732 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2732 null-Int)))
(define-const var2030 var483 (cast-from-var483-to-var483 var561)) ; Statement: $r1 = (okhttp3.HttpUrl$Builder) r0 
 ; Statement: if 1 > i0 goto $z0 = 0 
(assert (> 1 var2732)) ; Cond: 1 > i0 
(define-const var495 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1.<okhttp3.HttpUrl$Builder: int port> = i0 
(assert (not (= (ite var495 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2030!1 var483)
(assert (not (= var2030!1 null-var483)))
(assert (= (port/627676127 var2030!1) var2732)) ; Statement: $r1.<okhttp3.HttpUrl$Builder: int port> = i0 
(define-const var1324 var483 (cast-from-var483-to-var483 var561)) ; Statement: $r2 = (okhttp3.HttpUrl$Builder) r0 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var483-to-var483=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), port/627676127=([okhttp3.HttpUrl$Builder], int)}
; {var483=okhttp3.HttpUrl$Builder, var561=r0, var2732=i0, var2030=$r1, var495=$z0, var1324=$r2}
; {okhttp3.HttpUrl$Builder=var483, r0=var561, i0=var2732, $r1=var2030, $z0=var495, $r2=var1324}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	i0 := @parameter0: int;	$r1 = (okhttp3.HttpUrl$Builder) r0;	if 1 > i0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r1.<okhttp3.HttpUrl$Builder: int port> = i0;	$r1.<okhttp3.HttpUrl$Builder: int port> = i0;	$r2 = (okhttp3.HttpUrl$Builder) r0;	return $r2
;block_num 4