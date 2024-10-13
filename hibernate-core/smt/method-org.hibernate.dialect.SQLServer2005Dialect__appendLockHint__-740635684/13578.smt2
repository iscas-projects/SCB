(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1746 0)
(declare-sort var1854 0)
(declare-sort var2617 0)
(declare-sort var628 0)
(declare-sort var1656 0)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1854 String) var628)
(declare-fun getTimeOut/-863427830 (var1854) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1476) Int)
(declare-fun cast-from-var628-to-var1476 (var628) var1476)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1746 var1746)
(declare-const null-var1854 var1854)
(declare-const null-String String)
(declare-const null-var628 var628)
(declare-const var1656-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var284 var1746) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var284 null-var1746)))
(declare-const var2301 var1854) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2301 null-var1854)))
(declare-const var3292 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3292 null-String)))
(assert true)
(define-const var2811 var628 (getAliasSpecificLockMode/491246003 var2301 var3292)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2811 null-var628))) ; Cond: r35 != null 
(assert true)
(define-const var357 Int (getTimeOut/-863427830 var2301)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3006 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var357 var3006)))) ; Negate: Cond: $i0 != $i7  
(define-const var3131 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1472 String var3131) ; Statement: r2 = $r36 
(assert true)
(define-const var1863 Int (getTimeOut/-863427830 var2301)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1339 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var1863 var1339)))) ; Negate: Cond: $i1 != $i9  
(define-const var945 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var832 String var945) ; Statement: r3 = $r37 
(assert true)
(define-const var2071 Int (getTimeOut/-863427830 var2301)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2071 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3080 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var356 String var3080) ; Statement: r4 = $r38 
(assert true)
(define-const var1043 Int (getTimeOut/-863427830 var2301)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2775 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1043 var2775)))) ; Negate: Cond: $i3 != $i11  
(define-const var2193 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var991 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var1852 (Array Int Int) var1656-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3717 Int (ordinal/-291641772 (cast-from-var628-to-var1476 var2811))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2948 Int (select var1852 var3717)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2948 5) (and (not (= var2948 4)) (and (not (= var2948 3)) (and (not (= var2948 2)) (and (not (= var2948 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var111 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var111)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var111!1 String)
(assert (= var111!1 ""))
(assert true)
(define-const var2650 String (append/672562846 var111!1 var3292)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var111!2 String)
(assert (= var111!2 (str.++ var111!1 var3292)))
(assert true)
(define-const var1497 String (append/672562846 var2650 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var2650!1 String)
(assert (= var2650!1 (str.++ var2650 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var2473 String (append/672562846 var1497 var356)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1497!1 String)
(assert (= var1497!1 (str.++ var1497 var356)))
(assert true)
(define-const var1127 String (append/672562846 var2473 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2473!1 String)
(assert (= var2473!1 (str.++ var2473 ")")))
(assert true)
(define-const var1748 String (toString/-2075883882 var1127)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var628-to-var1476=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1746=org.hibernate.dialect.SQLServer2005Dialect, var284=r34, var1854=org.hibernate.LockOptions, var2301=r0, var3292=r1, var2617=null_type, var628=org.hibernate.LockMode, var2811=r35, var357=$i0, var3006=$i7, var3131=$r36, var1472=r2, var1863=$i1, var1339=$i9, var945=$r37, var832=r3, var2071=$i2, var3080=$r38, var356=r4, var1043=$i3, var2775=$i11, var2193=$r41, var991=$r40, var1656=org.hibernate.dialect.SQLServer2005Dialect$2, var1852=$r5, var1476=java.lang.Enum, var3717=$i4, var2948=$i5, var111=$r44, var2650=$r11, var1497=$r12, var2473=$r13, var1127=$r14, var1748=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var1746, r34=var284, org.hibernate.LockOptions=var1854, r0=var2301, r1=var3292, null_type=var2617, org.hibernate.LockMode=var628, r35=var2811, $i0=var357, $i7=var3006, $r36=var3131, r2=var1472, $i1=var1863, $i9=var1339, $r37=var945, r3=var832, $i2=var2071, $r38=var3080, r4=var356, $i3=var1043, $i11=var2775, $r41=var2193, $r40=var991, org.hibernate.dialect.SQLServer2005Dialect$2=var1656, $r5=var1852, java.lang.Enum=var1476, $i4=var3717, $i5=var2948, $r44=var111, $r11=var2650, $r12=var1497, $r13=var2473, $r14=var1127, $r15=var1748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11