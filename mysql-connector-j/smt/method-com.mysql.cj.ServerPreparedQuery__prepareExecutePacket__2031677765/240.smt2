(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3806 0)
(declare-sort var2217 0)
(declare-sort var2712 0)
(declare-sort var3710 0)
(declare-sort var1522 0)
(declare-sort var3265 0)
(declare-sort var1829 0)
(declare-sort var887 0)
(declare-sort var2933 0)
(declare-sort var1152 0)
(declare-sort var3504 0)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryBindings/508865650 (var2712) var2217)
(declare-fun cast-from-var3806-to-var2712 (var3806) var2712)
(declare-fun var2217_getBindValues/-259606506 (var2217) (Array Int var3710))
(declare-fun var2217_isLongParameterSwitchDetected/-984006714 (var2217) Bool)
(declare-fun parameterCount/508865650 (var2712) Int)
(declare-fun var3710_isStream/-1852883629 (var3710) Bool)
(declare-fun var3710_getBoundBeforeExecutionNum/-278061620 (var3710) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1522_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun session/-459319496 (var1829) var3265)
(declare-fun cast-from-var3806-to-var1829 (var3806) var1829)
(declare-fun getExceptionInterceptor/813792340 (var2933) var887)
(declare-fun cast-from-var3265-to-var2933 (var3265) var2933)
(declare-fun var3504_createException/-1561813846 (String String Int Bool var2248 var887) var1152)
(declare-const null-var3806 var3806)
(declare-const null-var2248 var2248)
(declare-const var896 var3806) ; Statement: r0 := @this: com.mysql.cj.ServerPreparedQuery 
(assert (not (= var896 null-var3806)))
(define-const var2444 var2217 (queryBindings/508865650 (cast-from-var3806-to-var2712 var896))) ; Statement: $r1 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.QueryBindings queryBindings> 
(define-const var1608 (Array Int var3710) (var2217_getBindValues/-259606506 var2444)) ; Statement: r2 = interfaceinvoke $r1.<com.mysql.cj.QueryBindings: com.mysql.cj.BindValue[] getBindValues()>() 
(define-const var3725 var2217 (queryBindings/508865650 (cast-from-var3806-to-var2712 var896))) ; Statement: $r3 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.QueryBindings queryBindings> 
(define-const var1237 Bool (var2217_isLongParameterSwitchDetected/-984006714 var3725)) ; Statement: $z0 = interfaceinvoke $r3.<com.mysql.cj.QueryBindings: boolean isLongParameterSwitchDetected()>() 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.QueryBindings queryBindings> 
(assert (not (= (ite var1237 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1210 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var2926 Int 0) ; Statement: l8 = 0L 
(define-const var385 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var2973 Int (parameterCount/508865650 (cast-from-var3806-to-var2712 var896))) ; Statement: $i4 = r0.<com.mysql.cj.ServerPreparedQuery: int parameterCount> 
(define-const var3696 Int (- var2973 1)) ; Statement: $i5 = $i4 - 1 
 ; Statement: if i9 >= $i5 goto virtualinvoke r0.<com.mysql.cj.ServerPreparedQuery: void serverResetStatement()>() 
(assert (not (>= var385 var3696))) ; Negate: Cond: i9 >= $i5  
(define-const var1867 var3710 (select var1608 var385)) ; Statement: $r25 = r2[i9] 
(define-const var3656 Bool (var3710_isStream/-1852883629 var1867)) ; Statement: $z4 = interfaceinvoke $r25.<com.mysql.cj.BindValue: boolean isStream()>() 
 ; Statement: if $z4 == 0 goto i9 = i9 + 1 
(assert (not (= (ite var3656 1 0) 0))) ; Negate: Cond: $z4 == 0  
 ; Statement: if z5 == 0 goto z5 = 1 
(assert (not (= (ite var1210 1 0) 0))) ; Negate: Cond: z5 == 0  
(define-const var3246 var3710 (select var1608 var385)) ; Statement: $r27 = r2[i9] 
(define-const var2994 Int (var3710_getBoundBeforeExecutionNum/-278061620 var3246)) ; Statement: $l6 = interfaceinvoke $r27.<com.mysql.cj.BindValue: long getBoundBeforeExecutionNum()>() 
(define-const var1776 Int (ite (> var2926 var2994) 1 (ite (< var2926 var2994) (- 1) 0))) ; Statement: $b7 = l8 cmp $l6 
 ; Statement: if $b7 == 0 goto z5 = 1 
(assert (not (= var1776 0))) ; Negate: Cond: $b7 == 0  
(define-const var2328 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2328)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2328!1 String)
(assert (= var2328!1 ""))
(define-const var1265 String (var1522_getString/-1547297038 "ServerPreparedStatement.11")) ; Statement: $r29 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ServerPreparedStatement.11") 
(assert true)
(define-const var2508 String (append/672562846 var2328!1 var1265)) ; Statement: $r31 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2328!2 String)
(assert (= var2328!2 (str.++ var2328!1 var1265)))
(define-const var2100 String (var1522_getString/-1547297038 "ServerPreparedStatement.12")) ; Statement: $r30 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ServerPreparedStatement.12") 
(assert true)
(define-const var1481 String (append/672562846 var2508 var2100)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var2508!1 String)
(assert (= var2508!1 (str.++ var2508 var2100)))
(assert true)
(define-const var2175 String (toString/-2075883882 var1481)) ; Statement: $r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var905 var3265 (session/-459319496 (cast-from-var3806-to-var1829 var896))) ; Statement: $r33 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var230 var887 (getExceptionInterceptor/813792340 (cast-from-var3265-to-var2933 var905))) ; Statement: $r34 = virtualinvoke $r33.<com.mysql.cj.NativeSession: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2029 var1152 (var3504_createException/-1561813846 var2175 "S1C00" 0 (ite (= 1 1) true false) null-var2248 var230)) ; Statement: $r36 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.String,int,boolean,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r35, "S1C00", 0, 1, null, $r34) 
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {queryBindings/508865650=([com.mysql.cj.ClientPreparedQuery], com.mysql.cj.QueryBindings), cast-from-var3806-to-var2712=([com.mysql.cj.ServerPreparedQuery], com.mysql.cj.ClientPreparedQuery), var2217_getBindValues/-259606506=([com.mysql.cj.QueryBindings], com.mysql.cj.BindValue[]), var2217_isLongParameterSwitchDetected/-984006714=([com.mysql.cj.QueryBindings], boolean), parameterCount/508865650=([com.mysql.cj.ClientPreparedQuery], int), var3710_isStream/-1852883629=([com.mysql.cj.BindValue], boolean), var3710_getBoundBeforeExecutionNum/-278061620=([com.mysql.cj.BindValue], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1522_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), session/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.NativeSession), cast-from-var3806-to-var1829=([com.mysql.cj.ServerPreparedQuery], com.mysql.cj.AbstractQuery), getExceptionInterceptor/813792340=([com.mysql.cj.CoreSession], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var3265-to-var2933=([com.mysql.cj.NativeSession], com.mysql.cj.CoreSession), var3504_createException/-1561813846=([java.lang.String, java.lang.String, int, boolean, java.lang.Throwable, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException)}
; {var3806=com.mysql.cj.ServerPreparedQuery, var896=r0, var2217=com.mysql.cj.QueryBindings, var2712=com.mysql.cj.ClientPreparedQuery, var2444=$r1, var3710=com.mysql.cj.BindValue, var1608=r2, var3725=$r3, var1237=$z0, var1210=z5, var2926=l8, var385=i9, var2973=$i4, var3696=$i5, var1867=$r25, var3656=$z4, var3246=$r27, var2994=$l6, var1776=$b7, var2328=$r28, var1522=com.mysql.cj.Messages, var1265=$r29, var2508=$r31, var2100=$r30, var1481=$r32, var2175=$r35, var3265=com.mysql.cj.NativeSession, var1829=com.mysql.cj.AbstractQuery, var905=$r33, var887=com.mysql.cj.exceptions.ExceptionInterceptor, var2933=com.mysql.cj.CoreSession, var230=$r34, var1152=com.mysql.cj.exceptions.CJException, var3504=com.mysql.cj.exceptions.ExceptionFactory, var2248=java.lang.Throwable, var2029=$r36}
; {com.mysql.cj.ServerPreparedQuery=var3806, r0=var896, com.mysql.cj.QueryBindings=var2217, com.mysql.cj.ClientPreparedQuery=var2712, $r1=var2444, com.mysql.cj.BindValue=var3710, r2=var1608, $r3=var3725, $z0=var1237, z5=var1210, l8=var2926, i9=var385, $i4=var2973, $i5=var3696, $r25=var1867, $z4=var3656, $r27=var3246, $l6=var2994, $b7=var1776, $r28=var2328, com.mysql.cj.Messages=var1522, $r29=var1265, $r31=var2508, $r30=var2100, $r32=var1481, $r35=var2175, com.mysql.cj.NativeSession=var3265, com.mysql.cj.AbstractQuery=var1829, $r33=var905, com.mysql.cj.exceptions.ExceptionInterceptor=var887, com.mysql.cj.CoreSession=var2933, $r34=var230, com.mysql.cj.exceptions.CJException=var1152, com.mysql.cj.exceptions.ExceptionFactory=var3504, java.lang.Throwable=var2248, $r36=var2029}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.ServerPreparedQuery;	$r1 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.QueryBindings queryBindings>;	r2 = interfaceinvoke $r1.<com.mysql.cj.QueryBindings: com.mysql.cj.BindValue[] getBindValues()>();	$r3 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.QueryBindings queryBindings>;	$z0 = interfaceinvoke $r3.<com.mysql.cj.QueryBindings: boolean isLongParameterSwitchDetected()>();	if $z0 == 0 goto $r4 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.QueryBindings queryBindings>;	z5 = 0;	l8 = 0L;	i9 = 0;	$i4 = r0.<com.mysql.cj.ServerPreparedQuery: int parameterCount>;	$i5 = $i4 - 1;	if i9 >= $i5 goto virtualinvoke r0.<com.mysql.cj.ServerPreparedQuery: void serverResetStatement()>();	$r25 = r2[i9];	$z4 = interfaceinvoke $r25.<com.mysql.cj.BindValue: boolean isStream()>();	if $z4 == 0 goto i9 = i9 + 1;	if z5 == 0 goto z5 = 1;	$r27 = r2[i9];	$l6 = interfaceinvoke $r27.<com.mysql.cj.BindValue: long getBoundBeforeExecutionNum()>();	$b7 = l8 cmp $l6;	if $b7 == 0 goto z5 = 1;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ServerPreparedStatement.11");	$r31 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r30 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("ServerPreparedStatement.12");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	$r33 = r0.<com.mysql.cj.ServerPreparedQuery: com.mysql.cj.NativeSession session>;	$r34 = virtualinvoke $r33.<com.mysql.cj.NativeSession: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r36 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,java.lang.String,int,boolean,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r35, "S1C00", 0, 1, null, $r34);	throw $r36
;block_num 7