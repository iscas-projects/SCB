(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1272 0)
(declare-sort var3373 0)
(declare-sort var2031 0)
(declare-sort var2010 0)
(declare-sort var2728 0)
(declare-sort var2767 0)
(declare-sort var56 0)
(declare-sort var3837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaringClass/501867354 (var2031) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getName/1227988463 (var2031) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getModifiers/890868286 (var2031) Int)
(declare-fun var56_isAbstract/112669246 (Int) Bool)
(declare-fun makeDelegator/-1722193726 (var1272 var2031 String var2728 ClassObject String) var3837)
(declare-fun getAccessFlags/380368309 (var3837) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun setAccessFlags/-114621185 (var3837 Int) void)
(declare-fun addMethod/-1602371928 (var2010 var3837) void)
(declare-fun var1272_makeForwarder/-937793045 (String var2031 String var2728 ClassObject String Int var2767) var3837)
(declare-const null-var1272 var1272)
(declare-const null-String String)
(declare-const null-var2031 var2031)
(declare-const null-Int Int)
(declare-const null-var2010 var2010)
(declare-const null-var2728 var2728)
(declare-const null-var2767 var2767)
(declare-const var1552 var1272) ; Statement: r8 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1552 null-var1272)))
(declare-const var225 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var225 null-String)))
(declare-const var3715 var2031) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3715 null-var2031)))
(declare-const var3121 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3121 null-String)))
(declare-const var559 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var559 null-Int)))
(declare-const var1174 String) ; Statement: r9 := @parameter4: java.lang.String 
(assert (not (= var1174 null-String)))
(declare-const var2346 var2010) ; Statement: r11 := @parameter5: org.apache.ibatis.javassist.bytecode.ClassFile 
(assert (not (= var2346 null-var2010)))
(declare-const var3243 var2728) ; Statement: r10 := @parameter6: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var3243 null-var2728)))
(declare-const var2163 var2767) ; Statement: r13 := @parameter7: java.util.List 
(assert (not (= var2163 null-var2767)))
(assert true)
(define-const var2976 ClassObject (getDeclaringClass/501867354 var3715)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(define-const var2295 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2295)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2295!1 String)
(assert (= var2295!1 ""))
(assert true)
(define-const var2997 String (append/672562846 var2295!1 var3121)) ; Statement: $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2295!2 String)
(assert (= var2295!2 (str.++ var2295!1 var3121)))
(assert true)
(define-const var1076 String (append/-1001720160 var2997 var559)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2997!1 String)
(assert (str.prefixof var2997 var2997!1))
(assert true)
(define-const var754 String (getName/1227988463 var3715)) ; Statement: $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1079 String (append/672562846 var1076 var754)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1076!1 String)
(assert (= var1076!1 (str.++ var1076 var754)))
(assert true)
(define-const var99 String (toString/-2075883882 var1079)) ; Statement: r15 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2448 Int (getModifiers/890868286 var3715)) ; Statement: $i1 = virtualinvoke r0.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var3505 Bool (var56_isAbstract/112669246 var2448)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isAbstract(int)>($i1) 
 ; Statement: if $z0 == 0 goto r16 = specialinvoke r8.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeDelegator(java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String)>(r0, r9, r10, r1, r15) 
