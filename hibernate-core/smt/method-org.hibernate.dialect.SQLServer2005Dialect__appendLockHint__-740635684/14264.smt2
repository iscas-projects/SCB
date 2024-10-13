(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var116 0)
(declare-sort var1035 0)
(declare-sort var1676 0)
(declare-sort var201 0)
(declare-sort var904 0)
(declare-sort var3350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1035 String) var201)
(declare-fun getTimeOut/-863427830 (var1035) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3350) Int)
(declare-fun cast-from-var201-to-var3350 (var201) var3350)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var116 var116)
(declare-const null-var1035 var1035)
(declare-const null-String String)
(declare-const null-var201 var201)
(declare-const var904-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2689 var116) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2689 null-var116)))
(declare-const var1447 var1035) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1447 null-var1035)))
(declare-const var2796 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2796 null-String)))
(assert true)
(define-const var2653 var201 (getAliasSpecificLockMode/491246003 var1447 var2796)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2653 null-var201))) ; Cond: r35 != null 
(assert true)
(define-const var1768 Int (getTimeOut/-863427830 var1447)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var863 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1768 var863))) ; Cond: $i0 != $i7 
(define-const var1383 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2631 String var1383) ; Statement: r2 = $r36 
(assert true)
(define-const var3852 Int (getTimeOut/-863427830 var1447)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2676 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3852 var2676)))) ; Negate: Cond: $i1 != $i9  
(define-const var1856 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3917 String var1856) ; Statement: r3 = $r37 
(assert true)
(define-const var1178 Int (getTimeOut/-863427830 var1447)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1178 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3531 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3474 String var3531) ; Statement: r4 = $r38 
(assert true)
(define-const var1615 Int (getTimeOut/-863427830 var1447)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1639 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1615 var1639))) ; Cond: $i3 != $i11 
(define-const var360 String "") ; Statement: $r41 = "" 
(define-const var457 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1707 (Array Int Int) var904-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var852 Int (ordinal/-291641772 (cast-from-var201-to-var3350 var2653))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1460 Int (select var1707 var852)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1460 5) (and (not (= var1460 4)) (and (not (= var1460 3)) (and (not (= var1460 2)) (and (not (= var1460 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var499 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var499)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var499!1 String)
(assert (= var499!1 ""))
(assert true)
(define-const var3138 String (append/672562846 var499!1 var2796)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var499!2 String)
(assert (= var499!2 (str.++ var499!1 var2796)))
(assert true)
(define-const var3072 String (append/672562846 var3138 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var3138!1 String)
(assert (= var3138!1 (str.++ var3138 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var2701 String (append/672562846 var3072 var3474)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3072!1 String)
(assert (= var3072!1 (str.++ var3072 var3474)))
(assert true)
(define-const var3601 String (append/672562846 var2701 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 ")")))
(assert true)
(define-const var1563 String (toString/-2075883882 var3601)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var201-to-var3350=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var116=org.hibernate.dialect.SQLServer2005Dialect, var2689=r34, var1035=org.hibernate.LockOptions, var1447=r0, var2796=r1, var1676=null_type, var201=org.hibernate.LockMode, var2653=r35, var1768=$i0, var863=$i7, var1383=$r36, var2631=r2, var3852=$i1, var2676=$i9, var1856=$r37, var3917=r3, var1178=$i2, var3531=$r38, var3474=r4, var1615=$i3, var1639=$i11, var360=$r41, var457=$r40, var904=org.hibernate.dialect.SQLServer2005Dialect$2, var1707=$r5, var3350=java.lang.Enum, var852=$i4, var1460=$i5, var499=$r44, var3138=$r11, var3072=$r12, var2701=$r13, var3601=$r14, var1563=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var116, r34=var2689, org.hibernate.LockOptions=var1035, r0=var1447, r1=var2796, null_type=var1676, org.hibernate.LockMode=var201, r35=var2653, $i0=var1768, $i7=var863, $r36=var1383, r2=var2631, $i1=var3852, $i9=var2676, $r37=var1856, r3=var3917, $i2=var1178, $r38=var3531, r4=var3474, $i3=var1615, $i11=var1639, $r41=var360, $r40=var457, org.hibernate.dialect.SQLServer2005Dialect$2=var904, $r5=var1707, java.lang.Enum=var3350, $i4=var852, $i5=var1460, $r44=var499, $r11=var3138, $r12=var3072, $r13=var2701, $r14=var3601, $r15=var1563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11