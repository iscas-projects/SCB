(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var146 0)
(declare-sort var990 0)
(declare-sort var553 0)
(declare-sort var883 0)
(declare-sort var2181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun quote/1442430106 (var553) Int)
(declare-fun cast-from-var146-to-var553 (var146) var553)
(declare-fun context/1442430106 (var553) var883)
(declare-fun features/-146628731 (var883) Int)
(declare-fun mask/-2077367092 (var2181) Int)
(declare-fun off/1442430106 (var553) Int)
(declare-fun ensureCapacity/993961316 (var146 Int) void)
(declare-fun chars/1482366354 (var146) (Array Int Int))
(declare-const null-var146 var146)
(declare-const null-String String)
(declare-const var2181-EscapeNoneAscii var2181)
(declare-const var2181-BrowserSecure var2181)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var312 var146) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var312 null-var146)))
(declare-const var301 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var301 null-String)))
(assert true)
(define-const var1454 Int (length/-134980193 var301)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2177 Int (quote/1442430106 (cast-from-var146-to-var553 var312))) ; Statement: c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote> 
(define-const var254 var883 (context/1442430106 (cast-from-var146-to-var553 var312))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var477 Int (features/-146628731 var254)) ; Statement: $l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var1331 var2181 var2181-EscapeNoneAscii) ; Statement: $r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii> 
(define-const var521 Int (mask/-2077367092 var1331)) ; Statement: $l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1646 Int (bv2nat (bvand ((_ int2bv 64) var477) ((_ int2bv 64) var521)))) ; Statement: $l4 = $l3 & $l2 
(define-const var766 Int (ite (> var1646 0) 1 (ite (< var1646 0) (- 1) 0))) ; Statement: $b5 = $l4 cmp 0L 
 ; Statement: if $b5 == 0 goto $z2 = 0 
(assert (not (= var766 0))) ; Negate: Cond: $b5 == 0  
(define-const var3217 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= z0 = $z2] 
(assert true) ; Non Conditional
(define-const var140 Bool var3217) ; Statement: z0 = $z2 
(define-const var1418 var883 (context/1442430106 (cast-from-var146-to-var553 var312))) ; Statement: $r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var3983 Int (features/-146628731 var1418)) ; Statement: $l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var1735 var2181 var2181-BrowserSecure) ; Statement: $r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure> 
(define-const var55 Int (mask/-2077367092 var1735)) ; Statement: $l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var69 Int (bv2nat (bvand ((_ int2bv 64) var3983) ((_ int2bv 64) var55)))) ; Statement: $l8 = $l7 & $l6 
(define-const var733 Int (ite (> var69 0) 1 (ite (< var69 0) (- 1) 0))) ; Statement: $b9 = $l8 cmp 0L 
 ; Statement: if $b9 == 0 goto $z3 = 0 
(assert (not (= var733 0))) ; Negate: Cond: $b9 == 0  
(define-const var3728 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= z1 = $z3] 
(assert true) ; Non Conditional
(define-const var2837 Bool var3728) ; Statement: z1 = $z3 
(define-const var3322 Int (off/1442430106 (cast-from-var146-to-var553 var312))) ; Statement: $i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(define-const var258 Int (* var1454 6)) ; Statement: $i10 = i0 * 6 
(define-const var3068 Int (+ var3322 var258)) ; Statement: $i11 = $i82 + $i10 
(define-const var993 Int (+ var3068 2)) ; Statement: $i12 = $i11 + 2 
(assert true)
;(assert (ensureCapacity/993961316 var312 var993)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12) 

(declare-const var312!1 var146)
(declare-const var993!1 Int)
(define-const var637 (Array Int Int) (chars/1482366354 var312!1)) ; Statement: $r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars> 
(define-const var3398 Int (+ var3322 1)) ; Statement: i83 = $i82 + 1 
(declare-const var637!1 (Array Int Int))
(assert (not (= var637!1 null-__Array__Int__Int__)))
(assert (= (select var637!1 var3322) var2177)) ; Statement: $r12[$i82] = c1 
(define-const var1091 Int 0) ; Statement: i84 = 0 
(assert true) ; Non Conditional
 ; Statement: if i84 >= i0 goto $r12[i83] = c1 
(assert (>= var1091 var1454)) ; Cond: i84 >= i0 
(declare-const var637!2 (Array Int Int))
(assert (not (= var637!2 null-__Array__Int__Int__)))
(assert (= (select var637!2 var3398) var2177)) ; Statement: $r12[i83] = c1 
(define-const var3683 Int (+ var3398 1)) ; Statement: $i13 = i83 + 1 
(declare-const var312!2 var146)
(assert (not (= var312!2 null-var146)))
(assert (= (off/1442430106 (cast-from-var146-to-var553 var312!2)) var3683)) ; Statement: r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), quote/1442430106=([com.alibaba.fastjson2.JSONWriter], char), cast-from-var146-to-var553=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), features/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), ensureCapacity/993961316=([com.alibaba.fastjson2.JSONWriterUTF16, int], void), chars/1482366354=([com.alibaba.fastjson2.JSONWriterUTF16], char[])}
; {var146=com.alibaba.fastjson2.JSONWriterUTF16, var312=r1, var301=r0, var990=null_type, var1454=i0, var553=com.alibaba.fastjson2.JSONWriter, var2177=c1, var883=com.alibaba.fastjson2.JSONWriter$Context, var254=$r2, var477=$l3, var2181=com.alibaba.fastjson2.JSONWriter$Feature, var1331=$r3, var521=$l2, var1646=$l4, var766=$b5, var3217=$z2, var140=z0, var1418=$r4, var3983=$l7, var1735=$r5, var55=$l6, var69=$l8, var733=$b9, var3728=$z3, var2837=z1, var3322=$i82, var258=$i10, var3068=$i11, var993=$i12, var637=$r12, var3398=i83, var1091=i84, var3683=$i13}
; {com.alibaba.fastjson2.JSONWriterUTF16=var146, r1=var312, r0=var301, null_type=var990, i0=var1454, com.alibaba.fastjson2.JSONWriter=var553, c1=var2177, com.alibaba.fastjson2.JSONWriter$Context=var883, $r2=var254, $l3=var477, com.alibaba.fastjson2.JSONWriter$Feature=var2181, $r3=var1331, $l2=var521, $l4=var1646, $b5=var766, $z2=var3217, z0=var140, $r4=var1418, $l7=var3983, $r5=var1735, $l6=var55, $l8=var69, $b9=var733, $z3=var3728, z1=var2837, $i82=var3322, $i10=var258, $i11=var3068, $i12=var993, $r12=var637, i83=var3398, i84=var1091, $i13=var3683}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote>;	$r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii>;	$l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l4 = $l3 & $l2;	$b5 = $l4 cmp 0L;	if $b5 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	$r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure>;	$l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l8 = $l7 & $l6;	$b9 = $l8 cmp 0L;	if $b9 == 0 goto $z3 = 0;	$z3 = 1;	goto [?= z1 = $z3];	z1 = $z3;	$i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	$i10 = i0 * 6;	$i11 = $i82 + $i10;	$i12 = $i11 + 2;	virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12);	$r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars>;	i83 = $i82 + 1;	$r12[$i82] = c1;	i84 = 0;	if i84 >= i0 goto $r12[i83] = c1;	$r12[i83] = c1;	$i13 = i83 + 1;	r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13;	return
;block_num 7