(assert (= (ite var3505 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var562 var3837 (makeDelegator/-1722193726 var1552 var3715 var1174 var3243 var2976 var99)) ; Statement: r16 = specialinvoke r8.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeDelegator(java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String)>(r0, r9, r10, r1, r15) 
(assert true)
(define-const var3711 Int (getAccessFlags/380368309 var562)) ; Statement: $i2 = virtualinvoke r16.<org.apache.ibatis.javassist.bytecode.MethodInfo: int getAccessFlags()>() 
(define-const var2897 Int (cast-from-Int-to-Int (- 65))) ; Statement: $i5 = (int) -65 
(define-const var1025 Int (bv2nat (bvand ((_ int2bv 64) var3711) ((_ int2bv 64) var2897)))) ; Statement: $i3 = $i2 & $i5 
(assert true)
;(assert (setAccessFlags/-114621185 var562 var1025)) ; Statement: virtualinvoke r16.<org.apache.ibatis.javassist.bytecode.MethodInfo: void setAccessFlags(int)>($i3) 

(declare-const var562!1 var3837)
(declare-const var1025!1 Int)
(assert true)
;(assert (addMethod/-1602371928 var2346 var562!1)) ; Statement: virtualinvoke r11.<org.apache.ibatis.javassist.bytecode.ClassFile: void addMethod(org.apache.ibatis.javassist.bytecode.MethodInfo)>(r16) 

(declare-const var2346!1 var2010)
(declare-const var562!2 var3837)
(assert true) ; Non Conditional
(define-const var2174 var3837 (var1272_makeForwarder/-937793045 var225 var3715 var1174 var3243 var2976 var99 var559 var2163)) ; Statement: $r14 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeForwarder(java.lang.String,java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String,int,java.util.List)>(r12, r0, r9, r10, r1, r15, i0, r13) 
(assert true)
;(assert (addMethod/-1602371928 var2346!1 var2174)) ; Statement: virtualinvoke r11.<org.apache.ibatis.javassist.bytecode.ClassFile: void addMethod(org.apache.ibatis.javassist.bytecode.MethodInfo)>($r14) 

(declare-const var2346!2 var2010)
(declare-const var2174!1 var3837)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getModifiers/890868286=([java.lang.reflect.Method], int), var56_isAbstract/112669246=([int], boolean), makeDelegator/-1722193726=([org.apache.ibatis.javassist.util.proxy.ProxyFactory, java.lang.reflect.Method, java.lang.String, org.apache.ibatis.javassist.bytecode.ConstPool, java.lang.Class, java.lang.String], org.apache.ibatis.javassist.bytecode.MethodInfo), getAccessFlags/380368309=([org.apache.ibatis.javassist.bytecode.MethodInfo], int), cast-from-Int-to-Int=([int], int), setAccessFlags/-114621185=([org.apache.ibatis.javassist.bytecode.MethodInfo, int], void), addMethod/-1602371928=([org.apache.ibatis.javassist.bytecode.ClassFile, org.apache.ibatis.javassist.bytecode.MethodInfo], void), var1272_makeForwarder/-937793045=([java.lang.String, java.lang.reflect.Method, java.lang.String, org.apache.ibatis.javassist.bytecode.ConstPool, java.lang.Class, java.lang.String, int, java.util.List], org.apache.ibatis.javassist.bytecode.MethodInfo)}
; {var1272=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1552=r8, var225=r12, var3373=null_type, var2031=java.lang.reflect.Method, var3715=r0, var3121=r3, var559=i0, var1174=r9, var2010=org.apache.ibatis.javassist.bytecode.ClassFile, var2346=r11, var2728=org.apache.ibatis.javassist.bytecode.ConstPool, var3243=r10, var2767=java.util.List, var2163=r13, var2976=r1, var2295=$r17, var2997=$r4, var1076=$r6, var754=$r5, var1079=$r7, var99=r15, var2448=$i1, var56=java.lang.reflect.Modifier, var3505=$z0, var3837=org.apache.ibatis.javassist.bytecode.MethodInfo, var562=r16, var3711=$i2, var2897=$i5, var1025=$i3, var2174=$r14}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1272, r8=var1552, r12=var225, null_type=var3373, java.lang.reflect.Method=var2031, r0=var3715, r3=var3121, i0=var559, r9=var1174, org.apache.ibatis.javassist.bytecode.ClassFile=var2010, r11=var2346, org.apache.ibatis.javassist.bytecode.ConstPool=var2728, r10=var3243, java.util.List=var2767, r13=var2163, r1=var2976, $r17=var2295, $r4=var2997, $r6=var1076, $r5=var754, $r7=var1079, r15=var99, $i1=var2448, java.lang.reflect.Modifier=var56, $z0=var3505, org.apache.ibatis.javassist.bytecode.MethodInfo=var3837, r16=var562, $i2=var3711, $i5=var2897, $i3=var1025, $r14=var2174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r12 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.reflect.Method;	r3 := @parameter2: java.lang.String;	i0 := @parameter3: int;	r9 := @parameter4: java.lang.String;	r11 := @parameter5: org.apache.ibatis.javassist.bytecode.ClassFile;	r10 := @parameter6: org.apache.ibatis.javassist.bytecode.ConstPool;	r13 := @parameter7: java.util.List;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	r15 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$i1 = virtualinvoke r0.<java.lang.reflect.Method: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isAbstract(int)>($i1);	if $z0 == 0 goto r16 = specialinvoke r8.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeDelegator(java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String)>(r0, r9, r10, r1, r15);	r16 = specialinvoke r8.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeDelegator(java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String)>(r0, r9, r10, r1, r15);	$i2 = virtualinvoke r16.<org.apache.ibatis.javassist.bytecode.MethodInfo: int getAccessFlags()>();	$i5 = (int) -65;	$i3 = $i2 & $i5;	virtualinvoke r16.<org.apache.ibatis.javassist.bytecode.MethodInfo: void setAccessFlags(int)>($i3);	virtualinvoke r11.<org.apache.ibatis.javassist.bytecode.ClassFile: void addMethod(org.apache.ibatis.javassist.bytecode.MethodInfo)>(r16);	$r14 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: org.apache.ibatis.javassist.bytecode.MethodInfo makeForwarder(java.lang.String,java.lang.reflect.Method,java.lang.String,org.apache.ibatis.javassist.bytecode.ConstPool,java.lang.Class,java.lang.String,int,java.util.List)>(r12, r0, r9, r10, r1, r15, i0, r13);	virtualinvoke r11.<org.apache.ibatis.javassist.bytecode.ClassFile: void addMethod(org.apache.ibatis.javassist.bytecode.MethodInfo)>($r14);	return
;block_num 3