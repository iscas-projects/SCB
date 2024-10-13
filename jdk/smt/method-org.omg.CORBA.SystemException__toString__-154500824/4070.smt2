(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3507 0)
(declare-sort var2053 0)
(declare-sort var2834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var2053) String)
(declare-fun cast-from-var3507-to-var2053 (var3507) var2053)
(declare-fun minor/-1643123064 (var3507) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var3507) var2834)
(declare-fun value/1952908165 (var2834) Int)
(declare-const null-var3507 var3507)
(declare-const var652 var3507) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var652 null-var3507)))
(assert true)
(define-const var1988 String (toString/-1112415476 (cast-from-var3507-to-var2053 var652))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var200 Int (minor/-1643123064 var652)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var3762 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var1160 Int (bv2nat (bvand ((_ int2bv 64) var200) ((_ int2bv 64) var3762)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (= var1160 1398079488) (and (not (= var1160 1330446336)) true))) ; Intersect: Cond: i1 == 1398079488  and Intersect: Negate: Cond: i1 == 1330446336   and Non Conditional  
(define-const var2963 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2963)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2963!1 String)
(assert (= var2963!1 ""))
(assert true)
(define-const var16 String (append/672562846 var2963!1 var1988)) ; Statement: $r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var2963!2 String)
(assert (= var2963!2 (str.++ var2963!1 var1988)))
(assert true)
(define-const var2385 String (append/672562846 var16 "  vmcid: SUN")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: SUN") 
(declare-const var16!1 String)
(assert (= var16!1 (str.++ var16 "  vmcid: SUN")))
(assert true)
(define-const var2956 String (toString/-2075883882 var2385)) ; Statement: r22 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>] 
(assert true) ; Non Conditional
(define-const var36 Int (minor/-1643123064 var652)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var3521 Int (bv2nat (bvand ((_ int2bv 64) var36) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var1990 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1990)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1990!1 String)
(assert (= var1990!1 ""))
(assert true)
(define-const var160 String (append/672562846 var1990!1 var2956)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var1990!2 String)
(assert (= var1990!2 (str.++ var1990!1 var2956)))
(assert true)
(define-const var2887 String (append/672562846 var160 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var160!1 String)
(assert (= var160!1 (str.++ var160 "  minor code: ")))
(assert true)
(define-const var449 String (append/-1001720160 var2887 var3521)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2887!1 String)
(assert (str.prefixof var2887 var2887!1))
(assert true)
(define-const var292 String (toString/-2075883882 var449)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3319 var2834 (completed/-1643123064 var652)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var2569 Int (value/1952908165 var3319)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (= var2569 0) true)) ; Intersect: Cond: $i4 == 0  and Non Conditional 
(define-const var1587 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1587)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1587!1 String)
(assert (= var1587!1 ""))
(assert true)
(define-const var1589 String (append/672562846 var1587!1 var292)) ; Statement: $r8 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1587!2 String)
(assert (= var1587!2 (str.++ var1587!1 var292)))
(assert true)
(define-const var532 String (append/672562846 var1589 "  completed: Yes")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: Yes") 
(declare-const var1589!1 String)
(assert (= var1589!1 (str.++ var1589 "  completed: Yes")))
(assert true)
(define-const var1378 String (toString/-2075883882 var532)) ; Statement: r29 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r29] 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3507-to-var2053=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var3507=org.omg.CORBA.SystemException, var652=r0, var2053=java.lang.Throwable, var1988=r21, var200=$i0, var3762=$i6, var1160=i1, var2963=$r31, var16=$r2, var2385=$r3, var2956=r22, var36=$i2, var3521=$i3, var1990=$r33, var160=$r24, var2887=$r25, var449=$r26, var292=$r27, var2834=org.omg.CORBA.CompletionStatus, var3319=$r28, var2569=$i4, var1587=$r34, var1589=$r8, var532=$r9, var1378=r29}
; {org.omg.CORBA.SystemException=var3507, r0=var652, java.lang.Throwable=var2053, r21=var1988, $i0=var200, $i6=var3762, i1=var1160, $r31=var2963, $r2=var16, $r3=var2385, r22=var2956, $i2=var36, $i3=var3521, $r33=var1990, $r24=var160, $r25=var2887, $r26=var449, $r27=var292, org.omg.CORBA.CompletionStatus=var2834, $r28=var3319, $i4=var2569, $r34=var1587, $r8=var1589, $r9=var532, r29=var1378}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: SUN");	r22 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>];	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: Yes");	r29 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r29];	return r29
;block_num 5