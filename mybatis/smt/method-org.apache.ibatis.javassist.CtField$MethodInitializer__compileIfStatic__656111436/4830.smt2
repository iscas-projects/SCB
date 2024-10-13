(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1929 0)
(declare-sort var1358 0)
(declare-sort var3063 0)
(declare-sort var2799 0)
(declare-sort var2145 0)
(declare-sort var694 0)
(declare-sort var17 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stringParams/-1848390363 (var694) (Array Int String))
(declare-fun cast-from-var1929-to-var694 (var1929) var694)
(declare-fun compileStringParameter/1786392176 (var694 var2799) Int)
(declare-fun var17_of/1621849684 (var1358) String)
(declare-fun objectType/-1848390363 (var694) var1358)
(declare-fun methodName/1411467358 (var1929) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addInvokestatic/-1405979401 (var2799 var1358 String String) void)
(declare-fun addPutstatic/1611012580 (var2799 var1358 String String) void)
(declare-const null-var1929 var1929)
(declare-const null-var1358 var1358)
(declare-const null-String String)
(declare-const null-var2799 var2799)
(declare-const null-var2145 var2145)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2799-THIS var1358)
(declare-const var902 var1929) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer 
(assert (not (= var902 null-var1929)))
(declare-const var3338 var1358) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3338 null-var1358)))
(declare-const var2929 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var2929 null-String)))
(declare-const var1057 var2799) ; Statement: r2 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode 
(assert (not (= var1057 null-var2799)))
(declare-const var333 var2145) ; Statement: r13 := @parameter3: org.apache.ibatis.javassist.compiler.Javac 
(assert (not (= var333 null-var2145)))
(define-const var2713 Int 1) ; Statement: i1 = 1 
(define-const var2013 (Array Int String) (stringParams/-1848390363 (cast-from-var1929-to-var694 var902))) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams> 
 ; Statement: if $r1 != null goto r14 = "([Ljava/lang/String;)" 
(assert (not (= var2013 null-__Array__Int__String__))) ; Cond: $r1 != null 
(define-const var889 String "([Ljava/lang/String;)") ; Statement: r14 = "([Ljava/lang/String;)" 
(assert true)
(define-const var3438 Int (compileStringParameter/1786392176 (cast-from-var1929-to-var694 var902) var1057)) ; Statement: $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r2) 
(define-const var2713!1 Int (+ 1 var3438)) ; Statement: i1 = 1 + $i0 
(assert true) ; Non Conditional
(define-const var2591 String (var17_of/1621849684 var3338)) ; Statement: $r12 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3) 
(define-const var3329 var1358 (objectType/-1848390363 (cast-from-var1929-to-var694 var902))) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType> 
(define-const var2254 String (methodName/1411467358 var902)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName> 
(define-const var639 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var639)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var639!1 String)
(assert (= var639!1 ""))
(assert true)
(define-const var2500 String (append/672562846 var639!1 var889)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var639!2 String)
(assert (= var639!2 (str.++ var639!1 var889)))
(assert true)
(define-const var2749 String (append/672562846 var2500 var2591)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2500!1 String)
(assert (= var2500!1 (str.++ var2500 var2591)))
(assert true)
(define-const var547 String (toString/-2075883882 var2749)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addInvokestatic/-1405979401 var1057 var3329 var2254 var547)) ; Statement: virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r5, $r6, $r9) 

(declare-const var1057!1 var2799)
(declare-const var3329!1 var1358)
(declare-const var2254!1 String)
(declare-const var547!1 String)
(define-const var897 var1358 var2799-THIS) ; Statement: $r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS> 
(assert true)
;(assert (addPutstatic/1611012580 var1057!1 var897 var2929 var2591)) ; Statement: virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutstatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r12) 

(declare-const var1057!2 var2799)
(declare-const var897!1 var1358)
(declare-const var2929!1 String)
(declare-const var2591!1 String)
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {stringParams/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], java.lang.String[]), cast-from-var1929-to-var694=([org.apache.ibatis.javassist.CtField$MethodInitializer], org.apache.ibatis.javassist.CtField$NewInitializer), compileStringParameter/1786392176=([org.apache.ibatis.javassist.CtField$NewInitializer, org.apache.ibatis.javassist.bytecode.Bytecode], int), var17_of/1621849684=([org.apache.ibatis.javassist.CtClass], java.lang.String), objectType/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], org.apache.ibatis.javassist.CtClass), methodName/1411467358=([org.apache.ibatis.javassist.CtField$MethodInitializer], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addInvokestatic/-1405979401=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void), addPutstatic/1611012580=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void)}
; {var1929=org.apache.ibatis.javassist.CtField$MethodInitializer, var902=r0, var1358=org.apache.ibatis.javassist.CtClass, var3338=r3, var2929=r10, var3063=null_type, var2799=org.apache.ibatis.javassist.bytecode.Bytecode, var1057=r2, var2145=org.apache.ibatis.javassist.compiler.Javac, var333=r13, var2713=i1, var694=org.apache.ibatis.javassist.CtField$NewInitializer, var2013=$r1, var889=r14, var3438=$i0, var17=org.apache.ibatis.javassist.bytecode.Descriptor, var2591=$r12, var3329=$r5, var2254=$r6, var639=$r4, var2500=$r7, var2749=$r8, var547=$r9, var897=$r11}
; {org.apache.ibatis.javassist.CtField$MethodInitializer=var1929, r0=var902, org.apache.ibatis.javassist.CtClass=var1358, r3=var3338, r10=var2929, null_type=var3063, org.apache.ibatis.javassist.bytecode.Bytecode=var2799, r2=var1057, org.apache.ibatis.javassist.compiler.Javac=var2145, r13=var333, i1=var2713, org.apache.ibatis.javassist.CtField$NewInitializer=var694, $r1=var2013, r14=var889, $i0=var3438, org.apache.ibatis.javassist.bytecode.Descriptor=var17, $r12=var2591, $r5=var3329, $r6=var2254, $r4=var639, $r7=var2500, $r8=var2749, $r9=var547, $r11=var897}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer;	r3 := @parameter0: org.apache.ibatis.javassist.CtClass;	r10 := @parameter1: java.lang.String;	r2 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode;	r13 := @parameter3: org.apache.ibatis.javassist.compiler.Javac;	i1 = 1;	$r1 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams>;	if $r1 != null goto r14 = "([Ljava/lang/String;)";	r14 = "([Ljava/lang/String;)";	$i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r2);	i1 = 1 + $i0;	$r12 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3);	$r5 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType>;	$r6 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r5, $r6, $r9);	$r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS>;	virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutstatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r12);	return i1
;block_num 3