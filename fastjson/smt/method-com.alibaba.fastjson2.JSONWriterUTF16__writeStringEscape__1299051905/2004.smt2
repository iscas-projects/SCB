(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1109 0)
(declare-sort var2431 0)
(declare-sort var497 0)
(declare-sort var1865 0)
(declare-sort var3611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun quote/1442430106 (var497) Int)
(declare-fun cast-from-var1109-to-var497 (var1109) var497)
(declare-fun context/1442430106 (var497) var1865)
(declare-fun features/-146628731 (var1865) Int)
(declare-fun mask/-2077367092 (var3611) Int)
(declare-fun off/1442430106 (var497) Int)
(declare-fun ensureCapacity/993961316 (var1109 Int) void)
(declare-fun chars/1482366354 (var1109) (Array Int Int))
(declare-const null-var1109 var1109)
(declare-const null-String String)
(declare-const var3611-EscapeNoneAscii var3611)
(declare-const var3611-BrowserSecure var3611)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3635 var1109) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var3635 null-var1109)))
(declare-const var710 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var710 null-String)))
(assert true)
(define-const var159 Int (length/-134980193 var710)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var798 Int (quote/1442430106 (cast-from-var1109-to-var497 var3635))) ; Statement: c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote> 
(define-const var671 var1865 (context/1442430106 (cast-from-var1109-to-var497 var3635))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var644 Int (features/-146628731 var671)) ; Statement: $l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var2636 var3611 var3611-EscapeNoneAscii) ; Statement: $r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii> 
(define-const var1689 Int (mask/-2077367092 var2636)) ; Statement: $l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3998 Int (bv2nat (bvand ((_ int2bv 64) var644) ((_ int2bv 64) var1689)))) ; Statement: $l4 = $l3 & $l2 
(define-const var464 Int (ite (> var3998 0) 1 (ite (< var3998 0) (- 1) 0))) ; Statement: $b5 = $l4 cmp 0L 
 ; Statement: if $b5 == 0 goto $z2 = 0 
(assert (= var464 0)) ; Cond: $b5 == 0 
(define-const var2478 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2888 Bool var2478) ; Statement: z0 = $z2 
(define-const var3214 var1865 (context/1442430106 (cast-from-var1109-to-var497 var3635))) ; Statement: $r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var956 Int (features/-146628731 var3214)) ; Statement: $l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var3796 var3611 var3611-BrowserSecure) ; Statement: $r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure> 
(define-const var3439 Int (mask/-2077367092 var3796)) ; Statement: $l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var286 Int (bv2nat (bvand ((_ int2bv 64) var956) ((_ int2bv 64) var3439)))) ; Statement: $l8 = $l7 & $l6 
(define-const var2832 Int (ite (> var286 0) 1 (ite (< var286 0) (- 1) 0))) ; Statement: $b9 = $l8 cmp 0L 
 ; Statement: if $b9 == 0 goto $z3 = 0 
(assert (= var2832 0)) ; Cond: $b9 == 0 
(define-const var315 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var654 Bool var315) ; Statement: z1 = $z3 
(define-const var3449 Int (off/1442430106 (cast-from-var1109-to-var497 var3635))) ; Statement: $i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(define-const var2705 Int (* var159 6)) ; Statement: $i10 = i0 * 6 
(define-const var1385 Int (+ var3449 var2705)) ; Statement: $i11 = $i82 + $i10 
(define-const var3689 Int (+ var1385 2)) ; Statement: $i12 = $i11 + 2 
(assert true)
;(assert (ensureCapacity/993961316 var3635 var3689)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12) 

(declare-const var3635!1 var1109)
(declare-const var3689!1 Int)
(define-const var2198 (Array Int Int) (chars/1482366354 var3635!1)) ; Statement: $r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars> 
(define-const var3072 Int (+ var3449 1)) ; Statement: i83 = $i82 + 1 
(declare-const var2198!1 (Array Int Int))
(assert (not (= var2198!1 null-__Array__Int__Int__)))
(assert (= (select var2198!1 var3449) var798)) ; Statement: $r12[$i82] = c1 
(define-const var1806 Int 0) ; Statement: i84 = 0 
(assert true) ; Non Conditional
 ; Statement: if i84 >= i0 goto $r12[i83] = c1 
(assert (>= var1806 var159)) ; Cond: i84 >= i0 
(declare-const var2198!2 (Array Int Int))
(assert (not (= var2198!2 null-__Array__Int__Int__)))
(assert (= (select var2198!2 var3072) var798)) ; Statement: $r12[i83] = c1 
(define-const var270 Int (+ var3072 1)) ; Statement: $i13 = i83 + 1 
(declare-const var3635!2 var1109)
(assert (not (= var3635!2 null-var1109)))
(assert (= (off/1442430106 (cast-from-var1109-to-var497 var3635!2)) var270)) ; Statement: r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), quote/1442430106=([com.alibaba.fastjson2.JSONWriter], char), cast-from-var1109-to-var497=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), features/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), ensureCapacity/993961316=([com.alibaba.fastjson2.JSONWriterUTF16, int], void), chars/1482366354=([com.alibaba.fastjson2.JSONWriterUTF16], char[])}
; {var1109=com.alibaba.fastjson2.JSONWriterUTF16, var3635=r1, var710=r0, var2431=null_type, var159=i0, var497=com.alibaba.fastjson2.JSONWriter, var798=c1, var1865=com.alibaba.fastjson2.JSONWriter$Context, var671=$r2, var644=$l3, var3611=com.alibaba.fastjson2.JSONWriter$Feature, var2636=$r3, var1689=$l2, var3998=$l4, var464=$b5, var2478=$z2, var2888=z0, var3214=$r4, var956=$l7, var3796=$r5, var3439=$l6, var286=$l8, var2832=$b9, var315=$z3, var654=z1, var3449=$i82, var2705=$i10, var1385=$i11, var3689=$i12, var2198=$r12, var3072=i83, var1806=i84, var270=$i13}
; {com.alibaba.fastjson2.JSONWriterUTF16=var1109, r1=var3635, r0=var710, null_type=var2431, i0=var159, com.alibaba.fastjson2.JSONWriter=var497, c1=var798, com.alibaba.fastjson2.JSONWriter$Context=var1865, $r2=var671, $l3=var644, com.alibaba.fastjson2.JSONWriter$Feature=var3611, $r3=var2636, $l2=var1689, $l4=var3998, $b5=var464, $z2=var2478, z0=var2888, $r4=var3214, $l7=var956, $r5=var3796, $l6=var3439, $l8=var286, $b9=var2832, $z3=var315, z1=var654, $i82=var3449, $i10=var2705, $i11=var1385, $i12=var3689, $r12=var2198, i83=var3072, i84=var1806, $i13=var270}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote>;	$r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii>;	$l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l4 = $l3 & $l2;	$b5 = $l4 cmp 0L;	if $b5 == 0 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure>;	$l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l8 = $l7 & $l6;	$b9 = $l8 cmp 0L;	if $b9 == 0 goto $z3 = 0;	$z3 = 0;	z1 = $z3;	$i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	$i10 = i0 * 6;	$i11 = $i82 + $i10;	$i12 = $i11 + 2;	virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12);	$r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars>;	i83 = $i82 + 1;	$r12[$i82] = c1;	i84 = 0;	if i84 >= i0 goto $r12[i83] = c1;	$r12[i83] = c1;	$i13 = i83 + 1;	r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13;	return
;block_num 7