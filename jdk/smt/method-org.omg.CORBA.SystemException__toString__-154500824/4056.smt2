(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var259 0)
(declare-sort var2718 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var2718) String)
(declare-fun cast-from-var259-to-var2718 (var259) var2718)
(declare-fun minor/-1643123064 (var259) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var259) var3654)
(declare-fun value/1952908165 (var3654) Int)
(declare-const null-var259 var259)
(declare-const var376 var259) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var376 null-var259)))
(assert true)
(define-const var3760 String (toString/-1112415476 (cast-from-var259-to-var2718 var376))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var2340 Int (minor/-1643123064 var376)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var3433 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var2379 Int (bv2nat (bvand ((_ int2bv 64) var2340) ((_ int2bv 64) var3433)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (= var2379 1330446336) true)) ; Intersect: Cond: i1 == 1330446336  and Non Conditional 
(define-const var428 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var428)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var428!1 String)
(assert (= var428!1 ""))
(assert true)
(define-const var2026 String (append/672562846 var428!1 var3760)) ; Statement: $r14 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var428!2 String)
(assert (= var428!2 (str.++ var428!1 var3760)))
(assert true)
(define-const var668 String (append/672562846 var2026 "  vmcid: OMG")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: OMG") 
(declare-const var2026!1 String)
(assert (= var2026!1 (str.++ var2026 "  vmcid: OMG")))
(assert true)
(define-const var1044 String (toString/-2075883882 var668)) ; Statement: r22 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>] 
(assert true) ; Non Conditional
(define-const var3253 Int (minor/-1643123064 var376)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var1686 Int (bv2nat (bvand ((_ int2bv 64) var3253) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var3228 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3228)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3228!1 String)
(assert (= var3228!1 ""))
(assert true)
(define-const var3125 String (append/672562846 var3228!1 var1044)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var3228!2 String)
(assert (= var3228!2 (str.++ var3228!1 var1044)))
(assert true)
(define-const var563 String (append/672562846 var3125 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var3125!1 String)
(assert (= var3125!1 (str.++ var3125 "  minor code: ")))
(assert true)
(define-const var1321 String (append/-1001720160 var563 var1686)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var563!1 String)
(assert (str.prefixof var563 var563!1))
(assert true)
(define-const var3718 String (toString/-2075883882 var1321)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1633 var3654 (completed/-1643123064 var376)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var2619 Int (value/1952908165 var1633)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (not (= var2619 1)) (and (not (= var2619 0)) true))) ; Intersect: Negate: Cond: $i4 == 1   and Intersect: Negate: Cond: $i4 == 0   and Non Conditional  
(define-const var3254 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3254)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3254!1 String)
(assert (= var3254!1 ""))
(assert true)
(define-const var1077 String (append/672562846 var3254!1 var3718)) ; Statement: $r11 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3254!2 String)
(assert (= var3254!2 (str.++ var3254!1 var3718)))
(assert true)
(define-const var1156 String (append/672562846 var1077 " completed: Maybe")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" completed: Maybe") 
(declare-const var1077!1 String)
(assert (= var1077!1 (str.++ var1077 " completed: Maybe")))
(assert true)
(define-const var950 String (toString/-2075883882 var1156)) ; Statement: r29 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var259-to-var2718=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var259=org.omg.CORBA.SystemException, var376=r0, var2718=java.lang.Throwable, var3760=r21, var2340=$i0, var3433=$i6, var2379=i1, var428=$r30, var2026=$r14, var668=$r15, var1044=r22, var3253=$i2, var1686=$i3, var3228=$r33, var3125=$r24, var563=$r25, var1321=$r26, var3718=$r27, var3654=org.omg.CORBA.CompletionStatus, var1633=$r28, var2619=$i4, var3254=$r36, var1077=$r11, var1156=$r12, var950=r29}
; {org.omg.CORBA.SystemException=var259, r0=var376, java.lang.Throwable=var2718, r21=var3760, $i0=var2340, $i6=var3433, i1=var2379, $r30=var428, $r14=var2026, $r15=var668, r22=var1044, $i2=var3253, $i3=var1686, $r33=var3228, $r24=var3125, $r25=var563, $r26=var1321, $r27=var3718, org.omg.CORBA.CompletionStatus=var3654, $r28=var1633, $i4=var2619, $r36=var3254, $r11=var1077, $r12=var1156, r29=var950}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: OMG");	r22 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>];	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" completed: Maybe");	r29 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return r29
;block_num 5