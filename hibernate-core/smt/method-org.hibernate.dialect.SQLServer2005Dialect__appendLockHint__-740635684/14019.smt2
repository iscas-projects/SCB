(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1258 0)
(declare-sort var594 0)
(declare-sort var1320 0)
(declare-sort var3047 0)
(declare-sort var2913 0)
(declare-sort var1328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var594 String) var3047)
(declare-fun getTimeOut/-863427830 (var594) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1328) Int)
(declare-fun cast-from-var3047-to-var1328 (var3047) var1328)
(declare-const null-var1258 var1258)
(declare-const null-var594 var594)
(declare-const null-String String)
(declare-const null-var3047 var3047)
(declare-const var2913-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3441 var1258) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3441 null-var1258)))
(declare-const var3667 var594) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3667 null-var594)))
(declare-const var1610 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1610 null-String)))
(assert true)
(define-const var776 var3047 (getAliasSpecificLockMode/491246003 var3667 var1610)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var776 null-var3047))) ; Cond: r35 != null 
(assert true)
(define-const var2521 Int (getTimeOut/-863427830 var3667)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1825 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2521 var1825)))) ; Negate: Cond: $i0 != $i7  
(define-const var1678 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var935 String var1678) ; Statement: r2 = $r36 
(assert true)
(define-const var3163 Int (getTimeOut/-863427830 var3667)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1354 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3163 var1354))) ; Cond: $i1 != $i9 
(define-const var3167 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1411 String var3167) ; Statement: r3 = $r37 
(assert true)
(define-const var1576 Int (getTimeOut/-863427830 var3667)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1576 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2505 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2420 String var2505) ; Statement: r4 = $r38 
(assert true)
(define-const var3704 Int (getTimeOut/-863427830 var3667)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3855 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3704 var3855))) ; Cond: $i3 != $i11 
(define-const var3104 String "") ; Statement: $r41 = "" 
(define-const var1262 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2988 (Array Int Int) var2913-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3730 Int (ordinal/-291641772 (cast-from-var3047-to-var1328 var776))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2524 Int (select var2988 var3730)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var2524 6)) (and (not (= var2524 5)) (and (not (= var2524 4)) (and (not (= var2524 3)) (and (not (= var2524 2)) (and (not (= var2524 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3047-to-var1328=([org.hibernate.LockMode], java.lang.Enum)}
; {var1258=org.hibernate.dialect.SQLServer2005Dialect, var3441=r34, var594=org.hibernate.LockOptions, var3667=r0, var1610=r1, var1320=null_type, var3047=org.hibernate.LockMode, var776=r35, var2521=$i0, var1825=$i7, var1678=$r36, var935=r2, var3163=$i1, var1354=$i9, var3167=$r37, var1411=r3, var1576=$i2, var2505=$r38, var2420=r4, var3704=$i3, var3855=$i11, var3104=$r41, var1262=$r40, var2913=org.hibernate.dialect.SQLServer2005Dialect$2, var2988=$r5, var1328=java.lang.Enum, var3730=$i4, var2524=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var1258, r34=var3441, org.hibernate.LockOptions=var594, r0=var3667, r1=var1610, null_type=var1320, org.hibernate.LockMode=var3047, r35=var776, $i0=var2521, $i7=var1825, $r36=var1678, r2=var935, $i1=var3163, $i9=var1354, $r37=var3167, r3=var1411, $i2=var1576, $r38=var2505, r4=var2420, $i3=var3704, $i11=var3855, $r41=var3104, $r40=var1262, org.hibernate.dialect.SQLServer2005Dialect$2=var2913, $r5=var2988, java.lang.Enum=var1328, $i4=var3730, $i5=var2524}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11