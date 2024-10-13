(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1050 0)
(declare-sort var2575 0)
(declare-sort var682 0)
(declare-sort var1377 0)
(declare-sort var2646 0)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2575 String) var1377)
(declare-fun getTimeOut/-863427830 (var2575) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2410) Int)
(declare-fun cast-from-var1377-to-var2410 (var1377) var2410)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1050 var1050)
(declare-const null-var2575 var2575)
(declare-const null-String String)
(declare-const null-var1377 var1377)
(declare-const var2646-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2235 var1050) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2235 null-var1050)))
(declare-const var3119 var2575) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3119 null-var2575)))
(declare-const var2129 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2129 null-String)))
(assert true)
(define-const var3012 var1377 (getAliasSpecificLockMode/491246003 var3119 var2129)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3012 null-var1377))) ; Cond: r35 != null 
(assert true)
(define-const var3437 Int (getTimeOut/-863427830 var3119)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3796 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3437 var3796)))) ; Negate: Cond: $i0 != $i7  
(define-const var542 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var357 String var542) ; Statement: r2 = $r36 
(assert true)
(define-const var149 Int (getTimeOut/-863427830 var3119)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3612 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var149 var3612)))) ; Negate: Cond: $i1 != $i9  
(define-const var3633 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3162 String var3633) ; Statement: r3 = $r37 
(assert true)
(define-const var1315 Int (getTimeOut/-863427830 var3119)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1315 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1031 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var1134 String var1031) ; Statement: r4 = $r38 
(assert true)
(define-const var1431 Int (getTimeOut/-863427830 var3119)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3859 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1431 var3859))) ; Cond: $i3 != $i11 
(define-const var1728 String "") ; Statement: $r41 = "" 
(define-const var2652 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2125 (Array Int Int) var2646-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2948 Int (ordinal/-291641772 (cast-from-var1377-to-var2410 var3012))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1077 Int (select var2125 var2948)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1077 6) (and (not (= var1077 5)) (and (not (= var1077 4)) (and (not (= var1077 3)) (and (not (= var1077 2)) (and (not (= var1077 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var1478 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1478)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1478!1 String)
(assert (= var1478!1 ""))
(assert true)
(define-const var3497 String (append/672562846 var1478!1 var2129)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1478!2 String)
(assert (= var1478!2 (str.++ var1478!1 var2129)))
(assert true)
(define-const var1744 String (append/672562846 var3497 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3497!1 String)
(assert (= var3497!1 (str.++ var3497 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var2583 String (toString/-2075883882 var1744)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1377-to-var2410=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1050=org.hibernate.dialect.SQLServer2005Dialect, var2235=r34, var2575=org.hibernate.LockOptions, var3119=r0, var2129=r1, var682=null_type, var1377=org.hibernate.LockMode, var3012=r35, var3437=$i0, var3796=$i7, var542=$r36, var357=r2, var149=$i1, var3612=$i9, var3633=$r37, var3162=r3, var1315=$i2, var1031=$r38, var1134=r4, var1431=$i3, var3859=$i11, var1728=$r41, var2652=$r40, var2646=org.hibernate.dialect.SQLServer2005Dialect$2, var2125=$r5, var2410=java.lang.Enum, var2948=$i4, var1077=$i5, var1478=$r45, var3497=$r7, var1744=$r8, var2583=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var1050, r34=var2235, org.hibernate.LockOptions=var2575, r0=var3119, r1=var2129, null_type=var682, org.hibernate.LockMode=var1377, r35=var3012, $i0=var3437, $i7=var3796, $r36=var542, r2=var357, $i1=var149, $i9=var3612, $r37=var3633, r3=var3162, $i2=var1315, $r38=var1031, r4=var1134, $i3=var1431, $i11=var3859, $r41=var1728, $r40=var2652, org.hibernate.dialect.SQLServer2005Dialect$2=var2646, $r5=var2125, java.lang.Enum=var2410, $i4=var2948, $i5=var1077, $r45=var1478, $r7=var3497, $r8=var1744, $r9=var2583}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11