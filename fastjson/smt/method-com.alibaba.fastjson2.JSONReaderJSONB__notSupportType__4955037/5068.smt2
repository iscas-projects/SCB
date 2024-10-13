(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3842 0)
(declare-sort var1120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3842-init () var3842)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1120_typeName/1994747818 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3842 String) void)
(declare-const null-Int Int)
(declare-const var2428 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var2428 null-Int)))
(define-const var3500 var3842 var3842-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var1774 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1774)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1774!1 String)
(assert (= var1774!1 ""))
(assert true)
(define-const var2739 String (append/672562846 var1774!1 "name not support input : ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name not support input : ") 
(declare-const var1774!2 String)
(assert (= var1774!2 (str.++ var1774!1 "name not support input : ")))
(define-const var3034 String (var1120_typeName/1994747818 var2428)) ; Statement: $r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0) 
(assert true)
(define-const var271 String (append/672562846 var2739 var3034)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2739!1 String)
(assert (= var2739!1 (str.++ var2739 var3034)))
(assert true)
(define-const var2128 String (toString/-2075883882 var271)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3500 var2128)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5) 

(declare-const var3500!1 var3842)
(declare-const var2128!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3842-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1120_typeName/1994747818=([byte], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2428=b0, var3842=com.alibaba.fastjson2.JSONException, var3500=$r0, var1774=$r1, var2739=$r3, var1120=com.alibaba.fastjson2.JSONB, var3034=$r2, var271=$r4, var2128=$r5}
; {b0=var2428, com.alibaba.fastjson2.JSONException=var3842, $r0=var3500, $r1=var1774, $r3=var2739, com.alibaba.fastjson2.JSONB=var1120, $r2=var3034, $r4=var271, $r5=var2128}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name not support input : ");	$r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5);	return $r0
;block_num 1