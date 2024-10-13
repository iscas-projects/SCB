(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1659 0)
(declare-sort var2785 0)
(declare-sort var1238 0)
(declare-sort var564 0)
(declare-sort var2022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var564-init () var564)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1659) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var564 String var2022) void)
(declare-fun cast-from-var1238-to-var2022 (var1238) var2022)
(declare-const null-var1659 var1659)
(declare-const null-var2785 var2785)
(declare-const null-var1238 var1238)
(declare-const var2190 var1659) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2190 null-var1659)))
(declare-const var3741 var2785) ; Statement: r13 := @parameter1: com.alibaba.fastjson2.JSONWriter$Context 
(assert (not (= var3741 null-var2785)))
 ; Statement: if r13 != null goto $r3 = staticinvoke <com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter of(com.alibaba.fastjson2.JSONWriter$Context)>(r13) 
(assert (not (not (= var3741 null-var2785)))) ; Negate: Cond: r13 != null  
(declare-const var3816 var1238) ; Statement: $r4 := @caughtexception 
(assert (not (= var3816 null-var1238)))
(define-const var478 var564 var564-init) ; Statement: $r5 = new com.alibaba.fastjson2.JSONException 
(define-const var410 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var410)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var410!1 String)
(assert (= var410!1 ""))
(assert true)
(define-const var2975 String (append/672562846 var410!1 "JSON#toJSONString cannot serialize \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#toJSONString cannot serialize \'") 
(declare-const var410!2 String)
(assert (= var410!2 (str.++ var410!1 "JSON#toJSONString cannot serialize \u0027")))
(assert true)
(define-const var1998 String (append/-1031950772 var2975 var2190)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2975!1 String)
(assert (str.prefixof var2975 var2975!1))
(assert true)
(define-const var1141 String (append/672562846 var1998 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1998!1 String)
(assert (= var1998!1 (str.++ var1998 "\u0027")))
(assert true)
(define-const var953 String (toString/-2075883882 var1141)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var478 var953 (cast-from-var1238-to-var2022 var3816))) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var478!1 var564)
(declare-const var953!1 String)
(declare-const var3816!1 var1238)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var564-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1238-to-var2022=([java.lang.RuntimeException], java.lang.Throwable)}
; {var1659=java.lang.Object, var2190=r0, var2785=com.alibaba.fastjson2.JSONWriter$Context, var3741=r13, var1238=java.lang.RuntimeException, var3816=$r4, var564=com.alibaba.fastjson2.JSONException, var478=$r5, var410=$r6, var2975=$r7, var1998=$r8, var1141=$r9, var953=$r10, var2022=java.lang.Throwable}
; {java.lang.Object=var1659, r0=var2190, com.alibaba.fastjson2.JSONWriter$Context=var2785, r13=var3741, java.lang.RuntimeException=var1238, $r4=var3816, com.alibaba.fastjson2.JSONException=var564, $r5=var478, $r6=var410, $r7=var2975, $r8=var1998, $r9=var1141, $r10=var953, java.lang.Throwable=var2022}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r13 := @parameter1: com.alibaba.fastjson2.JSONWriter$Context;	if r13 != null goto $r3 = staticinvoke <com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter of(com.alibaba.fastjson2.JSONWriter$Context)>(r13);	$r4 := @caughtexception;	$r5 = new com.alibaba.fastjson2.JSONException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#toJSONString cannot serialize \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	throw $r5
;block_num 2