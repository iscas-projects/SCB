(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2372 0)
(declare-sort var1957 0)
(declare-sort var3040 0)
(declare-sort var2630 0)
(declare-sort var1584 0)
(declare-sort var2443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1957 String) var2630)
(declare-fun getTimeOut/-863427830 (var1957) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2443) Int)
(declare-fun cast-from-var2630-to-var2443 (var2630) var2443)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2372 var2372)
(declare-const null-var1957 var1957)
(declare-const null-String String)
(declare-const null-var2630 var2630)
(declare-const var1584-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1460 var2372) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1460 null-var2372)))
(declare-const var1696 var1957) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1696 null-var1957)))
(declare-const var178 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var178 null-String)))
(assert true)
(define-const var290 var2630 (getAliasSpecificLockMode/491246003 var1696 var178)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var290 null-var2630))) ; Cond: r35 != null 
(assert true)
(define-const var2370 Int (getTimeOut/-863427830 var1696)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var833 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2370 var833))) ; Cond: $i0 != $i7 
(define-const var2983 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2267 String var2983) ; Statement: r2 = $r36 
(assert true)
(define-const var35 Int (getTimeOut/-863427830 var1696)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3640 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var35 var3640))) ; Cond: $i1 != $i9 
(define-const var2028 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3432 String var2028) ; Statement: r3 = $r37 
(assert true)
(define-const var1147 Int (getTimeOut/-863427830 var1696)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1147 0))) ; Cond: $i2 != 0 
(define-const var2742 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1175 String var2742) ; Statement: r4 = $r38 
(assert true)
(define-const var2379 Int (getTimeOut/-863427830 var1696)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1067 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2379 var1067))) ; Cond: $i3 != $i11 
(define-const var3806 String "") ; Statement: $r41 = "" 
(define-const var435 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1881 (Array Int Int) var1584-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1466 Int (ordinal/-291641772 (cast-from-var2630-to-var2443 var290))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1770 Int (select var1881 var1466)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1770 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var988 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var988)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var988!1 String)
(assert (= var988!1 ""))
(assert true)
(define-const var748 String (append/672562846 var988!1 var178)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var988!2 String)
(assert (= var988!2 (str.++ var988!1 var178)))
(assert true)
(define-const var3067 String (append/672562846 var748 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var748!1 String)
(assert (= var748!1 (str.++ var748 " with (")))
(assert true)
(define-const var73 String (append/672562846 var3067 var2267)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3067!1 String)
(assert (= var3067!1 (str.++ var3067 var2267)))
(assert true)
(define-const var2783 String (append/672562846 var73 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var73!1 String)
(assert (= var73!1 (str.++ var73 ", rowlock")))
(assert true)
(define-const var2810 String (append/672562846 var2783 var1175)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2783!1 String)
(assert (= var2783!1 (str.++ var2783 var1175)))
(assert true)
(define-const var2767 String (append/672562846 var2810 var435)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2810!1 String)
(assert (= var2810!1 (str.++ var2810 var435)))
(assert true)
(define-const var209 String (append/672562846 var2767 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2767!1 String)
(assert (= var2767!1 (str.++ var2767 ")")))
(assert true)
(define-const var2916 String (toString/-2075883882 var209)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2630-to-var2443=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2372=org.hibernate.dialect.SQLServer2005Dialect, var1460=r34, var1957=org.hibernate.LockOptions, var1696=r0, var178=r1, var3040=null_type, var2630=org.hibernate.LockMode, var290=r35, var2370=$i0, var833=$i7, var2983=$r36, var2267=r2, var35=$i1, var3640=$i9, var2028=$r37, var3432=r3, var1147=$i2, var2742=$r38, var1175=r4, var2379=$i3, var1067=$i11, var3806=$r41, var435=$r40, var1584=org.hibernate.dialect.SQLServer2005Dialect$2, var1881=$r5, var2443=java.lang.Enum, var1466=$i4, var1770=$i5, var988=$r42, var748=$r26, var3067=$r27, var73=$r28, var2783=$r29, var2810=$r30, var2767=$r31, var209=$r32, var2916=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var2372, r34=var1460, org.hibernate.LockOptions=var1957, r0=var1696, r1=var178, null_type=var3040, org.hibernate.LockMode=var2630, r35=var290, $i0=var2370, $i7=var833, $r36=var2983, r2=var2267, $i1=var35, $i9=var3640, $r37=var2028, r3=var3432, $i2=var1147, $r38=var2742, r4=var1175, $i3=var2379, $i11=var1067, $r41=var3806, $r40=var435, org.hibernate.dialect.SQLServer2005Dialect$2=var1584, $r5=var1881, java.lang.Enum=var2443, $i4=var1466, $i5=var1770, $r42=var988, $r26=var748, $r27=var3067, $r28=var73, $r29=var2783, $r30=var2810, $r31=var2767, $r32=var209, $r33=var2916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11