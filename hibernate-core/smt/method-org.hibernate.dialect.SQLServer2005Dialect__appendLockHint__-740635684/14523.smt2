(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var3212 0)
(declare-sort var3427 0)
(declare-sort var1289 0)
(declare-sort var2762 0)
(declare-sort var2479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3212 String) var1289)
(declare-fun getTimeOut/-863427830 (var3212) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2479) Int)
(declare-fun cast-from-var1289-to-var2479 (var1289) var2479)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2019 var2019)
(declare-const null-var3212 var3212)
(declare-const null-String String)
(declare-const null-var1289 var1289)
(declare-const var2762-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3913 var2019) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3913 null-var2019)))
(declare-const var3892 var3212) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3892 null-var3212)))
(declare-const var82 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var82 null-String)))
(assert true)
(define-const var2619 var1289 (getAliasSpecificLockMode/491246003 var3892 var82)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2619 null-var1289))) ; Cond: r35 != null 
(assert true)
(define-const var2438 Int (getTimeOut/-863427830 var3892)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1792 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2438 var1792))) ; Cond: $i0 != $i7 
(define-const var195 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var1135 String var195) ; Statement: r2 = $r36 
(assert true)
(define-const var834 Int (getTimeOut/-863427830 var3892)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var314 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var834 var314))) ; Cond: $i1 != $i9 
(define-const var1000 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1420 String var1000) ; Statement: r3 = $r37 
(assert true)
(define-const var3444 Int (getTimeOut/-863427830 var3892)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3444 0)))) ; Negate: Cond: $i2 != 0  
(define-const var549 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var1665 String var549) ; Statement: r4 = $r38 
(assert true)
(define-const var3501 Int (getTimeOut/-863427830 var3892)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2717 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3501 var2717))) ; Cond: $i3 != $i11 
(define-const var1655 String "") ; Statement: $r41 = "" 
(define-const var1562 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2261 (Array Int Int) var2762-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2908 Int (ordinal/-291641772 (cast-from-var1289-to-var2479 var2619))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3825 Int (select var2261 var2908)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3825 5) (and (not (= var3825 4)) (and (not (= var3825 3)) (and (not (= var3825 2)) (and (not (= var3825 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var2460 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2460)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2460!1 String)
(assert (= var2460!1 ""))
(assert true)
(define-const var1713 String (append/672562846 var2460!1 var82)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2460!2 String)
(assert (= var2460!2 (str.++ var2460!1 var82)))
(assert true)
(define-const var3723 String (append/672562846 var1713 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var1713!1 String)
(assert (= var1713!1 (str.++ var1713 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var337 String (append/672562846 var3723 var1665)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3723!1 String)
(assert (= var3723!1 (str.++ var3723 var1665)))
(assert true)
(define-const var646 String (append/672562846 var337 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var337!1 String)
(assert (= var337!1 (str.++ var337 ")")))
(assert true)
(define-const var1017 String (toString/-2075883882 var646)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1289-to-var2479=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2019=org.hibernate.dialect.SQLServer2005Dialect, var3913=r34, var3212=org.hibernate.LockOptions, var3892=r0, var82=r1, var3427=null_type, var1289=org.hibernate.LockMode, var2619=r35, var2438=$i0, var1792=$i7, var195=$r36, var1135=r2, var834=$i1, var314=$i9, var1000=$r37, var1420=r3, var3444=$i2, var549=$r38, var1665=r4, var3501=$i3, var2717=$i11, var1655=$r41, var1562=$r40, var2762=org.hibernate.dialect.SQLServer2005Dialect$2, var2261=$r5, var2479=java.lang.Enum, var2908=$i4, var3825=$i5, var2460=$r44, var1713=$r11, var3723=$r12, var337=$r13, var646=$r14, var1017=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var2019, r34=var3913, org.hibernate.LockOptions=var3212, r0=var3892, r1=var82, null_type=var3427, org.hibernate.LockMode=var1289, r35=var2619, $i0=var2438, $i7=var1792, $r36=var195, r2=var1135, $i1=var834, $i9=var314, $r37=var1000, r3=var1420, $i2=var3444, $r38=var549, r4=var1665, $i3=var3501, $i11=var2717, $r41=var1655, $r40=var1562, org.hibernate.dialect.SQLServer2005Dialect$2=var2762, $r5=var2261, java.lang.Enum=var2479, $i4=var2908, $i5=var3825, $r44=var2460, $r11=var1713, $r12=var3723, $r13=var337, $r14=var646, $r15=var1017}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11