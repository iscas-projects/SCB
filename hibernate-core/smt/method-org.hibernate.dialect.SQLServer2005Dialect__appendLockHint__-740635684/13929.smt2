(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var141 0)
(declare-sort var913 0)
(declare-sort var1069 0)
(declare-sort var2024 0)
(declare-sort var2186 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var913 String) var2024)
(declare-fun getTimeOut/-863427830 (var913) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3974) Int)
(declare-fun cast-from-var2024-to-var3974 (var2024) var3974)
(declare-const null-var141 var141)
(declare-const null-var913 var913)
(declare-const null-String String)
(declare-const null-var2024 var2024)
(declare-const var2186-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var784 var141) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var784 null-var141)))
(declare-const var2252 var913) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2252 null-var913)))
(declare-const var2996 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2996 null-String)))
(assert true)
(define-const var1962 var2024 (getAliasSpecificLockMode/491246003 var2252 var2996)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1962 null-var2024))) ; Cond: r35 != null 
(assert true)
(define-const var1571 Int (getTimeOut/-863427830 var2252)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2238 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1571 var2238)))) ; Negate: Cond: $i0 != $i7  
(define-const var1317 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var87 String var1317) ; Statement: r2 = $r36 
(assert true)
(define-const var880 Int (getTimeOut/-863427830 var2252)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3451 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var880 var3451)))) ; Negate: Cond: $i1 != $i9  
(define-const var462 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2147 String var462) ; Statement: r3 = $r37 
(assert true)
(define-const var3827 Int (getTimeOut/-863427830 var2252)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3827 0))) ; Cond: $i2 != 0 
(define-const var2890 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var110 String var2890) ; Statement: r4 = $r38 
(assert true)
(define-const var1772 Int (getTimeOut/-863427830 var2252)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2017 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1772 var2017))) ; Cond: $i3 != $i11 
(define-const var811 String "") ; Statement: $r41 = "" 
(define-const var767 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2326 (Array Int Int) var2186-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var718 Int (ordinal/-291641772 (cast-from-var2024-to-var3974 var1962))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3516 Int (select var2326 var718)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var3516 6)) (and (not (= var3516 5)) (and (not (= var3516 4)) (and (not (= var3516 3)) (and (not (= var3516 2)) (and (not (= var3516 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2024-to-var3974=([org.hibernate.LockMode], java.lang.Enum)}
; {var141=org.hibernate.dialect.SQLServer2005Dialect, var784=r34, var913=org.hibernate.LockOptions, var2252=r0, var2996=r1, var1069=null_type, var2024=org.hibernate.LockMode, var1962=r35, var1571=$i0, var2238=$i7, var1317=$r36, var87=r2, var880=$i1, var3451=$i9, var462=$r37, var2147=r3, var3827=$i2, var2890=$r38, var110=r4, var1772=$i3, var2017=$i11, var811=$r41, var767=$r40, var2186=org.hibernate.dialect.SQLServer2005Dialect$2, var2326=$r5, var3974=java.lang.Enum, var718=$i4, var3516=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var141, r34=var784, org.hibernate.LockOptions=var913, r0=var2252, r1=var2996, null_type=var1069, org.hibernate.LockMode=var2024, r35=var1962, $i0=var1571, $i7=var2238, $r36=var1317, r2=var87, $i1=var880, $i9=var3451, $r37=var462, r3=var2147, $i2=var3827, $r38=var2890, r4=var110, $i3=var1772, $i11=var2017, $r41=var811, $r40=var767, org.hibernate.dialect.SQLServer2005Dialect$2=var2186, $r5=var2326, java.lang.Enum=var3974, $i4=var718, $i5=var3516}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11