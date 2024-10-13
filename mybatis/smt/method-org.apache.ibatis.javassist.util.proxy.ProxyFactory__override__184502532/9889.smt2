(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1323 0)
(declare-sort var2473 0)
(declare-sort var55 0)
(declare-sort var2562 0)
(declare-sort var1658 0)
(declare-sort var11 0)
(declare-sort var3001 0)
(declare-sort var3464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaringClass/501867354 (var55) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getName/1227988463 (var55) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getModifiers/890868286 (var55) Int)
(declare-fun var3001_isAbstract/112669246 (Int) Bool)
(declare-fun var1323_makeForwarder/-937793045 (String var55 String var1658 ClassObject String Int var11) var3464)
(declare-fun addMethod/-1602371928 (var2562 var3464) void)
(declare-const null-var1323 var1323)
(declare-const null-String String)
(declare-const null-var55 var55)
(declare-const null-Int Int)
(declare-const null-var2562 var2562)
(declare-const null-var1658 var1658)
(declare-const null-var11 var11)
(declare-const var2078 var1323) ; Statement: r8 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var2078 null-var1323)))
(declare-const var139 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var139 null-String)))
(declare-const var345 var55) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var345 null-var55)))
(declare-const var2461 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2461 null-String)))
(declare-const var527 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var527 null-Int)))
(declare-const var756 String) ; Statement: r9 := @parameter4: java.lang.String 
(assert (not (= var756 null-String)))
(declare-const var2648 var2562) ; Statement: r11 := @parameter5: org.apache.ibatis.javassist.bytecode.ClassFile 
(assert (not (= var2648 null-var2562)))
(declare-const var2161 var1658) ; Statement: r10 := @parameter6: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2161 null-var1658)))
(declare-const var172 var11) ; Statement: r13 := @parameter7: java.util.List 
(assert (not (= var172 null-var11)))
(assert true)
(define-const var3357 ClassObject (getDeclaringClass/501867354 var345)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(define-const var2915 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2915)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2915!1 String)
(assert (= var2915!1 ""))
(assert true)
(define-const var1003 String (append/672562846 var2915!1 var2461)) ; Statement: $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2915!2 String)
(assert (= var2915!2 (str.++ var2915!1 var2461)))
(assert true)
(define-const var1056 String (append/-1001720160 var1003 var527)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1003!1 String)
(assert (str.prefixof var1003 var1003!1))
(assert true)
(define-const var1853 String (getName/1227988463 var345)) ; Statement: $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1412 String (append/672562846 var1056 var1853)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1056!1 String)
(assert (= var1056!1 (str.++ var1056 var1853)))
(assert true)
(define-const var3012 String (toString/-2075883882 var1412)) ; Statement: r15 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3523 Int (getModifiers/890868286 var345)) ; Statement: $i1 = virtualinvoke r0.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var3184 Bool (var3001_isAbstract/112669246 var3523)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isAbstract(int)>($i1) 
 ; Statement: if $z0 == 0 goto r16 = specialinvoke r8.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeDelegator(java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String)>(r0, r9, r10, r1, r15) 
(assert (not (= (ite var3184 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3012!1 String null-String) ; Statement: r15 = null 
 ; Statement: goto [?= $r14 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeForwarder(java.lang.String,java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String,int,java.util.List)>(r12, r0, r9, r10, r1, r15, i0, r13)] 
(assert true) ; Non Conditional
(define-const var1904 var3464 (var1323_makeForwarder/-937793045 var139 var345 var756 var2161 var3357 var3012!1 var527 var172)) ; Statement: $r14 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeForwarder(java.lang.String,java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String,int,java.util.List)>(r12, r0, r9, r10, r1, r15, i0, r13) 
(assert true)
;(assert (addMethod/-1602371928 var2648 var1904)) ; Statement: virtualinvoke r11.<org.apache.ibatis.javassist.bytecode.ClassFile: void addMethod(org.apache.ibatis.javassist.bytecode.MethodInfo)>($r14) 

(declare-const var2648!1 var2562)
(declare-const var1904!1 var3464)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getModifiers/890868286=([java.lang.reflect.Method], int), var3001_isAbstract/112669246=([int], boolean), var1323_makeForwarder/-937793045=([java.lang.String, java.lang.reflect.Method, java.lang.String, org.apache.ibatis.javassist.bytecode.ConstPool, java.lang.Class, java.lang.String, int, java.util.List], org.apache.ibatis.javassist.bytecode.MethodInfo), addMethod/-1602371928=([org.apache.ibatis.javassist.bytecode.ClassFile, org.apache.ibatis.javassist.bytecode.MethodInfo], void)}
; {var1323=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2078=r8, var139=r12, var2473=null_type, var55=java.lang.reflect.Method, var345=r0, var2461=r3, var527=i0, var756=r9, var2562=org.apache.ibatis.javassist.bytecode.ClassFile, var2648=r11, var1658=org.apache.ibatis.javassist.bytecode.ConstPool, var2161=r10, var11=java.util.List, var172=r13, var3357=r1, var2915=$r17, var1003=$r4, var1056=$r6, var1853=$r5, var1412=$r7, var3012=r15, var3523=$i1, var3001=java.lang.reflect.Modifier, var3184=$z0, var3464=org.apache.ibatis.javassist.bytecode.MethodInfo, var1904=$r14}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1323, r8=var2078, r12=var139, null_type=var2473, java.lang.reflect.Method=var55, r0=var345, r3=var2461, i0=var527, r9=var756, org.apache.ibatis.javassist.bytecode.ClassFile=var2562, r11=var2648, org.apache.ibatis.javassist.bytecode.ConstPool=var1658, r10=var2161, java.util.List=var11, r13=var172, r1=var3357, $r17=var2915, $r4=var1003, $r6=var1056, $r5=var1853, $r7=var1412, r15=var3012, $i1=var3523, java.lang.reflect.Modifier=var3001, $z0=var3184, org.apache.ibatis.javassist.bytecode.MethodInfo=var3464, $r14=var1904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r12 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.reflect.Method;	r3 := @parameter2: java.lang.String;	i0 := @parameter3: int;	r9 := @parameter4: java.lang.String;	r11 := @parameter5: org.apache.ibatis.javassist.bytecode.ClassFile;	r10 := @parameter6: org.apache.ibatis.javassist.bytecode.ConstPool;	r13 := @parameter7: java.util.List;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	r15 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$i1 = virtualinvoke r0.<java.lang.reflect.Method: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isAbstract(int)>($i1);	if $z0 == 0 goto r16 = specialinvoke r8.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeDelegator(java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String)>(r0, r9, r10, r1, r15);	r15 = null;	goto [?= $r14 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeForwarder(java.lang.String,java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String,int,java.util.List)>(r12, r0, r9, r10, r1, r15, i0, r13)];	$r14 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeForwarder(java.lang.String,java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String,int,java.util.List)>(r12, r0, r9, r10, r1, r15, i0, r13);	virtualinvoke r11.<org.apache.ibatis.javassist.bytecode.ClassFile: void addMethod(org.apache.ibatis.javassist.bytecode.MethodInfo)>($r14);	return
;block_num 3