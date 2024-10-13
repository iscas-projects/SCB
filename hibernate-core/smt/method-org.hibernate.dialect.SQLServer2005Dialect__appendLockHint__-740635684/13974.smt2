(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2981 0)
(declare-sort var1854 0)
(declare-sort var2026 0)
(declare-sort var1416 0)
(declare-sort var2496 0)
(declare-sort var1154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1854 String) var1416)
(declare-fun getTimeOut/-863427830 (var1854) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1154) Int)
(declare-fun cast-from-var1416-to-var1154 (var1416) var1154)
(declare-const null-var2981 var2981)
(declare-const null-var1854 var1854)
(declare-const null-String String)
(declare-const null-var1416 var1416)
(declare-const var2496-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1157 var2981) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1157 null-var2981)))
(declare-const var508 var1854) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var508 null-var1854)))
(declare-const var3423 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3423 null-String)))
(assert true)
(define-const var2372 var1416 (getAliasSpecificLockMode/491246003 var508 var3423)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2372 null-var1416))) ; Cond: r35 != null 
(assert true)
(define-const var3292 Int (getTimeOut/-863427830 var508)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1592 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3292 var1592)))) ; Negate: Cond: $i0 != $i7  
(define-const var552 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1357 String var552) ; Statement: r2 = $r36 
(assert true)
(define-const var914 Int (getTimeOut/-863427830 var508)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var956 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var914 var956))) ; Cond: $i1 != $i9 
(define-const var590 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3047 String var590) ; Statement: r3 = $r37 
(assert true)
(define-const var1686 Int (getTimeOut/-863427830 var508)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1686 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2024 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2384 String var2024) ; Statement: r4 = $r38 
(assert true)
(define-const var1738 Int (getTimeOut/-863427830 var508)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1070 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1738 var1070)))) ; Negate: Cond: $i3 != $i11  
(define-const var1639 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3772 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2331 (Array Int Int) var2496-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var684 Int (ordinal/-291641772 (cast-from-var1416-to-var1154 var2372))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var853 Int (select var2331 var684)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var853 6)) (and (not (= var853 5)) (and (not (= var853 4)) (and (not (= var853 3)) (and (not (= var853 2)) (and (not (= var853 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1416-to-var1154=([org.hibernate.LockMode], java.lang.Enum)}
; {var2981=org.hibernate.dialect.SQLServer2005Dialect, var1157=r34, var1854=org.hibernate.LockOptions, var508=r0, var3423=r1, var2026=null_type, var1416=org.hibernate.LockMode, var2372=r35, var3292=$i0, var1592=$i7, var552=$r36, var1357=r2, var914=$i1, var956=$i9, var590=$r37, var3047=r3, var1686=$i2, var2024=$r38, var2384=r4, var1738=$i3, var1070=$i11, var1639=$r41, var3772=$r40, var2496=org.hibernate.dialect.SQLServer2005Dialect$2, var2331=$r5, var1154=java.lang.Enum, var684=$i4, var853=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var2981, r34=var1157, org.hibernate.LockOptions=var1854, r0=var508, r1=var3423, null_type=var2026, org.hibernate.LockMode=var1416, r35=var2372, $i0=var3292, $i7=var1592, $r36=var552, r2=var1357, $i1=var914, $i9=var956, $r37=var590, r3=var3047, $i2=var1686, $r38=var2024, r4=var2384, $i3=var1738, $i11=var1070, $r41=var1639, $r40=var3772, org.hibernate.dialect.SQLServer2005Dialect$2=var2496, $r5=var2331, java.lang.Enum=var1154, $i4=var684, $i5=var853}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11