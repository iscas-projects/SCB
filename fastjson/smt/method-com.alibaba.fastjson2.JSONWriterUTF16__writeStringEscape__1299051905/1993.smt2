(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var840 0)
(declare-sort var3197 0)
(declare-sort var2659 0)
(declare-sort var362 0)
(declare-sort var2662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun quote/1442430106 (var2659) Int)
(declare-fun cast-from-var840-to-var2659 (var840) var2659)
(declare-fun context/1442430106 (var2659) var362)
(declare-fun features/-146628731 (var362) Int)
(declare-fun mask/-2077367092 (var2662) Int)
(declare-fun off/1442430106 (var2659) Int)
(declare-fun ensureCapacity/993961316 (var840 Int) void)
(declare-fun chars/1482366354 (var840) (Array Int Int))
(declare-const null-var840 var840)
(declare-const null-String String)
(declare-const var2662-EscapeNoneAscii var2662)
(declare-const var2662-BrowserSecure var2662)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3679 var840) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var3679 null-var840)))
(declare-const var756 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var756 null-String)))
(assert true)
(define-const var3659 Int (length/-134980193 var756)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var177 Int (quote/1442430106 (cast-from-var840-to-var2659 var3679))) ; Statement: c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote> 
(define-const var3884 var362 (context/1442430106 (cast-from-var840-to-var2659 var3679))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var477 Int (features/-146628731 var3884)) ; Statement: $l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var2349 var2662 var2662-EscapeNoneAscii) ; Statement: $r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii> 
(define-const var2425 Int (mask/-2077367092 var2349)) ; Statement: $l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3274 Int (bv2nat (bvand ((_ int2bv 64) var477) ((_ int2bv 64) var2425)))) ; Statement: $l4 = $l3 & $l2 
(define-const var3188 Int (ite (> var3274 0) 1 (ite (< var3274 0) (- 1) 0))) ; Statement: $b5 = $l4 cmp 0L 
 ; Statement: if $b5 == 0 goto $z2 = 0 
(assert (= var3188 0)) ; Cond: $b5 == 0 
(define-const var3412 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var240 Bool var3412) ; Statement: z0 = $z2 
(define-const var1026 var362 (context/1442430106 (cast-from-var840-to-var2659 var3679))) ; Statement: $r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context> 
(define-const var696 Int (features/-146628731 var1026)) ; Statement: $l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features> 
(define-const var31 var2662 var2662-BrowserSecure) ; Statement: $r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure> 
(define-const var3819 Int (mask/-2077367092 var31)) ; Statement: $l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1712 Int (bv2nat (bvand ((_ int2bv 64) var696) ((_ int2bv 64) var3819)))) ; Statement: $l8 = $l7 & $l6 
(define-const var2424 Int (ite (> var1712 0) 1 (ite (< var1712 0) (- 1) 0))) ; Statement: $b9 = $l8 cmp 0L 
 ; Statement: if $b9 == 0 goto $z3 = 0 
(assert (not (= var2424 0))) ; Negate: Cond: $b9 == 0  
(define-const var1981 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= z1 = $z3] 
(assert true) ; Non Conditional
(define-const var1356 Bool var1981) ; Statement: z1 = $z3 
(define-const var2689 Int (off/1442430106 (cast-from-var840-to-var2659 var3679))) ; Statement: $i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(define-const var891 Int (* var3659 6)) ; Statement: $i10 = i0 * 6 
(define-const var3846 Int (+ var2689 var891)) ; Statement: $i11 = $i82 + $i10 
(define-const var3929 Int (+ var3846 2)) ; Statement: $i12 = $i11 + 2 
(assert true)
;(assert (ensureCapacity/993961316 var3679 var3929)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12) 

(declare-const var3679!1 var840)
(declare-const var3929!1 Int)
(define-const var3395 (Array Int Int) (chars/1482366354 var3679!1)) ; Statement: $r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars> 
(define-const var647 Int (+ var2689 1)) ; Statement: i83 = $i82 + 1 
(declare-const var3395!1 (Array Int Int))
(assert (not (= var3395!1 null-__Array__Int__Int__)))
(assert (= (select var3395!1 var2689) var177)) ; Statement: $r12[$i82] = c1 
(define-const var28 Int 0) ; Statement: i84 = 0 
(assert true) ; Non Conditional
 ; Statement: if i84 >= i0 goto $r12[i83] = c1 
