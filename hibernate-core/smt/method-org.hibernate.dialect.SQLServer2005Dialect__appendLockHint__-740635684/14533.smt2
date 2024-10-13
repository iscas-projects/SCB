(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3541 0)
(declare-sort var13 0)
(declare-sort var1531 0)
(declare-sort var366 0)
(declare-sort var1400 0)
(declare-sort var1934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var13 String) var366)
(declare-fun getTimeOut/-863427830 (var13) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1934) Int)
(declare-fun cast-from-var366-to-var1934 (var366) var1934)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3541 var3541)
(declare-const null-var13 var13)
(declare-const null-String String)
(declare-const null-var366 var366)
(declare-const var1400-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3116 var3541) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3116 null-var3541)))
(declare-const var178 var13) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var178 null-var13)))
(declare-const var3206 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3206 null-String)))
(assert true)
(define-const var2252 var366 (getAliasSpecificLockMode/491246003 var178 var3206)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2252 null-var366))) ; Cond: r35 != null 
(assert true)
(define-const var380 Int (getTimeOut/-863427830 var178)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2749 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var380 var2749))) ; Cond: $i0 != $i7 
(define-const var2335 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3674 String var2335) ; Statement: r2 = $r36 
(assert true)
(define-const var2404 Int (getTimeOut/-863427830 var178)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3538 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2404 var3538))) ; Cond: $i1 != $i9 
(define-const var464 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var222 String var464) ; Statement: r3 = $r37 
(assert true)
(define-const var1955 Int (getTimeOut/-863427830 var178)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1955 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1206 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3837 String var1206) ; Statement: r4 = $r38 
(assert true)
(define-const var2123 Int (getTimeOut/-863427830 var178)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3564 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2123 var3564))) ; Cond: $i3 != $i11 
(define-const var3747 String "") ; Statement: $r41 = "" 
(define-const var822 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var969 (Array Int Int) var1400-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var820 Int (ordinal/-291641772 (cast-from-var366-to-var1934 var2252))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var471 Int (select var969 var820)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var471 6) (and (not (= var471 5)) (and (not (= var471 4)) (and (not (= var471 3)) (and (not (= var471 2)) (and (not (= var471 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var3366 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3366)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3366!1 String)
(assert (= var3366!1 ""))
(assert true)
(define-const var1115 String (append/672562846 var3366!1 var3206)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3366!2 String)
(assert (= var3366!2 (str.++ var3366!1 var3206)))
(assert true)
(define-const var480 String (append/672562846 var1115 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var1115!1 String)
(assert (= var1115!1 (str.++ var1115 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var601 String (toString/-2075883882 var480)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var366-to-var1934=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3541=org.hibernate.dialect.SQLServer2005Dialect, var3116=r34, var13=org.hibernate.LockOptions, var178=r0, var3206=r1, var1531=null_type, var366=org.hibernate.LockMode, var2252=r35, var380=$i0, var2749=$i7, var2335=$r36, var3674=r2, var2404=$i1, var3538=$i9, var464=$r37, var222=r3, var1955=$i2, var1206=$r38, var3837=r4, var2123=$i3, var3564=$i11, var3747=$r41, var822=$r40, var1400=org.hibernate.dialect.SQLServer2005Dialect$2, var969=$r5, var1934=java.lang.Enum, var820=$i4, var471=$i5, var3366=$r45, var1115=$r7, var480=$r8, var601=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var3541, r34=var3116, org.hibernate.LockOptions=var13, r0=var178, r1=var3206, null_type=var1531, org.hibernate.LockMode=var366, r35=var2252, $i0=var380, $i7=var2749, $r36=var2335, r2=var3674, $i1=var2404, $i9=var3538, $r37=var464, r3=var222, $i2=var1955, $r38=var1206, r4=var3837, $i3=var2123, $i11=var3564, $r41=var3747, $r40=var822, org.hibernate.dialect.SQLServer2005Dialect$2=var1400, $r5=var969, java.lang.Enum=var1934, $i4=var820, $i5=var471, $r45=var3366, $r7=var1115, $r8=var480, $r9=var601}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11