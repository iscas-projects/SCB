(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1297 0)
(declare-sort var3535 0)
(declare-sort var1264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var3535) String)
(declare-fun cast-from-var1297-to-var3535 (var1297) var3535)
(declare-fun minor/-1643123064 (var1297) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun completed/-1643123064 (var1297) var1264)
(declare-fun value/1952908165 (var1264) Int)
(declare-const null-var1297 var1297)
(declare-const var3195 var1297) ; Statement: r0 := @this: org.omg.CORBA.SystemException 
(assert (not (= var3195 null-var1297)))
(assert true)
(define-const var3889 String (toString/-1112415476 (cast-from-var1297-to-var3535 var3195))) ; Statement: r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>() 
(define-const var1271 Int (minor/-1643123064 var3195)) ; Statement: $i0 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var301 Int (cast-from-Int-to-Int (- 4096))) ; Statement: $i6 = (int) -4096 
(define-const var1388 Int (bv2nat (bvand ((_ int2bv 64) var1271) ((_ int2bv 64) var301)))) ; Statement: i1 = $i0 & $i6 
 ; Statement: lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; } 
(assert (and (= var1388 1330446336) true)) ; Intersect: Cond: i1 == 1330446336  and Non Conditional 
(define-const var3727 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3727)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3727!1 String)
(assert (= var3727!1 ""))
(assert true)
(define-const var2020 String (append/672562846 var3727!1 var3889)) ; Statement: $r14 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21) 
(declare-const var3727!2 String)
(assert (= var3727!2 (str.++ var3727!1 var3889)))
(assert true)
(define-const var3038 String (append/672562846 var2020 "  vmcid: OMG")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: OMG") 
(declare-const var2020!1 String)
(assert (= var2020!1 (str.++ var2020 "  vmcid: OMG")))
(assert true)
(define-const var1476 String (toString/-2075883882 var3038)) ; Statement: r22 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>] 
(assert true) ; Non Conditional
(define-const var3125 Int (minor/-1643123064 var3195)) ; Statement: $i2 = r0.<org.omg.CORBA.SystemException: int minor> 
(define-const var1380 Int (bv2nat (bvand ((_ int2bv 64) var3125) ((_ int2bv 64) 4095)))) ; Statement: $i3 = $i2 & 4095 
(define-const var2271 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2271)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2271!1 String)
(assert (= var2271!1 ""))
(assert true)
(define-const var631 String (append/672562846 var2271!1 var1476)) ; Statement: $r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22) 
(declare-const var2271!2 String)
(assert (= var2271!2 (str.++ var2271!1 var1476)))
(assert true)
(define-const var2823 String (append/672562846 var631 "  minor code: ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ") 
(declare-const var631!1 String)
(assert (= var631!1 (str.++ var631 "  minor code: ")))
(assert true)
(define-const var2867 String (append/-1001720160 var2823 var1380)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2823!1 String)
(assert (str.prefixof var2823 var2823!1))
(assert true)
(define-const var3237 String (toString/-2075883882 var2867)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var114 var1264 (completed/-1643123064 var3195)) ; Statement: $r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed> 
(assert true)
(define-const var1843 Int (value/1952908165 var114)) ; Statement: $i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>() 
 ; Statement: tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; } 
(assert (and (= var1843 0) true)) ; Intersect: Cond: $i4 == 0  and Non Conditional 
(define-const var1818 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1818)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1818!1 String)
(assert (= var1818!1 ""))
(assert true)
(define-const var2195 String (append/672562846 var1818!1 var3237)) ; Statement: $r8 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1818!2 String)
(assert (= var1818!2 (str.++ var1818!1 var3237)))
(assert true)
(define-const var2281 String (append/672562846 var2195 "  completed: Yes")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: Yes") 
(declare-const var2195!1 String)
(assert (= var2195!1 (str.++ var2195 "  completed: Yes")))
(assert true)
(define-const var1977 String (toString/-2075883882 var2281)) ; Statement: r29 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r29] 
(assert true) ; Non Conditional
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1297-to-var3535=([org.omg.CORBA.SystemException], java.lang.Throwable), minor/-1643123064=([org.omg.CORBA.SystemException], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), completed/-1643123064=([org.omg.CORBA.SystemException], org.omg.CORBA.CompletionStatus), value/1952908165=([org.omg.CORBA.CompletionStatus], int)}
; {var1297=org.omg.CORBA.SystemException, var3195=r0, var3535=java.lang.Throwable, var3889=r21, var1271=$i0, var301=$i6, var1388=i1, var3727=$r30, var2020=$r14, var3038=$r15, var1476=r22, var3125=$i2, var1380=$i3, var2271=$r33, var631=$r24, var2823=$r25, var2867=$r26, var3237=$r27, var1264=org.omg.CORBA.CompletionStatus, var114=$r28, var1843=$i4, var1818=$r34, var2195=$r8, var2281=$r9, var1977=r29}
; {org.omg.CORBA.SystemException=var1297, r0=var3195, java.lang.Throwable=var3535, r21=var3889, $i0=var1271, $i6=var301, i1=var1388, $r30=var3727, $r14=var2020, $r15=var3038, r22=var1476, $i2=var3125, $i3=var1380, $r33=var2271, $r24=var631, $r25=var2823, $r26=var2867, $r27=var3237, org.omg.CORBA.CompletionStatus=var1264, $r28=var114, $i4=var1843, $r34=var1818, $r8=var2195, $r9=var2281, r29=var1977}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: org.omg.CORBA.SystemException;	r21 = specialinvoke r0.<java.lang.RuntimeException: java.lang.String toString()>();	$i0 = r0.<org.omg.CORBA.SystemException: int minor>;	$i6 = (int) -4096;	i1 = $i0 & $i6;	lookupswitch(i1) {     case 1330446336: goto $r30 = new java.lang.StringBuilder;     case 1398079488: goto $r31 = new java.lang.StringBuilder;     default: goto $r32 = new java.lang.StringBuilder; };	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r21);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  vmcid: OMG");	r22 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i2 = r0.<org.omg.CORBA.SystemException: int minor>];	$i2 = r0.<org.omg.CORBA.SystemException: int minor>;	$i3 = $i2 & 4095;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  minor code: ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r0.<org.omg.CORBA.SystemException: org.omg.CORBA.CompletionStatus completed>;	$i4 = virtualinvoke $r28.<org.omg.CORBA.CompletionStatus: int value()>();	tableswitch($i4) {     case 0: goto $r34 = new java.lang.StringBuilder;     case 1: goto $r35 = new java.lang.StringBuilder;     case 2: goto $r36 = new java.lang.StringBuilder;     default: goto $r36 = new java.lang.StringBuilder; };	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  completed: Yes");	r29 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r29];	return r29
;block_num 5