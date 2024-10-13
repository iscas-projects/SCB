(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1760 0)
(declare-sort var2432 0)
(declare-sort var782 0)
(declare-sort var3750 0)
(declare-sort var483 0)
(declare-sort var3762 0)
(declare-sort var464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addAload/-2055620002 (var3750 Int) void)
(declare-fun stringParams/-1848390363 (var3762) (Array Int String))
(declare-fun cast-from-var1760-to-var3762 (var1760) var3762)
(declare-fun compileStringParameter/1786392176 (var3762 var3750) Int)
(declare-fun withConstructorParams/-1848390363 (var3762) Bool)
(declare-fun var464_of/1621849684 (var2432) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDescriptor/449717995 (var1760) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun objectType/-1848390363 (var3762) var2432)
(declare-fun methodName/1411467358 (var1760) String)
(declare-fun addInvokestatic/-1405979401 (var3750 var2432 String String) void)
(declare-fun addPutfield/1637017820 (var3750 var2432 String String) void)
(declare-const null-var1760 var1760)
(declare-const null-var2432 var2432)
(declare-const null-String String)
(declare-const null-var3750 var3750)
(declare-const null-__Array__Int__var2432__ (Array Int var2432))
(declare-const null-var483 var483)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3750-THIS var2432)
(declare-const var2313 var1760) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer 
(assert (not (= var2313 null-var1760)))
(declare-const var1421 var2432) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1421 null-var2432)))
(declare-const var3968 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var3968 null-String)))
(declare-const var2904 var3750) ; Statement: r0 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode 
(assert (not (= var2904 null-var3750)))
(declare-const var2016 (Array Int var2432)) ; Statement: r12 := @parameter3: org.apache.ibatis.javassist.CtClass[] 
(assert (not (= var2016 null-__Array__Int__var2432__)))
(declare-const var3561 var483) ; Statement: r15 := @parameter4: org.apache.ibatis.javassist.compiler.Javac 
(assert (not (= var3561 null-var483)))
(assert true)
;(assert (addAload/-2055620002 var2904 0)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0) 

(declare-const var2904!1 var3750)
(declare-const var1969 Int)
(assert true)
;(assert (addAload/-2055620002 var2904!1 0)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0) 

(declare-const var2904!2 var3750)
(declare-const var1969!1 Int)
(define-const var2789 (Array Int String) (stringParams/-1848390363 (cast-from-var1760-to-var3762 var2313))) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams> 
 ; Statement: if $r2 != null goto $i0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r0) 
(assert (not (= var2789 null-__Array__Int__String__))) ; Cond: $r2 != null 
(assert true)
(define-const var599 Int (compileStringParameter/1786392176 (cast-from-var1760-to-var3762 var2313) var2904!2)) ; Statement: $i0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r0) 
(define-const var2585 Int (+ var599 2)) ; Statement: i2 = $i0 + 2 
(assert true) ; Non Conditional
(define-const var747 Bool (withConstructorParams/-1848390363 (cast-from-var1760-to-var3762 var2313))) ; Statement: $z0 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: boolean withConstructorParams> 
 ; Statement: if $z0 == 0 goto $r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3) 
(assert (= (ite var747 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1963 String (var464_of/1621849684 var1421)) ; Statement: $r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3) 
(define-const var2147 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2147)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2147!1 String)
(assert (= var2147!1 ""))
(assert true)
(define-const var1202 String (getDescriptor/449717995 var2313)) ; Statement: $r5 = specialinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String getDescriptor()>() 
(assert true)
(define-const var2373 String (append/672562846 var2147!1 var1202)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2147!2 String)
(assert (= var2147!2 (str.++ var2147!1 var1202)))
(assert true)
(define-const var3645 String (append/672562846 var2373 var1963)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2373!1 String)
(assert (= var2373!1 (str.++ var2373 var1963)))
(assert true)
(define-const var3157 String (toString/-2075883882 var3645)) ; Statement: $r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3434 var2432 (objectType/-1848390363 (cast-from-var1760-to-var3762 var2313))) ; Statement: $r9 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType> 
(define-const var2023 String (methodName/1411467358 var2313)) ; Statement: $r8 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName> 
(assert true)
;(assert (addInvokestatic/-1405979401 var2904!2 var3434 var2023 var3157)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r9, $r8, $r14) 

