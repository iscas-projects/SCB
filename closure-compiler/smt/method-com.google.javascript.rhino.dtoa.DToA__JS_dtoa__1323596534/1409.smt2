(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2325_word0/1065373438 (Float64) Int)
(declare-fun var2325_setWord0/-765230237 (Float64 Int) Float64)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-Float64 Float64)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-String String)
(declare-const var1260 Float64) ; Statement: d21 := @parameter0: double 
(assert (not (= var1260 null-Float64)))
(declare-const var945 Int) ; Statement: i130 := @parameter1: int 
(assert (not (= var945 null-Int)))
(declare-const var3376 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3376 null-Bool)))
(declare-const var754 Int) ; Statement: i131 := @parameter3: int 
(assert (not (= var754 null-Int)))
(declare-const var1395 (Array Int Bool)) ; Statement: r2 := @parameter4: boolean[] 
(assert (not (= var1395 null-__Array__Int__Bool__)))
(declare-const var2071 String) ; Statement: r4 := @parameter5: java.lang.StringBuilder 
(assert (not (= var2071 null-String)))
(define-const var2753 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (int)[1] 
(define-const var2399 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[1] 
(define-const var3548 Int (var2325_word0/1065373438 var1260)) ; Statement: $i0 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21) 
(define-const var1214 Int (bv2nat (bvand ((_ int2bv 64) var3548) ((_ int2bv 64) (- 2147483648))))) ; Statement: $i1 = $i0 & -2147483648 
 ; Statement: if $i1 == 0 goto r2[0] = 0 
(assert (not (= var1214 0))) ; Negate: Cond: $i1 == 0  
(declare-const var1395!1 (Array Int Bool))
(assert (not (= var1395!1 null-__Array__Int__Bool__)))
(assert (= (select var1395!1 0) (ite (= 1 1) true false))) ; Statement: r2[0] = 1 
(define-const var667 Int (var2325_word0/1065373438 var1260)) ; Statement: $i128 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21) 
(define-const var373 Int (bv2nat (bvand ((_ int2bv 64) var667) ((_ int2bv 64) 2147483647)))) ; Statement: $i129 = $i128 & 2147483647 
(define-const var1260!1 Float64 (var2325_setWord0/-765230237 var1260 var373)) ; Statement: d21 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: double setWord0(double,int)>(d21, $i129) 
 ; Statement: goto [?= $i2 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21)] 
(assert true) ; Non Conditional
(define-const var2488 Int (var2325_word0/1065373438 var1260!1)) ; Statement: $i2 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21) 
(define-const var825 Int (bv2nat (bvand ((_ int2bv 64) var2488) ((_ int2bv 64) 2146435072)))) ; Statement: $i3 = $i2 & 2146435072 
 ; Statement: if $i3 != 2146435072 goto $b4 = d21 cmpl 0.0 
(assert (not (= var825 2146435072))) ; Cond: $i3 != 2146435072 
(define-const var992 Int (ite (fp.gt var1260!1 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var1260!1 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b4 = d21 cmpl 0.0 
 ; Statement: if $b4 != 0 goto r29 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: java.math.BigInteger d2b(double,int[],int[])>(d21, r0, r1) 
(assert (not (not (= var992 0)))) ; Negate: Cond: $b4 != 0  
(assert true)
;(assert (setLength/1276735992 var2071 0)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2071!1 String)
(declare-const var1671 Int)
(assert true)
;(assert (append/-1166366385 var2071!1 48)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(48) 
(declare-const var2071!2 String)
(assert (str.prefixof var2071!1 var2071!2))
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), var2325_word0/1065373438=([double], int), var2325_setWord0/-765230237=([double, int], double), setLength/1276735992=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1260=d21, var945=i130, var3376=z0, var754=i131, var1395=r2, var2071=r4, var2753=r0, var2399=r1, var2325=com.google.javascript.rhino.dtoa.DToA, var3548=$i0, var1214=$i1, var667=$i128, var373=$i129, var2488=$i2, var825=$i3, var992=$b4, var1671=0}
; {d21=var1260, i130=var945, z0=var3376, i131=var754, r2=var1395, r4=var2071, r0=var2753, r1=var2399, com.google.javascript.rhino.dtoa.DToA=var2325, $i0=var3548, $i1=var1214, $i128=var667, $i129=var373, $i2=var2488, $i3=var825, $b4=var992, 0=var1671}
;seq <java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts d21 := @parameter0: double;	i130 := @parameter1: int;	z0 := @parameter2: boolean;	i131 := @parameter3: int;	r2 := @parameter4: boolean[];	r4 := @parameter5: java.lang.StringBuilder;	r0 = newarray (int)[1];	r1 = newarray (int)[1];	$i0 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21);	$i1 = $i0 & -2147483648;	if $i1 == 0 goto r2[0] = 0;	r2[0] = 1;	$i128 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21);	$i129 = $i128 & 2147483647;	d21 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: double setWord0(double,int)>(d21, $i129);	goto [?= $i2 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21)];	$i2 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21);	$i3 = $i2 & 2146435072;	if $i3 != 2146435072 goto $b4 = d21 cmpl 0.0;	$b4 = d21 cmpl 0.0;	if $b4 != 0 goto r29 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: java.math.BigInteger d2b(double,int[],int[])>(d21, r0, r1);	virtualinvoke r4.<java.lang.StringBuilder: void setLength(int)>(0);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(48);	return 1
;block_num 5