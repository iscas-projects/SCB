(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var2693 0)
(declare-sort var2623 0)
(declare-sort var1725 0)
(declare-sort var894 0)
(declare-sort var3809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2693 String) var1725)
(declare-fun getTimeOut/-863427830 (var2693) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3809) Int)
(declare-fun cast-from-var1725-to-var3809 (var1725) var3809)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1777 var1777)
(declare-const null-var2693 var2693)
(declare-const null-String String)
(declare-const null-var1725 var1725)
(declare-const var894-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var539 var1777) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var539 null-var1777)))
(declare-const var1404 var2693) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1404 null-var2693)))
(declare-const var2400 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2400 null-String)))
(assert true)
(define-const var1141 var1725 (getAliasSpecificLockMode/491246003 var1404 var2400)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1141 null-var1725))) ; Cond: r35 != null 
(assert true)
(define-const var3376 Int (getTimeOut/-863427830 var1404)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2521 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3376 var2521))) ; Cond: $i0 != $i7 
(define-const var3321 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2608 String var3321) ; Statement: r2 = $r36 
(assert true)
(define-const var2095 Int (getTimeOut/-863427830 var1404)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3340 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2095 var3340))) ; Cond: $i1 != $i9 
(define-const var3563 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1307 String var3563) ; Statement: r3 = $r37 
(assert true)
(define-const var1454 Int (getTimeOut/-863427830 var1404)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1454 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1640 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2080 String var1640) ; Statement: r4 = $r38 
(assert true)
(define-const var2957 Int (getTimeOut/-863427830 var1404)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var524 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var2957 var524)))) ; Negate: Cond: $i3 != $i11  
(define-const var2601 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var247 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var998 (Array Int Int) var894-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3452 Int (ordinal/-291641772 (cast-from-var1725-to-var3809 var1141))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3161 Int (select var998 var3452)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3161 6) (and (not (= var3161 5)) (and (not (= var3161 4)) (and (not (= var3161 3)) (and (not (= var3161 2)) (and (not (= var3161 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var2523 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2523)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2523!1 String)
(assert (= var2523!1 ""))
(assert true)
(define-const var3456 String (append/672562846 var2523!1 var2400)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2523!2 String)
(assert (= var2523!2 (str.++ var2523!1 var2400)))
(assert true)
(define-const var2124 String (append/672562846 var3456 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3456!1 String)
(assert (= var3456!1 (str.++ var3456 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var779 String (toString/-2075883882 var2124)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1725-to-var3809=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1777=org.hibernate.dialect.SQLServer2005Dialect, var539=r34, var2693=org.hibernate.LockOptions, var1404=r0, var2400=r1, var2623=null_type, var1725=org.hibernate.LockMode, var1141=r35, var3376=$i0, var2521=$i7, var3321=$r36, var2608=r2, var2095=$i1, var3340=$i9, var3563=$r37, var1307=r3, var1454=$i2, var1640=$r38, var2080=r4, var2957=$i3, var524=$i11, var2601=$r41, var247=$r40, var894=org.hibernate.dialect.SQLServer2005Dialect$2, var998=$r5, var3809=java.lang.Enum, var3452=$i4, var3161=$i5, var2523=$r45, var3456=$r7, var2124=$r8, var779=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var1777, r34=var539, org.hibernate.LockOptions=var2693, r0=var1404, r1=var2400, null_type=var2623, org.hibernate.LockMode=var1725, r35=var1141, $i0=var3376, $i7=var2521, $r36=var3321, r2=var2608, $i1=var2095, $i9=var3340, $r37=var3563, r3=var1307, $i2=var1454, $r38=var1640, r4=var2080, $i3=var2957, $i11=var524, $r41=var2601, $r40=var247, org.hibernate.dialect.SQLServer2005Dialect$2=var894, $r5=var998, java.lang.Enum=var3809, $i4=var3452, $i5=var3161, $r45=var2523, $r7=var3456, $r8=var2124, $r9=var779}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11