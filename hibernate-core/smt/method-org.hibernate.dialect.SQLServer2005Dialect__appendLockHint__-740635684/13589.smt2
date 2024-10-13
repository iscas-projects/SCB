(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var675 0)
(declare-sort var635 0)
(declare-sort var743 0)
(declare-sort var3061 0)
(declare-sort var1571 0)
(declare-sort var1077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var635 String) var3061)
(declare-fun getTimeOut/-863427830 (var635) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1077) Int)
(declare-fun cast-from-var3061-to-var1077 (var3061) var1077)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var675 var675)
(declare-const null-var635 var635)
(declare-const null-String String)
(declare-const null-var3061 var3061)
(declare-const var1571-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3238 var675) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3238 null-var675)))
(declare-const var604 var635) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var604 null-var635)))
(declare-const var3139 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3139 null-String)))
(assert true)
(define-const var663 var3061 (getAliasSpecificLockMode/491246003 var604 var3139)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var663 null-var3061))) ; Cond: r35 != null 
(assert true)
(define-const var3844 Int (getTimeOut/-863427830 var604)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1127 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3844 var1127)))) ; Negate: Cond: $i0 != $i7  
(define-const var2889 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var875 String var2889) ; Statement: r2 = $r36 
(assert true)
(define-const var3399 Int (getTimeOut/-863427830 var604)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1720 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3399 var1720)))) ; Negate: Cond: $i1 != $i9  
(define-const var3830 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var1078 String var3830) ; Statement: r3 = $r37 
(assert true)
(define-const var1728 Int (getTimeOut/-863427830 var604)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1728 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2561 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3116 String var2561) ; Statement: r4 = $r38 
(assert true)
(define-const var85 Int (getTimeOut/-863427830 var604)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2232 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var85 var2232)))) ; Negate: Cond: $i3 != $i11  
(define-const var760 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1781 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var493 (Array Int Int) var1571-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2377 Int (ordinal/-291641772 (cast-from-var3061-to-var1077 var663))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var922 Int (select var493 var2377)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var922 6) (and (not (= var922 5)) (and (not (= var922 4)) (and (not (= var922 3)) (and (not (= var922 2)) (and (not (= var922 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var1207 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1207)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1207!1 String)
(assert (= var1207!1 ""))
(assert true)
(define-const var3725 String (append/672562846 var1207!1 var3139)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1207!2 String)
(assert (= var1207!2 (str.++ var1207!1 var3139)))
(assert true)
(define-const var3809 String (append/672562846 var3725 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3725!1 String)
(assert (= var3725!1 (str.++ var3725 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var1741 String (toString/-2075883882 var3809)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3061-to-var1077=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var675=org.hibernate.dialect.SQLServer2005Dialect, var3238=r34, var635=org.hibernate.LockOptions, var604=r0, var3139=r1, var743=null_type, var3061=org.hibernate.LockMode, var663=r35, var3844=$i0, var1127=$i7, var2889=$r36, var875=r2, var3399=$i1, var1720=$i9, var3830=$r37, var1078=r3, var1728=$i2, var2561=$r38, var3116=r4, var85=$i3, var2232=$i11, var760=$r41, var1781=$r40, var1571=org.hibernate.dialect.SQLServer2005Dialect$2, var493=$r5, var1077=java.lang.Enum, var2377=$i4, var922=$i5, var1207=$r45, var3725=$r7, var3809=$r8, var1741=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var675, r34=var3238, org.hibernate.LockOptions=var635, r0=var604, r1=var3139, null_type=var743, org.hibernate.LockMode=var3061, r35=var663, $i0=var3844, $i7=var1127, $r36=var2889, r2=var875, $i1=var3399, $i9=var1720, $r37=var3830, r3=var1078, $i2=var1728, $r38=var2561, r4=var3116, $i3=var85, $i11=var2232, $r41=var760, $r40=var1781, org.hibernate.dialect.SQLServer2005Dialect$2=var1571, $r5=var493, java.lang.Enum=var1077, $i4=var2377, $i5=var922, $r45=var1207, $r7=var3725, $r8=var3809, $r9=var1741}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11