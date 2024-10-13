(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2391 0)
(declare-sort var3005 0)
(declare-sort var839 0)
(declare-sort var3089 0)
(declare-sort var137 0)
(declare-sort var3424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3005 String) var3089)
(declare-fun getTimeOut/-863427830 (var3005) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3424) Int)
(declare-fun cast-from-var3089-to-var3424 (var3089) var3424)
(declare-const null-var2391 var2391)
(declare-const null-var3005 var3005)
(declare-const null-String String)
(declare-const null-var3089 var3089)
(declare-const var137-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1839 var2391) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1839 null-var2391)))
(declare-const var3927 var3005) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3927 null-var3005)))
(declare-const var3357 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3357 null-String)))
(assert true)
(define-const var10 var3089 (getAliasSpecificLockMode/491246003 var3927 var3357)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var10 null-var3089))) ; Cond: r35 != null 
(assert true)
(define-const var3666 Int (getTimeOut/-863427830 var3927)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2549 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3666 var2549))) ; Cond: $i0 != $i7 
(define-const var778 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var1067 String var778) ; Statement: r2 = $r36 
(assert true)
(define-const var2053 Int (getTimeOut/-863427830 var3927)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2848 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2053 var2848))) ; Cond: $i1 != $i9 
(define-const var3060 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var215 String var3060) ; Statement: r3 = $r37 
(assert true)
(define-const var3391 Int (getTimeOut/-863427830 var3927)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3391 0)))) ; Negate: Cond: $i2 != 0  
(define-const var823 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2291 String var823) ; Statement: r4 = $r38 
(assert true)
(define-const var1003 Int (getTimeOut/-863427830 var3927)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2989 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1003 var2989))) ; Cond: $i3 != $i11 
(define-const var3734 String "") ; Statement: $r41 = "" 
(define-const var3055 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2031 (Array Int Int) var137-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1897 Int (ordinal/-291641772 (cast-from-var3089-to-var3424 var10))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var802 Int (select var2031 var1897)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var802 6)) (and (not (= var802 5)) (and (not (= var802 4)) (and (not (= var802 3)) (and (not (= var802 2)) (and (not (= var802 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3089-to-var3424=([org.hibernate.LockMode], java.lang.Enum)}
; {var2391=org.hibernate.dialect.SQLServer2005Dialect, var1839=r34, var3005=org.hibernate.LockOptions, var3927=r0, var3357=r1, var839=null_type, var3089=org.hibernate.LockMode, var10=r35, var3666=$i0, var2549=$i7, var778=$r36, var1067=r2, var2053=$i1, var2848=$i9, var3060=$r37, var215=r3, var3391=$i2, var823=$r38, var2291=r4, var1003=$i3, var2989=$i11, var3734=$r41, var3055=$r40, var137=org.hibernate.dialect.SQLServer2005Dialect$2, var2031=$r5, var3424=java.lang.Enum, var1897=$i4, var802=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var2391, r34=var1839, org.hibernate.LockOptions=var3005, r0=var3927, r1=var3357, null_type=var839, org.hibernate.LockMode=var3089, r35=var10, $i0=var3666, $i7=var2549, $r36=var778, r2=var1067, $i1=var2053, $i9=var2848, $r37=var3060, r3=var215, $i2=var3391, $r38=var823, r4=var2291, $i3=var1003, $i11=var2989, $r41=var3734, $r40=var3055, org.hibernate.dialect.SQLServer2005Dialect$2=var137, $r5=var2031, java.lang.Enum=var3424, $i4=var1897, $i5=var802}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11