(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1590 0)
(declare-sort var3159 0)
(declare-sort var3435 0)
(declare-sort var1966 0)
(declare-sort var3725 0)
(declare-sort var1370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3435!class ClassObject)
(declare-fun <init>/-279557996 (var3435) void)
(declare-fun cast-from-var1590-to-var3435 (var1590) var3435)
(declare-fun name/1412467874 (var1590) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3725_createDynamicInvoker/481041528 (String ClassObject (Array Int ClassObject)) var1966)
(declare-fun getter/1412467874 (var1590) var1966)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var1370_arraycopy/-325913181 (var3435 Int var3435 Int Int) void)
(declare-fun cast-from-__Array__Int__ClassObject__-to-var3435 ((Array Int ClassObject)) var3435)
(declare-fun invoker/1412467874 (var1590) var1966)
(declare-const null-var1590 var1590)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1138 var1590) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.InvokeByName 
(assert (not (= var1138 null-var1590)))
(declare-const var3788 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3788 null-String)))
(declare-const var368 ClassObject) ; Statement: r6 := @parameter1: java.lang.Class 
(assert (not (= var368 null-ClassObject)))
(declare-const var1889 ClassObject) ; Statement: r10 := @parameter2: java.lang.Class 
(assert (not (= var1889 null-ClassObject)))
(declare-const var87 (Array Int ClassObject)) ; Statement: r9 := @parameter3: java.lang.Class[] 
(assert (not (= var87 null-__Array__Int__ClassObject__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1590-to-var3435 var1138))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1138!1 var1590)
(declare-const var1138!2 var1590)
(assert (not (= var1138!2 null-var1590)))
(assert (= (name/1412467874 var1138!2) var3788)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.String name> = r1 
(define-const var497 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var497)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var497!1 String)
(assert (= var497!1 ""))
(assert true)
(define-const var2781 String (append/672562846 var497!1 "dyn:getMethod|getProp|getElem:")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dyn:getMethod|getProp|getElem:") 
(declare-const var497!2 String)
(assert (= var497!2 (str.++ var497!1 "dyn:getMethod|getProp|getElem:")))
(assert true)
(define-const var3394 String (append/672562846 var2781 var3788)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2781!1 String)
(assert (= var2781!1 (str.++ var2781 var3788)))
(assert true)
(define-const var3378 String (toString/-2075883882 var3394)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3397 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r5 = newarray (java.lang.Class)[1] 
(declare-const var3397!1 (Array Int ClassObject))
(assert (not (= var3397!1 null-__Array__Int__ClassObject__)))
(assert (= (select var3397!1 0) var368)) ; Statement: $r5[0] = r6 
(define-const var179 var1966 (var3725_createDynamicInvoker/481041528 var3378 var3435!class var3397!1)) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>($r7, class "Ljava/lang/Object;", $r5) 
(declare-const var1138!3 var1590)
(assert (not (= var1138!3 null-var1590)))
(assert (= (getter/1412467874 var1138!3) var179)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle getter> = $r8 
(define-const var1674 Int (getLength-Arr-ClassObject-1 var87)) ; Statement: i0 = lengthof r9 
 ; Statement: if i0 != 0 goto $i1 = i0 + 2 
(assert (not (= var1674 0))) ; Cond: i0 != 0 
(define-const var3323 Int (+ var1674 2)) ; Statement: $i1 = i0 + 2 
(define-const var325 (Array Int ClassObject) arr-ClassObject-init) ; Statement: r13 = newarray (java.lang.Class)[$i1] 
(declare-const var325!1 (Array Int ClassObject))
(assert (not (= var325!1 null-__Array__Int__ClassObject__)))
(assert (= (select var325!1 0) var3435!class)) ; Statement: r13[0] = class "Ljava/lang/Object;" 
(declare-const var325!2 (Array Int ClassObject))
(assert (not (= var325!2 null-__Array__Int__ClassObject__)))
(assert (= (select var325!2 1) var368)) ; Statement: r13[1] = r6 
;(assert (var1370_arraycopy/-325913181 (cast-from-__Array__Int__ClassObject__-to-var3435 var87) 0 (cast-from-__Array__Int__ClassObject__-to-var3435 var325!2) 2 var1674)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r9, 0, r13, 2, i0) 

(declare-const var87!1 (Array Int ClassObject))
(declare-const var2717 Int)
(declare-const var325!3 (Array Int ClassObject))
(declare-const var653 Int)
(declare-const var1674!1 Int)
(assert true) ; Non Conditional
(define-const var554 var1966 (var3725_createDynamicInvoker/481041528 "dyn:call" var1889 var325!3)) ; Statement: $r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>("dyn:call", r10, r13) 
(declare-const var1138!4 var1590)
(assert (not (= var1138!4 null-var1590)))
(assert (= (invoker/1412467874 var1138!4) var554)) ; Statement: r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle invoker> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1590-to-var3435=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.Object), name/1412467874=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var3725_createDynamicInvoker/481041528=([java.lang.String, java.lang.Class, java.lang.Class[]], java.lang.invoke.MethodHandle), getter/1412467874=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.invoke.MethodHandle), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var1370_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__ClassObject__-to-var3435=([java.lang.Class[]], java.lang.Object), invoker/1412467874=([jdk.nashorn.internal.runtime.linker.InvokeByName], java.lang.invoke.MethodHandle)}
; {var1590=jdk.nashorn.internal.runtime.linker.InvokeByName, var1138=r0, var3788=r1, var3159=null_type, var368=r6, var1889=r10, var87=r9, var3435=java.lang.Object, var497=$r2, var2781=$r3, var3394=$r4, var3378=$r7, var3397=$r5, var1966=java.lang.invoke.MethodHandle, var3725=jdk.nashorn.internal.runtime.linker.Bootstrap, var179=$r8, var1674=i0, var3323=$i1, var325=r13, var1370=java.lang.System, var2717=0, var653=2, var554=$r11}
; {jdk.nashorn.internal.runtime.linker.InvokeByName=var1590, r0=var1138, r1=var3788, null_type=var3159, r6=var368, r10=var1889, r9=var87, java.lang.Object=var3435, $r2=var497, $r3=var2781, $r4=var3394, $r7=var3378, $r5=var3397, java.lang.invoke.MethodHandle=var1966, jdk.nashorn.internal.runtime.linker.Bootstrap=var3725, $r8=var179, i0=var1674, $i1=var3323, r13=var325, java.lang.System=var1370, 0=var2717, 2=var653, $r11=var554}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.InvokeByName;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.Class;	r10 := @parameter2: java.lang.Class;	r9 := @parameter3: java.lang.Class[];	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.String name> = r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dyn:getMethod|getProp|getElem:");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = newarray (java.lang.Class)[1];	$r5[0] = r6;	$r8 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>($r7, class "Ljava/lang/Object;", $r5);	r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle getter> = $r8;	i0 = lengthof r9;	if i0 != 0 goto $i1 = i0 + 2;	$i1 = i0 + 2;	r13 = newarray (java.lang.Class)[$i1];	r13[0] = class "Ljava/lang/Object;";	r13[1] = r6;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r9, 0, r13, 2, i0);	$r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.Bootstrap: java.lang.invoke.MethodHandle createDynamicInvoker(java.lang.String,java.lang.Class,java.lang.Class[])>("dyn:call", r10, r13);	r0.<jdk.nashorn.internal.runtime.linker.InvokeByName: java.lang.invoke.MethodHandle invoker> = $r11;	return
;block_num 3