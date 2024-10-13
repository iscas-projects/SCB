(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2321 0)
(declare-sort var130 0)
(declare-sort var2014 0)
(declare-sort var2751 0)
(declare-sort var3359 0)
(declare-sort var193 0)
(declare-sort var1247 0)
(declare-sort var3602 0)
(declare-sort var290 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3359!class ClassObject)
(declare-fun var2014-init () var2014)
(declare-fun <init>/763893513 (var2014) void)
(declare-fun setSuperclass/1176651182 (var2014 ClassObject) void)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun setInterfaces/-743984819 (var2014 (Array Int ClassObject)) void)
(declare-fun var130_size/-959786421 (var130) Int)
(declare-fun var130_toArray/-775711681 (var130 (Array Int var193)) (Array Int var193))
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var193__ ((Array Int ClassObject)) (Array Int var193))
(declare-fun cast-from-__Array__Int__var193__-to-__Array__Int__ClassObject__ ((Array Int var193)) (Array Int ClassObject))
(declare-fun arr-var193-init () (Array Int var193))
(declare-fun var3602-init () var3602)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var193) String)
(declare-fun cast-from-var1247-to-var193 (var1247) var193)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var3602 String var290) void)
(declare-fun cast-from-var1247-to-var290 (var1247) var290)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2321 var2321)
(declare-const null-var130 var130)
(declare-const null-var2751 var2751)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1247 var1247)
(declare-const var3875 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3875 null-ClassObject)))
(declare-const var1373 var2321) ; Statement: r6 := @parameter1: org.apache.ibatis.javassist.util.proxy.MethodHandler 
(assert (not (= var1373 null-var2321)))
(declare-const var40 var130) ; Statement: r4 := @parameter2: java.util.List 
(assert (not (= var40 null-var130)))
(declare-const var2592 var130) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2592 null-var130)))
(define-const var1731 var2014 var2014-init) ; Statement: $r0 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert true)
;(assert (<init>/763893513 var1731)) ; Statement: specialinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void <init>()>() 

(declare-const var1731!1 var2014)
(assert true)
;(assert (setSuperclass/1176651182 var1731!1 var3875)) ; Statement: virtualinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void setSuperclass(java.lang.Class)>(r1) 

(declare-const var1731!2 var2014)
(declare-const var3875!1 ClassObject)
(define-const var3230 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r2 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var788 var2751) ; Statement: $r21 := @caughtexception 
(assert (not (= var788 null-var2751)))
(define-const var251 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r22 = newarray (java.lang.Class)[1] 
(declare-const var251!1 (Array Int ClassObject))
(assert (not (= var251!1 null-__Array__Int__ClassObject__)))
(assert (= (select var251!1 0) var3359!class)) ; Statement: $r22[0] = class "Lorg/apache/ibatis/executor/loader/WriteReplaceInterface;" 
(assert true)
;(assert (setInterfaces/-743984819 var1731!2 var251!1)) ; Statement: virtualinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void setInterfaces(java.lang.Class[])>($r22) 

(declare-const var1731!3 var2014)
(declare-const var251!2 (Array Int ClassObject))
 ; Statement: goto [?= $i0 = interfaceinvoke r4.<java.util.List: int size()>()] 
(assert true) ; Non Conditional
(define-const var1814 Int (var130_size/-959786421 var40)) ; Statement: $i0 = interfaceinvoke r4.<java.util.List: int size()>() 
(define-const var2045 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r23 = newarray (java.lang.Class)[$i0] 
(define-const var1584 (Array Int var193) (var130_toArray/-775711681 var40 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var193__ var2045))) ; Statement: $r24 = interfaceinvoke r4.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r23) 
(define-const var586 (Array Int ClassObject) (cast-from-__Array__Int__var193__-to-__Array__Int__ClassObject__ var1584)) ; Statement: $r25 = (java.lang.Class[]) $r24 
(define-const var2356 Int (var130_size/-959786421 var2592)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(define-const var165 (Array Int var193) arr-var193-init) ; Statement: $r26 = newarray (java.lang.Object)[$i1] 
(define-const var938 (Array Int var193) (var130_toArray/-775711681 var2592 var165)) ; Statement: $r27 = interfaceinvoke r5.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r26) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2957 var1247) ; Statement: $r14 := @caughtexception 
(assert (not (= var2957 null-var1247)))
(define-const var3455 var3602 var3602-init) ; Statement: $r15 = new org.apache.ibatis.executor.ExecutorException 
(define-const var2598 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2598)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2598!1 String)
(assert (= var2598!1 ""))
(assert true)
(define-const var3071 String (append/672562846 var2598!1 "Error creating lazy proxy.  Cause: ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating lazy proxy.  Cause: ") 
(declare-const var2598!2 String)
(assert (= var2598!2 (str.++ var2598!1 "Error creating lazy proxy.  Cause: ")))
(assert true)
(define-const var3664 String (append/-1031950772 var3071 (cast-from-var1247-to-var193 var2957))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var3071!1 String)
(assert (str.prefixof var3071 var3071!1))
(assert true)
(define-const var3858 String (toString/-2075883882 var3664)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var3455 var3858 (cast-from-var1247-to-var290 var2957))) ; Statement: specialinvoke $r15.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14) 

