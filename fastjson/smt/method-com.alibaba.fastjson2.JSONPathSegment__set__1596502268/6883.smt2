(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3490 0)
(declare-sort var1674 0)
(declare-sort var2987 0)
(declare-sort var3813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3813-init () var3813)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2987) ClassObject)
(declare-fun cast-from-var3490-to-var2987 (var3490) var2987)
(declare-fun append/-1031950772 (String var2987) String)
(declare-fun cast-from-ClassObject-to-var2987 (ClassObject) var2987)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3813 String) void)
(declare-const null-var3490 var3490)
(declare-const null-var1674 var1674)
(declare-const null-var2987 var2987)
(declare-const var3341 var3490) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONPathSegment 
(assert (not (= var3341 null-var3490)))
(declare-const var490 var1674) ; Statement: r7 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var490 null-var1674)))
(declare-const var323 var2987) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var323 null-var2987)))
(define-const var508 var3813 var3813-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var2487 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2487)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2487!1 String)
(assert (= var2487!1 ""))
(assert true)
(define-const var3699 String (append/672562846 var2487!1 "UnsupportedOperation ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var2487!2 String)
(assert (= var2487!2 (str.++ var2487!1 "UnsupportedOperation ")))
(assert true)
(define-const var207 ClassObject (getClass/1258963082 (cast-from-var3490-to-var2987 var3341))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1432 String (append/-1031950772 var3699 (cast-from-ClassObject-to-var2987 var207))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3699!1 String)
(assert (str.prefixof var3699 var3699!1))
(assert true)
(define-const var3191 String (toString/-2075883882 var1432)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var508 var3191)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var508!1 var3813)
(declare-const var3191!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3813-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3490-to-var2987=([com.alibaba.fastjson2.JSONPathSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2987=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3490=com.alibaba.fastjson2.JSONPathSegment, var3341=r2, var1674=com.alibaba.fastjson2.JSONPath$Context, var490=r7, var2987=java.lang.Object, var323=r8, var3813=com.alibaba.fastjson2.JSONException, var508=$r0, var2487=$r1, var3699=$r4, var207=$r3, var1432=$r5, var3191=$r6}
; {com.alibaba.fastjson2.JSONPathSegment=var3490, r2=var3341, com.alibaba.fastjson2.JSONPath$Context=var1674, r7=var490, java.lang.Object=var2987, r8=var323, com.alibaba.fastjson2.JSONException=var3813, $r0=var508, $r1=var2487, $r4=var3699, $r3=var207, $r5=var1432, $r6=var3191}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONPathSegment;	r7 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r8 := @parameter1: java.lang.Object;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1