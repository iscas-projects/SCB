(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3286 var3286)
(declare-const null-Int Int)
(declare-const var1842 var3286) ; Statement: r7 := @this: okhttp3.internal.http2.Http2Reader$Companion 
(assert (not (= var1842 null-var3286)))
(declare-const var2091 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2091 null-Int)))
(declare-const var3227 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3227 null-Int)))
(declare-const var3476 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3476 null-Int)))
(define-const var3035 Int var2091) ; Statement: i4 = i0 
(define-const var151 Int (bv2nat (bvand ((_ int2bv 64) var3227) ((_ int2bv 64) 8)))) ; Statement: $i2 = i1 & 8 
 ; Statement: if $i2 == 0 goto (branch) 
(assert (= var151 0)) ; Cond: $i2 == 0 
 ; Statement: if i3 <= i4 goto i5 = i4 - i3 
(assert (<= var3476 var3035)) ; Cond: i3 <= i4 
(define-const var1317 Int (- var3035 var3476)) ; Statement: i5 = i4 - i3 
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3286=okhttp3.internal.http2.Http2Reader$Companion, var1842=r7, var2091=i0, var3227=i1, var3476=i3, var3035=i4, var151=$i2, var1317=i5}
; {okhttp3.internal.http2.Http2Reader$Companion=var3286, r7=var1842, i0=var2091, i1=var3227, i3=var3476, i4=var3035, $i2=var151, i5=var1317}
;seq 
;cnt {}
;stmts r7 := @this: okhttp3.internal.http2.Http2Reader$Companion;	i0 := @parameter0: int;	i1 := @parameter1: int;	i3 := @parameter2: int;	i4 = i0;	$i2 = i1 & 8;	if $i2 == 0 goto (branch);	if i3 <= i4 goto i5 = i4 - i3;	i5 = i4 - i3;	return i5
;block_num 3