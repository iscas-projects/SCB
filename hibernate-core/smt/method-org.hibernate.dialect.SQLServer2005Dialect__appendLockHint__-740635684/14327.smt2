(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var356 0)
(declare-sort var1708 0)
(declare-sort var1809 0)
(declare-sort var1355 0)
(declare-sort var2644 0)
(declare-sort var1932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1708 String) var1355)
(declare-fun getTimeOut/-863427830 (var1708) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1932) Int)
(declare-fun cast-from-var1355-to-var1932 (var1355) var1932)
(declare-const null-var356 var356)
(declare-const null-var1708 var1708)
(declare-const null-String String)
(declare-const null-var1355 var1355)
(declare-const var2644-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3465 var356) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3465 null-var356)))
(declare-const var2464 var1708) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2464 null-var1708)))
(declare-const var2487 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2487 null-String)))
(assert true)
(define-const var3621 var1355 (getAliasSpecificLockMode/491246003 var2464 var2487)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3621 null-var1355))) ; Cond: r35 != null 
(assert true)
(define-const var1644 Int (getTimeOut/-863427830 var2464)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var118 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1644 var118))) ; Cond: $i0 != $i7 
(define-const var1601 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var806 String var1601) ; Statement: r2 = $r36 
(assert true)
(define-const var3746 Int (getTimeOut/-863427830 var2464)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3094 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3746 var3094)))) ; Negate: Cond: $i1 != $i9  
(define-const var2362 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var1202 String var2362) ; Statement: r3 = $r37 
(assert true)
(define-const var2046 Int (getTimeOut/-863427830 var2464)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2046 0))) ; Cond: $i2 != 0 
(define-const var479 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2012 String var479) ; Statement: r4 = $r38 
(assert true)
(define-const var1712 Int (getTimeOut/-863427830 var2464)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2092 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1712 var2092)))) ; Negate: Cond: $i3 != $i11  
(define-const var585 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1521 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var1430 (Array Int Int) var2644-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2061 Int (ordinal/-291641772 (cast-from-var1355-to-var1932 var3621))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1528 Int (select var1430 var2061)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var1528 6)) (and (not (= var1528 5)) (and (not (= var1528 4)) (and (not (= var1528 3)) (and (not (= var1528 2)) (and (not (= var1528 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1355-to-var1932=([org.hibernate.LockMode], java.lang.Enum)}
; {var356=org.hibernate.dialect.SQLServer2005Dialect, var3465=r34, var1708=org.hibernate.LockOptions, var2464=r0, var2487=r1, var1809=null_type, var1355=org.hibernate.LockMode, var3621=r35, var1644=$i0, var118=$i7, var1601=$r36, var806=r2, var3746=$i1, var3094=$i9, var2362=$r37, var1202=r3, var2046=$i2, var479=$r38, var2012=r4, var1712=$i3, var2092=$i11, var585=$r41, var1521=$r40, var2644=org.hibernate.dialect.SQLServer2005Dialect$2, var1430=$r5, var1932=java.lang.Enum, var2061=$i4, var1528=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var356, r34=var3465, org.hibernate.LockOptions=var1708, r0=var2464, r1=var2487, null_type=var1809, org.hibernate.LockMode=var1355, r35=var3621, $i0=var1644, $i7=var118, $r36=var1601, r2=var806, $i1=var3746, $i9=var3094, $r37=var2362, r3=var1202, $i2=var2046, $r38=var479, r4=var2012, $i3=var1712, $i11=var2092, $r41=var585, $r40=var1521, org.hibernate.dialect.SQLServer2005Dialect$2=var2644, $r5=var1430, java.lang.Enum=var1932, $i4=var2061, $i5=var1528}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11