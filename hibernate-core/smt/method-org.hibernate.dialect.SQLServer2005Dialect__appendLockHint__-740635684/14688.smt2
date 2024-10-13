(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var1488 0)
(declare-sort var3492 0)
(declare-sort var619 0)
(declare-sort var212 0)
(declare-sort var3283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1488 String) var619)
(declare-fun getTimeOut/-863427830 (var1488) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3283) Int)
(declare-fun cast-from-var619-to-var3283 (var619) var3283)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1984 var1984)
(declare-const null-var1488 var1488)
(declare-const null-String String)
(declare-const null-var619 var619)
(declare-const var212-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1121 var1984) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1121 null-var1984)))
(declare-const var390 var1488) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var390 null-var1488)))
(declare-const var1234 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1234 null-String)))
(assert true)
(define-const var318 var619 (getAliasSpecificLockMode/491246003 var390 var1234)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var318 null-var619))) ; Cond: r35 != null 
(assert true)
(define-const var1544 Int (getTimeOut/-863427830 var390)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2372 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1544 var2372))) ; Cond: $i0 != $i7 
(define-const var2296 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var1032 String var2296) ; Statement: r2 = $r36 
(assert true)
(define-const var3940 Int (getTimeOut/-863427830 var390)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1839 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3940 var1839))) ; Cond: $i1 != $i9 
(define-const var224 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var602 String var224) ; Statement: r3 = $r37 
(assert true)
(define-const var2276 Int (getTimeOut/-863427830 var390)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2276 0))) ; Cond: $i2 != 0 
(define-const var611 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1254 String var611) ; Statement: r4 = $r38 
(assert true)
(define-const var3855 Int (getTimeOut/-863427830 var390)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3385 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3855 var3385))) ; Cond: $i3 != $i11 
(define-const var3718 String "") ; Statement: $r41 = "" 
(define-const var760 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1619 (Array Int Int) var212-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2249 Int (ordinal/-291641772 (cast-from-var619-to-var3283 var318))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var217 Int (select var1619 var2249)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var217 6) (and (not (= var217 5)) (and (not (= var217 4)) (and (not (= var217 3)) (and (not (= var217 2)) (and (not (= var217 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var2765 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2765)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2765!1 String)
(assert (= var2765!1 ""))
(assert true)
(define-const var2848 String (append/672562846 var2765!1 var1234)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2765!2 String)
(assert (= var2765!2 (str.++ var2765!1 var1234)))
(assert true)
(define-const var1690 String (append/672562846 var2848 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var2848!1 String)
(assert (= var2848!1 (str.++ var2848 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var3223 String (toString/-2075883882 var1690)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var619-to-var3283=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1984=org.hibernate.dialect.SQLServer2005Dialect, var1121=r34, var1488=org.hibernate.LockOptions, var390=r0, var1234=r1, var3492=null_type, var619=org.hibernate.LockMode, var318=r35, var1544=$i0, var2372=$i7, var2296=$r36, var1032=r2, var3940=$i1, var1839=$i9, var224=$r37, var602=r3, var2276=$i2, var611=$r38, var1254=r4, var3855=$i3, var3385=$i11, var3718=$r41, var760=$r40, var212=org.hibernate.dialect.SQLServer2005Dialect$2, var1619=$r5, var3283=java.lang.Enum, var2249=$i4, var217=$i5, var2765=$r45, var2848=$r7, var1690=$r8, var3223=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var1984, r34=var1121, org.hibernate.LockOptions=var1488, r0=var390, r1=var1234, null_type=var3492, org.hibernate.LockMode=var619, r35=var318, $i0=var1544, $i7=var2372, $r36=var2296, r2=var1032, $i1=var3940, $i9=var1839, $r37=var224, r3=var602, $i2=var2276, $r38=var611, r4=var1254, $i3=var3855, $i11=var3385, $r41=var3718, $r40=var760, org.hibernate.dialect.SQLServer2005Dialect$2=var212, $r5=var1619, java.lang.Enum=var3283, $i4=var2249, $i5=var217, $r45=var2765, $r7=var2848, $r8=var1690, $r9=var3223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11