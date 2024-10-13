(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3 0)
(declare-sort var2903 0)
(declare-sort var1169 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1169) String)
(declare-fun getParameterCount/184216570 (var1169) Int)
(declare-fun getReturnType/-1494237887 (var1169) ClassObject)
(declare-fun var755-init () var755)
(declare-fun toGenericString/-1933469597 (var1169) String)
(declare-fun <init>/-630064361 (var755 String) void)
(declare-const null-var3 var3)
(declare-const null-var2903 var2903)
(declare-const null-var1169 var1169)
(declare-const null-__Array__Int__var2903__ (Array Int var2903))
(declare-const var2382 var3) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2382 null-var3)))
(declare-const var2865 var2903) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var2865 null-var2903)))
(declare-const var2910 var1169) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2910 null-var1169)))
(declare-const var3737 (Array Int var2903)) ; Statement: r50 := @parameter2: java.lang.Object[] 
(assert (not (= var3737 null-__Array__Int__var2903__)))
(assert true)
(define-const var3513 String (getName/1227988463 var2910)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1098 Int (getParameterCount/184216570 var2910)) ; Statement: i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
(assert true)
(define-const var1705 ClassObject (getReturnType/-1494237887 var2910)) ; Statement: r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
 ; Statement: if i0 != 1 goto (branch) 
(assert (not (= var1098 1))) ; Cond: i0 != 1 
 ; Statement: if i0 != 0 goto $r114 = new java.lang.UnsupportedOperationException 
(assert (not (= var1098 0))) ; Cond: i0 != 0 
(define-const var826 var755 var755-init) ; Statement: $r114 = new java.lang.UnsupportedOperationException 
(assert true)
(define-const var1102 String (toGenericString/-1933469597 var2910)) ; Statement: $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toGenericString()>() 
(assert true)
;(assert (<init>/-630064361 var826 var1102)) ; Statement: specialinvoke $r114.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4) 

(declare-const var826!1 var755)
(declare-const var1102!1 String)
 ; Statement: throw $r114 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterCount/184216570=([java.lang.reflect.Method], int), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), var755-init=([], java.lang.UnsupportedOperationException), toGenericString/-1933469597=([java.lang.reflect.Method], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3=com.alibaba.fastjson2.JSONObject, var2382=r6, var2903=java.lang.Object, var2865=r16, var1169=java.lang.reflect.Method, var2910=r0, var3737=r50, var3513=r1, var1098=i0, var1705=r2, var755=java.lang.UnsupportedOperationException, var826=$r114, var1102=$r4}
; {com.alibaba.fastjson2.JSONObject=var3, r6=var2382, java.lang.Object=var2903, r16=var2865, java.lang.reflect.Method=var1169, r0=var2910, r50=var3737, r1=var3513, i0=var1098, r2=var1705, java.lang.UnsupportedOperationException=var755, $r114=var826, $r4=var1102}
;seq 
;cnt {}
;stmts r6 := @this: com.alibaba.fastjson2.JSONObject;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r50 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	if i0 != 1 goto (branch);	if i0 != 0 goto $r114 = new java.lang.UnsupportedOperationException;	$r114 = new java.lang.UnsupportedOperationException;	$r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String toGenericString()>();	specialinvoke $r114.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r4);	throw $r114
;block_num 3