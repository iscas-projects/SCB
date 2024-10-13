(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1164 0)
(declare-sort var3248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3248_builder/-1703069709 (Int) String)
(declare-fun mostSigBits/1557038034 (var1164) Int)
(declare-fun var1164_digits/-2114694801 (Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun leastSigBits/1557038034 (var1164) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1164 var1164)
(declare-const null-Bool Bool)
(declare-const var1207 var1164) ; Statement: r0 := @this: cn.hutool.core.lang.UUID 
(assert (not (= var1207 null-var1164)))
(declare-const var1848 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1848 null-Bool)))
 ; Statement: if z0 == 0 goto $b8 = 36 
(assert (not (= (ite var1848 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2635 Int 32) ; Statement: $b8 = 32 
 ; Statement: goto [?= $r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($b8)] 
(assert true) ; Non Conditional
(define-const var28 String (var3248_builder/-1703069709 var2635)) ; Statement: $r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($b8) 
(define-const var3729 Int (mostSigBits/1557038034 var1207)) ; Statement: $l0 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(define-const var2328 Int (div var3729 (to_int (^ 2 32)))) ; Statement: $l1 = $l0 >> 32 
(define-const var3045 String (var1164_digits/-2114694801 var2328 8)) ; Statement: $r1 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l1, 8) 
(assert true)
;(assert (append/672562846 var28 var3045)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var28!1 String)
(assert (= var28!1 (str.++ var28 var3045)))
 ; Statement: if 0 != z0 goto $l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(assert (not (= 0 (ite var1848 1 0)))) ; Cond: 0 != z0 
(define-const var2707 Int (mostSigBits/1557038034 var1207)) ; Statement: $l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(define-const var712 Int (div var2707 (to_int (^ 2 16)))) ; Statement: $l3 = $l2 >> 16 
(define-const var2520 String (var1164_digits/-2114694801 var712 4)) ; Statement: $r2 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l3, 4) 
(assert true)
;(assert (append/672562846 var28!1 var2520)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var28!2 String)
(assert (= var28!2 (str.++ var28!1 var2520)))
 ; Statement: if 0 != z0 goto $l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(assert (not (= 0 (ite var1848 1 0)))) ; Cond: 0 != z0 
(define-const var3888 Int (mostSigBits/1557038034 var1207)) ; Statement: $l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(define-const var2413 String (var1164_digits/-2114694801 var3888 4)) ; Statement: $r3 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l4, 4) 
(assert true)
;(assert (append/672562846 var28!2 var2413)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var28!3 String)
(assert (= var28!3 (str.++ var28!2 var2413)))
 ; Statement: if 0 != z0 goto $l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(assert (not (= 0 (ite var1848 1 0)))) ; Cond: 0 != z0 
(define-const var2100 Int (leastSigBits/1557038034 var1207)) ; Statement: $l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(define-const var1267 Int (div var2100 (to_int (^ 2 48)))) ; Statement: $l6 = $l5 >> 48 
(define-const var2607 String (var1164_digits/-2114694801 var1267 4)) ; Statement: $r4 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l6, 4) 
(assert true)
;(assert (append/672562846 var28!3 var2607)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var28!4 String)
(assert (= var28!4 (str.++ var28!3 var2607)))
 ; Statement: if 0 != z0 goto $l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(assert (not (= 0 (ite var1848 1 0)))) ; Cond: 0 != z0 
(define-const var3019 Int (leastSigBits/1557038034 var1207)) ; Statement: $l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(define-const var2810 String (var1164_digits/-2114694801 var3019 12)) ; Statement: $r5 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l7, 12) 
(assert true)
;(assert (append/672562846 var28!4 var2810)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var28!5 String)
(assert (= var28!5 (str.++ var28!4 var2810)))
(assert true)
(define-const var2347 String (toString/-2075883882 var28!5)) ; Statement: $r6 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3248_builder/-1703069709=([int], java.lang.StringBuilder), mostSigBits/1557038034=([cn.hutool.core.lang.UUID], long), var1164_digits/-2114694801=([long, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), leastSigBits/1557038034=([cn.hutool.core.lang.UUID], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1164=cn.hutool.core.lang.UUID, var1207=r0, var1848=z0, var2635=$b8, var3248=cn.hutool.core.util.StrUtil, var28=$r7, var3729=$l0, var2328=$l1, var3045=$r1, var2707=$l2, var712=$l3, var2520=$r2, var3888=$l4, var2413=$r3, var2100=$l5, var1267=$l6, var2607=$r4, var3019=$l7, var2810=$r5, var2347=$r6}
; {cn.hutool.core.lang.UUID=var1164, r0=var1207, z0=var1848, $b8=var2635, cn.hutool.core.util.StrUtil=var3248, $r7=var28, $l0=var3729, $l1=var2328, $r1=var3045, $l2=var2707, $l3=var712, $r2=var2520, $l4=var3888, $r3=var2413, $l5=var2100, $l6=var1267, $r4=var2607, $l7=var3019, $r5=var2810, $r6=var2347}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.lang.UUID;	z0 := @parameter0: boolean;	if z0 == 0 goto $b8 = 36;	$b8 = 32;	goto [?= $r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($b8)];	$r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($b8);	$l0 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l1 = $l0 >> 32;	$r1 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l1, 8);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	if 0 != z0 goto $l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l3 = $l2 >> 16;	$r2 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l3, 4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	if 0 != z0 goto $l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$r3 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l4, 4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	if 0 != z0 goto $l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$l6 = $l5 >> 48;	$r4 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l6, 4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if 0 != z0 goto $l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$r5 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l7, 12);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 7