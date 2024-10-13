(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1876 0)
(declare-sort var3712 0)
(declare-sort var2689 0)
(declare-sort var1874 0)
(declare-sort var2940 0)
(declare-sort var3038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3712 String) var1874)
(declare-fun getTimeOut/-863427830 (var3712) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3038) Int)
(declare-fun cast-from-var1874-to-var3038 (var1874) var3038)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1876 var1876)
(declare-const null-var3712 var3712)
(declare-const null-String String)
(declare-const null-var1874 var1874)
(declare-const var2940-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2323 var1876) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2323 null-var1876)))
(declare-const var3446 var3712) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3446 null-var3712)))
(declare-const var554 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var554 null-String)))
(assert true)
(define-const var1599 var1874 (getAliasSpecificLockMode/491246003 var3446 var554)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1599 null-var1874))) ; Cond: r35 != null 
(assert true)
(define-const var3947 Int (getTimeOut/-863427830 var3446)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var437 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3947 var437)))) ; Negate: Cond: $i0 != $i7  
(define-const var1722 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2556 String var1722) ; Statement: r2 = $r36 
(assert true)
(define-const var1136 Int (getTimeOut/-863427830 var3446)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var536 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var1136 var536))) ; Cond: $i1 != $i9 
(define-const var3044 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3040 String var3044) ; Statement: r3 = $r37 
(assert true)
(define-const var2007 Int (getTimeOut/-863427830 var3446)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2007 0))) ; Cond: $i2 != 0 
(define-const var1076 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3744 String var1076) ; Statement: r4 = $r38 
(assert true)
(define-const var267 Int (getTimeOut/-863427830 var3446)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2560 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var267 var2560))) ; Cond: $i3 != $i11 
(define-const var1802 String "") ; Statement: $r41 = "" 
(define-const var3020 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1669 (Array Int Int) var2940-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1346 Int (ordinal/-291641772 (cast-from-var1874-to-var3038 var1599))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1234 Int (select var1669 var1346)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1234 6) (and (not (= var1234 5)) (and (not (= var1234 4)) (and (not (= var1234 3)) (and (not (= var1234 2)) (and (not (= var1234 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var2641 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2641)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2641!1 String)
(assert (= var2641!1 ""))
(assert true)
(define-const var2448 String (append/672562846 var2641!1 var554)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2641!2 String)
(assert (= var2641!2 (str.++ var2641!1 var554)))
(assert true)
(define-const var930 String (append/672562846 var2448 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var2448!1 String)
(assert (= var2448!1 (str.++ var2448 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var1886 String (toString/-2075883882 var930)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1874-to-var3038=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1876=org.hibernate.dialect.SQLServer2005Dialect, var2323=r34, var3712=org.hibernate.LockOptions, var3446=r0, var554=r1, var2689=null_type, var1874=org.hibernate.LockMode, var1599=r35, var3947=$i0, var437=$i7, var1722=$r36, var2556=r2, var1136=$i1, var536=$i9, var3044=$r37, var3040=r3, var2007=$i2, var1076=$r38, var3744=r4, var267=$i3, var2560=$i11, var1802=$r41, var3020=$r40, var2940=org.hibernate.dialect.SQLServer2005Dialect$2, var1669=$r5, var3038=java.lang.Enum, var1346=$i4, var1234=$i5, var2641=$r45, var2448=$r7, var930=$r8, var1886=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var1876, r34=var2323, org.hibernate.LockOptions=var3712, r0=var3446, r1=var554, null_type=var2689, org.hibernate.LockMode=var1874, r35=var1599, $i0=var3947, $i7=var437, $r36=var1722, r2=var2556, $i1=var1136, $i9=var536, $r37=var3044, r3=var3040, $i2=var2007, $r38=var1076, r4=var3744, $i3=var267, $i11=var2560, $r41=var1802, $r40=var3020, org.hibernate.dialect.SQLServer2005Dialect$2=var2940, $r5=var1669, java.lang.Enum=var3038, $i4=var1346, $i5=var1234, $r45=var2641, $r7=var2448, $r8=var930, $r9=var1886}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11