(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3436 0)
(declare-sort var3489 0)
(declare-sort var2025 0)
(declare-sort var1999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2025) String)
(declare-fun getLength-Arr-var3489-1 ((Array Int var3489)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun proxiedClassName/-197135201 (var3436) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1999_identityHashCode/1096208673 (var3489) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3436 var3436)
(declare-const null-var3489 var3489)
(declare-const null-var2025 var2025)
(declare-const null-__Array__Int__var3489__ (Array Int var3489))
(declare-const var3745 var3436) ; Statement: r5 := @this: org.hibernate.bytecode.internal.bytebuddy.PassThroughInterceptor 
(assert (not (= var3745 null-var3436)))
(declare-const var916 var3489) ; Statement: r13 := @parameter0: java.lang.Object 
(assert (not (= var916 null-var3489)))
(declare-const var147 var2025) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var147 null-var2025)))
(declare-const var3152 (Array Int var3489)) ; Statement: r6 := @parameter2: java.lang.Object[] 
(assert (not (= var3152 null-__Array__Int__var3489__)))
(assert true)
(define-const var1932 String (getName/1227988463 var147)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var3853 String "toString") ; Statement: $r2 = "toString" 
(assert true)
(define-const var2717 Bool (= var3853 var1932)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "equals" 
(assert (not (= (ite var2717 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var194 Int (getLength-Arr-var3489-1 var3152)) ; Statement: $i3 = lengthof r6 
 ; Statement: if $i3 != 0 goto $r3 = "equals" 
(assert (not (not (= var194 0)))) ; Negate: Cond: $i3 != 0  
(define-const var70 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var70)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var70!1 String)
(assert (= var70!1 ""))
(define-const var3715 String (proxiedClassName/-197135201 var3745)) ; Statement: $r18 = r5.<org.hibernate.bytecode.internal.bytebuddy.PassThroughInterceptor: java.lang.String proxiedClassName> 
(assert true)
(define-const var977 String (append/672562846 var70!1 var3715)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var70!2 String)
(assert (= var70!2 (str.++ var70!1 var3715)))
(assert true)
(define-const var3897 String (append/672562846 var977 "@")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var977!1 String)
(assert (= var977!1 (str.++ var977 "@")))
(define-const var1675 Int (var1999_identityHashCode/1096208673 var916)) ; Statement: $i4 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r13) 
(assert true)
(define-const var63 String (append/-1001720160 var3897 var1675)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3897!1 String)
(assert (str.prefixof var3897 var3897!1))
(assert true)
(define-const var292 String (toString/-2075883882 var63)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getLength-Arr-var3489-1=([java.lang.Object[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), proxiedClassName/-197135201=([org.hibernate.bytecode.internal.bytebuddy.PassThroughInterceptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1999_identityHashCode/1096208673=([java.lang.Object], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3436=org.hibernate.bytecode.internal.bytebuddy.PassThroughInterceptor, var3745=r5, var3489=java.lang.Object, var916=r13, var2025=java.lang.reflect.Method, var147=r0, var3152=r6, var1932=r1, var3853=$r2, var2717=$z0, var194=$i3, var70=$r17, var3715=$r18, var977=$r19, var3897=$r20, var1999=java.lang.System, var1675=$i4, var63=$r21, var292=$r22}
; {org.hibernate.bytecode.internal.bytebuddy.PassThroughInterceptor=var3436, r5=var3745, java.lang.Object=var3489, r13=var916, java.lang.reflect.Method=var2025, r0=var147, r6=var3152, r1=var1932, $r2=var3853, $z0=var2717, $i3=var194, $r17=var70, $r18=var3715, $r19=var977, $r20=var3897, java.lang.System=var1999, $i4=var1675, $r21=var63, $r22=var292}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.bytecode.internal.bytebuddy.PassThroughInterceptor;	r13 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r6 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "toString";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "equals";	$i3 = lengthof r6;	if $i3 != 0 goto $r3 = "equals";	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = r5.<org.hibernate.bytecode.internal.bytebuddy.PassThroughInterceptor: java.lang.String proxiedClassName>;	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$i4 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r13);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 3