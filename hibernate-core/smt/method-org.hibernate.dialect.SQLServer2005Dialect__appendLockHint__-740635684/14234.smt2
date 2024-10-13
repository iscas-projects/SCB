(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1410 0)
(declare-sort var3603 0)
(declare-sort var1931 0)
(declare-sort var2095 0)
(declare-sort var3166 0)
(declare-sort var1800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3603 String) var2095)
(declare-fun getTimeOut/-863427830 (var3603) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1800) Int)
(declare-fun cast-from-var2095-to-var1800 (var2095) var1800)
(declare-const null-var1410 var1410)
(declare-const null-var3603 var3603)
(declare-const null-String String)
(declare-const null-var2095 var2095)
(declare-const var3166-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3265 var1410) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3265 null-var1410)))
(declare-const var2525 var3603) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2525 null-var3603)))
(declare-const var3508 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3508 null-String)))
(assert true)
(define-const var1243 var2095 (getAliasSpecificLockMode/491246003 var2525 var3508)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1243 null-var2095))) ; Cond: r35 != null 
(assert true)
(define-const var2741 Int (getTimeOut/-863427830 var2525)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2546 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2741 var2546))) ; Cond: $i0 != $i7 
(define-const var2243 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var856 String var2243) ; Statement: r2 = $r36 
(assert true)
(define-const var3740 Int (getTimeOut/-863427830 var2525)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2395 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3740 var2395)))) ; Negate: Cond: $i1 != $i9  
(define-const var3442 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3896 String var3442) ; Statement: r3 = $r37 
(assert true)
(define-const var3893 Int (getTimeOut/-863427830 var2525)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3893 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1951 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var931 String var1951) ; Statement: r4 = $r38 
(assert true)
(define-const var945 Int (getTimeOut/-863427830 var2525)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3793 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var945 var3793)))) ; Negate: Cond: $i3 != $i11  
(define-const var1293 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1936 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3136 (Array Int Int) var3166-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2686 Int (ordinal/-291641772 (cast-from-var2095-to-var1800 var1243))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2067 Int (select var3136 var2686)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var2067 6)) (and (not (= var2067 5)) (and (not (= var2067 4)) (and (not (= var2067 3)) (and (not (= var2067 2)) (and (not (= var2067 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2095-to-var1800=([org.hibernate.LockMode], java.lang.Enum)}
; {var1410=org.hibernate.dialect.SQLServer2005Dialect, var3265=r34, var3603=org.hibernate.LockOptions, var2525=r0, var3508=r1, var1931=null_type, var2095=org.hibernate.LockMode, var1243=r35, var2741=$i0, var2546=$i7, var2243=$r36, var856=r2, var3740=$i1, var2395=$i9, var3442=$r37, var3896=r3, var3893=$i2, var1951=$r38, var931=r4, var945=$i3, var3793=$i11, var1293=$r41, var1936=$r40, var3166=org.hibernate.dialect.SQLServer2005Dialect$2, var3136=$r5, var1800=java.lang.Enum, var2686=$i4, var2067=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var1410, r34=var3265, org.hibernate.LockOptions=var3603, r0=var2525, r1=var3508, null_type=var1931, org.hibernate.LockMode=var2095, r35=var1243, $i0=var2741, $i7=var2546, $r36=var2243, r2=var856, $i1=var3740, $i9=var2395, $r37=var3442, r3=var3896, $i2=var3893, $r38=var1951, r4=var931, $i3=var945, $i11=var3793, $r41=var1293, $r40=var1936, org.hibernate.dialect.SQLServer2005Dialect$2=var3166, $r5=var3136, java.lang.Enum=var1800, $i4=var2686, $i5=var2067}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11