(declare-const var3455!1 var3602)
(declare-const var3858!1 String)
(declare-const var2957!1 var1247)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2014-init=([], org.apache.ibatis.javassist.util.proxy.ProxyFactory), <init>/763893513=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], void), setSuperclass/1176651182=([org.apache.ibatis.javassist.util.proxy.ProxyFactory, java.lang.Class], void), arr-ClassObject-init=([], java.lang.Class[]), setInterfaces/-743984819=([org.apache.ibatis.javassist.util.proxy.ProxyFactory, java.lang.Class[]], void), var130_size/-959786421=([java.util.List], int), var130_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var193__=([java.lang.Class[]], java.lang.Object[]), cast-from-__Array__Int__var193__-to-__Array__Int__ClassObject__=([java.lang.Object[]], java.lang.Class[]), arr-var193-init=([], java.lang.Object[]), var3602-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1247-to-var193=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var1247-to-var290=([java.lang.Exception], java.lang.Throwable)}
; {var3875=r1, var2321=org.apache.ibatis.javassist.util.proxy.MethodHandler, var1373=r6, var130=java.util.List, var40=r4, var2592=r5, var2014=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1731=$r0, var3230=$r2, var2751=java.lang.NoSuchMethodException, var788=$r21, var251=$r22, var3359=org.apache.ibatis.executor.loader.WriteReplaceInterface, var1814=$i0, var2045=$r23, var193=java.lang.Object, var1584=$r24, var586=$r25, var2356=$i1, var165=$r26, var938=$r27, var1247=java.lang.Exception, var2957=$r14, var3602=org.apache.ibatis.executor.ExecutorException, var3455=$r15, var2598=$r16, var3071=$r17, var3664=$r18, var3858=$r19, var290=java.lang.Throwable}
; {r1=var3875, org.apache.ibatis.javassist.util.proxy.MethodHandler=var2321, r6=var1373, java.util.List=var130, r4=var40, r5=var2592, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2014, $r0=var1731, $r2=var3230, java.lang.NoSuchMethodException=var2751, $r21=var788, $r22=var251, org.apache.ibatis.executor.loader.WriteReplaceInterface=var3359, $i0=var1814, $r23=var2045, java.lang.Object=var193, $r24=var1584, $r25=var586, $i1=var2356, $r26=var165, $r27=var938, java.lang.Exception=var1247, $r14=var2957, org.apache.ibatis.executor.ExecutorException=var3602, $r15=var3455, $r16=var2598, $r17=var3071, $r18=var3664, $r19=var3858, java.lang.Throwable=var290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class;	r6 := @parameter1: org.apache.ibatis.javassist.util.proxy.MethodHandler;	r4 := @parameter2: java.util.List;	r5 := @parameter3: java.util.List;	$r0 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory;	specialinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void <init>()>();	virtualinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void setSuperclass(java.lang.Class)>(r1);	$r2 = newarray (java.lang.Class)[0];	$r21 := @caughtexception;	$r22 = newarray (java.lang.Class)[1];	$r22[0] = class "Lorg/apache/ibatis/executor/loader/WriteReplaceInterface;";	virtualinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void setInterfaces(java.lang.Class[])>($r22);	goto [?= $i0 = interfaceinvoke r4.<java.util.List: int size()>()];	$i0 = interfaceinvoke r4.<java.util.List: int size()>();	$r23 = newarray (java.lang.Class)[$i0];	$r24 = interfaceinvoke r4.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r23);	$r25 = (java.lang.Class[]) $r24;	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r26 = newarray (java.lang.Object)[$i1];	$r27 = interfaceinvoke r5.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r26);	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.executor.ExecutorException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating lazy proxy.  Cause: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14);	throw $r15
;block_num 4