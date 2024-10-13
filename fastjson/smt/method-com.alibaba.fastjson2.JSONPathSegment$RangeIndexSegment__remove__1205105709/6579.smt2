(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var635 0)
(declare-sort var3729 0)
(declare-sort var2906 0)
(declare-sort var1759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var3729) var3729)
(declare-fun root/1029745399 (var3729) var2906)
(declare-fun var1759-init () var1759)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2906) ClassObject)
(declare-fun cast-from-var635-to-var2906 (var635) var2906)
(declare-fun append/-1031950772 (String var2906) String)
(declare-fun cast-from-ClassObject-to-var2906 (ClassObject) var2906)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1759 String) void)
(declare-const null-var635 var635)
(declare-const null-var3729 var3729)
(declare-const var3434 var635) ; Statement: r5 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment 
(assert (not (= var3434 null-var635)))
(declare-const var838 var3729) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var838 null-var3729)))
(define-const var3863 var3729 (parent/1029745399 var838)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var3863 null-var3729)))) ; Negate: Cond: $r1 != null  
(define-const var94 var2906 (root/1029745399 var838)) ; Statement: $r11 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= $z0 = $r11 instanceof java.util.List] 
(assert true) ; Non Conditional
(define-const var3734 Bool false) ; Statement: $z0 = $r11 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto $r13 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var3734 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2270 var1759 var1759-init) ; Statement: $r13 = new com.alibaba.fastjson2.JSONException 
(define-const var232 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var232)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var232!1 String)
(assert (= var232!1 ""))
(assert true)
(define-const var2488 String (append/672562846 var232!1 "UnsupportedOperation ")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var232!2 String)
(assert (= var232!2 (str.++ var232!1 "UnsupportedOperation ")))
(assert true)
(define-const var2511 ClassObject (getClass/1258963082 (cast-from-var635-to-var2906 var3434))) ; Statement: $r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3638 String (append/-1031950772 var2488 (cast-from-ClassObject-to-var2906 var2511))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var2488!1 String)
(assert (str.prefixof var2488 var2488!1))
(assert true)
(define-const var1064 String (toString/-2075883882 var3638)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2270 var1064)) ; Statement: specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2270!1 var1759)
(declare-const var1064!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var1759-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var635-to-var2906=([com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2906=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var635=com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment, var3434=r5, var3729=com.alibaba.fastjson2.JSONPath$Context, var838=r0, var3863=$r1, var2906=java.lang.Object, var94=$r11, var3734=$z0, var1759=com.alibaba.fastjson2.JSONException, var2270=$r13, var232=$r12, var2488=$r7, var2511=$r6, var3638=$r8, var1064=$r9}
; {com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment=var635, r5=var3434, com.alibaba.fastjson2.JSONPath$Context=var3729, r0=var838, $r1=var3863, java.lang.Object=var2906, $r11=var94, $z0=var3734, com.alibaba.fastjson2.JSONException=var1759, $r13=var2270, $r12=var232, $r7=var2488, $r6=var2511, $r8=var3638, $r9=var1064}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r11 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= $z0 = $r11 instanceof java.util.List];	$z0 = $r11 instanceof java.util.List;	if $z0 == 0 goto $r13 = new com.alibaba.fastjson2.JSONException;	$r13 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r13
;block_num 4