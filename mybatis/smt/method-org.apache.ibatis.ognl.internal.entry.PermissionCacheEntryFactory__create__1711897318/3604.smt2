(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2364 0)
(declare-sort var139 0)
(declare-sort var714 0)
(declare-sort var2284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var714-init () var714)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun method/-87383498 (var139) var2284)
(declare-fun getDeclaringClass/501867354 (var2284) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getName/1227988463 (var2284) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1309057185 (var714 String) void)
(declare-const null-var2364 var2364)
(declare-const null-var139 var139)
(declare-const var414 var2364) ; Statement: r13 := @this: org.apache.ibatis.ognl.internal.entry.PermissionCacheEntryFactory 
(assert (not (= var414 null-var2364)))
(declare-const var2586 var139) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry 
(assert (not (= var2586 null-var139)))
(define-const var1831 var714 var714-init) ; Statement: $r0 = new org.apache.ibatis.ognl.OgnlInvokePermission 
(define-const var3969 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3969)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3969!1 String)
(assert (= var3969!1 ""))
(assert true)
(define-const var3538 String (append/672562846 var3969!1 "invoke.")) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke.") 
(declare-const var3969!2 String)
(assert (= var3969!2 (str.++ var3969!1 "invoke.")))
(define-const var1653 var2284 (method/-87383498 var2586)) ; Statement: $r3 = r2.<org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry: java.lang.reflect.Method method> 
(assert true)
(define-const var2635 ClassObject (getDeclaringClass/501867354 var1653)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var1075 String (getName/-1958580599 var2635)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3051 String (append/672562846 var3538 var1075)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3538!1 String)
(assert (= var3538!1 (str.++ var3538 var1075)))
(assert true)
(define-const var1671 String (append/672562846 var3051 ".")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3051!1 String)
(assert (= var3051!1 (str.++ var3051 ".")))
(define-const var3318 var2284 (method/-87383498 var2586)) ; Statement: $r8 = r2.<org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry: java.lang.reflect.Method method> 
(assert true)
(define-const var777 String (getName/1227988463 var3318)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3357 String (append/672562846 var1671 var777)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1671!1 String)
(assert (= var1671!1 (str.++ var1671 var777)))
(assert true)
(define-const var261 String (toString/-2075883882 var3357)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1309057185 var1831 var261)) ; Statement: specialinvoke $r0.<org.apache.ibatis.ognl.OgnlInvokePermission: void <init>(java.lang.String)>($r12) 

(declare-const var1831!1 var714)
(declare-const var261!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var714-init=([], org.apache.ibatis.ognl.OgnlInvokePermission), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), method/-87383498=([org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry], java.lang.reflect.Method), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1309057185=([org.apache.ibatis.ognl.OgnlInvokePermission, java.lang.String], void)}
; {var2364=org.apache.ibatis.ognl.internal.entry.PermissionCacheEntryFactory, var414=r13, var139=org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry, var2586=r2, var714=org.apache.ibatis.ognl.OgnlInvokePermission, var1831=$r0, var3969=$r1, var3538=$r6, var2284=java.lang.reflect.Method, var1653=$r3, var2635=$r4, var1075=$r5, var3051=$r7, var1671=$r10, var3318=$r8, var777=$r9, var3357=$r11, var261=$r12}
; {org.apache.ibatis.ognl.internal.entry.PermissionCacheEntryFactory=var2364, r13=var414, org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry=var139, r2=var2586, org.apache.ibatis.ognl.OgnlInvokePermission=var714, $r0=var1831, $r1=var3969, $r6=var3538, java.lang.reflect.Method=var2284, $r3=var1653, $r4=var2635, $r5=var1075, $r7=var3051, $r10=var1671, $r8=var3318, $r9=var777, $r11=var3357, $r12=var261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.apache.ibatis.ognl.internal.entry.PermissionCacheEntryFactory;	r2 := @parameter0: org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry;	$r0 = new org.apache.ibatis.ognl.OgnlInvokePermission;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke.");	$r3 = r2.<org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry: java.lang.reflect.Method method>;	$r4 = virtualinvoke $r3.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = r2.<org.apache.ibatis.ognl.internal.entry.PermissionCacheEntry: java.lang.reflect.Method method>;	$r9 = virtualinvoke $r8.<java.lang.reflect.Method: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.ognl.OgnlInvokePermission: void <init>(java.lang.String)>($r12);	return $r0
;block_num 1