(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3414 0)
(declare-sort var1439 0)
(declare-sort var2477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var1439) String)
(declare-fun cast-from-var3414-to-var1439 (var3414) var1439)
(declare-fun minor/-1643123064 (var3414) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var3414) var2477)
(declare-fun value/1952908165 (var2477) Int)
(declare-const null-var3414 var3414)
(declare-const var3441 var3414) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var3441 null-var3414)))
(assert true)
(define-const var397 String (toString/-1112415476 (cast-from-var3414-to-var1439 var3441))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var1526 Int (minor/-1643123064 var3441)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var761 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var2494 Int (bv2nat (bvand ((_ int2bv 64) var1526) ((_ int2bv 64) var761)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (not (= var2494 1398079488)) (and (not (= var2494 1330446336)) true))) ; Intersect: Negate: Cond: i1 == 1398079488   and Intersect: Negate: Cond: i1 == 1330446336   and Non Conditional  
(define-const var3629 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3629)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3629!1 String)
(assert (= var3629!1 ""))
(assert true)
(define-const var54 String (append/672562846 var3629!1 var397)) ; Statement: $r17 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var3629!2 String)
(assert (= var3629!2 (str.++ var3629!1 var397)))
(assert true)
(define-const var3105 String (append/672562846 var54 "  vmcid: 0x")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: 0x") 
(declare-const var54!1 String)
(assert (= var54!1 (str.++ var54 "  vmcid: 0x")))
(define-const var2072 String (Int_toHexString/1865784998 var2494)) ; Statement: $r18 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1) 
(assert true)
(define-const var926 String (append/672562846 var3105 var2072)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 var2072)))
(assert true)
(define-const var3819 String (toString/-2075883882 var926)) ; Statement: r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var964 Int (minor/-1643123064 var3441)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var2812 Int (bv2nat (bvand ((_ int2bv 64) var964) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var3226 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3226)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3226!1 String)
(assert (= var3226!1 ""))
(assert true)
(define-const var1135 String (append/672562846 var3226!1 var3819)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var3226!2 String)
(assert (= var3226!2 (str.++ var3226!1 var3819)))
(assert true)
(define-const var2352 String (append/672562846 var1135 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var1135!1 String)
(assert (= var1135!1 (str.++ var1135 "  minor code: ")))
(assert true)
(define-const var3848 String (append/-1001720160 var2352 var2812)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2352!1 String)
(assert (str.prefixof var2352 var2352!1))
(assert true)
(define-const var3588 String (toString/-2075883882 var3848)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var628 var2477 (completed/-1643123064 var3441)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var3603 Int (value/1952908165 var628)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (not (= var3603 1)) (and (not (= var3603 0)) true))) ; Intersect: Negate: Cond: $i4 == 1   and Intersect: Negate: Cond: $i4 == 0   and Non Conditional  
(define-const var3745 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3745)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3745!1 String)
(assert (= var3745!1 ""))
(assert true)
(define-const var3488 String (append/672562846 var3745!1 var3588)) ; Statement: $r11 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3745!2 String)
(assert (= var3745!2 (str.++ var3745!1 var3588)))
(assert true)
(define-const var3102 String (append/672562846 var3488 " completed: Maybe")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" completed: Maybe") 
(declare-const var3488!1 String)
(assert (= var3488!1 (str.++ var3488 " completed: Maybe")))
(assert true)
(define-const var1577 String (toString/-2075883882 var3102)) ; Statement: r29 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3414-to-var1439=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var3414=org.omg.CORBA.SystemException, var3441=r0, var1439=java.lang.Throwable, var397=r21, var1526=$i0, var761=$i6, var2494=i1, var3629=$r32, var54=$r17, var3105=$r19, var2072=$r18, var926=$r20, var3819=r22, var964=$i2, var2812=$i3, var3226=$r33, var1135=$r24, var2352=$r25, var3848=$r26, var3588=$r27, var2477=org.omg.CORBA.CompletionStatus, var628=$r28, var3603=$i4, var3745=$r36, var3488=$r11, var3102=$r12, var1577=r29}
; {org.omg.CORBA.SystemException=var3414, r0=var3441, java.lang.Throwable=var1439, r21=var397, $i0=var1526, $i6=var761, i1=var2494, $r32=var3629, $r17=var54, $r19=var3105, $r18=var2072, $r20=var926, r22=var3819, $i2=var964, $i3=var2812, $r33=var3226, $r24=var1135, $r25=var2352, $r26=var3848, $r27=var3588, org.omg.CORBA.CompletionStatus=var2477, $r28=var628, $i4=var3603, $r36=var3745, $r11=var3488, $r12=var3102, r29=var1577}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: 0x");	$r18 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" completed: Maybe");	r29 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return r29
;block_num 5