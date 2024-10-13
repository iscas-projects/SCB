(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3499 0)
(declare-sort var2301 0)
(declare-sort var1244 0)
(declare-sort var984 0)
(declare-sort var3218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var2301) ClassObject)
(declare-fun var3218_getMethodAccessor/-548441473 (ClassObject) var984)
(declare-fun var984_callMethod/-1509836099 (var984 var3499 var2301 String (Array Int var2301)) var2301)
(declare-const null-var3499 var3499)
(declare-const null-var2301 var2301)
(declare-const null-String String)
(declare-const null-__Array__Int__var2301__ (Array Int var2301))
(declare-const var1700 var3499) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1700 null-var3499)))
(declare-const var2733 var2301) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2733 null-var2301)))
(declare-const var2690 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2690 null-String)))
(declare-const var2687 (Array Int var2301)) ; Statement: r4 := @parameter3: java.lang.Object[] 
(assert (not (= var2687 null-__Array__Int__var2301__)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var2733 null-var2301))) ; Cond: r0 != null 
(assert true)
(define-const var544 ClassObject (getClass/1258963082 var2733)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1747 var984 (var3218_getMethodAccessor/-548441473 var544)) ; Statement: $r5 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: org.apache.ibatis.ognl.MethodAccessor getMethodAccessor(java.lang.Class)>($r1) 
(define-const var957 var2301 (var984_callMethod/-1509836099 var1747 var1700 var2733 var2690 var2687)) ; Statement: $r6 = interfaceinvoke $r5.<org.apache.ibatis.ognl.MethodAccessor: java.lang.Object callMethod(org.apache.ibatis.ognl.OgnlContext,java.lang.Object,java.lang.String,java.lang.Object[])>(r2, r0, r3, r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), var3218_getMethodAccessor/-548441473=([java.lang.Class], org.apache.ibatis.ognl.MethodAccessor), var984_callMethod/-1509836099=([org.apache.ibatis.ognl.MethodAccessor, org.apache.ibatis.ognl.OgnlContext, java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object)}
; {var3499=org.apache.ibatis.ognl.OgnlContext, var1700=r2, var2301=java.lang.Object, var2733=r0, var2690=r3, var1244=null_type, var2687=r4, var544=$r1, var984=org.apache.ibatis.ognl.MethodAccessor, var3218=org.apache.ibatis.ognl.OgnlRuntime, var1747=$r5, var957=$r6}
; {org.apache.ibatis.ognl.OgnlContext=var3499, r2=var1700, java.lang.Object=var2301, r0=var2733, r3=var2690, null_type=var1244, r4=var2687, $r1=var544, org.apache.ibatis.ognl.MethodAccessor=var984, org.apache.ibatis.ognl.OgnlRuntime=var3218, $r5=var1747, $r6=var957}
;seq 
;cnt {}
;stmts r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r0 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.Object[];	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = staticinvoke <org.apache.ibatis.ognl.OgnlRuntime: org.apache.ibatis.ognl.MethodAccessor getMethodAccessor(java.lang.Class)>($r1);	$r6 = interfaceinvoke $r5.<org.apache.ibatis.ognl.MethodAccessor: java.lang.Object callMethod(org.apache.ibatis.ognl.OgnlContext,java.lang.Object,java.lang.String,java.lang.Object[])>(r2, r0, r3, r4);	return $r6
;block_num 2