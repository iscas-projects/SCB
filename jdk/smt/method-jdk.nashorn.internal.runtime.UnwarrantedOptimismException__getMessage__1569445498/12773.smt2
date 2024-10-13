(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2878 0)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun returnValue/-1623072993 (var2878) var403)
(declare-fun append/-1031950772 (String var403) String)
(declare-fun getClass/1258963082 (var403) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun hasInvalidProgramPoint/-1629247213 (var2878) Bool)
(declare-fun programPoint/-1623072993 (var2878) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2878 var2878)
(declare-const null-var403 var403)
(declare-const var3285 var2878) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.UnwarrantedOptimismException 
(assert (not (= var3285 null-var2878)))
(define-const var2268 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2268)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2268!1 String)
(assert (= var2268!1 ""))
(assert true)
(define-const var2746 String (append/672562846 var2268!1 "UNWARRANTED OPTIMISM: [returnValue=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNWARRANTED OPTIMISM: [returnValue=") 
(declare-const var2268!2 String)
(assert (= var2268!2 (str.++ var2268!1 "UNWARRANTED OPTIMISM: [returnValue=")))
(define-const var609 var403 (returnValue/-1623072993 var3285)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert true)
(define-const var512 String (append/-1031950772 var2746 var609)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2746!1 String)
(assert (str.prefixof var2746 var2746!1))
(assert true)
(define-const var1687 String (append/672562846 var512 " (class=")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (class=") 
(declare-const var512!1 String)
(assert (= var512!1 (str.++ var512 " (class=")))
(define-const var620 var403 (returnValue/-1623072993 var3285)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
 ; Statement: if $r5 != null goto $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert (not (= var620 null-var403))) ; Cond: $r5 != null 
(define-const var3187 var403 (returnValue/-1623072993 var3285)) ; Statement: $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert true)
(define-const var1623 ClassObject (getClass/1258963082 var3187)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3419 String (getSimpleName/-390194377 var1623)) ; Statement: $r16 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var567 String (append/672562846 var1687 var3419)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1687!1 String)
(assert (= var1687!1 (str.++ var1687 var3419)))
(assert true)
(define-const var2429 Bool (hasInvalidProgramPoint/-1629247213 var3285)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: boolean hasInvalidProgramPoint()>() 
 ; Statement: if $z0 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= (ite var2429 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1020 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1020)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1020!1 String)
(assert (= var1020!1 ""))
(assert true)
(define-const var1621 String (append/672562846 var1020!1 " @ program point #")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ program point #") 
(declare-const var1020!2 String)
(assert (= var1020!2 (str.++ var1020!1 " @ program point #")))
(define-const var3809 Int (programPoint/-1623072993 var3285)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: int programPoint> 
(assert true)
(define-const var1213 String (append/-1001720160 var1621 var3809)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1621!1 String)
(assert (str.prefixof var1621 var1621!1))
(assert true)
(define-const var3026 String (toString/-2075883882 var1213)) ; Statement: $r17 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1351 String (append/672562846 var567 var3026)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var567!1 String)
(assert (= var567!1 (str.++ var567 var3026)))
(assert true)
(define-const var1075 String (append/672562846 var1351 ")]")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var1351!1 String)
(assert (= var1351!1 (str.++ var1351 ")]")))
(assert true)
(define-const var2478 String (toString/-2075883882 var1075)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), returnValue/-1623072993=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), hasInvalidProgramPoint/-1629247213=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], boolean), programPoint/-1623072993=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2878=jdk.nashorn.internal.runtime.UnwarrantedOptimismException, var3285=r1, var2268=$r0, var2746=$r3, var403=java.lang.Object, var609=$r2, var512=$r4, var1687=$r8, var620=$r5, var3187=$r6, var1623=$r7, var3419=$r16, var567=$r12, var2429=$z0, var1020=$r9, var1621=$r10, var3809=$i0, var1213=$r11, var3026=$r17, var1351=$r13, var1075=$r14, var2478=$r15}
; {jdk.nashorn.internal.runtime.UnwarrantedOptimismException=var2878, r1=var3285, $r0=var2268, $r3=var2746, java.lang.Object=var403, $r2=var609, $r4=var512, $r8=var1687, $r5=var620, $r6=var3187, $r7=var1623, $r16=var3419, $r12=var567, $z0=var2429, $r9=var1020, $r10=var1621, $i0=var3809, $r11=var1213, $r17=var3026, $r13=var1351, $r14=var1075, $r15=var2478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: jdk.nashorn.internal.runtime.UnwarrantedOptimismException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNWARRANTED OPTIMISM: [returnValue=");	$r2 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (class=");	$r5 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	if $r5 != null goto $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r7 = virtualinvoke $r6.<java.lang.Object: java.lang.Class getClass()>();	$r16 = virtualinvoke $r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: boolean hasInvalidProgramPoint()>();	if $z0 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ program point #");	$i0 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: int programPoint>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r17 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 5