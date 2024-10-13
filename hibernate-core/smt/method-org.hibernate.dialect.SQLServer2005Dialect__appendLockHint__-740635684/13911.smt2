(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var3929 0)
(declare-sort var725 0)
(declare-sort var1802 0)
(declare-sort var1792 0)
(declare-sort var2508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3929 String) var1802)
(declare-fun getTimeOut/-863427830 (var3929) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2508) Int)
(declare-fun cast-from-var1802-to-var2508 (var1802) var2508)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2861 var2861)
(declare-const null-var3929 var3929)
(declare-const null-String String)
(declare-const null-var1802 var1802)
(declare-const var1792-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var73 var2861) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var73 null-var2861)))
(declare-const var2662 var3929) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2662 null-var3929)))
(declare-const var3550 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3550 null-String)))
(assert true)
(define-const var445 var1802 (getAliasSpecificLockMode/491246003 var2662 var3550)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var445 null-var1802))) ; Cond: r35 != null 
(assert true)
(define-const var1265 Int (getTimeOut/-863427830 var2662)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3961 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1265 var3961)))) ; Negate: Cond: $i0 != $i7  
(define-const var2927 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var719 String var2927) ; Statement: r2 = $r36 
(assert true)
(define-const var372 Int (getTimeOut/-863427830 var2662)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1609 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var372 var1609)))) ; Negate: Cond: $i1 != $i9  
(define-const var1648 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3030 String var1648) ; Statement: r3 = $r37 
(assert true)
(define-const var912 Int (getTimeOut/-863427830 var2662)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var912 0))) ; Cond: $i2 != 0 
(define-const var400 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1724 String var400) ; Statement: r4 = $r38 
(assert true)
(define-const var351 Int (getTimeOut/-863427830 var2662)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2080 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var351 var2080))) ; Cond: $i3 != $i11 
(define-const var3798 String "") ; Statement: $r41 = "" 
(define-const var736 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3429 (Array Int Int) var1792-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2196 Int (ordinal/-291641772 (cast-from-var1802-to-var2508 var445))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2522 Int (select var3429 var2196)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2522 5) (and (not (= var2522 4)) (and (not (= var2522 3)) (and (not (= var2522 2)) (and (not (= var2522 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var2679 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2679)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2679!1 String)
(assert (= var2679!1 ""))
(assert true)
(define-const var880 String (append/672562846 var2679!1 var3550)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2679!2 String)
(assert (= var2679!2 (str.++ var2679!1 var3550)))
(assert true)
(define-const var2067 String (append/672562846 var880 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var880!1 String)
(assert (= var880!1 (str.++ var880 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var20 String (append/672562846 var2067 var1724)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2067!1 String)
(assert (= var2067!1 (str.++ var2067 var1724)))
(assert true)
(define-const var884 String (append/672562846 var20 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var20!1 String)
(assert (= var20!1 (str.++ var20 ")")))
(assert true)
(define-const var3698 String (toString/-2075883882 var884)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1802-to-var2508=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2861=org.hibernate.dialect.SQLServer2005Dialect, var73=r34, var3929=org.hibernate.LockOptions, var2662=r0, var3550=r1, var725=null_type, var1802=org.hibernate.LockMode, var445=r35, var1265=$i0, var3961=$i7, var2927=$r36, var719=r2, var372=$i1, var1609=$i9, var1648=$r37, var3030=r3, var912=$i2, var400=$r38, var1724=r4, var351=$i3, var2080=$i11, var3798=$r41, var736=$r40, var1792=org.hibernate.dialect.SQLServer2005Dialect$2, var3429=$r5, var2508=java.lang.Enum, var2196=$i4, var2522=$i5, var2679=$r44, var880=$r11, var2067=$r12, var20=$r13, var884=$r14, var3698=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var2861, r34=var73, org.hibernate.LockOptions=var3929, r0=var2662, r1=var3550, null_type=var725, org.hibernate.LockMode=var1802, r35=var445, $i0=var1265, $i7=var3961, $r36=var2927, r2=var719, $i1=var372, $i9=var1609, $r37=var1648, r3=var3030, $i2=var912, $r38=var400, r4=var1724, $i3=var351, $i11=var2080, $r41=var3798, $r40=var736, org.hibernate.dialect.SQLServer2005Dialect$2=var1792, $r5=var3429, java.lang.Enum=var2508, $i4=var2196, $i5=var2522, $r44=var2679, $r11=var880, $r12=var2067, $r13=var20, $r14=var884, $r15=var3698}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11