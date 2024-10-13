(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2578 0)
(declare-sort var3901 0)
(declare-sort var1570 0)
(declare-sort var2712 0)
(declare-sort var3250 0)
(declare-sort var412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3901 String) var2712)
(declare-fun getTimeOut/-863427830 (var3901) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var412) Int)
(declare-fun cast-from-var2712-to-var412 (var2712) var412)
(declare-const null-var2578 var2578)
(declare-const null-var3901 var3901)
(declare-const null-String String)
(declare-const null-var2712 var2712)
(declare-const var3250-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var203 var2578) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var203 null-var2578)))
(declare-const var3115 var3901) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3115 null-var3901)))
(declare-const var3512 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3512 null-String)))
(assert true)
(define-const var3668 var2712 (getAliasSpecificLockMode/491246003 var3115 var3512)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3668 null-var2712))) ; Cond: r35 != null 
(assert true)
(define-const var2462 Int (getTimeOut/-863427830 var3115)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3093 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2462 var3093)))) ; Negate: Cond: $i0 != $i7  
(define-const var3008 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var329 String var3008) ; Statement: r2 = $r36 
(assert true)
(define-const var3075 Int (getTimeOut/-863427830 var3115)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var774 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3075 var774))) ; Cond: $i1 != $i9 
(define-const var3833 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3598 String var3833) ; Statement: r3 = $r37 
(assert true)
(define-const var2930 Int (getTimeOut/-863427830 var3115)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2930 0))) ; Cond: $i2 != 0 
(define-const var557 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var323 String var557) ; Statement: r4 = $r38 
(assert true)
(define-const var1952 Int (getTimeOut/-863427830 var3115)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1216 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1952 var1216))) ; Cond: $i3 != $i11 
(define-const var921 String "") ; Statement: $r41 = "" 
(define-const var133 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3805 (Array Int Int) var3250-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1016 Int (ordinal/-291641772 (cast-from-var2712-to-var412 var3668))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var173 Int (select var3805 var1016)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var173 6)) (and (not (= var173 5)) (and (not (= var173 4)) (and (not (= var173 3)) (and (not (= var173 2)) (and (not (= var173 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2712-to-var412=([org.hibernate.LockMode], java.lang.Enum)}
; {var2578=org.hibernate.dialect.SQLServer2005Dialect, var203=r34, var3901=org.hibernate.LockOptions, var3115=r0, var3512=r1, var1570=null_type, var2712=org.hibernate.LockMode, var3668=r35, var2462=$i0, var3093=$i7, var3008=$r36, var329=r2, var3075=$i1, var774=$i9, var3833=$r37, var3598=r3, var2930=$i2, var557=$r38, var323=r4, var1952=$i3, var1216=$i11, var921=$r41, var133=$r40, var3250=org.hibernate.dialect.SQLServer2005Dialect$2, var3805=$r5, var412=java.lang.Enum, var1016=$i4, var173=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var2578, r34=var203, org.hibernate.LockOptions=var3901, r0=var3115, r1=var3512, null_type=var1570, org.hibernate.LockMode=var2712, r35=var3668, $i0=var2462, $i7=var3093, $r36=var3008, r2=var329, $i1=var3075, $i9=var774, $r37=var3833, r3=var3598, $i2=var2930, $r38=var557, r4=var323, $i3=var1952, $i11=var1216, $r41=var921, $r40=var133, org.hibernate.dialect.SQLServer2005Dialect$2=var3250, $r5=var3805, java.lang.Enum=var412, $i4=var1016, $i5=var173}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11