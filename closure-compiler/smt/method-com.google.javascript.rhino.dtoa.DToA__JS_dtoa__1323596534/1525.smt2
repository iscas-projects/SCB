(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1405_word0/1065373438 (Float64) Int)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-Float64 Float64)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-String String)
(declare-const var658 Float64) ; Statement: d21 := @parameter0: double 
(assert (not (= var658 null-Float64)))
(declare-const var2915 Int) ; Statement: i130 := @parameter1: int 
(assert (not (= var2915 null-Int)))
(declare-const var1763 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1763 null-Bool)))
(declare-const var702 Int) ; Statement: i131 := @parameter3: int 
(assert (not (= var702 null-Int)))
(declare-const var2268 (Array Int Bool)) ; Statement: r2 := @parameter4: boolean[] 
(assert (not (= var2268 null-__Array__Int__Bool__)))
(declare-const var2294 String) ; Statement: r4 := @parameter5: java.lang.StringBuilder 
(assert (not (= var2294 null-String)))
(define-const var897 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (int)[1] 
(define-const var1666 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[1] 
(define-const var700 Int (var1405_word0/1065373438 var658)) ; Statement: $i0 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21) 
(define-const var2037 Int (bv2nat (bvand ((_ int2bv 64) var700) ((_ int2bv 64) (- 2147483648))))) ; Statement: $i1 = $i0 & -2147483648 
 ; Statement: if $i1 == 0 goto r2[0] = 0 
(assert (= var2037 0)) ; Cond: $i1 == 0 
(declare-const var2268!1 (Array Int Bool))
(assert (not (= var2268!1 null-__Array__Int__Bool__)))
(assert (= (select var2268!1 0) (ite (= 1 0) true false))) ; Statement: r2[0] = 0 
(assert true) ; Non Conditional
(define-const var3825 Int (var1405_word0/1065373438 var658)) ; Statement: $i2 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21) 
(define-const var332 Int (bv2nat (bvand ((_ int2bv 64) var3825) ((_ int2bv 64) 2146435072)))) ; Statement: $i3 = $i2 & 2146435072 
 ; Statement: if $i3 != 2146435072 goto $b4 = d21 cmpl 0.0 
(assert (not (= var332 2146435072))) ; Cond: $i3 != 2146435072 
(define-const var955 Int (ite (fp.gt var658 ((_ to_fp 11 53) #x0000000000000000)) 1 (ite (fp.lt var658 ((_ to_fp 11 53) #x0000000000000000)) (- 1) 0))) ; Statement: $b4 = d21 cmpl 0.0 
 ; Statement: if $b4 != 0 goto r29 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: java.math.BigInteger d2b(double,int[],int[])>(d21, r0, r1) 
(assert (not (not (= var955 0)))) ; Negate: Cond: $b4 != 0  
(assert true)
;(assert (setLength/1276735992 var2294 0)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2294!1 String)
(declare-const var104 Int)
(assert true)
;(assert (append/-1166366385 var2294!1 48)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(48) 
(declare-const var2294!2 String)
(assert (str.prefixof var2294!1 var2294!2))
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], int[]), var1405_word0/1065373438=([double], int), setLength/1276735992=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var658=d21, var2915=i130, var1763=z0, var702=i131, var2268=r2, var2294=r4, var897=r0, var1666=r1, var1405=com.google.javascript.rhino.dtoa.DToA, var700=$i0, var2037=$i1, var3825=$i2, var332=$i3, var955=$b4, var104=0}
; {d21=var658, i130=var2915, z0=var1763, i131=var702, r2=var2268, r4=var2294, r0=var897, r1=var1666, com.google.javascript.rhino.dtoa.DToA=var1405, $i0=var700, $i1=var2037, $i2=var3825, $i3=var332, $b4=var955, 0=var104}
;seq <java.lang.StringBuilder: void setLength(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts d21 := @parameter0: double;	i130 := @parameter1: int;	z0 := @parameter2: boolean;	i131 := @parameter3: int;	r2 := @parameter4: boolean[];	r4 := @parameter5: java.lang.StringBuilder;	r0 = newarray (int)[1];	r1 = newarray (int)[1];	$i0 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21);	$i1 = $i0 & -2147483648;	if $i1 == 0 goto r2[0] = 0;	r2[0] = 0;	$i2 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: int word0(double)>(d21);	$i3 = $i2 & 2146435072;	if $i3 != 2146435072 goto $b4 = d21 cmpl 0.0;	$b4 = d21 cmpl 0.0;	if $b4 != 0 goto r29 = staticinvoke <com.google.javascript.rhino.dtoa.DToA: java.math.BigInteger d2b(double,int[],int[])>(d21, r0, r1);	virtualinvoke r4.<java.lang.StringBuilder: void setLength(int)>(0);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(48);	return 1
;block_num 5