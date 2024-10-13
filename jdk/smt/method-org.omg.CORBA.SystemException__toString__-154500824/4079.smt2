(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2783 0)
(declare-sort var3706 0)
(declare-sort var3412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var3706) String)
(declare-fun cast-from-var2783-to-var3706 (var2783) var3706)
(declare-fun minor/-1643123064 (var2783) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var2783) var3412)
(declare-fun value/1952908165 (var3412) Int)
(declare-const null-var2783 var2783)
(declare-const var3551 var2783) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var3551 null-var2783)))
(assert true)
(define-const var2966 String (toString/-1112415476 (cast-from-var2783-to-var3706 var3551))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var3803 Int (minor/-1643123064 var3551)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var1926 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var614 Int (bv2nat (bvand ((_ int2bv 64) var3803) ((_ int2bv 64) var1926)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (= var614 1398079488) (and (not (= var614 1330446336)) true))) ; Intersect: Cond: i1 == 1398079488  and Intersect: Negate: Cond: i1 == 1330446336   and Non Conditional  
(define-const var686 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var686)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var686!1 String)
(assert (= var686!1 ""))
(assert true)
(define-const var3673 String (append/672562846 var686!1 var2966)) ; Statement: $r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var686!2 String)
(assert (= var686!2 (str.++ var686!1 var2966)))
(assert true)
(define-const var3338 String (append/672562846 var3673 "  vmcid: SUN")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: SUN") 
(declare-const var3673!1 String)
(assert (= var3673!1 (str.++ var3673 "  vmcid: SUN")))
(assert true)
(define-const var3208 String (toString/-2075883882 var3338)) ; Statement: r22 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>] 
(assert true) ; Non Conditional
(define-const var1600 Int (minor/-1643123064 var3551)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var402 Int (bv2nat (bvand ((_ int2bv 64) var1600) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var1532 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1532)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1532!1 String)
(assert (= var1532!1 ""))
(assert true)
(define-const var1487 String (append/672562846 var1532!1 var3208)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var1532!2 String)
(assert (= var1532!2 (str.++ var1532!1 var3208)))
(assert true)
(define-const var1219 String (append/672562846 var1487 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var1487!1 String)
(assert (= var1487!1 (str.++ var1487 "  minor code: ")))
(assert true)
(define-const var1683 String (append/-1001720160 var1219 var402)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1219!1 String)
(assert (str.prefixof var1219 var1219!1))
(assert true)
(define-const var3625 String (toString/-2075883882 var1683)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2649 var3412 (completed/-1643123064 var3551)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var2453 Int (value/1952908165 var2649)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (= var2453 1) (and (not (= var2453 0)) true))) ; Intersect: Cond: $i4 == 1  and Intersect: Negate: Cond: $i4 == 0   and Non Conditional  
(define-const var1760 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1760)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1760!1 String)
(assert (= var1760!1 ""))
(assert true)
(define-const var3228 String (append/672562846 var1760!1 var3625)) ; Statement: $r5 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1760!2 String)
(assert (= var1760!2 (str.++ var1760!1 var3625)))
(assert true)
(define-const var1026 String (append/672562846 var3228 "  completed: No")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: No") 
(declare-const var3228!1 String)
(assert (= var3228!1 (str.++ var3228 "  completed: No")))
(assert true)
(define-const var2532 String (toString/-2075883882 var1026)) ; Statement: r29 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r29] 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2783-to-var3706=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var2783=org.omg.CORBA.SystemException, var3551=r0, var3706=java.lang.Throwable, var2966=r21, var3803=$i0, var1926=$i6, var614=i1, var686=$r31, var3673=$r2, var3338=$r3, var3208=r22, var1600=$i2, var402=$i3, var1532=$r33, var1487=$r24, var1219=$r25, var1683=$r26, var3625=$r27, var3412=org.omg.CORBA.CompletionStatus, var2649=$r28, var2453=$i4, var1760=$r35, var3228=$r5, var1026=$r6, var2532=r29}
; {org.omg.CORBA.SystemException=var2783, r0=var3551, java.lang.Throwable=var3706, r21=var2966, $i0=var3803, $i6=var1926, i1=var614, $r31=var686, $r2=var3673, $r3=var3338, r22=var3208, $i2=var1600, $i3=var402, $r33=var1532, $r24=var1487, $r25=var1219, $r26=var1683, $r27=var3625, org.omg.CORBA.CompletionStatus=var3412, $r28=var2649, $i4=var2453, $r35=var1760, $r5=var3228, $r6=var1026, r29=var2532}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: SUN");	r22 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>];	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: No");	r29 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r29];	return r29
;block_num 5