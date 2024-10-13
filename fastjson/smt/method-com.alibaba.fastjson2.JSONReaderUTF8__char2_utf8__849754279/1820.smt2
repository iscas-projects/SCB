(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var592-init () var592)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var592 String) void)
(declare-const null-Int Int)
(declare-const var2973 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var2973 null-Int)))
(declare-const var1204 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1204 null-Int)))
(declare-const var3145 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3145 null-Int)))
(declare-const var1223 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1223 null-Int)))
(define-const var2110 Int (bv2nat (bvand ((_ int2bv 64) var1204) ((_ int2bv 64) 192)))) ; Statement: $i1 = i0 & 192 
 ; Statement: if $i1 != 128 goto $r0 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var2110 128))) ; Cond: $i1 != 128 
(define-const var146 var592 var592-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var2991 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2991)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2991!1 String)
(assert (= var2991!1 ""))
(assert true)
(define-const var3360 String (append/672562846 var2991!1 "malformed input around byte ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ") 
(declare-const var2991!2 String)
(assert (= var2991!2 (str.++ var2991!1 "malformed input around byte ")))
(assert true)
(define-const var1428 String (append/-1001720160 var3360 var1223)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3360!1 String)
(assert (str.prefixof var3360 var3360!1))
(assert true)
(define-const var2500 String (toString/-2075883882 var1428)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var146 var2500)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r4) 

(declare-const var146!1 var592)
(declare-const var2500!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var592-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2973=i5, var1204=i0, var3145=i3, var1223=i2, var2110=$i1, var592=com.alibaba.fastjson2.JSONException, var146=$r0, var2991=$r1, var3360=$r2, var1428=$r3, var2500=$r4}
; {i5=var2973, i0=var1204, i3=var3145, i2=var1223, $i1=var2110, com.alibaba.fastjson2.JSONException=var592, $r0=var146, $r1=var2991, $r2=var3360, $r3=var1428, $r4=var2500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i5 := @parameter0: int;	i0 := @parameter1: int;	i3 := @parameter2: int;	i2 := @parameter3: int;	$i1 = i0 & 192;	if $i1 != 128 goto $r0 = new com.alibaba.fastjson2.JSONException;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2