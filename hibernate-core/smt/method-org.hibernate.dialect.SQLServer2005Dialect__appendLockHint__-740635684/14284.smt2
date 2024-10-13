(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1763 0)
(declare-sort var3411 0)
(declare-sort var1078 0)
(declare-sort var900 0)
(declare-sort var2744 0)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3411 String) var900)
(declare-fun getTimeOut/-863427830 (var3411) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3014) Int)
(declare-fun cast-from-var900-to-var3014 (var900) var3014)
(declare-const null-var1763 var1763)
(declare-const null-var3411 var3411)
(declare-const null-String String)
(declare-const null-var900 var900)
(declare-const var2744-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1280 var1763) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1280 null-var1763)))
(declare-const var3790 var3411) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3790 null-var3411)))
(declare-const var2148 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2148 null-String)))
(assert true)
(define-const var2675 var900 (getAliasSpecificLockMode/491246003 var3790 var2148)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2675 null-var900))) ; Cond: r35 != null 
(assert true)
(define-const var1653 Int (getTimeOut/-863427830 var3790)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3119 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1653 var3119))) ; Cond: $i0 != $i7 
(define-const var196 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var861 String var196) ; Statement: r2 = $r36 
(assert true)
(define-const var2470 Int (getTimeOut/-863427830 var3790)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1539 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2470 var1539)))) ; Negate: Cond: $i1 != $i9  
(define-const var1837 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var1728 String var1837) ; Statement: r3 = $r37 
(assert true)
(define-const var360 Int (getTimeOut/-863427830 var3790)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var360 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2741 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2747 String var2741) ; Statement: r4 = $r38 
(assert true)
(define-const var2677 Int (getTimeOut/-863427830 var3790)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2946 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2677 var2946))) ; Cond: $i3 != $i11 
(define-const var3780 String "") ; Statement: $r41 = "" 
(define-const var746 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2162 (Array Int Int) var2744-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var276 Int (ordinal/-291641772 (cast-from-var900-to-var3014 var2675))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3999 Int (select var2162 var276)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var3999 6)) (and (not (= var3999 5)) (and (not (= var3999 4)) (and (not (= var3999 3)) (and (not (= var3999 2)) (and (not (= var3999 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var900-to-var3014=([org.hibernate.LockMode], java.lang.Enum)}
; {var1763=org.hibernate.dialect.SQLServer2005Dialect, var1280=r34, var3411=org.hibernate.LockOptions, var3790=r0, var2148=r1, var1078=null_type, var900=org.hibernate.LockMode, var2675=r35, var1653=$i0, var3119=$i7, var196=$r36, var861=r2, var2470=$i1, var1539=$i9, var1837=$r37, var1728=r3, var360=$i2, var2741=$r38, var2747=r4, var2677=$i3, var2946=$i11, var3780=$r41, var746=$r40, var2744=org.hibernate.dialect.SQLServer2005Dialect$2, var2162=$r5, var3014=java.lang.Enum, var276=$i4, var3999=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var1763, r34=var1280, org.hibernate.LockOptions=var3411, r0=var3790, r1=var2148, null_type=var1078, org.hibernate.LockMode=var900, r35=var2675, $i0=var1653, $i7=var3119, $r36=var196, r2=var861, $i1=var2470, $i9=var1539, $r37=var1837, r3=var1728, $i2=var360, $r38=var2741, r4=var2747, $i3=var2677, $i11=var2946, $r41=var3780, $r40=var746, org.hibernate.dialect.SQLServer2005Dialect$2=var2744, $r5=var2162, java.lang.Enum=var3014, $i4=var276, $i5=var3999}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11