(assert (>= var28 var3659)) ; Cond: i84 >= i0 
(declare-const var3395!2 (Array Int Int))
(assert (not (= var3395!2 null-__Array__Int__Int__)))
(assert (= (select var3395!2 var647) var177)) ; Statement: $r12[i83] = c1 
(define-const var3887 Int (+ var647 1)) ; Statement: $i13 = i83 + 1 
(declare-const var3679!2 var840)
(assert (not (= var3679!2 null-var840)))
(assert (= (off/1442430106 (cast-from-var840-to-var2659 var3679!2)) var3887)) ; Statement: r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), quote/1442430106=([com.alibaba.fastjson2.JSONWriter], char), cast-from-var840-to-var2659=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), context/1442430106=([com.alibaba.fastjson2.JSONWriter], com.alibaba.fastjson2.JSONWriter$Context), features/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), ensureCapacity/993961316=([com.alibaba.fastjson2.JSONWriterUTF16, int], void), chars/1482366354=([com.alibaba.fastjson2.JSONWriterUTF16], char[])}
; {var840=com.alibaba.fastjson2.JSONWriterUTF16, var3679=r1, var756=r0, var3197=null_type, var3659=i0, var2659=com.alibaba.fastjson2.JSONWriter, var177=c1, var362=com.alibaba.fastjson2.JSONWriter$Context, var3884=$r2, var477=$l3, var2662=com.alibaba.fastjson2.JSONWriter$Feature, var2349=$r3, var2425=$l2, var3274=$l4, var3188=$b5, var3412=$z2, var240=z0, var1026=$r4, var696=$l7, var31=$r5, var3819=$l6, var1712=$l8, var2424=$b9, var1981=$z3, var1356=z1, var2689=$i82, var891=$i10, var3846=$i11, var3929=$i12, var3395=$r12, var647=i83, var28=i84, var3887=$i13}
; {com.alibaba.fastjson2.JSONWriterUTF16=var840, r1=var3679, r0=var756, null_type=var3197, i0=var3659, com.alibaba.fastjson2.JSONWriter=var2659, c1=var177, com.alibaba.fastjson2.JSONWriter$Context=var362, $r2=var3884, $l3=var477, com.alibaba.fastjson2.JSONWriter$Feature=var2662, $r3=var2349, $l2=var2425, $l4=var3274, $b5=var3188, $z2=var3412, z0=var240, $r4=var1026, $l7=var696, $r5=var31, $l6=var3819, $l8=var1712, $b9=var2424, $z3=var1981, z1=var1356, $i82=var2689, $i10=var891, $i11=var3846, $i12=var3929, $r12=var3395, i83=var647, i84=var28, $i13=var3887}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	c1 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char quote>;	$r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l3 = $r2.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r3 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature EscapeNoneAscii>;	$l2 = $r3.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l4 = $l3 & $l2;	$b5 = $l4 cmp 0L;	if $b5 == 0 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r4 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: com.alibaba.fastjson2.JSONWriter$Context context>;	$l7 = $r4.<com.alibaba.fastjson2.JSONWriter$Context: long features>;	$r5 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserSecure>;	$l6 = $r5.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l8 = $l7 & $l6;	$b9 = $l8 cmp 0L;	if $b9 == 0 goto $z3 = 0;	$z3 = 1;	goto [?= z1 = $z3];	z1 = $z3;	$i82 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	$i10 = i0 * 6;	$i11 = $i82 + $i10;	$i12 = $i11 + 2;	virtualinvoke r1.<com.alibaba.fastjson2.JSONWriterUTF16: void ensureCapacity(int)>($i12);	$r12 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars>;	i83 = $i82 + 1;	$r12[$i82] = c1;	i84 = 0;	if i84 >= i0 goto $r12[i83] = c1;	$r12[i83] = c1;	$i13 = i83 + 1;	r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> = $i13;	return
;block_num 7