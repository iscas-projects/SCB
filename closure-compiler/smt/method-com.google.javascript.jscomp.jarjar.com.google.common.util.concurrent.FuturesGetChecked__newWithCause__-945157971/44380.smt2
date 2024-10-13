(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var2487 0)
(declare-sort var283 0)
(declare-sort var821 0)
(declare-sort var2064 0)
(declare-sort var420 0)
(declare-sort var302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConstructors/-1160885883 (ClassObject) (Array Int var2487))
(declare-fun var821_asList/1779083644 ((Array Int var2064)) var283)
(declare-fun cast-from-__Array__Int__var2487__-to-__Array__Int__var2064__ ((Array Int var2487)) (Array Int var2064))
(declare-fun var420_preferringStrings/1999401639 (var283) var283)
(declare-fun var283_iterator/-912451715 (var283) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var302-init () var302)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2064) String)
(declare-fun cast-from-ClassObject-to-var2064 (ClassObject) var2064)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var302 String var851) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var851 var851)
(declare-const var1030 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1030 null-ClassObject)))
(declare-const var969 var851) ; Statement: r10 := @parameter1: java.lang.Throwable 
(assert (not (= var969 null-var851)))
(assert true)
(define-const var1135 (Array Int var2487) (getConstructors/-1160885883 var1030)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>() 
(define-const var2571 var283 (var821_asList/1779083644 (cast-from-__Array__Int__var2487__-to-__Array__Int__var2064__ var1135))) ; Statement: r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1) 
(define-const var3773 var283 (var420_preferringStrings/1999401639 var2571)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked: java.util.List preferringStrings(java.util.List)>(r2) 
(define-const var1927 Iterator (var283_iterator/-912451715 var3773)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3214 Bool (Iterator_hasNext/-1669924200 var1927)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.IllegalArgumentException 
(assert (= (ite var3214 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3218 var302 var302-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2635 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2635)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2635!1 String)
(assert (= var2635!1 ""))
(assert true)
(define-const var1844 String (append/672562846 var2635!1 "No appropriate constructor for exception of type ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No appropriate constructor for exception of type ") 
(declare-const var2635!2 String)
(assert (= var2635!2 (str.++ var2635!1 "No appropriate constructor for exception of type ")))
(assert true)
(define-const var510 String (append/-1031950772 var1844 (cast-from-ClassObject-to-var2064 var1030))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1844!1 String)
(assert (str.prefixof var1844 var1844!1))
(assert true)
(define-const var3019 String (append/672562846 var510 " in response to chained exception")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in response to chained exception") 
(declare-const var510!1 String)
(assert (= var510!1 (str.++ var510 " in response to chained exception")))
(assert true)
(define-const var3843 String (toString/-2075883882 var3019)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var3218 var3843 var969)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r11, r10) 

(declare-const var3218!1 var302)
(declare-const var3843!1 String)
(declare-const var969!1 var851)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getConstructors/-1160885883=([java.lang.Class], java.lang.reflect.Constructor[]), var821_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__var2487__-to-__Array__Int__var2064__=([java.lang.reflect.Constructor[]], java.lang.Object[]), var420_preferringStrings/1999401639=([java.util.List], java.util.List), var283_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var302-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2064=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void)}
; {var1030=r0, var851=java.lang.Throwable, var969=r10, var2487=java.lang.reflect.Constructor, var1135=$r1, var283=java.util.List, var821=java.util.Arrays, var2064=java.lang.Object, var2571=r2, var420=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked, var3773=$r3, var1927=r4, var3214=$z0, var302=java.lang.IllegalArgumentException, var3218=$r5, var2635=$r6, var1844=$r7, var510=$r8, var3019=$r9, var3843=$r11}
; {r0=var1030, java.lang.Throwable=var851, r10=var969, java.lang.reflect.Constructor=var2487, $r1=var1135, java.util.List=var283, java.util.Arrays=var821, java.lang.Object=var2064, r2=var2571, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked=var420, $r3=var3773, r4=var1927, $z0=var3214, java.lang.IllegalArgumentException=var302, $r5=var3218, $r6=var2635, $r7=var1844, $r8=var510, $r9=var3019, $r11=var3843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r10 := @parameter1: java.lang.Throwable;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>();	r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>($r1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FuturesGetChecked: java.util.List preferringStrings(java.util.List)>(r2);	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No appropriate constructor for exception of type ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in response to chained exception");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r11, r10);	throw $r5
;block_num 3