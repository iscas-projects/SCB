(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1272-init () var1272)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1272 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2366 (Array Int Int)) ; Statement: r5 := @parameter0: byte[] 
(assert (not (= var2366 null-__Array__Int__Int__)))
(declare-const var1802 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1802 null-Int)))
(declare-const var504 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var504 null-Int)))
(declare-const var1423 (Array Int Int)) ; Statement: r6 := @parameter3: char[] 
(assert (not (= var1423 null-__Array__Int__Int__)))
(declare-const var978 Int) ; Statement: i19 := @parameter4: int 
(assert (not (= var978 null-Int)))
(define-const var779 Int (div var504 (to_int (^ 2 3)))) ; Statement: $i1 = i0 >> 3 
(define-const var3125 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i28 = (int) -2 
 ; Statement: if $i1 != $i28 goto $r15 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var779 var3125))) ; Cond: $i1 != $i28 
(define-const var2368 var1272 var1272-init) ; Statement: $r15 = new com.alibaba.fastjson2.JSONException 
(define-const var2275 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2275)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2275!1 String)
(assert (= var2275!1 ""))
(assert true)
(define-const var346 String (append/672562846 var2275!1 "malformed input around byte ")) ; Statement: $r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ") 
(declare-const var2275!2 String)
(assert (= var2275!2 (str.++ var2275!1 "malformed input around byte ")))
(assert true)
(define-const var1428 String (append/-1001720160 var346 var1802)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var346!1 String)
(assert (str.prefixof var346 var346!1))
(assert true)
(define-const var3862 String (toString/-2075883882 var1428)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2368 var3862)) ; Statement: specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r4) 

(declare-const var2368!1 var1272)
(declare-const var3862!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var1272-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2366=r5, var1802=i2, var504=i0, var1423=r6, var978=i19, var779=$i1, var3125=$i28, var1272=com.alibaba.fastjson2.JSONException, var2368=$r15, var2275=$r14, var346=$r2, var1428=$r3, var3862=$r4}
; {r5=var2366, i2=var1802, i0=var504, r6=var1423, i19=var978, $i1=var779, $i28=var3125, com.alibaba.fastjson2.JSONException=var1272, $r15=var2368, $r14=var2275, $r2=var346, $r3=var1428, $r4=var3862}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: byte[];	i2 := @parameter1: int;	i0 := @parameter2: int;	r6 := @parameter3: char[];	i19 := @parameter4: int;	$i1 = i0 >> 3;	$i28 = (int) -2;	if $i1 != $i28 goto $r15 = new com.alibaba.fastjson2.JSONException;	$r15 = new com.alibaba.fastjson2.JSONException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r4);	throw $r15
;block_num 2