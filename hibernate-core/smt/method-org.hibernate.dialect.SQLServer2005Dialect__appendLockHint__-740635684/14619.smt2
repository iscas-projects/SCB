(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort var3122 0)
(declare-sort var1765 0)
(declare-sort var626 0)
(declare-sort var1716 0)
(declare-sort var2088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3122 String) var626)
(declare-fun getTimeOut/-863427830 (var3122) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2088) Int)
(declare-fun cast-from-var626-to-var2088 (var626) var2088)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3271 var3271)
(declare-const null-var3122 var3122)
(declare-const null-String String)
(declare-const null-var626 var626)
(declare-const var1716-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1548 var3271) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1548 null-var3271)))
(declare-const var2992 var3122) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2992 null-var3122)))
(declare-const var2163 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2163 null-String)))
(assert true)
(define-const var314 var626 (getAliasSpecificLockMode/491246003 var2992 var2163)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var314 null-var626))) ; Cond: r35 != null 
(assert true)
(define-const var1451 Int (getTimeOut/-863427830 var2992)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2698 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1451 var2698))) ; Cond: $i0 != $i7 
(define-const var3017 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var1129 String var3017) ; Statement: r2 = $r36 
(assert true)
(define-const var2453 Int (getTimeOut/-863427830 var2992)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1656 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2453 var1656))) ; Cond: $i1 != $i9 
(define-const var1022 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var206 String var1022) ; Statement: r3 = $r37 
(assert true)
(define-const var3515 Int (getTimeOut/-863427830 var2992)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3515 0))) ; Cond: $i2 != 0 
(define-const var3786 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var313 String var3786) ; Statement: r4 = $r38 
(assert true)
(define-const var2271 Int (getTimeOut/-863427830 var2992)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1729 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2271 var1729))) ; Cond: $i3 != $i11 
(define-const var3144 String "") ; Statement: $r41 = "" 
(define-const var286 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2782 (Array Int Int) var1716-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2384 Int (ordinal/-291641772 (cast-from-var626-to-var2088 var314))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var432 Int (select var2782 var2384)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var432 5) (and (not (= var432 4)) (and (not (= var432 3)) (and (not (= var432 2)) (and (not (= var432 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var1732 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1732)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1732!1 String)
(assert (= var1732!1 ""))
(assert true)
(define-const var1570 String (append/672562846 var1732!1 var2163)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1732!2 String)
(assert (= var1732!2 (str.++ var1732!1 var2163)))
(assert true)
(define-const var2230 String (append/672562846 var1570 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var1570!1 String)
(assert (= var1570!1 (str.++ var1570 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var3451 String (append/672562846 var2230 var313)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2230!1 String)
(assert (= var2230!1 (str.++ var2230 var313)))
(assert true)
(define-const var3769 String (append/672562846 var3451 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3451!1 String)
(assert (= var3451!1 (str.++ var3451 ")")))
(assert true)
(define-const var1610 String (toString/-2075883882 var3769)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var626-to-var2088=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3271=org.hibernate.dialect.SQLServer2005Dialect, var1548=r34, var3122=org.hibernate.LockOptions, var2992=r0, var2163=r1, var1765=null_type, var626=org.hibernate.LockMode, var314=r35, var1451=$i0, var2698=$i7, var3017=$r36, var1129=r2, var2453=$i1, var1656=$i9, var1022=$r37, var206=r3, var3515=$i2, var3786=$r38, var313=r4, var2271=$i3, var1729=$i11, var3144=$r41, var286=$r40, var1716=org.hibernate.dialect.SQLServer2005Dialect$2, var2782=$r5, var2088=java.lang.Enum, var2384=$i4, var432=$i5, var1732=$r44, var1570=$r11, var2230=$r12, var3451=$r13, var3769=$r14, var1610=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var3271, r34=var1548, org.hibernate.LockOptions=var3122, r0=var2992, r1=var2163, null_type=var1765, org.hibernate.LockMode=var626, r35=var314, $i0=var1451, $i7=var2698, $r36=var3017, r2=var1129, $i1=var2453, $i9=var1656, $r37=var1022, r3=var206, $i2=var3515, $r38=var3786, r4=var313, $i3=var2271, $i11=var1729, $r41=var3144, $r40=var286, org.hibernate.dialect.SQLServer2005Dialect$2=var1716, $r5=var2782, java.lang.Enum=var2088, $i4=var2384, $i5=var432, $r44=var1732, $r11=var1570, $r12=var2230, $r13=var3451, $r14=var3769, $r15=var1610}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11