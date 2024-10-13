(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1653 0)
(declare-sort var1430 0)
(declare-sort var1261 0)
(declare-sort var2814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1261_isNumber/-1563835369 (String) Bool)
(declare-fun var2814-init () var2814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2814 String) void)
(declare-const null-var1653 var1653)
(declare-const null-String String)
(declare-const var3757 var1653) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3757 null-var1653)))
(declare-const var1693 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1693 null-String)))
(define-const var1594 Bool (var1261_isNumber/-1563835369 var1693)) ; Statement: $z0 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: boolean isNumber(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1594 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2968 var2814 var2814-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONException 
(define-const var2472 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2472)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2472!1 String)
(assert (= var2472!1 ""))
(assert true)
(define-const var3568 String (append/672562846 var2472!1 "parseInt error, value : ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parseInt error, value : ") 
(declare-const var2472!2 String)
(assert (= var2472!2 (str.++ var2472!1 "parseInt error, value : ")))
(assert true)
(define-const var1696 String (append/672562846 var3568 var1693)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3568!1 String)
(assert (= var3568!1 (str.++ var3568 var1693)))
(assert true)
(define-const var3107 String (toString/-2075883882 var1696)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2968 var3107)) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5) 

(declare-const var2968!1 var2814)
(declare-const var3107!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1261_isNumber/-1563835369=([java.lang.String], boolean), var2814-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1653=com.alibaba.fastjson2.JSONReader, var3757=r6, var1693=r0, var1430=null_type, var1261=com.alibaba.fastjson2.util.IOUtils, var1594=$z0, var2814=com.alibaba.fastjson2.JSONException, var2968=$r1, var2472=$r2, var3568=$r3, var1696=$r4, var3107=$r5}
; {com.alibaba.fastjson2.JSONReader=var1653, r6=var3757, r0=var1693, null_type=var1430, com.alibaba.fastjson2.util.IOUtils=var1261, $z0=var1594, com.alibaba.fastjson2.JSONException=var2814, $r1=var2968, $r2=var2472, $r3=var3568, $r4=var1696, $r5=var3107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONReader;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <com.alibaba.fastjson2.util.IOUtils: boolean isNumber(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException;	$r1 = new com.alibaba.fastjson2.JSONException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parseInt error, value : ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2