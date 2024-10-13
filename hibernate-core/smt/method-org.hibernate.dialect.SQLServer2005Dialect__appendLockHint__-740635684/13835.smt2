(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3174 0)
(declare-sort var1350 0)
(declare-sort var3643 0)
(declare-sort var3727 0)
(declare-sort var3317 0)
(declare-sort var3031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1350 String) var3727)
(declare-fun getTimeOut/-863427830 (var1350) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3031) Int)
(declare-fun cast-from-var3727-to-var3031 (var3727) var3031)
(declare-const null-var3174 var3174)
(declare-const null-var1350 var1350)
(declare-const null-String String)
(declare-const null-var3727 var3727)
(declare-const var3317-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3566 var3174) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3566 null-var3174)))
(declare-const var3729 var1350) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3729 null-var1350)))
(declare-const var3137 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3137 null-String)))
(assert true)
(define-const var3626 var3727 (getAliasSpecificLockMode/491246003 var3729 var3137)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3626 null-var3727))) ; Cond: r35 != null 
(assert true)
(define-const var2102 Int (getTimeOut/-863427830 var3729)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var294 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2102 var294)))) ; Negate: Cond: $i0 != $i7  
(define-const var1266 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3954 String var1266) ; Statement: r2 = $r36 
(assert true)
(define-const var1405 Int (getTimeOut/-863427830 var3729)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1237 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var1405 var1237)))) ; Negate: Cond: $i1 != $i9  
(define-const var710 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var763 String var710) ; Statement: r3 = $r37 
(assert true)
(define-const var3556 Int (getTimeOut/-863427830 var3729)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3556 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2360 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2921 String var2360) ; Statement: r4 = $r38 
(assert true)
(define-const var2651 Int (getTimeOut/-863427830 var3729)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var75 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2651 var75))) ; Cond: $i3 != $i11 
(define-const var1307 String "") ; Statement: $r41 = "" 
(define-const var606 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1700 (Array Int Int) var3317-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3284 Int (ordinal/-291641772 (cast-from-var3727-to-var3031 var3626))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1891 Int (select var1700 var3284)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var1891 6)) (and (not (= var1891 5)) (and (not (= var1891 4)) (and (not (= var1891 3)) (and (not (= var1891 2)) (and (not (= var1891 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3727-to-var3031=([org.hibernate.LockMode], java.lang.Enum)}
; {var3174=org.hibernate.dialect.SQLServer2005Dialect, var3566=r34, var1350=org.hibernate.LockOptions, var3729=r0, var3137=r1, var3643=null_type, var3727=org.hibernate.LockMode, var3626=r35, var2102=$i0, var294=$i7, var1266=$r36, var3954=r2, var1405=$i1, var1237=$i9, var710=$r37, var763=r3, var3556=$i2, var2360=$r38, var2921=r4, var2651=$i3, var75=$i11, var1307=$r41, var606=$r40, var3317=org.hibernate.dialect.SQLServer2005Dialect$2, var1700=$r5, var3031=java.lang.Enum, var3284=$i4, var1891=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var3174, r34=var3566, org.hibernate.LockOptions=var1350, r0=var3729, r1=var3137, null_type=var3643, org.hibernate.LockMode=var3727, r35=var3626, $i0=var2102, $i7=var294, $r36=var1266, r2=var3954, $i1=var1405, $i9=var1237, $r37=var710, r3=var763, $i2=var3556, $r38=var2360, r4=var2921, $i3=var2651, $i11=var75, $r41=var1307, $r40=var606, org.hibernate.dialect.SQLServer2005Dialect$2=var3317, $r5=var1700, java.lang.Enum=var3031, $i4=var3284, $i5=var1891}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11