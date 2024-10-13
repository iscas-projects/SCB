(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1865 0)
(declare-sort var2969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun returnValue/-1623072993 (var1865) var2969)
(declare-fun append/-1031950772 (String var2969) String)
(declare-fun getClass/1258963082 (var2969) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun hasInvalidProgramPoint/-1629247213 (var1865) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1865 var1865)
(declare-const null-var2969 var2969)
(declare-const var564 var1865) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.UnwarrantedOptimismException 
(assert (not (= var564 null-var1865)))
(define-const var2949 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2949)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2949!1 String)
(assert (= var2949!1 ""))
(assert true)
(define-const var803 String (append/672562846 var2949!1 "UNWARRANTED OPTIMISM: [returnValue=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNWARRANTED OPTIMISM: [returnValue=") 
(declare-const var2949!2 String)
(assert (= var2949!2 (str.++ var2949!1 "UNWARRANTED OPTIMISM: [returnValue=")))
(define-const var1511 var2969 (returnValue/-1623072993 var564)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert true)
(define-const var1638 String (append/-1031950772 var803 var1511)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var803!1 String)
(assert (str.prefixof var803 var803!1))
(assert true)
(define-const var2800 String (append/672562846 var1638 " (class=")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (class=") 
(declare-const var1638!1 String)
(assert (= var1638!1 (str.++ var1638 " (class=")))
(define-const var3727 var2969 (returnValue/-1623072993 var564)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
 ; Statement: if $r5 != null goto $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert (not (= var3727 null-var2969))) ; Cond: $r5 != null 
(define-const var2239 var2969 (returnValue/-1623072993 var564)) ; Statement: $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert true)
(define-const var52 ClassObject (getClass/1258963082 var2239)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1690 String (getSimpleName/-390194377 var52)) ; Statement: $r16 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1072 String (append/672562846 var2800 var1690)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2800!1 String)
(assert (= var2800!1 (str.++ var2800 var1690)))
(assert true)
(define-const var3246 Bool (hasInvalidProgramPoint/-1629247213 var564)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: boolean hasInvalidProgramPoint()>() 
 ; Statement: if $z0 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (not (= (ite var3246 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1356 String " <invalid program point>") ; Statement: $r17 = " <invalid program point>" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)] 
(assert true) ; Non Conditional
(assert true)
(define-const var648 String (append/672562846 var1072 var1356)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1072!1 String)
(assert (= var1072!1 (str.++ var1072 var1356)))
(assert true)
(define-const var3100 String (append/672562846 var648 ")]")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var648!1 String)
(assert (= var648!1 (str.++ var648 ")]")))
(assert true)
(define-const var1151 String (toString/-2075883882 var3100)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), returnValue/-1623072993=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), hasInvalidProgramPoint/-1629247213=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1865=jdk.nashorn.internal.runtime.UnwarrantedOptimismException, var564=r1, var2949=$r0, var803=$r3, var2969=java.lang.Object, var1511=$r2, var1638=$r4, var2800=$r8, var3727=$r5, var2239=$r6, var52=$r7, var1690=$r16, var1072=$r12, var3246=$z0, var1356=$r17, var648=$r13, var3100=$r14, var1151=$r15}
; {jdk.nashorn.internal.runtime.UnwarrantedOptimismException=var1865, r1=var564, $r0=var2949, $r3=var803, java.lang.Object=var2969, $r2=var1511, $r4=var1638, $r8=var2800, $r5=var3727, $r6=var2239, $r7=var52, $r16=var1690, $r12=var1072, $z0=var3246, $r17=var1356, $r13=var648, $r14=var3100, $r15=var1151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.UnwarrantedOptimismException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNWARRANTED OPTIMISM: [returnValue=");	$r2 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (class=");	$r5 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	if $r5 != null goto $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r7 = virtualinvoke $r6.<java.lang.Object: java.lang.Class getClass()>();	$r16 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: boolean hasInvalidProgramPoint()>();	if $z0 == 0 goto $r9 = new java.lang.StringBuilder;	$r17 = " <invalid program point>";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 5