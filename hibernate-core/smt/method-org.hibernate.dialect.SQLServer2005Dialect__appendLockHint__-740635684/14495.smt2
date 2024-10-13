(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2600 0)
(declare-sort var3997 0)
(declare-sort var1935 0)
(declare-sort var3159 0)
(declare-sort var3380 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3997 String) var3159)
(declare-fun getTimeOut/-863427830 (var3997) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var389) Int)
(declare-fun cast-from-var3159-to-var389 (var3159) var389)
(declare-const null-var2600 var2600)
(declare-const null-var3997 var3997)
(declare-const null-String String)
(declare-const null-var3159 var3159)
(declare-const var3380-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2772 var2600) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2772 null-var2600)))
(declare-const var3030 var3997) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3030 null-var3997)))
(declare-const var399 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var399 null-String)))
(assert true)
(define-const var3093 var3159 (getAliasSpecificLockMode/491246003 var3030 var399)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3093 null-var3159))) ; Cond: r35 != null 
(assert true)
(define-const var2149 Int (getTimeOut/-863427830 var3030)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var316 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2149 var316))) ; Cond: $i0 != $i7 
(define-const var479 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2115 String var479) ; Statement: r2 = $r36 
(assert true)
(define-const var3581 Int (getTimeOut/-863427830 var3030)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1326 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3581 var1326))) ; Cond: $i1 != $i9 
(define-const var3389 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var65 String var3389) ; Statement: r3 = $r37 
(assert true)
(define-const var1017 Int (getTimeOut/-863427830 var3030)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1017 0)))) ; Negate: Cond: $i2 != 0  
(define-const var26 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var1609 String var26) ; Statement: r4 = $r38 
(assert true)
(define-const var3796 Int (getTimeOut/-863427830 var3030)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1381 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3796 var1381)))) ; Negate: Cond: $i3 != $i11  
(define-const var644 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3973 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3828 (Array Int Int) var3380-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2548 Int (ordinal/-291641772 (cast-from-var3159-to-var389 var3093))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2552 Int (select var3828 var2548)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var2552 6)) (and (not (= var2552 5)) (and (not (= var2552 4)) (and (not (= var2552 3)) (and (not (= var2552 2)) (and (not (= var2552 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3159-to-var389=([org.hibernate.LockMode], java.lang.Enum)}
; {var2600=org.hibernate.dialect.SQLServer2005Dialect, var2772=r34, var3997=org.hibernate.LockOptions, var3030=r0, var399=r1, var1935=null_type, var3159=org.hibernate.LockMode, var3093=r35, var2149=$i0, var316=$i7, var479=$r36, var2115=r2, var3581=$i1, var1326=$i9, var3389=$r37, var65=r3, var1017=$i2, var26=$r38, var1609=r4, var3796=$i3, var1381=$i11, var644=$r41, var3973=$r40, var3380=org.hibernate.dialect.SQLServer2005Dialect$2, var3828=$r5, var389=java.lang.Enum, var2548=$i4, var2552=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var2600, r34=var2772, org.hibernate.LockOptions=var3997, r0=var3030, r1=var399, null_type=var1935, org.hibernate.LockMode=var3159, r35=var3093, $i0=var2149, $i7=var316, $r36=var479, r2=var2115, $i1=var3581, $i9=var1326, $r37=var3389, r3=var65, $i2=var1017, $r38=var26, r4=var1609, $i3=var3796, $i11=var1381, $r41=var644, $r40=var3973, org.hibernate.dialect.SQLServer2005Dialect$2=var3380, $r5=var3828, java.lang.Enum=var389, $i4=var2548, $i5=var2552}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11