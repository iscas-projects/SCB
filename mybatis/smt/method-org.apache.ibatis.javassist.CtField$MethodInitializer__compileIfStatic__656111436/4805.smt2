(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var164 0)
(declare-sort var2837 0)
(declare-sort var939 0)
(declare-sort var2324 0)
(declare-sort var3944 0)
(declare-sort var1642 0)
(declare-sort var2508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stringParams/-1848390363 (var1642) (Array Int String))
(declare-fun cast-from-var164-to-var1642 (var164) var1642)
(declare-fun var2508_of/1621849684 (var2837) String)
(declare-fun objectType/-1848390363 (var1642) var2837)
(declare-fun methodName/1411467358 (var164) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addInvokestatic/-1405979401 (var2324 var2837 String String) void)
(declare-fun addPutstatic/1611012580 (var2324 var2837 String String) void)
(declare-const null-var164 var164)
(declare-const null-var2837 var2837)
(declare-const null-String String)
(declare-const null-var2324 var2324)
(declare-const null-var3944 var3944)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2324-THIS var2837)
(declare-const var1155 var164) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer 
(assert (not (= var1155 null-var164)))
(declare-const var2293 var2837) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2293 null-var2837)))
(declare-const var1156 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var1156 null-String)))
(declare-const var1044 var2324) ; Statement: r2 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode 
(assert (not (= var1044 null-var2324)))
(declare-const var3499 var3944) ; Statement: r13 := @parameter3: org.apache.ibatis.javassist.compiler.Javac 
(assert (not (= var3499 null-var3944)))
(define-const var2916 Int 1) ; Statement: i1 = 1 
(define-const var1457 (Array Int String) (stringParams/-1848390363 (cast-from-var164-to-var1642 var1155))) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams> 
 ; Statement: if $r1 != null goto r14 = "([Ljava/lang/String;)" 
(assert (not (not (= var1457 null-__Array__Int__String__)))) ; Negate: Cond: $r1 != null  
(define-const var2413 String "()") ; Statement: r14 = "()" 
 ; Statement: goto [?= $r12 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3)] 
(assert true) ; Non Conditional
(define-const var3350 String (var2508_of/1621849684 var2293)) ; Statement: $r12 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3) 
(define-const var3792 var2837 (objectType/-1848390363 (cast-from-var164-to-var1642 var1155))) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType> 
(define-const var253 String (methodName/1411467358 var1155)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName> 
(define-const var1922 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1922)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1922!1 String)
(assert (= var1922!1 ""))
(assert true)
(define-const var855 String (append/672562846 var1922!1 var2413)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1922!2 String)
(assert (= var1922!2 (str.++ var1922!1 var2413)))
(assert true)
(define-const var649 String (append/672562846 var855 var3350)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var855!1 String)
(assert (= var855!1 (str.++ var855 var3350)))
(assert true)
(define-const var2292 String (toString/-2075883882 var649)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addInvokestatic/-1405979401 var1044 var3792 var253 var2292)) ; Statement: virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r5, $r6, $r9) 

(declare-const var1044!1 var2324)
(declare-const var3792!1 var2837)
(declare-const var253!1 String)
(declare-const var2292!1 String)
(define-const var3978 var2837 var2324-THIS) ; Statement: $r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS> 
(assert true)
;(assert (addPutstatic/1611012580 var1044!1 var3978 var1156 var3350)) ; Statement: virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutstatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r12) 

(declare-const var1044!2 var2324)
(declare-const var3978!1 var2837)
(declare-const var1156!1 String)
(declare-const var3350!1 String)
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {stringParams/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], java.lang.String[]), cast-from-var164-to-var1642=([org.apache.ibatis.javassist.CtField$MethodInitializer], org.apache.ibatis.javassist.CtField$NewInitializer), var2508_of/1621849684=([org.apache.ibatis.javassist.CtClass], java.lang.String), objectType/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], org.apache.ibatis.javassist.CtClass), methodName/1411467358=([org.apache.ibatis.javassist.CtField$MethodInitializer], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addInvokestatic/-1405979401=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void), addPutstatic/1611012580=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void)}
; {var164=org.apache.ibatis.javassist.CtField$MethodInitializer, var1155=r0, var2837=org.apache.ibatis.javassist.CtClass, var2293=r3, var1156=r10, var939=null_type, var2324=org.apache.ibatis.javassist.bytecode.Bytecode, var1044=r2, var3944=org.apache.ibatis.javassist.compiler.Javac, var3499=r13, var2916=i1, var1642=org.apache.ibatis.javassist.CtField$NewInitializer, var1457=$r1, var2413=r14, var2508=org.apache.ibatis.javassist.bytecode.Descriptor, var3350=$r12, var3792=$r5, var253=$r6, var1922=$r4, var855=$r7, var649=$r8, var2292=$r9, var3978=$r11}
; {org.apache.ibatis.javassist.CtField$MethodInitializer=var164, r0=var1155, org.apache.ibatis.javassist.CtClass=var2837, r3=var2293, r10=var1156, null_type=var939, org.apache.ibatis.javassist.bytecode.Bytecode=var2324, r2=var1044, org.apache.ibatis.javassist.compiler.Javac=var3944, r13=var3499, i1=var2916, org.apache.ibatis.javassist.CtField$NewInitializer=var1642, $r1=var1457, r14=var2413, org.apache.ibatis.javassist.bytecode.Descriptor=var2508, $r12=var3350, $r5=var3792, $r6=var253, $r4=var1922, $r7=var855, $r8=var649, $r9=var2292, $r11=var3978}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer;	r3 := @parameter0: org.apache.ibatis.javassist.CtClass;	r10 := @parameter1: java.lang.String;	r2 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode;	r13 := @parameter3: org.apache.ibatis.javassist.compiler.Javac;	i1 = 1;	$r1 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams>;	if $r1 != null goto r14 = "([Ljava/lang/String;)";	r14 = "()";	goto [?= $r12 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3)];	$r12 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3);	$r5 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType>;	$r6 = r0.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r5, $r6, $r9);	$r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS>;	virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutstatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r12);	return i1
;block_num 3