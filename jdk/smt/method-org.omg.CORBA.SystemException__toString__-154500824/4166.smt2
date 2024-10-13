(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var341 0)
(declare-sort var548 0)
(declare-sort var1984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var548) String)
(declare-fun cast-from-var341-to-var548 (var341) var548)
(declare-fun minor/-1643123064 (var341) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var341) var1984)
(declare-fun value/1952908165 (var1984) Int)
(declare-const null-var341 var341)
(declare-const var264 var341) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var264 null-var341)))
(assert true)
(define-const var1656 String (toString/-1112415476 (cast-from-var341-to-var548 var264))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var915 Int (minor/-1643123064 var264)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var764 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var2317 Int (bv2nat (bvand ((_ int2bv 64) var915) ((_ int2bv 64) var764)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (not (= var2317 1398079488)) (and (not (= var2317 1330446336)) true))) ; Intersect: Negate: Cond: i1 == 1398079488   and Intersect: Negate: Cond: i1 == 1330446336   and Non Conditional  
(define-const var480 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var480)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var480!1 String)
(assert (= var480!1 ""))
(assert true)
(define-const var567 String (append/672562846 var480!1 var1656)) ; Statement: $r17 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var480!2 String)
(assert (= var480!2 (str.++ var480!1 var1656)))
(assert true)
(define-const var1039 String (append/672562846 var567 "  vmcid: 0x")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: 0x") 
(declare-const var567!1 String)
(assert (= var567!1 (str.++ var567 "  vmcid: 0x")))
(define-const var838 String (Int_toHexString/1865784998 var2317)) ; Statement: $r18 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1) 
(assert true)
(define-const var671 String (append/672562846 var1039 var838)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1039!1 String)
(assert (= var1039!1 (str.++ var1039 var838)))
(assert true)
(define-const var1976 String (toString/-2075883882 var671)) ; Statement: r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3766 Int (minor/-1643123064 var264)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var3933 Int (bv2nat (bvand ((_ int2bv 64) var3766) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var3225 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3225)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3225!1 String)
(assert (= var3225!1 ""))
(assert true)
(define-const var1640 String (append/672562846 var3225!1 var1976)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var3225!2 String)
(assert (= var3225!2 (str.++ var3225!1 var1976)))
(assert true)
(define-const var381 String (append/672562846 var1640 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var1640!1 String)
(assert (= var1640!1 (str.++ var1640 "  minor code: ")))
(assert true)
(define-const var3175 String (append/-1001720160 var381 var3933)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var381!1 String)
(assert (str.prefixof var381 var381!1))
(assert true)
(define-const var1295 String (toString/-2075883882 var3175)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3699 var1984 (completed/-1643123064 var264)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var10 Int (value/1952908165 var3699)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (= var10 0) true)) ; Intersect: Cond: $i4 == 0  and Non Conditional 
(define-const var683 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var683)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var683!1 String)
(assert (= var683!1 ""))
(assert true)
(define-const var3918 String (append/672562846 var683!1 var1295)) ; Statement: $r8 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var683!2 String)
(assert (= var683!2 (str.++ var683!1 var1295)))
(assert true)
(define-const var3733 String (append/672562846 var3918 "  completed: Yes")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: Yes") 
(declare-const var3918!1 String)
(assert (= var3918!1 (str.++ var3918 "  completed: Yes")))
(assert true)
(define-const var2180 String (toString/-2075883882 var3733)) ; Statement: r29 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r29] 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var341-to-var548=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var341=org.omg.CORBA.SystemException, var264=r0, var548=java.lang.Throwable, var1656=r21, var915=$i0, var764=$i6, var2317=i1, var480=$r32, var567=$r17, var1039=$r19, var838=$r18, var671=$r20, var1976=r22, var3766=$i2, var3933=$i3, var3225=$r33, var1640=$r24, var381=$r25, var3175=$r26, var1295=$r27, var1984=org.omg.CORBA.CompletionStatus, var3699=$r28, var10=$i4, var683=$r34, var3918=$r8, var3733=$r9, var2180=r29}
; {org.omg.CORBA.SystemException=var341, r0=var264, java.lang.Throwable=var548, r21=var1656, $i0=var915, $i6=var764, i1=var2317, $r32=var480, $r17=var567, $r19=var1039, $r18=var838, $r20=var671, r22=var1976, $i2=var3766, $i3=var3933, $r33=var3225, $r24=var1640, $r25=var381, $r26=var3175, $r27=var1295, org.omg.CORBA.CompletionStatus=var1984, $r28=var3699, $i4=var10, $r34=var683, $r8=var3918, $r9=var3733, r29=var2180}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: 0x");	$r18 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: Yes");	r29 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r29];	return r29
;block_num 5