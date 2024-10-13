(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var237 0)
(declare-sort var2388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun returnValue/-1623072993 (var237) var2388)
(declare-fun append/-1031950772 (String var2388) String)
(declare-fun hasInvalidProgramPoint/-1629247213 (var237) Bool)
(declare-fun programPoint/-1623072993 (var237) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var237 var237)
(declare-const null-var2388 var2388)
(declare-const var588 var237) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.UnwarrantedOptimismException 
(assert (not (= var588 null-var237)))
(define-const var3461 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3461)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3461!1 String)
(assert (= var3461!1 ""))
(assert true)
(define-const var2525 String (append/672562846 var3461!1 "UNWARRANTED OPTIMISM: [returnValue=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNWARRANTED OPTIMISM: [returnValue=") 
(declare-const var3461!2 String)
(assert (= var3461!2 (str.++ var3461!1 "UNWARRANTED OPTIMISM: [returnValue=")))
(define-const var1771 var2388 (returnValue/-1623072993 var588)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert true)
(define-const var3811 String (append/-1031950772 var2525 var1771)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2525!1 String)
(assert (str.prefixof var2525 var2525!1))
(assert true)
(define-const var3263 String (append/672562846 var3811 " (class=")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (class=") 
(declare-const var3811!1 String)
(assert (= var3811!1 (str.++ var3811 " (class=")))
(define-const var391 var2388 (returnValue/-1623072993 var588)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
 ; Statement: if $r5 != null goto $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue> 
(assert (not (not (= var391 null-var2388)))) ; Negate: Cond: $r5 != null  
(define-const var3486 String "null") ; Statement: $r16 = "null" 
 ; Statement: goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3226 String (append/672562846 var3263 var3486)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3263!1 String)
(assert (= var3263!1 (str.++ var3263 var3486)))
(assert true)
(define-const var2450 Bool (hasInvalidProgramPoint/-1629247213 var588)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: boolean hasInvalidProgramPoint()>() 
 ; Statement: if $z0 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= (ite var2450 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2475 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2475)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2475!1 String)
(assert (= var2475!1 ""))
(assert true)
(define-const var320 String (append/672562846 var2475!1 " @ program point #")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ program point #") 
(declare-const var2475!2 String)
(assert (= var2475!2 (str.++ var2475!1 " @ program point #")))
(define-const var2071 Int (programPoint/-1623072993 var588)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: int programPoint> 
(assert true)
(define-const var1371 String (append/-1001720160 var320 var2071)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var320!1 String)
(assert (str.prefixof var320 var320!1))
(assert true)
(define-const var3740 String (toString/-2075883882 var1371)) ; Statement: $r17 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1614 String (append/672562846 var3226 var3740)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3226!1 String)
(assert (= var3226!1 (str.++ var3226 var3740)))
(assert true)
(define-const var3746 String (append/672562846 var1614 ")]")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var1614!1 String)
(assert (= var1614!1 (str.++ var1614 ")]")))
(assert true)
(define-const var3413 String (toString/-2075883882 var3746)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), returnValue/-1623072993=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), hasInvalidProgramPoint/-1629247213=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], boolean), programPoint/-1623072993=([jdk.nashorn.internal.runtime.UnwarrantedOptimismException], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var237=jdk.nashorn.internal.runtime.UnwarrantedOptimismException, var588=r1, var3461=$r0, var2525=$r3, var2388=java.lang.Object, var1771=$r2, var3811=$r4, var3263=$r8, var391=$r5, var3486=$r16, var3226=$r12, var2450=$z0, var2475=$r9, var320=$r10, var2071=$i0, var1371=$r11, var3740=$r17, var1614=$r13, var3746=$r14, var3413=$r15}
; {jdk.nashorn.internal.runtime.UnwarrantedOptimismException=var237, r1=var588, $r0=var3461, $r3=var2525, java.lang.Object=var2388, $r2=var1771, $r4=var3811, $r8=var3263, $r5=var391, $r16=var3486, $r12=var3226, $z0=var2450, $r9=var2475, $r10=var320, $i0=var2071, $r11=var1371, $r17=var3740, $r13=var1614, $r14=var3746, $r15=var3413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: jdk.nashorn.internal.runtime.UnwarrantedOptimismException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UNWARRANTED OPTIMISM: [returnValue=");	$r2 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (class=");	$r5 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	if $r5 != null goto $r6 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: java.lang.Object returnValue>;	$r16 = "null";	goto [?= $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16)];	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: boolean hasInvalidProgramPoint()>();	if $z0 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ program point #");	$i0 = r1.<jdk.nashorn.internal.runtime.UnwarrantedOptimismException: int programPoint>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r17 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 5