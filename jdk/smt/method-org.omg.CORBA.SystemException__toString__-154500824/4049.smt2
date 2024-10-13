(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3350 0)
(declare-sort var3282 0)
(declare-sort var2672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var3282) String)
(declare-fun cast-from-var3350-to-var3282 (var3350) var3282)
(declare-fun minor/-1643123064 (var3350) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var3350) var2672)
(declare-fun value/1952908165 (var2672) Int)
(declare-const null-var3350 var3350)
(declare-const var1030 var3350) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var1030 null-var3350)))
(assert true)
(define-const var1884 String (toString/-1112415476 (cast-from-var3350-to-var3282 var1030))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var3547 Int (minor/-1643123064 var1030)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var2338 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var1841 Int (bv2nat (bvand ((_ int2bv 64) var3547) ((_ int2bv 64) var2338)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (= var1841 1330446336) true)) ; Intersect: Cond: i1 == 1330446336  and Non Conditional 
(define-const var2076 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2076)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2076!1 String)
(assert (= var2076!1 ""))
(assert true)
(define-const var1076 String (append/672562846 var2076!1 var1884)) ; Statement: $r14 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var2076!2 String)
(assert (= var2076!2 (str.++ var2076!1 var1884)))
(assert true)
(define-const var3720 String (append/672562846 var1076 "  vmcid: OMG")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: OMG") 
(declare-const var1076!1 String)
(assert (= var1076!1 (str.++ var1076 "  vmcid: OMG")))
(assert true)
(define-const var3135 String (toString/-2075883882 var3720)) ; Statement: r22 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>] 
(assert true) ; Non Conditional
(define-const var817 Int (minor/-1643123064 var1030)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var2368 Int (bv2nat (bvand ((_ int2bv 64) var817) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var3829 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3829)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3829!1 String)
(assert (= var3829!1 ""))
(assert true)
(define-const var1349 String (append/672562846 var3829!1 var3135)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var3829!2 String)
(assert (= var3829!2 (str.++ var3829!1 var3135)))
(assert true)
(define-const var1954 String (append/672562846 var1349 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var1349!1 String)
(assert (= var1349!1 (str.++ var1349 "  minor code: ")))
(assert true)
(define-const var3455 String (append/-1001720160 var1954 var2368)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1954!1 String)
(assert (str.prefixof var1954 var1954!1))
(assert true)
(define-const var2522 String (toString/-2075883882 var3455)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var500 var2672 (completed/-1643123064 var1030)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var2930 Int (value/1952908165 var500)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (= var2930 1) (and (not (= var2930 0)) true))) ; Intersect: Cond: $i4 == 1  and Intersect: Negate: Cond: $i4 == 0   and Non Conditional  
(define-const var3510 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3510)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3510!1 String)
(assert (= var3510!1 ""))
(assert true)
(define-const var1658 String (append/672562846 var3510!1 var2522)) ; Statement: $r5 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3510!2 String)
(assert (= var3510!2 (str.++ var3510!1 var2522)))
(assert true)
(define-const var2512 String (append/672562846 var1658 "  completed: No")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: No") 
(declare-const var1658!1 String)
(assert (= var1658!1 (str.++ var1658 "  completed: No")))
(assert true)
(define-const var2574 String (toString/-2075883882 var2512)) ; Statement: r29 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r29] 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3350-to-var3282=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var3350=org.omg.CORBA.SystemException, var1030=r0, var3282=java.lang.Throwable, var1884=r21, var3547=$i0, var2338=$i6, var1841=i1, var2076=$r30, var1076=$r14, var3720=$r15, var3135=r22, var817=$i2, var2368=$i3, var3829=$r33, var1349=$r24, var1954=$r25, var3455=$r26, var2522=$r27, var2672=org.omg.CORBA.CompletionStatus, var500=$r28, var2930=$i4, var3510=$r35, var1658=$r5, var2512=$r6, var2574=r29}
; {org.omg.CORBA.SystemException=var3350, r0=var1030, java.lang.Throwable=var3282, r21=var1884, $i0=var3547, $i6=var2338, i1=var1841, $r30=var2076, $r14=var1076, $r15=var3720, r22=var3135, $i2=var817, $i3=var2368, $r33=var3829, $r24=var1349, $r25=var1954, $r26=var3455, $r27=var2522, org.omg.CORBA.CompletionStatus=var2672, $r28=var500, $i4=var2930, $r35=var3510, $r5=var1658, $r6=var2512, r29=var2574}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: OMG");	r22 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>];	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: No");	r29 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r29];	return r29
;block_num 5