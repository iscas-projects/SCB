(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var2669 0)
(declare-sort var2608 0)
(declare-sort var3531 0)
(declare-sort var3005 0)
(declare-sort var3486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2669 String) var3531)
(declare-fun getTimeOut/-863427830 (var2669) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3486) Int)
(declare-fun cast-from-var3531-to-var3486 (var3531) var3486)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3862 var3862)
(declare-const null-var2669 var2669)
(declare-const null-String String)
(declare-const null-var3531 var3531)
(declare-const var3005-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var654 var3862) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var654 null-var3862)))
(declare-const var3593 var2669) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3593 null-var2669)))
(declare-const var1948 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1948 null-String)))
(assert true)
(define-const var278 var3531 (getAliasSpecificLockMode/491246003 var3593 var1948)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var278 null-var3531))) ; Cond: r35 != null 
(assert true)
(define-const var2469 Int (getTimeOut/-863427830 var3593)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var524 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2469 var524))) ; Cond: $i0 != $i7 
(define-const var115 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var1665 String var115) ; Statement: r2 = $r36 
(assert true)
(define-const var84 Int (getTimeOut/-863427830 var3593)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1814 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var84 var1814)))) ; Negate: Cond: $i1 != $i9  
(define-const var3450 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var336 String var3450) ; Statement: r3 = $r37 
(assert true)
(define-const var3651 Int (getTimeOut/-863427830 var3593)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3651 0))) ; Cond: $i2 != 0 
(define-const var1647 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3269 String var1647) ; Statement: r4 = $r38 
(assert true)
(define-const var2698 Int (getTimeOut/-863427830 var3593)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1937 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2698 var1937))) ; Cond: $i3 != $i11 
(define-const var808 String "") ; Statement: $r41 = "" 
(define-const var962 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var696 (Array Int Int) var3005-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var225 Int (ordinal/-291641772 (cast-from-var3531-to-var3486 var278))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var505 Int (select var696 var225)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var505 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var293 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var293)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var293!1 String)
(assert (= var293!1 ""))
(assert true)
(define-const var1494 String (append/672562846 var293!1 var1948)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var293!2 String)
(assert (= var293!2 (str.++ var293!1 var1948)))
(assert true)
(define-const var2024 String (append/672562846 var1494 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1494!1 String)
(assert (= var1494!1 (str.++ var1494 " with (")))
(assert true)
(define-const var611 String (append/672562846 var2024 var1665)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2024!1 String)
(assert (= var2024!1 (str.++ var2024 var1665)))
(assert true)
(define-const var3030 String (append/672562846 var611 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var611!1 String)
(assert (= var611!1 (str.++ var611 ", rowlock")))
(assert true)
(define-const var2586 String (append/672562846 var3030 var3269)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3030!1 String)
(assert (= var3030!1 (str.++ var3030 var3269)))
(assert true)
(define-const var3784 String (append/672562846 var2586 var962)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2586!1 String)
(assert (= var2586!1 (str.++ var2586 var962)))
(assert true)
(define-const var3887 String (append/672562846 var3784 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3784!1 String)
(assert (= var3784!1 (str.++ var3784 ")")))
(assert true)
(define-const var1728 String (toString/-2075883882 var3887)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3531-to-var3486=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3862=org.hibernate.dialect.SQLServer2005Dialect, var654=r34, var2669=org.hibernate.LockOptions, var3593=r0, var1948=r1, var2608=null_type, var3531=org.hibernate.LockMode, var278=r35, var2469=$i0, var524=$i7, var115=$r36, var1665=r2, var84=$i1, var1814=$i9, var3450=$r37, var336=r3, var3651=$i2, var1647=$r38, var3269=r4, var2698=$i3, var1937=$i11, var808=$r41, var962=$r40, var3005=org.hibernate.dialect.SQLServer2005Dialect$2, var696=$r5, var3486=java.lang.Enum, var225=$i4, var505=$i5, var293=$r42, var1494=$r26, var2024=$r27, var611=$r28, var3030=$r29, var2586=$r30, var3784=$r31, var3887=$r32, var1728=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var3862, r34=var654, org.hibernate.LockOptions=var2669, r0=var3593, r1=var1948, null_type=var2608, org.hibernate.LockMode=var3531, r35=var278, $i0=var2469, $i7=var524, $r36=var115, r2=var1665, $i1=var84, $i9=var1814, $r37=var3450, r3=var336, $i2=var3651, $r38=var1647, r4=var3269, $i3=var2698, $i11=var1937, $r41=var808, $r40=var962, org.hibernate.dialect.SQLServer2005Dialect$2=var3005, $r5=var696, java.lang.Enum=var3486, $i4=var225, $i5=var505, $r42=var293, $r26=var1494, $r27=var2024, $r28=var611, $r29=var3030, $r30=var2586, $r31=var3784, $r32=var3887, $r33=var1728}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11