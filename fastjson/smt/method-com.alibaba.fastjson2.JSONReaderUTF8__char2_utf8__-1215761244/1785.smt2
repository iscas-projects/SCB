(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3263-init () var3263)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3263 String) void)
(declare-const null-Int Int)
(declare-const var912 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var912 null-Int)))
(declare-const var131 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var131 null-Int)))
(declare-const var697 Int) ; Statement: i7 := @parameter2: int 
(assert (not (= var697 null-Int)))
(define-const var1756 Int (bv2nat (bvand ((_ int2bv 64) var131) ((_ int2bv 64) 192)))) ; Statement: $i1 = i0 & 192 
 ; Statement: if $i1 == 128 goto $i3 = i2 & 31 
(assert (not (= var1756 128))) ; Negate: Cond: $i1 == 128  
(define-const var3542 var3263 var3263-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var1322 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1322)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1322!1 String)
(assert (= var1322!1 ""))
(assert true)
(define-const var271 String (append/672562846 var1322!1 "malformed input around byte ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ") 
(declare-const var1322!2 String)
(assert (= var1322!2 (str.++ var1322!1 "malformed input around byte ")))
(assert true)
(define-const var1137 String (append/-1001720160 var271 var697)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7) 
(declare-const var271!1 String)
(assert (str.prefixof var271 var271!1))
(assert true)
(define-const var1344 String (toString/-2075883882 var1137)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3542 var1344)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r4) 

(declare-const var3542!1 var3263)
(declare-const var1344!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3263-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var912=i2, var131=i0, var697=i7, var1756=$i1, var3263=com.alibaba.fastjson2.JSONException, var3542=$r0, var1322=$r1, var271=$r2, var1137=$r3, var1344=$r4}
; {i2=var912, i0=var131, i7=var697, $i1=var1756, com.alibaba.fastjson2.JSONException=var3263, $r0=var3542, $r1=var1322, $r2=var271, $r3=var1137, $r4=var1344}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i2 := @parameter0: int;	i0 := @parameter1: int;	i7 := @parameter2: int;	$i1 = i0 & 192;	if $i1 == 128 goto $i3 = i2 & 31;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input around byte ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i7);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2