(declare-const var2904!3 var3750)
(declare-const var3434!1 var2432)
(declare-const var2023!1 String)
(declare-const var3157!1 String)
(define-const var2146 var2432 var3750-THIS) ; Statement: $r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS> 
(assert true)
;(assert (addPutfield/1637017820 var2904!3 var2146 var3968 var1963)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutfield(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r13) 

(declare-const var2904!4 var3750)
(declare-const var2146!1 var2432)
(declare-const var3968!1 String)
(declare-const var1963!1 String)
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {addAload/-2055620002=([org.apache.ibatis.javassist.bytecode.Bytecode, int], void), stringParams/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], java.lang.String[]), cast-from-var1760-to-var3762=([org.apache.ibatis.javassist.CtField$MethodInitializer], org.apache.ibatis.javassist.CtField$NewInitializer), compileStringParameter/1786392176=([org.apache.ibatis.javassist.CtField$NewInitializer, org.apache.ibatis.javassist.bytecode.Bytecode], int), withConstructorParams/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], boolean), var464_of/1621849684=([org.apache.ibatis.javassist.CtClass], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDescriptor/449717995=([org.apache.ibatis.javassist.CtField$MethodInitializer], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), objectType/-1848390363=([org.apache.ibatis.javassist.CtField$NewInitializer], org.apache.ibatis.javassist.CtClass), methodName/1411467358=([org.apache.ibatis.javassist.CtField$MethodInitializer], java.lang.String), addInvokestatic/-1405979401=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void), addPutfield/1637017820=([org.apache.ibatis.javassist.bytecode.Bytecode, org.apache.ibatis.javassist.CtClass, java.lang.String, java.lang.String], void)}
; {var1760=org.apache.ibatis.javassist.CtField$MethodInitializer, var2313=r1, var2432=org.apache.ibatis.javassist.CtClass, var1421=r3, var3968=r10, var782=null_type, var3750=org.apache.ibatis.javassist.bytecode.Bytecode, var2904=r0, var2016=r12, var483=org.apache.ibatis.javassist.compiler.Javac, var3561=r15, var1969=0, var3762=org.apache.ibatis.javassist.CtField$NewInitializer, var2789=$r2, var599=$i0, var2585=i2, var747=$z0, var464=org.apache.ibatis.javassist.bytecode.Descriptor, var1963=$r13, var2147=$r4, var1202=$r5, var2373=$r6, var3645=$r7, var3157=$r14, var3434=$r9, var2023=$r8, var2146=$r11}
; {org.apache.ibatis.javassist.CtField$MethodInitializer=var1760, r1=var2313, org.apache.ibatis.javassist.CtClass=var2432, r3=var1421, r10=var3968, null_type=var782, org.apache.ibatis.javassist.bytecode.Bytecode=var3750, r0=var2904, r12=var2016, org.apache.ibatis.javassist.compiler.Javac=var483, r15=var3561, 0=var1969, org.apache.ibatis.javassist.CtField$NewInitializer=var3762, $r2=var2789, $i0=var599, i2=var2585, $z0=var747, org.apache.ibatis.javassist.bytecode.Descriptor=var464, $r13=var1963, $r4=var2147, $r5=var1202, $r6=var2373, $r7=var3645, $r14=var3157, $r9=var3434, $r8=var2023, $r11=var2146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.CtField$MethodInitializer;	r3 := @parameter0: org.apache.ibatis.javassist.CtClass;	r10 := @parameter1: java.lang.String;	r0 := @parameter2: org.apache.ibatis.javassist.bytecode.Bytecode;	r12 := @parameter3: org.apache.ibatis.javassist.CtClass[];	r15 := @parameter4: org.apache.ibatis.javassist.compiler.Javac;	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0);	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addAload(int)>(0);	$r2 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String[] stringParams>;	if $r2 != null goto $i0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r0);	$i0 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: int compileStringParameter(org.apache.ibatis.javassist.bytecode.Bytecode)>(r0);	i2 = $i0 + 2;	$z0 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: boolean withConstructorParams>;	if $z0 == 0 goto $r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3);	$r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = specialinvoke r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String getDescriptor()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: org.apache.ibatis.javassist.CtClass objectType>;	$r8 = r1.<org.apache.ibatis.javassist.CtField$MethodInitializer: java.lang.String methodName>;	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addInvokestatic(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r9, $r8, $r14);	$r11 = <org.apache.ibatis.javassist.bytecode.Bytecode: org.apache.ibatis.javassist.CtClass THIS>;	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.Bytecode: void addPutfield(org.apache.ibatis.javassist.CtClass,java.lang.String,java.lang.String)>($r11, r10, $r13);	return i2
;block_num 4