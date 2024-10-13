(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var746 0)
(declare-sort var2647 0)
(declare-sort var1398 0)
(declare-sort var3871 0)
(declare-sort var2886 0)
(declare-sort var2120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2647 String) var3871)
(declare-fun getTimeOut/-863427830 (var2647) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2120) Int)
(declare-fun cast-from-var3871-to-var2120 (var3871) var2120)
(declare-const null-var746 var746)
(declare-const null-var2647 var2647)
(declare-const null-String String)
(declare-const null-var3871 var3871)
(declare-const var2886-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var35 var746) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var35 null-var746)))
(declare-const var1188 var2647) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1188 null-var2647)))
(declare-const var2710 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2710 null-String)))
(assert true)
(define-const var654 var3871 (getAliasSpecificLockMode/491246003 var1188 var2710)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var654 null-var3871))) ; Cond: r35 != null 
(assert true)
(define-const var3182 Int (getTimeOut/-863427830 var1188)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2878 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3182 var2878))) ; Cond: $i0 != $i7 
(define-const var2720 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2586 String var2720) ; Statement: r2 = $r36 
(assert true)
(define-const var1209 Int (getTimeOut/-863427830 var1188)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var211 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var1209 var211)))) ; Negate: Cond: $i1 != $i9  
(define-const var1457 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3618 String var1457) ; Statement: r3 = $r37 
(assert true)
(define-const var2007 Int (getTimeOut/-863427830 var1188)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2007 0))) ; Cond: $i2 != 0 
(define-const var2055 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3486 String var2055) ; Statement: r4 = $r38 
(assert true)
(define-const var2616 Int (getTimeOut/-863427830 var1188)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2174 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2616 var2174))) ; Cond: $i3 != $i11 
(define-const var125 String "") ; Statement: $r41 = "" 
(define-const var2068 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3350 (Array Int Int) var2886-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2719 Int (ordinal/-291641772 (cast-from-var3871-to-var2120 var654))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1033 Int (select var3350 var2719)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var1033 6)) (and (not (= var1033 5)) (and (not (= var1033 4)) (and (not (= var1033 3)) (and (not (= var1033 2)) (and (not (= var1033 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3871-to-var2120=([org.hibernate.LockMode], java.lang.Enum)}
; {var746=org.hibernate.dialect.SQLServer2005Dialect, var35=r34, var2647=org.hibernate.LockOptions, var1188=r0, var2710=r1, var1398=null_type, var3871=org.hibernate.LockMode, var654=r35, var3182=$i0, var2878=$i7, var2720=$r36, var2586=r2, var1209=$i1, var211=$i9, var1457=$r37, var3618=r3, var2007=$i2, var2055=$r38, var3486=r4, var2616=$i3, var2174=$i11, var125=$r41, var2068=$r40, var2886=org.hibernate.dialect.SQLServer2005Dialect$2, var3350=$r5, var2120=java.lang.Enum, var2719=$i4, var1033=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var746, r34=var35, org.hibernate.LockOptions=var2647, r0=var1188, r1=var2710, null_type=var1398, org.hibernate.LockMode=var3871, r35=var654, $i0=var3182, $i7=var2878, $r36=var2720, r2=var2586, $i1=var1209, $i9=var211, $r37=var1457, r3=var3618, $i2=var2007, $r38=var2055, r4=var3486, $i3=var2616, $i11=var2174, $r41=var125, $r40=var2068, org.hibernate.dialect.SQLServer2005Dialect$2=var2886, $r5=var3350, java.lang.Enum=var2120, $i4=var2719, $i5=var1033}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11