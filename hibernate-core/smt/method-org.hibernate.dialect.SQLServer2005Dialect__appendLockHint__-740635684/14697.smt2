(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1925 0)
(declare-sort var3610 0)
(declare-sort var3303 0)
(declare-sort var3356 0)
(declare-sort var3970 0)
(declare-sort var1199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3610 String) var3356)
(declare-fun getTimeOut/-863427830 (var3610) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1199) Int)
(declare-fun cast-from-var3356-to-var1199 (var3356) var1199)
(declare-const null-var1925 var1925)
(declare-const null-var3610 var3610)
(declare-const null-String String)
(declare-const null-var3356 var3356)
(declare-const var3970-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3831 var1925) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3831 null-var1925)))
(declare-const var992 var3610) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var992 null-var3610)))
(declare-const var2085 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2085 null-String)))
(assert true)
(define-const var589 var3356 (getAliasSpecificLockMode/491246003 var992 var2085)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var589 null-var3356))) ; Cond: r35 != null 
(assert true)
(define-const var3158 Int (getTimeOut/-863427830 var992)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1161 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3158 var1161))) ; Cond: $i0 != $i7 
(define-const var1822 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2166 String var1822) ; Statement: r2 = $r36 
(assert true)
(define-const var812 Int (getTimeOut/-863427830 var992)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2230 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var812 var2230))) ; Cond: $i1 != $i9 
(define-const var1896 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var482 String var1896) ; Statement: r3 = $r37 
(assert true)
(define-const var1621 Int (getTimeOut/-863427830 var992)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1621 0))) ; Cond: $i2 != 0 
(define-const var1238 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3377 String var1238) ; Statement: r4 = $r38 
(assert true)
(define-const var1824 Int (getTimeOut/-863427830 var992)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1018 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1824 var1018))) ; Cond: $i3 != $i11 
(define-const var3905 String "") ; Statement: $r41 = "" 
(define-const var1263 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3124 (Array Int Int) var3970-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3154 Int (ordinal/-291641772 (cast-from-var3356-to-var1199 var589))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1593 Int (select var3124 var3154)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var1593 6)) (and (not (= var1593 5)) (and (not (= var1593 4)) (and (not (= var1593 3)) (and (not (= var1593 2)) (and (not (= var1593 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3356-to-var1199=([org.hibernate.LockMode], java.lang.Enum)}
; {var1925=org.hibernate.dialect.SQLServer2005Dialect, var3831=r34, var3610=org.hibernate.LockOptions, var992=r0, var2085=r1, var3303=null_type, var3356=org.hibernate.LockMode, var589=r35, var3158=$i0, var1161=$i7, var1822=$r36, var2166=r2, var812=$i1, var2230=$i9, var1896=$r37, var482=r3, var1621=$i2, var1238=$r38, var3377=r4, var1824=$i3, var1018=$i11, var3905=$r41, var1263=$r40, var3970=org.hibernate.dialect.SQLServer2005Dialect$2, var3124=$r5, var1199=java.lang.Enum, var3154=$i4, var1593=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var1925, r34=var3831, org.hibernate.LockOptions=var3610, r0=var992, r1=var2085, null_type=var3303, org.hibernate.LockMode=var3356, r35=var589, $i0=var3158, $i7=var1161, $r36=var1822, r2=var2166, $i1=var812, $i9=var2230, $r37=var1896, r3=var482, $i2=var1621, $r38=var1238, r4=var3377, $i3=var1824, $i11=var1018, $r41=var3905, $r40=var1263, org.hibernate.dialect.SQLServer2005Dialect$2=var3970, $r5=var3124, java.lang.Enum=var1199, $i4=var3154, $i5=var1593}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11