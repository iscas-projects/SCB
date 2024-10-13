(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3602 0)
(declare-sort var672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var672_builder/-1703069709 (Int) String)
(declare-fun mostSigBits/1557038034 (var3602) Int)
(declare-fun var3602_digits/-2114694801 (Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun leastSigBits/1557038034 (var3602) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3602 var3602)
(declare-const null-Bool Bool)
(declare-const var713 var3602) ; Statement: r0 := @this: cn.hutool.core.lang.UUID 
(assert (not (= var713 null-var3602)))
(declare-const var2500 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2500 null-Bool)))
 ; Statement: if z0 == 0 goto $b8 = 36 
(assert (= (ite var2500 1 0) 0)) ; Cond: z0 == 0 
(define-const var1148 Int 36) ; Statement: $b8 = 36 
(assert true) ; Non Conditional
(define-const var3293 String (var672_builder/-1703069709 var1148)) ; Statement: $r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($b8) 
(define-const var3606 Int (mostSigBits/1557038034 var713)) ; Statement: $l0 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(define-const var953 Int (div var3606 (to_int (^ 2 32)))) ; Statement: $l1 = $l0 >> 32 
(define-const var2315 String (var3602_digits/-2114694801 var953 8)) ; Statement: $r1 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l1, 8) 
(assert true)
;(assert (append/672562846 var3293 var2315)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3293!1 String)
(assert (= var3293!1 (str.++ var3293 var2315)))
 ; Statement: if 0 != z0 goto $l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(assert (not (= 0 (ite var2500 1 0)))) ; Cond: 0 != z0 
(define-const var2158 Int (mostSigBits/1557038034 var713)) ; Statement: $l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(define-const var958 Int (div var2158 (to_int (^ 2 16)))) ; Statement: $l3 = $l2 >> 16 
(define-const var3715 String (var3602_digits/-2114694801 var958 4)) ; Statement: $r2 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l3, 4) 
(assert true)
;(assert (append/672562846 var3293!1 var3715)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3293!2 String)
(assert (= var3293!2 (str.++ var3293!1 var3715)))
 ; Statement: if 0 != z0 goto $l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(assert (not (= 0 (ite var2500 1 0)))) ; Cond: 0 != z0 
(define-const var3517 Int (mostSigBits/1557038034 var713)) ; Statement: $l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits> 
(define-const var1540 String (var3602_digits/-2114694801 var3517 4)) ; Statement: $r3 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l4, 4) 
(assert true)
;(assert (append/672562846 var3293!2 var1540)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3293!3 String)
(assert (= var3293!3 (str.++ var3293!2 var1540)))
 ; Statement: if 0 != z0 goto $l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(assert (not (= 0 (ite var2500 1 0)))) ; Cond: 0 != z0 
(define-const var1679 Int (leastSigBits/1557038034 var713)) ; Statement: $l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(define-const var2769 Int (div var1679 (to_int (^ 2 48)))) ; Statement: $l6 = $l5 >> 48 
(define-const var3630 String (var3602_digits/-2114694801 var2769 4)) ; Statement: $r4 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l6, 4) 
(assert true)
;(assert (append/672562846 var3293!3 var3630)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3293!4 String)
(assert (= var3293!4 (str.++ var3293!3 var3630)))
 ; Statement: if 0 != z0 goto $l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(assert (not (= 0 (ite var2500 1 0)))) ; Cond: 0 != z0 
(define-const var294 Int (leastSigBits/1557038034 var713)) ; Statement: $l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits> 
(define-const var413 String (var3602_digits/-2114694801 var294 12)) ; Statement: $r5 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l7, 12) 
(assert true)
;(assert (append/672562846 var3293!4 var413)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3293!5 String)
(assert (= var3293!5 (str.++ var3293!4 var413)))
(assert true)
(define-const var395 String (toString/-2075883882 var3293!5)) ; Statement: $r6 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var672_builder/-1703069709=([int], java.lang.StringBuilder), mostSigBits/1557038034=([cn.hutool.core.lang.UUID], long), var3602_digits/-2114694801=([long, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), leastSigBits/1557038034=([cn.hutool.core.lang.UUID], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3602=cn.hutool.core.lang.UUID, var713=r0, var2500=z0, var1148=$b8, var672=cn.hutool.core.util.StrUtil, var3293=$r7, var3606=$l0, var953=$l1, var2315=$r1, var2158=$l2, var958=$l3, var3715=$r2, var3517=$l4, var1540=$r3, var1679=$l5, var2769=$l6, var3630=$r4, var294=$l7, var413=$r5, var395=$r6}
; {cn.hutool.core.lang.UUID=var3602, r0=var713, z0=var2500, $b8=var1148, cn.hutool.core.util.StrUtil=var672, $r7=var3293, $l0=var3606, $l1=var953, $r1=var2315, $l2=var2158, $l3=var958, $r2=var3715, $l4=var3517, $r3=var1540, $l5=var1679, $l6=var2769, $r4=var3630, $l7=var294, $r5=var413, $r6=var395}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.lang.UUID;	z0 := @parameter0: boolean;	if z0 == 0 goto $b8 = 36;	$b8 = 36;	$r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($b8);	$l0 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l1 = $l0 >> 32;	$r1 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l1, 8);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	if 0 != z0 goto $l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l2 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l3 = $l2 >> 16;	$r2 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l3, 4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	if 0 != z0 goto $l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$l4 = r0.<cn.hutool.core.lang.UUID: long mostSigBits>;	$r3 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l4, 4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	if 0 != z0 goto $l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$l5 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$l6 = $l5 >> 48;	$r4 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l6, 4);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	if 0 != z0 goto $l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$l7 = r0.<cn.hutool.core.lang.UUID: long leastSigBits>;	$r5 = staticinvoke <cn.hutool.core.lang.UUID: java.lang.String digits(long,int)>($l7, 12);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 7