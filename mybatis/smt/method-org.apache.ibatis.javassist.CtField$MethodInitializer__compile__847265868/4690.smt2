(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3867 0)
(declare-sort var973 0)
(declare-sort var3 0)
(declare-sort var3298 0)
(declare-sort var2326 0)
(declare-sort var471 0)
(declare-sort var3813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addAload/-2055620002 (var3298 Int) void)
(declare-fun stringParams/-1848390363 (var471) (Array Int String))
(declare-fun cast-from-var3867-to-var471 (var3867) var471)
(declare-fun withConstructorParams/-1848390363 (var471) Bool)
(declare-fun var3813_of/1621849684 (var973) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDescriptor/449717995 (var3867) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun objectType/-1848390363 (var471) var973)
(declare-fun methodName/1411467358 (var3867) String)
(declare-fun addInvokestatic/-1405979401 (var3298 var973 String String) void)
(declare-fun addPutfield/1637017820 (var3298 var973 String String) void)
(declare-const null-var3867 var3867)
(declare-const null-var973 var973)
(declare-const null-String String)
(declare-const null-var3298 var3298)
(declare-const null-__Array__Int__var973__ (Array Int var973))
(declare-const null-var2326 var2326)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3298-THIS var973)
(declare-const var702 var3867) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer 
(assert (not (= var702 null-var3867)))
(declare-const var3922 var973) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3922 null-var973)))
(declare-const var1672 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var1672 null-String)))
(declare-const var3651 var3298) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode 
(assert (not (= var3651 null-var3298)))
(declare-const var1374 (Array Int var973)) ; Statement: r12 := @parameter3: org.apache.ibatis.javassist.CtClass[] 
(assert (not (= var1374 null-__Array__Int__var973__)))
(declare-const var1818 var2326) ; Statement: r15 := @parameter4: org.apache.ibatis.javassist.compiler.Javac 
(assert (not (= var1818 null-var2326)))
(assert true)
;(assert (addAload/-2055620002 var3651 0)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0) 

(declare-const var3651!1 var3298)
(declare-const var1737 Int)
(assert true)
;(assert (addAload/-2055620002 var3651!1 0)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0) 

(declare-const var3651!2 var3298)
(declare-const var1737!1 Int)
(define-const var1424 (Array Int String) (stringParams/-1848390363 (cast-from-var3867-to-var471 var702))) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams> 
 ; Statement: if $r2 != null goto $i0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r0) 
(assert (not (not (= var1424 null-__Array__Int__String__)))) ; Negate: Cond: $r2 != null  
(define-const var2146 Int 2) ; Statement: i2 = 2 
 ; Statement: goto [?= $z0 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: boolean withConstructorParams>] 
(assert true) ; Non Conditional
(define-const var361 Bool (withConstructorParams/-1848390363 (cast-from-var3867-to-var471 var702))) ; Statement: $z0 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: boolean withConstructorParams> 
 ; Statement: if $z0 == 0 goto $r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3) 
(assert (= (ite var361 1 0) 0)) ; Cond: $z0 == 0 
(define-const var237 String (var3813_of/1621849684 var3922)) ; Statement: $r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3) 
(define-const var37 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var37)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var37!1 String)
(assert (= var37!1 ""))
(assert true)
(define-const var865 String (getDescriptor/449717995 var702)) ; Statement: $r5 = specialinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String getDescriptor()>() 
(assert true)
(define-const var0 String (append/672562846 var37!1 var865)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var37!2 String)
(assert (= var37!2 (str.++ var37!1 var865)))
(assert true)
(define-const var3206 String (append/672562846 var0 var237)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var0!1 String)
(assert (= var0!1 (str.++ var0 var237)))
(assert true)
(define-const var2147 String (toString/-2075883882 var3206)) ; Statement: $r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2693 var973 (objectType/-1848390363 (cast-from-var3867-to-var471 var702))) ; Statement: $r9 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType> 
(define-const var889 String (methodName/1411467358 var702)) ; Statement: $r8 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName> 
(assert true)
;(assert (addInvokestatic/-1405979401 var3651!2 var2693 var889 var2147)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r9, $r8, $r14) 

(declare-const var3651!3 var3298)
(declare-const var2693!1 var973)
(declare-const var889!1 String)
(declare-const var2147!1 String)
(define-const var1968 var973 var3298-THIS) ; Statement: $r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS> 
(assert true)
;(assert (addPutfield/1637017820 var3651!3 var1968 var1672 var237)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutfield(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r13) 

(declare-const var3651!4 var3298)
(declare-const var1968!1 var973)
(declare-const var1672!1 String)
(declare-const var237!1 String)
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {addAload/-2055620002=([org.apache.ibatis.javassist.bytecode.Bytecode, int], void), stringParams/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], java.lang.String[]), cast-from-var3867-to-var471=([org.apache.ibatis.javassist.CtField$MethodInitializer], org.apache.ibatis.javassist.CtField$NewInitializer), withConstructorParams/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], boolean), var3813_of/1621849684=([org.apache.ibatis.javassist.CtClass], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDescriptor/449717995=([org.apache.ibatis.javassist.CtField$MethodInitializer], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), objectType/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], org.apache.ibatis.javassist.CtClass), methodName/1411467358=([org.apache.ibatis.javassist.CtField$MethodInitializer], java.lang.String), addInvokestatic/-1405979401=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void), addPutfield/1637017820=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void)}
; {var3867=org.apache.ibatis.javassist.CtField$MethodInitializer, var702=r1, var973=org.apache.ibatis.javassist.CtClass, var3922=r3, var1672=r10, var3=null_type, var3298=org.apache.ibatis.javassist.bytecode.Bytecode, var3651=r0, var1374=r12, var2326=org.apache.ibatis.javassist.compiler.Javac, var1818=r15, var1737=0, var471=org.apache.ibatis.javassist.CtField$NewInitializer, var1424=$r2, var2146=i2, var361=$z0, var3813=org.apache.ibatis.javassist.bytecode.Descriptor, var237=$r13, var37=$r4, var865=$r5, var0=$r6, var3206=$r7, var2147=$r14, var2693=$r9, var889=$r8, var1968=$r11}
; {org.apache.ibatis.javassist.CtField$MethodInitializer=var3867, r1=var702, org.apache.ibatis.javassist.CtClass=var973, r3=var3922, r10=var1672, null_type=var3, org.apache.ibatis.javassist.bytecode.Bytecode=var3298, r0=var3651, r12=var1374, org.apache.ibatis.javassist.compiler.Javac=var2326, r15=var1818, 0=var1737, org.apache.ibatis.javassist.CtField$NewInitializer=var471, $r2=var1424, i2=var2146, $z0=var361, org.apache.ibatis.javassist.bytecode.Descriptor=var3813, $r13=var237, $r4=var37, $r5=var865, $r6=var0, $r7=var3206, $r14=var2147, $r9=var2693, $r8=var889, $r11=var1968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer;	r3 := @parameter0: org.apache.ibatis.javassist.CtClass;	r10 := @parameter1: java.lang.String;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode;	r12 := @parameter3: org.apache.ibatis.javassist.CtClass[];	r15 := @parameter4: org.apache.ibatis.javassist.compiler.Javac;	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0);	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0);	$r2 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams>;	if $r2 != null goto $i0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r0);	i2 = 2;	goto [?= $z0 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: boolean withConstructorParams>];	$z0 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: boolean withConstructorParams>;	if $z0 == 0 goto $r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3);	$r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = specialinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String getDescriptor()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType>;	$r8 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName>;	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r9, $r8, $r14);	$r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS>;	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutfield(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r13);	return i2
;block_num 4