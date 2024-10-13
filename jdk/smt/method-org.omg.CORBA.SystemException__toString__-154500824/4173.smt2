(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2404 0)
(declare-sort var2298 0)
(declare-sort var2984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var2298) String)
(declare-fun cast-from-var2404-to-var2298 (var2404) var2298)
(declare-fun minor/-1643123064 (var2404) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var2404) var2984)
(declare-fun value/1952908165 (var2984) Int)
(declare-const null-var2404 var2404)
(declare-const var1698 var2404) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var1698 null-var2404)))
(assert true)
(define-const var1022 String (toString/-1112415476 (cast-from-var2404-to-var2298 var1698))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var3562 Int (minor/-1643123064 var1698)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var2439 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var1568 Int (bv2nat (bvand ((_ int2bv 64) var3562) ((_ int2bv 64) var2439)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (not (= var1568 1398079488)) (and (not (= var1568 1330446336)) true))) ; Intersect: Negate: Cond: i1 == 1398079488   and Intersect: Negate: Cond: i1 == 1330446336   and Non Conditional  
(define-const var3254 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3254)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3254!1 String)
(assert (= var3254!1 ""))
(assert true)
(define-const var1465 String (append/672562846 var3254!1 var1022)) ; Statement: $r17 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var3254!2 String)
(assert (= var3254!2 (str.++ var3254!1 var1022)))
(assert true)
(define-const var3192 String (append/672562846 var1465 "  vmcid: 0x")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: 0x") 
(declare-const var1465!1 String)
(assert (= var1465!1 (str.++ var1465 "  vmcid: 0x")))
(define-const var530 String (Int_toHexString/1865784998 var1568)) ; Statement: $r18 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1) 
(assert true)
(define-const var2042 String (append/672562846 var3192 var530)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3192!1 String)
(assert (= var3192!1 (str.++ var3192 var530)))
(assert true)
(define-const var3713 String (toString/-2075883882 var2042)) ; Statement: r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3247 Int (minor/-1643123064 var1698)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var3172 Int (bv2nat (bvand ((_ int2bv 64) var3247) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var3381 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3381)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3381!1 String)
(assert (= var3381!1 ""))
(assert true)
(define-const var1942 String (append/672562846 var3381!1 var3713)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var3381!2 String)
(assert (= var3381!2 (str.++ var3381!1 var3713)))
(assert true)
(define-const var158 String (append/672562846 var1942 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var1942!1 String)
(assert (= var1942!1 (str.++ var1942 "  minor code: ")))
(assert true)
(define-const var3213 String (append/-1001720160 var158 var3172)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var158!1 String)
(assert (str.prefixof var158 var158!1))
(assert true)
(define-const var3288 String (toString/-2075883882 var3213)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2971 var2984 (completed/-1643123064 var1698)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var2339 Int (value/1952908165 var2971)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (= var2339 1) (and (not (= var2339 0)) true))) ; Intersect: Cond: $i4 == 1  and Intersect: Negate: Cond: $i4 == 0   and Non Conditional  
(define-const var2795 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2795)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2795!1 String)
(assert (= var2795!1 ""))
(assert true)
(define-const var370 String (append/672562846 var2795!1 var3288)) ; Statement: $r5 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2795!2 String)
(assert (= var2795!2 (str.++ var2795!1 var3288)))
(assert true)
(define-const var3212 String (append/672562846 var370 "  completed: No")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: No") 
(declare-const var370!1 String)
(assert (= var370!1 (str.++ var370 "  completed: No")))
(assert true)
(define-const var2149 String (toString/-2075883882 var3212)) ; Statement: r29 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r29] 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2404-to-var2298=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var2404=org.omg.CORBA.SystemException, var1698=r0, var2298=java.lang.Throwable, var1022=r21, var3562=$i0, var2439=$i6, var1568=i1, var3254=$r32, var1465=$r17, var3192=$r19, var530=$r18, var2042=$r20, var3713=r22, var3247=$i2, var3172=$i3, var3381=$r33, var1942=$r24, var158=$r25, var3213=$r26, var3288=$r27, var2984=org.omg.CORBA.CompletionStatus, var2971=$r28, var2339=$i4, var2795=$r35, var370=$r5, var3212=$r6, var2149=r29}
; {org.omg.CORBA.SystemException=var2404, r0=var1698, java.lang.Throwable=var2298, r21=var1022, $i0=var3562, $i6=var2439, i1=var1568, $r32=var3254, $r17=var1465, $r19=var3192, $r18=var530, $r20=var2042, r22=var3713, $i2=var3247, $i3=var3172, $r33=var3381, $r24=var1942, $r25=var158, $r26=var3213, $r27=var3288, org.omg.CORBA.CompletionStatus=var2984, $r28=var2971, $i4=var2339, $r35=var2795, $r5=var370, $r6=var3212, r29=var2149}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: 0x");	$r18 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: No");	r29 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r29];	return r29
;block_num 5