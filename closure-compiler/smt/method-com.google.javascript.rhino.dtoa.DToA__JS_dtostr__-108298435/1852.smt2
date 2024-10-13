(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Bool-init () (Array Int Bool))
(declare-fun var1745_JS_dtoa/1323596534 (Float64 Int Bool Int (Array Int Bool) String) Int)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const var1745-dtoaModes (Array Int Int))
(declare-const var3013 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3013 null-String)))
(declare-const var173 Int) ; Statement: i18 := @parameter1: int 
(assert (not (= var173 null-Int)))
(declare-const var2122 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2122 null-Int)))
(declare-const var830 Float64) ; Statement: d0 := @parameter3: double 
(assert (not (= var830 null-Float64)))
(define-const var2037 (Array Int Bool) arr-Bool-init) ; Statement: r0 = newarray (boolean)[1] 
 ; Statement: if i18 != 2 goto $r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes> 
(assert (not (= var173 2))) ; Cond: i18 != 2 
(define-const var2080 (Array Int Int) var1745-dtoaModes) ; Statement: $r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes> 
(define-const var1600 Int (select var2080 var173)) ; Statement: $i1 = $r2[i18] 
 ; Statement: if i18 < 2 goto $z0 = 0 
(assert (not (< var173 2))) ; Negate: Cond: i18 < 2  
(define-const var658 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= $i14 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int JS_dtoa(double,int,boolean,int,boolean[],java.lang.StringBuilder)>(d0, $i1, $z0, i0, r0, r1)] 
(assert true) ; Non Conditional
(define-const var1977 Int (var1745_JS_dtoa/1323596534 var830 var1600 var658 var2122 var2037 var3013)) ; Statement: $i14 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int JS_dtoa(double,int,boolean,int,boolean[],java.lang.StringBuilder)>(d0, $i1, $z0, i0, r0, r1) 
(assert true)
(define-const var1875 Int (length/-171891354 var3013)) ; Statement: $i15 = virtualinvoke r1.<java.lang.StringBuilder: int length()>() 
(define-const var3042 Int var1875) ; Statement: i19 = $i15 
 ; Statement: if $i14 == 9999 goto $z2 = r0[0] 
(assert (= var1977 9999)) ; Cond: $i14 == 9999 
(define-const var49 Bool (select var2037 0)) ; Statement: $z2 = r0[0] 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var49 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Bool-init=([], boolean[]), var1745_JS_dtoa/1323596534=([double, int, boolean, int, boolean[], java.lang.StringBuilder], int), length/-171891354=([java.lang.StringBuilder], int)}
; {var3013=r1, var173=i18, var2122=i0, var830=d0, var2037=r0, var1745=com.google.javascript.rhino.dtoa.DToA, var2080=$r2, var1600=$i1, var658=$z0, var1977=$i14, var1875=$i15, var3042=i19, var49=$z2}
; {r1=var3013, i18=var173, i0=var2122, d0=var830, r0=var2037, com.google.javascript.rhino.dtoa.DToA=var1745, $r2=var2080, $i1=var1600, $z0=var658, $i14=var1977, $i15=var1875, i19=var3042, $z2=var49}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	i18 := @parameter1: int;	i0 := @parameter2: int;	d0 := @parameter3: double;	r0 = newarray (boolean)[1];	if i18 != 2 goto $r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes>;	$r2 = <com.google.javascript.rhino.dtoa.DToA: int[] dtoaModes>;	$i1 = $r2[i18];	if i18 < 2 goto $z0 = 0;	$z0 = 1;	goto [?= $i14 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int JS_dtoa(double,int,boolean,int,boolean[],java.lang.StringBuilder)>(d0, $i1, $z0, i0, r0, r1)];	$i14 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int JS_dtoa(double,int,boolean,int,boolean[],java.lang.StringBuilder)>(d0, $i1, $z0, i0, r0, r1);	$i15 = virtualinvoke r1.<java.lang.StringBuilder: int length()>();	i19 = $i15;	if $i14 == 9999 goto $z2 = r0[0];	$z2 = r0[0];	if $z2 == 0 goto return;	return
;block_num 6