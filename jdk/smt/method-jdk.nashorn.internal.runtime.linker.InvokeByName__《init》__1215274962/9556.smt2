(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2248 0)
(declare-sort var962 0)
(declare-sort var657 0)
(declare-sort var2043 0)
(declare-sort var3985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var657!class ClassObject)
(declare-fun <init>/-279557996 (var657) void)
(declare-fun cast-from-var2248-to-var657 (var2248) var657)
(declare-fun name/1412467874 (var2248) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3985_createDynamicInvoker/481041528 (String ClassObject (Array Int ClassObject)) var2043)
(declare-fun getter/1412467874 (var2248) var2043)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun invoker/1412467874 (var2248) var2043)
(declare-const null-var2248 var2248)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3057 var2248) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.InvokeByName 
(assert (not (= var3057 null-var2248)))
(declare-const var2465 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2465 null-String)))
(declare-const var2994 ClassObject) ; Statement: r6 := @parameter1: java.lang.Class 
(assert (not (= var2994 null-ClassObject)))
(declare-const var1352 ClassObject) ; Statement: r10 := @parameter2: java.lang.Class 
(assert (not (= var1352 null-ClassObject)))
(declare-const var1418 (Array Int ClassObject)) ; Statement: r9 := @parameter3: java.lang.Class[] 
(assert (not (= var1418 null-__Array__Int__ClassObject__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2248-to-var657 var3057))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3057!1 var2248)
(declare-const var3057!2 var2248)
(assert (not (= var3057!2 null-var2248)))
(assert (= (name/1412467874 var3057!2) var2465)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.String name> = r1 
(define-const var942 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var942)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var942!1 String)
(assert (= var942!1 ""))
(assert true)
(define-const var3285 String (append/672562846 var942!1 "dyn:getMethod|getProp|getElem:")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dyn:getMethod|getProp|getElem:") 
(declare-const var942!2 String)
(assert (= var942!2 (str.++ var942!1 "dyn:getMethod|getProp|getElem:")))
(assert true)
(define-const var1190 String (append/672562846 var3285 var2465)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3285!1 String)
(assert (= var3285!1 (str.++ var3285 var2465)))
(assert true)
(define-const var2079 String (toString/-2075883882 var1190)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3624 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r5 = newarray (java.lang.Class)[1] 
(declare-const var3624!1 (Array Int ClassObject))
(assert (not (= var3624!1 null-__Array__Int__ClassObject__)))
(assert (= (select var3624!1 0) var2994)) ; Statement: $r5[0] = r6 
(define-const var2907 var2043 (var3985_createDynamicInvoker/481041528 var2079 var657!class var3624!1)) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>($r7, class "Ljava/lang/Object;", $r5) 
(declare-const var3057!3 var2248)
(assert (not (= var3057!3 null-var2248)))
(assert (= (getter/1412467874 var3057!3) var2907)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle getter> = $r8 
(define-const var2490 Int (getLength-Arr-ClassObject-1 var1418)) ; Statement: i0 = lengthof r9 
 ; Statement: if i0 != 0 goto $i1 = i0 + 2 
(assert (not (not (= var2490 0)))) ; Negate: Cond: i0 != 0  
(define-const var1298 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r12 = newarray (java.lang.Class)[2] 
(declare-const var1298!1 (Array Int ClassObject))
(assert (not (= var1298!1 null-__Array__Int__ClassObject__)))
(assert (= (select var1298!1 0) var657!class)) ; Statement: $r12[0] = class "Ljava/lang/Object;" 
(declare-const var1298!2 (Array Int ClassObject))
(assert (not (= var1298!2 null-__Array__Int__ClassObject__)))
(assert (= (select var1298!2 1) var2994)) ; Statement: $r12[1] = r6 
(define-const var1838 (Array Int ClassObject) var1298!2) ; Statement: r13 = $r12 
 ; Statement: goto [?= $r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>("dyn:call", r10, r13)] 
(assert true) ; Non Conditional
(define-const var2753 var2043 (var3985_createDynamicInvoker/481041528 "dyn:call" var1352 var1838)) ; Statement: $r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>("dyn:call", r10, r13) 
(declare-const var3057!4 var2248)
(assert (not (= var3057!4 null-var2248)))
(assert (= (invoker/1412467874 var3057!4) var2753)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle invoker> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2248-to-var657=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.Object), name/1412467874=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3985_createDynamicInvoker/481041528=([java.lang.String, java.lang.Class, java.lang.Class[]], java.lang.invoke.MethodHandle), getter/1412467874=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.invoke.MethodHandle), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), invoker/1412467874=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.invoke.MethodHandle)}
; {var2248=jdk.nashorn.internal.runtime.linker.InvokeByName, var3057=r0, var2465=r1, var962=null_type, var2994=r6, var1352=r10, var1418=r9, var657=java.lang.Object, var942=$r2, var3285=$r3, var1190=$r4, var2079=$r7, var3624=$r5, var2043=java.lang.invoke.MethodHandle, var3985=jdk.nashorn.internal.runtime.linker.Bootstrap, var2907=$r8, var2490=i0, var1298=$r12, var1838=r13, var2753=$r11}
; {jdk.nashorn.internal.runtime.linker.InvokeByName=var2248, r0=var3057, r1=var2465, null_type=var962, r6=var2994, r10=var1352, r9=var1418, java.lang.Object=var657, $r2=var942, $r3=var3285, $r4=var1190, $r7=var2079, $r5=var3624, java.lang.invoke.MethodHandle=var2043, jdk.nashorn.internal.runtime.linker.Bootstrap=var3985, $r8=var2907, i0=var2490, $r12=var1298, r13=var1838, $r11=var2753}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.InvokeByName;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.Class;	r10 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class[];	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.String name> = r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dyn:getMethod|getProp|getElem:");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = newarray (java.lang.Class)[1];	$r5[0] = r6;	$r8 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>($r7, class "Ljava/lang/Object;", $r5);	r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle getter> = $r8;	i0 = lengthof r9;	if i0 != 0 goto $i1 = i0 + 2;	$r12 = newarray (java.lang.Class)[2];	$r12[0] = class "Ljava/lang/Object;";	$r12[1] = r6;	r13 = $r12;	goto [?= $r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>("dyn:call", r10, r13)];	$r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>("dyn:call", r10, r13);	r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle invoker> = $r11;	return
;block_num 3