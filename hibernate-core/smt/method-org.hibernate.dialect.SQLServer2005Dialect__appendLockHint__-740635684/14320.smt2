(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var442 0)
(declare-sort var356 0)
(declare-sort var3276 0)
(declare-sort var3503 0)
(declare-sort var1710 0)
(declare-sort var2946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var356 String) var3503)
(declare-fun getTimeOut/-863427830 (var356) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2946) Int)
(declare-fun cast-from-var3503-to-var2946 (var3503) var2946)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var442 var442)
(declare-const null-var356 var356)
(declare-const null-String String)
(declare-const null-var3503 var3503)
(declare-const var1710-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var960 var442) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var960 null-var442)))
(declare-const var1735 var356) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1735 null-var356)))
(declare-const var957 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var957 null-String)))
(assert true)
(define-const var1495 var3503 (getAliasSpecificLockMode/491246003 var1735 var957)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1495 null-var3503))) ; Cond: r35 != null 
(assert true)
(define-const var424 Int (getTimeOut/-863427830 var1735)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1559 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var424 var1559))) ; Cond: $i0 != $i7 
(define-const var1994 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3989 String var1994) ; Statement: r2 = $r36 
(assert true)
(define-const var966 Int (getTimeOut/-863427830 var1735)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1177 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var966 var1177)))) ; Negate: Cond: $i1 != $i9  
(define-const var2765 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var1222 String var2765) ; Statement: r3 = $r37 
(assert true)
(define-const var2674 Int (getTimeOut/-863427830 var1735)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2674 0))) ; Cond: $i2 != 0 
(define-const var264 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2974 String var264) ; Statement: r4 = $r38 
(assert true)
(define-const var3203 Int (getTimeOut/-863427830 var1735)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1175 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3203 var1175)))) ; Negate: Cond: $i3 != $i11  
(define-const var2506 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3759 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var204 (Array Int Int) var1710-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1051 Int (ordinal/-291641772 (cast-from-var3503-to-var2946 var1495))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var579 Int (select var204 var1051)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var579 6) (and (not (= var579 5)) (and (not (= var579 4)) (and (not (= var579 3)) (and (not (= var579 2)) (and (not (= var579 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var586 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var586)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var586!1 String)
(assert (= var586!1 ""))
(assert true)
(define-const var581 String (append/672562846 var586!1 var957)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var586!2 String)
(assert (= var586!2 (str.++ var586!1 var957)))
(assert true)
(define-const var1952 String (append/672562846 var581 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var581!1 String)
(assert (= var581!1 (str.++ var581 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var1972 String (toString/-2075883882 var1952)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3503-to-var2946=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var442=org.hibernate.dialect.SQLServer2005Dialect, var960=r34, var356=org.hibernate.LockOptions, var1735=r0, var957=r1, var3276=null_type, var3503=org.hibernate.LockMode, var1495=r35, var424=$i0, var1559=$i7, var1994=$r36, var3989=r2, var966=$i1, var1177=$i9, var2765=$r37, var1222=r3, var2674=$i2, var264=$r38, var2974=r4, var3203=$i3, var1175=$i11, var2506=$r41, var3759=$r40, var1710=org.hibernate.dialect.SQLServer2005Dialect$2, var204=$r5, var2946=java.lang.Enum, var1051=$i4, var579=$i5, var586=$r45, var581=$r7, var1952=$r8, var1972=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var442, r34=var960, org.hibernate.LockOptions=var356, r0=var1735, r1=var957, null_type=var3276, org.hibernate.LockMode=var3503, r35=var1495, $i0=var424, $i7=var1559, $r36=var1994, r2=var3989, $i1=var966, $i9=var1177, $r37=var2765, r3=var1222, $i2=var2674, $r38=var264, r4=var2974, $i3=var3203, $i11=var1175, $r41=var2506, $r40=var3759, org.hibernate.dialect.SQLServer2005Dialect$2=var1710, $r5=var204, java.lang.Enum=var2946, $i4=var1051, $i5=var579, $r45=var586, $r7=var581, $r8=var1952, $r9=var1972}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11