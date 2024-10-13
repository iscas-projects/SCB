(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3691 0)
(declare-sort var2113 0)
(declare-sort var2582 0)
(declare-sort var1222 0)
(declare-sort var264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun quote/1442430106 (var2582) Int)
(declare-fun cast-from-var3691-to-var2582 (var3691) var2582)
(declare-fun context/1442430106 (var2582) var1222)
(declare-fun features/-146628731 (var1222) Int)
(declare-fun mask/-2077367092 (var264) Int)
(declare-fun off/1442430106 (var2582) Int)
(declare-fun ensureCapacity/993961316 (var3691 Int) void)
(declare-fun chars/1482366354 (var3691) (Array Int Int))
(declare-const null-var3691 var3691)
(declare-const null-String String)
(declare-const var264-EscapeNoneAscii var264)
(declare-const var264-BrowserSecure var264)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1847 var3691) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var1847 null-var3691)))
(declare-const var810 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var810 null-String)))
(assert true)
(define-const var1184 Int (length/-134980193 var810)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3820 Int (quote/1442430106 (cast-from-var3691-to-var2582 var1847))) ; Statement: c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote> 
(define-const var3152 var1222 (context/1442430106 (cast-from-var3691-to-var2582 var1847))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var2588 Int (features/-146628731 var3152)) ; Statement: $l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var1511 var264 var264-EscapeNoneAscii) ; Statement: $r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii> 
(define-const var1352 Int (mask/-2077367092 var1511)) ; Statement: $l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1268 Int (bv2nat (bvand ((_ int2bv 64) var2588) ((_ int2bv 64) var1352)))) ; Statement: $l4 = $l3 & $l2 
(define-const var408 Int (ite (> var1268 0) 1 (ite (< var1268 0) (- 1) 0))) ; Statement: $b5 = $l4 cmp 0L 
 ; Statement: if $b5 == 0 goto $z2 = 0 
(assert (not (= var408 0))) ; Negate: Cond: $b5 == 0  
(define-const var39 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z2] 
(assert true) ; Non Conditional
(define-const var1849 Bool var39) ; Statement: z0 = $z2 
(define-const var500 var1222 (context/1442430106 (cast-from-var3691-to-var2582 var1847))) ; Statement: $r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var2488 Int (features/-146628731 var500)) ; Statement: $l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var2252 var264 var264-BrowserSecure) ; Statement: $r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure> 
(define-const var1247 Int (mask/-2077367092 var2252)) ; Statement: $l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1825 Int (bv2nat (bvand ((_ int2bv 64) var2488) ((_ int2bv 64) var1247)))) ; Statement: $l8 = $l7 & $l6 
(define-const var1883 Int (ite (> var1825 0) 1 (ite (< var1825 0) (- 1) 0))) ; Statement: $b9 = $l8 cmp 0L 
 ; Statement: if $b9 == 0 goto $z3 = 0 
(assert (= var1883 0)) ; Cond: $b9 == 0 
(define-const var3070 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var2359 Bool var3070) ; Statement: z1 = $z3 
(define-const var1079 Int (off/1442430106 (cast-from-var3691-to-var2582 var1847))) ; Statement: $i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(define-const var3230 Int (* var1184 6)) ; Statement: $i10 = i0 * 6 
(define-const var3917 Int (+ var1079 var3230)) ; Statement: $i11 = $i82 + $i10 
(define-const var2463 Int (+ var3917 2)) ; Statement: $i12 = $i11 + 2 
(assert true)
;(assert (ensureCapacity/993961316 var1847 var2463)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12) 

(declare-const var1847!1 var3691)
(declare-const var2463!1 Int)
(define-const var210 (Array Int Int) (chars/1482366354 var1847!1)) ; Statement: $r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars> 
(define-const var3252 Int (+ var1079 1)) ; Statement: i83 = $i82 + 1 
(declare-const var210!1 (Array Int Int))
(assert (not (= var210!1 null-__Array__Int__Int__)))
(assert (= (select var210!1 var1079) var3820)) ; Statement: $r12[$i82] = c1 
(define-const var2413 Int 0) ; Statement: i84 = 0 
(assert true) ; Non Conditional
 ; Statement: if i84 >= i0 goto $r12[i83] = c1 
(assert (>= var2413 var1184)) ; Cond: i84 >= i0 
(declare-const var210!2 (Array Int Int))
(assert (not (= var210!2 null-__Array__Int__Int__)))
(assert (= (select var210!2 var3252) var3820)) ; Statement: $r12[i83] = c1 
(define-const var1921 Int (+ var3252 1)) ; Statement: $i13 = i83 + 1 
(declare-const var1847!2 var3691)
(assert (not (= var1847!2 null-var3691)))
(assert (= (off/1442430106 (cast-from-var3691-to-var2582 var1847!2)) var1921)) ; Statement: r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), quote/1442430106=([com.alibaba.fastjson2.JSONWriter], char), cast-from-var3691-to-var2582=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), features/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), ensureCapacity/993961316=([com.alibaba.fastjson2.JSONWriterUTF16, int], void), chars/1482366354=([com.alibaba.fastjson2.JSONWriterUTF16], char[])}
; {var3691=com.alibaba.fastjson2.JSONWriterUTF16, var1847=r1, var810=r0, var2113=null_type, var1184=i0, var2582=com.alibaba.fastjson2.JSONWriter, var3820=c1, var1222=com.alibaba.fastjson2.JSONWriter$Context, var3152=$r2, var2588=$l3, var264=com.alibaba.fastjson2.JSONWriter$Feature, var1511=$r3, var1352=$l2, var1268=$l4, var408=$b5, var39=$z2, var1849=z0, var500=$r4, var2488=$l7, var2252=$r5, var1247=$l6, var1825=$l8, var1883=$b9, var3070=$z3, var2359=z1, var1079=$i82, var3230=$i10, var3917=$i11, var2463=$i12, var210=$r12, var3252=i83, var2413=i84, var1921=$i13}
; {com.alibaba.fastjson2.JSONWriterUTF16=var3691, r1=var1847, r0=var810, null_type=var2113, i0=var1184, com.alibaba.fastjson2.JSONWriter=var2582, c1=var3820, com.alibaba.fastjson2.JSONWriter$Context=var1222, $r2=var3152, $l3=var2588, com.alibaba.fastjson2.JSONWriter$Feature=var264, $r3=var1511, $l2=var1352, $l4=var1268, $b5=var408, $z2=var39, z0=var1849, $r4=var500, $l7=var2488, $r5=var2252, $l6=var1247, $l8=var1825, $b9=var1883, $z3=var3070, z1=var2359, $i82=var1079, $i10=var3230, $i11=var3917, $i12=var2463, $r12=var210, i83=var3252, i84=var2413, $i13=var1921}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote>;	$r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii>;	$l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l4 = $l3 & $l2;	$b5 = $l4 cmp 0L;	if $b5 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	$r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure>;	$l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l8 = $l7 & $l6;	$b9 = $l8 cmp 0L;	if $b9 == 0 goto $z3 = 0;	$z3 = 0;	z1 = $z3;	$i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	$i10 = i0 * 6;	$i11 = $i82 + $i10;	$i12 = $i11 + 2;	virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12);	$r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars>;	i83 = $i82 + 1;	$r12[$i82] = c1;	i84 = 0;	if i84 >= i0 goto $r12[i83] = c1;	$r12[i83] = c1;	$i13 = i83 + 1;	r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13;	return
;block_num 7