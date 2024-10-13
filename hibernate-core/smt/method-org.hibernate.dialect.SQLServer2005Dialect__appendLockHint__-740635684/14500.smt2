(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3033 0)
(declare-sort var2548 0)
(declare-sort var3274 0)
(declare-sort var1583 0)
(declare-sort var2822 0)
(declare-sort var488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2548 String) var1583)
(declare-fun getTimeOut/-863427830 (var2548) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var488) Int)
(declare-fun cast-from-var1583-to-var488 (var1583) var488)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3033 var3033)
(declare-const null-var2548 var2548)
(declare-const null-String String)
(declare-const null-var1583 var1583)
(declare-const var2822-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var594 var3033) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var594 null-var3033)))
(declare-const var141 var2548) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var141 null-var2548)))
(declare-const var435 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var435 null-String)))
(assert true)
(define-const var1453 var1583 (getAliasSpecificLockMode/491246003 var141 var435)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1453 null-var1583))) ; Cond: r35 != null 
(assert true)
(define-const var3516 Int (getTimeOut/-863427830 var141)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2379 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3516 var2379))) ; Cond: $i0 != $i7 
(define-const var2327 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2087 String var2327) ; Statement: r2 = $r36 
(assert true)
(define-const var3123 Int (getTimeOut/-863427830 var141)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3481 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3123 var3481))) ; Cond: $i1 != $i9 
(define-const var1170 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1666 String var1170) ; Statement: r3 = $r37 
(assert true)
(define-const var44 Int (getTimeOut/-863427830 var141)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var44 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1327 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2713 String var1327) ; Statement: r4 = $r38 
(assert true)
(define-const var713 Int (getTimeOut/-863427830 var141)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var721 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var713 var721))) ; Cond: $i3 != $i11 
(define-const var2242 String "") ; Statement: $r41 = "" 
(define-const var593 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3228 (Array Int Int) var2822-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var538 Int (ordinal/-291641772 (cast-from-var1583-to-var488 var1453))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1767 Int (select var3228 var538)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1767 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var3179 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3179)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3179!1 String)
(assert (= var3179!1 ""))
(assert true)
(define-const var1931 String (append/672562846 var3179!1 var435)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3179!2 String)
(assert (= var3179!2 (str.++ var3179!1 var435)))
(assert true)
(define-const var1715 String (append/672562846 var1931 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1931!1 String)
(assert (= var1931!1 (str.++ var1931 " with (")))
(assert true)
(define-const var1078 String (append/672562846 var1715 var2087)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1715!1 String)
(assert (= var1715!1 (str.++ var1715 var2087)))
(assert true)
(define-const var2292 String (append/672562846 var1078 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var1078!1 String)
(assert (= var1078!1 (str.++ var1078 ", rowlock")))
(assert true)
(define-const var3217 String (append/672562846 var2292 var2713)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2292!1 String)
(assert (= var2292!1 (str.++ var2292 var2713)))
(assert true)
(define-const var3410 String (append/672562846 var3217 var593)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3217!1 String)
(assert (= var3217!1 (str.++ var3217 var593)))
(assert true)
(define-const var374 String (append/672562846 var3410 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3410!1 String)
(assert (= var3410!1 (str.++ var3410 ")")))
(assert true)
(define-const var3748 String (toString/-2075883882 var374)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1583-to-var488=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3033=org.hibernate.dialect.SQLServer2005Dialect, var594=r34, var2548=org.hibernate.LockOptions, var141=r0, var435=r1, var3274=null_type, var1583=org.hibernate.LockMode, var1453=r35, var3516=$i0, var2379=$i7, var2327=$r36, var2087=r2, var3123=$i1, var3481=$i9, var1170=$r37, var1666=r3, var44=$i2, var1327=$r38, var2713=r4, var713=$i3, var721=$i11, var2242=$r41, var593=$r40, var2822=org.hibernate.dialect.SQLServer2005Dialect$2, var3228=$r5, var488=java.lang.Enum, var538=$i4, var1767=$i5, var3179=$r42, var1931=$r26, var1715=$r27, var1078=$r28, var2292=$r29, var3217=$r30, var3410=$r31, var374=$r32, var3748=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var3033, r34=var594, org.hibernate.LockOptions=var2548, r0=var141, r1=var435, null_type=var3274, org.hibernate.LockMode=var1583, r35=var1453, $i0=var3516, $i7=var2379, $r36=var2327, r2=var2087, $i1=var3123, $i9=var3481, $r37=var1170, r3=var1666, $i2=var44, $r38=var1327, r4=var2713, $i3=var713, $i11=var721, $r41=var2242, $r40=var593, org.hibernate.dialect.SQLServer2005Dialect$2=var2822, $r5=var3228, java.lang.Enum=var488, $i4=var538, $i5=var1767, $r42=var3179, $r26=var1931, $r27=var1715, $r28=var1078, $r29=var2292, $r30=var3217, $r31=var3410, $r32=var374, $r33=var3748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11