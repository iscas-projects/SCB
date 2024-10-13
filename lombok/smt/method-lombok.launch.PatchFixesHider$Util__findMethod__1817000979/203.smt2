(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var1570 0)
(declare-sort var3073 0)
(declare-sort var1355 0)
(declare-sort var3822 0)
(declare-sort var2170 0)
(declare-sort var3240 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaredMethods/663195025 (ClassObject) (Array Int var1570))
(declare-fun getLength-Arr-var1570-1 ((Array Int var1570)) Int)
(declare-fun var3073-init () var3073)
(declare-fun String-init () String)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String_valueOf/-333372740 (var1355) String)
(declare-fun cast-from-String-to-var1355 (String) var1355)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var3073 String) void)
(declare-fun var2170_sneakyThrow/-283431047 (var3240) var3822)
(declare-fun cast-from-var3073-to-var3240 (var3073) var3240)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3848 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3848 null-ClassObject)))
(declare-const var848 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var848 null-String)))
(declare-const var477 (Array Int String)) ; Statement: r5 := @parameter2: java.lang.String[] 
(assert (not (= var477 null-__Array__Int__String__)))
(assert true)
(define-const var3990 (Array Int var1570) (getDeclaredMethods/663195025 var3848)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method[] getDeclaredMethods()>() 
(define-const var3133 Int (getLength-Arr-var1570-1 var3990)) ; Statement: i0 = lengthof $r1 
(define-const var2627 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r2 = $r1[i1] 
(assert (not (< var2627 var3133))) ; Negate: Cond: i1 < i0  
(define-const var3776 var3073 var3073-init) ; Statement: $r7 = new java.lang.NoSuchMethodException 
(define-const var2575 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1183 String (getName/-1958580599 var3848)) ; Statement: $r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var2014 String (String_valueOf/-333372740 (cast-from-String-to-var1355 var1183))) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r9) 
(assert true)
;(assert (<init>/-1061048412 var2575 var2014)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>($r10) 
(declare-const var2575!1 String)
(assert (= var2575!1 var2014))
(assert true)
(define-const var95 String (append/672562846 var2575!1 "::")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var2575!2 String)
(assert (= var2575!2 (str.++ var2575!1 "::")))
(assert true)
(define-const var2746 String (append/672562846 var95 var848)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var95!1 String)
(assert (= var95!1 (str.++ var95 var848)))
(assert true)
(define-const var3294 String (toString/-2075883882 var2746)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var3776 var3294)) ; Statement: specialinvoke $r7.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r13) 

(declare-const var3776!1 var3073)
(declare-const var3294!1 String)
(define-const var1440 var3822 (var2170_sneakyThrow/-283431047 (cast-from-var3073-to-var3240 var3776!1))) ; Statement: $r14 = staticinvoke <lombok.launch.PatchFixesHider$Util: java.lang.RuntimeException sneakyThrow(java.lang.Throwable)>($r7) 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaredMethods/663195025=([java.lang.Class], java.lang.reflect.Method[]), getLength-Arr-var1570-1=([java.lang.reflect.Method[]], int), var3073-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var1355=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void), var2170_sneakyThrow/-283431047=([java.lang.Throwable], java.lang.RuntimeException), cast-from-var3073-to-var3240=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var3848=r0, var848=r3, var1499=null_type, var477=r5, var1570=java.lang.reflect.Method, var3990=$r1, var3133=i0, var2627=i1, var3073=java.lang.NoSuchMethodException, var3776=$r7, var2575=$r8, var1183=$r9, var1355=java.lang.Object, var2014=$r10, var95=$r11, var2746=$r12, var3294=$r13, var3822=java.lang.RuntimeException, var2170=lombok.launch.PatchFixesHider$Util, var3240=java.lang.Throwable, var1440=$r14}
; {r0=var3848, r3=var848, null_type=var1499, r5=var477, java.lang.reflect.Method=var1570, $r1=var3990, i0=var3133, i1=var2627, java.lang.NoSuchMethodException=var3073, $r7=var3776, $r8=var2575, $r9=var1183, java.lang.Object=var1355, $r10=var2014, $r11=var95, $r12=var2746, $r13=var3294, java.lang.RuntimeException=var3822, lombok.launch.PatchFixesHider$Util=var2170, java.lang.Throwable=var3240, $r14=var1440}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String[];	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method[] getDeclaredMethods()>();	i0 = lengthof $r1;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r2 = $r1[i1];	$r7 = new java.lang.NoSuchMethodException;	$r8 = new java.lang.StringBuilder;	$r9 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r9);	specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>($r10);	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r13);	$r14 = staticinvoke <lombok.launch.PatchFixesHider$Util: java.lang.RuntimeException sneakyThrow(java.lang.Throwable)>($r7);	throw $r14
;block_num 3