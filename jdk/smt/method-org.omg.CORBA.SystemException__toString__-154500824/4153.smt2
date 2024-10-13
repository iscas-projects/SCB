(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2841 0)
(declare-sort var2008 0)
(declare-sort var3409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var2008) String)
(declare-fun cast-from-var2841-to-var2008 (var2841) var2008)
(declare-fun minor/-1643123064 (var2841) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var2841) var3409)
(declare-fun value/1952908165 (var3409) Int)
(declare-const null-var2841 var2841)
(declare-const var3294 var2841) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var3294 null-var2841)))
(assert true)
(define-const var2845 String (toString/-1112415476 (cast-from-var2841-to-var2008 var3294))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var1979 Int (minor/-1643123064 var3294)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var3353 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var2072 Int (bv2nat (bvand ((_ int2bv 64) var1979) ((_ int2bv 64) var3353)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (= var2072 1398079488) (and (not (= var2072 1330446336)) true))) ; Intersect: Cond: i1 == 1398079488  and Intersect: Negate: Cond: i1 == 1330446336   and Non Conditional  
(define-const var120 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var120)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var120!1 String)
(assert (= var120!1 ""))
(assert true)
(define-const var3320 String (append/672562846 var120!1 var2845)) ; Statement: $r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var120!2 String)
(assert (= var120!2 (str.++ var120!1 var2845)))
(assert true)
(define-const var2153 String (append/672562846 var3320 "  vmcid: SUN")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: SUN") 
(declare-const var3320!1 String)
(assert (= var3320!1 (str.++ var3320 "  vmcid: SUN")))
(assert true)
(define-const var522 String (toString/-2075883882 var2153)) ; Statement: r22 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>] 
(assert true) ; Non Conditional
(define-const var1525 Int (minor/-1643123064 var3294)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var3151 Int (bv2nat (bvand ((_ int2bv 64) var1525) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var1425 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1425)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1425!1 String)
(assert (= var1425!1 ""))
(assert true)
(define-const var2337 String (append/672562846 var1425!1 var522)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var1425!2 String)
(assert (= var1425!2 (str.++ var1425!1 var522)))
(assert true)
(define-const var2329 String (append/672562846 var2337 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var2337!1 String)
(assert (= var2337!1 (str.++ var2337 "  minor code: ")))
(assert true)
(define-const var2461 String (append/-1001720160 var2329 var3151)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2329!1 String)
(assert (str.prefixof var2329 var2329!1))
(assert true)
(define-const var1455 String (toString/-2075883882 var2461)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3491 var3409 (completed/-1643123064 var3294)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var1607 Int (value/1952908165 var3491)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (not (= var1607 1)) (and (not (= var1607 0)) true))) ; Intersect: Negate: Cond: $i4 == 1   and Intersect: Negate: Cond: $i4 == 0   and Non Conditional  
(define-const var2819 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2819)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2819!1 String)
(assert (= var2819!1 ""))
(assert true)
(define-const var1164 String (append/672562846 var2819!1 var1455)) ; Statement: $r11 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2819!2 String)
(assert (= var2819!2 (str.++ var2819!1 var1455)))
(assert true)
(define-const var3962 String (append/672562846 var1164 " completed: Maybe")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" completed: Maybe") 
(declare-const var1164!1 String)
(assert (= var1164!1 (str.++ var1164 " completed: Maybe")))
(assert true)
(define-const var278 String (toString/-2075883882 var3962)) ; Statement: r29 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2841-to-var2008=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var2841=org.omg.CORBA.SystemException, var3294=r0, var2008=java.lang.Throwable, var2845=r21, var1979=$i0, var3353=$i6, var2072=i1, var120=$r31, var3320=$r2, var2153=$r3, var522=r22, var1525=$i2, var3151=$i3, var1425=$r33, var2337=$r24, var2329=$r25, var2461=$r26, var1455=$r27, var3409=org.omg.CORBA.CompletionStatus, var3491=$r28, var1607=$i4, var2819=$r36, var1164=$r11, var3962=$r12, var278=r29}
; {org.omg.CORBA.SystemException=var2841, r0=var3294, java.lang.Throwable=var2008, r21=var2845, $i0=var1979, $i6=var3353, i1=var2072, $r31=var120, $r2=var3320, $r3=var2153, r22=var522, $i2=var1525, $i3=var3151, $r33=var1425, $r24=var2337, $r25=var2329, $r26=var2461, $r27=var1455, org.omg.CORBA.CompletionStatus=var3409, $r28=var3491, $i4=var1607, $r36=var2819, $r11=var1164, $r12=var3962, r29=var278}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: SUN");	r22 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>];	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" completed: Maybe");	r29 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return r29
;block_num 5