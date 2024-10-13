(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var971 0)
(declare-sort var1359 0)
(declare-sort var102 0)
(declare-sort var2584 0)
(declare-sort var217 0)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1359 String) var2584)
(declare-fun getTimeOut/-863427830 (var1359) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1356) Int)
(declare-fun cast-from-var2584-to-var1356 (var2584) var1356)
(declare-const null-var971 var971)
(declare-const null-var1359 var1359)
(declare-const null-String String)
(declare-const null-var2584 var2584)
(declare-const var217-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2519 var971) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2519 null-var971)))
(declare-const var524 var1359) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var524 null-var1359)))
(declare-const var1217 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1217 null-String)))
(assert true)
(define-const var1993 var2584 (getAliasSpecificLockMode/491246003 var524 var1217)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1993 null-var2584))) ; Cond: r35 != null 
(assert true)
(define-const var3380 Int (getTimeOut/-863427830 var524)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2280 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3380 var2280)))) ; Negate: Cond: $i0 != $i7  
(define-const var3807 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3418 String var3807) ; Statement: r2 = $r36 
(assert true)
(define-const var2849 Int (getTimeOut/-863427830 var524)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1451 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2849 var1451)))) ; Negate: Cond: $i1 != $i9  
(define-const var740 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2147 String var740) ; Statement: r3 = $r37 
(assert true)
(define-const var2690 Int (getTimeOut/-863427830 var524)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2690 0)))) ; Negate: Cond: $i2 != 0  
(define-const var586 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3714 String var586) ; Statement: r4 = $r38 
(assert true)
(define-const var3795 Int (getTimeOut/-863427830 var524)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var742 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3795 var742)))) ; Negate: Cond: $i3 != $i11  
(define-const var3585 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var577 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3410 (Array Int Int) var217-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1983 Int (ordinal/-291641772 (cast-from-var2584-to-var1356 var1993))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1440 Int (select var3410 var1983)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var1440 6)) (and (not (= var1440 5)) (and (not (= var1440 4)) (and (not (= var1440 3)) (and (not (= var1440 2)) (and (not (= var1440 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2584-to-var1356=([org.hibernate.LockMode], java.lang.Enum)}
; {var971=org.hibernate.dialect.SQLServer2005Dialect, var2519=r34, var1359=org.hibernate.LockOptions, var524=r0, var1217=r1, var102=null_type, var2584=org.hibernate.LockMode, var1993=r35, var3380=$i0, var2280=$i7, var3807=$r36, var3418=r2, var2849=$i1, var1451=$i9, var740=$r37, var2147=r3, var2690=$i2, var586=$r38, var3714=r4, var3795=$i3, var742=$i11, var3585=$r41, var577=$r40, var217=org.hibernate.dialect.SQLServer2005Dialect$2, var3410=$r5, var1356=java.lang.Enum, var1983=$i4, var1440=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var971, r34=var2519, org.hibernate.LockOptions=var1359, r0=var524, r1=var1217, null_type=var102, org.hibernate.LockMode=var2584, r35=var1993, $i0=var3380, $i7=var2280, $r36=var3807, r2=var3418, $i1=var2849, $i9=var1451, $r37=var740, r3=var2147, $i2=var2690, $r38=var586, r4=var3714, $i3=var3795, $i11=var742, $r41=var3585, $r40=var577, org.hibernate.dialect.SQLServer2005Dialect$2=var217, $r5=var3410, java.lang.Enum=var1356, $i4=var1983, $i5=var1440}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11