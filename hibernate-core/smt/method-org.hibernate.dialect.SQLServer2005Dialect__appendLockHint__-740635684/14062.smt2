(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2982 0)
(declare-sort var3641 0)
(declare-sort var3480 0)
(declare-sort var1224 0)
(declare-sort var2634 0)
(declare-sort var2020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3641 String) var1224)
(declare-fun getTimeOut/-863427830 (var3641) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2020) Int)
(declare-fun cast-from-var1224-to-var2020 (var1224) var2020)
(declare-const null-var2982 var2982)
(declare-const null-var3641 var3641)
(declare-const null-String String)
(declare-const null-var1224 var1224)
(declare-const var2634-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1108 var2982) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1108 null-var2982)))
(declare-const var3694 var3641) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3694 null-var3641)))
(declare-const var166 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var166 null-String)))
(assert true)
(define-const var477 var1224 (getAliasSpecificLockMode/491246003 var3694 var166)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var477 null-var1224))) ; Cond: r35 != null 
(assert true)
(define-const var1324 Int (getTimeOut/-863427830 var3694)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1908 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1324 var1908)))) ; Negate: Cond: $i0 != $i7  
(define-const var2696 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1997 String var2696) ; Statement: r2 = $r36 
(assert true)
(define-const var1863 Int (getTimeOut/-863427830 var3694)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3199 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var1863 var3199))) ; Cond: $i1 != $i9 
(define-const var128 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var876 String var128) ; Statement: r3 = $r37 
(assert true)
(define-const var3057 Int (getTimeOut/-863427830 var3694)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3057 0))) ; Cond: $i2 != 0 
(define-const var2855 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1969 String var2855) ; Statement: r4 = $r38 
(assert true)
(define-const var3140 Int (getTimeOut/-863427830 var3694)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3556 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3140 var3556)))) ; Negate: Cond: $i3 != $i11  
(define-const var987 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var826 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2794 (Array Int Int) var2634-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var701 Int (ordinal/-291641772 (cast-from-var1224-to-var2020 var477))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1874 Int (select var2794 var701)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var1874 6)) (and (not (= var1874 5)) (and (not (= var1874 4)) (and (not (= var1874 3)) (and (not (= var1874 2)) (and (not (= var1874 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1224-to-var2020=([org.hibernate.LockMode], java.lang.Enum)}
; {var2982=org.hibernate.dialect.SQLServer2005Dialect, var1108=r34, var3641=org.hibernate.LockOptions, var3694=r0, var166=r1, var3480=null_type, var1224=org.hibernate.LockMode, var477=r35, var1324=$i0, var1908=$i7, var2696=$r36, var1997=r2, var1863=$i1, var3199=$i9, var128=$r37, var876=r3, var3057=$i2, var2855=$r38, var1969=r4, var3140=$i3, var3556=$i11, var987=$r41, var826=$r40, var2634=org.hibernate.dialect.SQLServer2005Dialect$2, var2794=$r5, var2020=java.lang.Enum, var701=$i4, var1874=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var2982, r34=var1108, org.hibernate.LockOptions=var3641, r0=var3694, r1=var166, null_type=var3480, org.hibernate.LockMode=var1224, r35=var477, $i0=var1324, $i7=var1908, $r36=var2696, r2=var1997, $i1=var1863, $i9=var3199, $r37=var128, r3=var876, $i2=var3057, $r38=var2855, r4=var1969, $i3=var3140, $i11=var3556, $r41=var987, $r40=var826, org.hibernate.dialect.SQLServer2005Dialect$2=var2634, $r5=var2794, java.lang.Enum=var2020, $i4=var701, $i5=var1874}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11