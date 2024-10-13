(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Bool-init () (Array Int Bool))
(declare-fun var1856_JS_dtoa/1323596534 (Float64 Int Bool Int (Array Int Bool) String) Int)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const var1856-dtoaModes (Array Int Int))
(declare-const var3907 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3907 null-String)))
(declare-const var3881 Int) ; Statement: i18 := @parameter1: int 
(assert (not (= var3881 null-Int)))
(declare-const var1429 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1429 null-Int)))
(declare-const var2993 Float64) ; Statement: d0 := @parameter3: double 
(assert (not (= var2993 null-Float64)))
(define-const var223 (Array Int Bool) arr-Bool-init) ; Statement: r0 = newarray (boolean)[1] 
 ; Statement: if i18 != 2 goto $r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes> 
(assert (not (= var3881 2))) ; Cond: i18 != 2 
(define-const var359 (Array Int Int) var1856-dtoaModes) ; Statement: $r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes> 
(define-const var1682 Int (select var359 var3881)) ; Statement: $i1 = $r2[i18] 
 ; Statement: if i18 < 2 goto $z0 = 0 
(assert (< var3881 2)) ; Cond: i18 < 2 
(define-const var1906 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
(define-const var1668 Int (var1856_JS_dtoa/1323596534 var2993 var1682 var1906 var1429 var223 var3907)) ; Statement: $i14 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int JS_dtoa(double,int,boolean,int,boolean[],java.lang.StringBuilder)>(d0, $i1, $z0, i0, r0, r1) 
(assert true)
(define-const var3086 Int (length/-171891354 var3907)) ; Statement: $i15 = virtualinvoke r1.<java.lang.StringBuilder: int length()>() 
(define-const var3584 Int var3086) ; Statement: i19 = $i15 
 ; Statement: if $i14 == 9999 goto $z2 = r0[0] 
(assert (= var1668 9999)) ; Cond: $i14 == 9999 
(define-const var1519 Bool (select var223 0)) ; Statement: $z2 = r0[0] 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var1519 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Bool-init=([], boolean[]), var1856_JS_dtoa/1323596534=([double, int, boolean, int, boolean[], java.lang.StringBuilder], int), length/-171891354=([java.lang.StringBuilder], int)}
; {var3907=r1, var3881=i18, var1429=i0, var2993=d0, var223=r0, var1856=com.google.javascript.rhino.dtoa.DToA, var359=$r2, var1682=$i1, var1906=$z0, var1668=$i14, var3086=$i15, var3584=i19, var1519=$z2}
; {r1=var3907, i18=var3881, i0=var1429, d0=var2993, r0=var223, com.google.javascript.rhino.dtoa.DToA=var1856, $r2=var359, $i1=var1682, $z0=var1906, $i14=var1668, $i15=var3086, i19=var3584, $z2=var1519}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	i18 := @parameter1: int;	i0 := @parameter2: int;	d0 := @parameter3: double;	r0 = newarray (boolean)[1];	if i18 != 2 goto $r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes>;	$r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes>;	$i1 = $r2[i18];	if i18 < 2 goto $z0 = 0;	$z0 = 0;	$i14 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int JS_dtoa(double,int,boolean,int,boolean[],java.lang.StringBuilder)>(d0, $i1, $z0, i0, r0, r1);	$i15 = virtualinvoke r1.<java.lang.StringBuilder: int length()>();	i19 = $i15;	if $i14 == 9999 goto $z2 = r0[0];	$z2 = r0[0];	if $z2 == 0 goto return;	return
;block_num 6