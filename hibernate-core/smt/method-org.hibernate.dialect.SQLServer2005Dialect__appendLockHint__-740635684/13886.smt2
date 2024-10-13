(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2558 0)
(declare-sort var2779 0)
(declare-sort var3822 0)
(declare-sort var1798 0)
(declare-sort var2444 0)
(declare-sort var1466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2779 String) var1798)
(declare-fun getTimeOut/-863427830 (var2779) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1466) Int)
(declare-fun cast-from-var1798-to-var1466 (var1798) var1466)
(declare-const null-var2558 var2558)
(declare-const null-var2779 var2779)
(declare-const null-String String)
(declare-const null-var1798 var1798)
(declare-const var2444-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3313 var2558) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3313 null-var2558)))
(declare-const var51 var2779) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var51 null-var2779)))
(declare-const var666 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var666 null-String)))
(assert true)
(define-const var529 var1798 (getAliasSpecificLockMode/491246003 var51 var666)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var529 null-var1798))) ; Cond: r35 != null 
(assert true)
(define-const var777 Int (getTimeOut/-863427830 var51)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1736 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var777 var1736)))) ; Negate: Cond: $i0 != $i7  
(define-const var1311 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2439 String var1311) ; Statement: r2 = $r36 
(assert true)
(define-const var987 Int (getTimeOut/-863427830 var51)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2840 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var987 var2840)))) ; Negate: Cond: $i1 != $i9  
(define-const var1686 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var363 String var1686) ; Statement: r3 = $r37 
(assert true)
(define-const var720 Int (getTimeOut/-863427830 var51)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var720 0))) ; Cond: $i2 != 0 
(define-const var3400 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1412 String var3400) ; Statement: r4 = $r38 
(assert true)
(define-const var1611 Int (getTimeOut/-863427830 var51)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2722 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1611 var2722)))) ; Negate: Cond: $i3 != $i11  
(define-const var2026 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3217 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2531 (Array Int Int) var2444-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1576 Int (ordinal/-291641772 (cast-from-var1798-to-var1466 var529))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3309 Int (select var2531 var1576)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var3309 6)) (and (not (= var3309 5)) (and (not (= var3309 4)) (and (not (= var3309 3)) (and (not (= var3309 2)) (and (not (= var3309 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1798-to-var1466=([org.hibernate.LockMode], java.lang.Enum)}
; {var2558=org.hibernate.dialect.SQLServer2005Dialect, var3313=r34, var2779=org.hibernate.LockOptions, var51=r0, var666=r1, var3822=null_type, var1798=org.hibernate.LockMode, var529=r35, var777=$i0, var1736=$i7, var1311=$r36, var2439=r2, var987=$i1, var2840=$i9, var1686=$r37, var363=r3, var720=$i2, var3400=$r38, var1412=r4, var1611=$i3, var2722=$i11, var2026=$r41, var3217=$r40, var2444=org.hibernate.dialect.SQLServer2005Dialect$2, var2531=$r5, var1466=java.lang.Enum, var1576=$i4, var3309=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var2558, r34=var3313, org.hibernate.LockOptions=var2779, r0=var51, r1=var666, null_type=var3822, org.hibernate.LockMode=var1798, r35=var529, $i0=var777, $i7=var1736, $r36=var1311, r2=var2439, $i1=var987, $i9=var2840, $r37=var1686, r3=var363, $i2=var720, $r38=var3400, r4=var1412, $i3=var1611, $i11=var2722, $r41=var2026, $r40=var3217, org.hibernate.dialect.SQLServer2005Dialect$2=var2444, $r5=var2531, java.lang.Enum=var1466, $i4=var1576, $i5=var3309}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11