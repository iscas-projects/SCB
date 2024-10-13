(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var1332 0)
(declare-sort var483 0)
(declare-sort var3915 0)
(declare-sort var2594 0)
(declare-sort var995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1332 String) var3915)
(declare-fun getTimeOut/-863427830 (var1332) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var995) Int)
(declare-fun cast-from-var3915-to-var995 (var3915) var995)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2338 var2338)
(declare-const null-var1332 var1332)
(declare-const null-String String)
(declare-const null-var3915 var3915)
(declare-const var2594-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3272 var2338) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3272 null-var2338)))
(declare-const var1285 var1332) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1285 null-var1332)))
(declare-const var1075 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1075 null-String)))
(assert true)
(define-const var3894 var3915 (getAliasSpecificLockMode/491246003 var1285 var1075)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3894 null-var3915))) ; Cond: r35 != null 
(assert true)
(define-const var881 Int (getTimeOut/-863427830 var1285)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1570 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var881 var1570))) ; Cond: $i0 != $i7 
(define-const var3656 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2314 String var3656) ; Statement: r2 = $r36 
(assert true)
(define-const var2916 Int (getTimeOut/-863427830 var1285)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2331 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2916 var2331)))) ; Negate: Cond: $i1 != $i9  
(define-const var2926 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2324 String var2926) ; Statement: r3 = $r37 
(assert true)
(define-const var3942 Int (getTimeOut/-863427830 var1285)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3942 0))) ; Cond: $i2 != 0 
(define-const var1249 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var628 String var1249) ; Statement: r4 = $r38 
(assert true)
(define-const var3945 Int (getTimeOut/-863427830 var1285)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1043 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3945 var1043))) ; Cond: $i3 != $i11 
(define-const var2557 String "") ; Statement: $r41 = "" 
(define-const var2758 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1982 (Array Int Int) var2594-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3396 Int (ordinal/-291641772 (cast-from-var3915-to-var995 var3894))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2569 Int (select var1982 var3396)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2569 5) (and (not (= var2569 4)) (and (not (= var2569 3)) (and (not (= var2569 2)) (and (not (= var2569 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var1492 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1492)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1492!1 String)
(assert (= var1492!1 ""))
(assert true)
(define-const var3974 String (append/672562846 var1492!1 var1075)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1492!2 String)
(assert (= var1492!2 (str.++ var1492!1 var1075)))
(assert true)
(define-const var850 String (append/672562846 var3974 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var3974!1 String)
(assert (= var3974!1 (str.++ var3974 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var56 String (append/672562846 var850 var628)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var850!1 String)
(assert (= var850!1 (str.++ var850 var628)))
(assert true)
(define-const var2920 String (append/672562846 var56 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var56!1 String)
(assert (= var56!1 (str.++ var56 ")")))
(assert true)
(define-const var1345 String (toString/-2075883882 var2920)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3915-to-var995=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2338=org.hibernate.dialect.SQLServer2005Dialect, var3272=r34, var1332=org.hibernate.LockOptions, var1285=r0, var1075=r1, var483=null_type, var3915=org.hibernate.LockMode, var3894=r35, var881=$i0, var1570=$i7, var3656=$r36, var2314=r2, var2916=$i1, var2331=$i9, var2926=$r37, var2324=r3, var3942=$i2, var1249=$r38, var628=r4, var3945=$i3, var1043=$i11, var2557=$r41, var2758=$r40, var2594=org.hibernate.dialect.SQLServer2005Dialect$2, var1982=$r5, var995=java.lang.Enum, var3396=$i4, var2569=$i5, var1492=$r44, var3974=$r11, var850=$r12, var56=$r13, var2920=$r14, var1345=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var2338, r34=var3272, org.hibernate.LockOptions=var1332, r0=var1285, r1=var1075, null_type=var483, org.hibernate.LockMode=var3915, r35=var3894, $i0=var881, $i7=var1570, $r36=var3656, r2=var2314, $i1=var2916, $i9=var2331, $r37=var2926, r3=var2324, $i2=var3942, $r38=var1249, r4=var628, $i3=var3945, $i11=var1043, $r41=var2557, $r40=var2758, org.hibernate.dialect.SQLServer2005Dialect$2=var2594, $r5=var1982, java.lang.Enum=var995, $i4=var3396, $i5=var2569, $r44=var1492, $r11=var3974, $r12=var850, $r13=var56, $r14=var2920, $r15=var1345}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11