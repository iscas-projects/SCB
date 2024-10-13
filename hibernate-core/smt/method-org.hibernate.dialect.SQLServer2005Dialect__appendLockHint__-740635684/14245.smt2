(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3919 0)
(declare-sort var1067 0)
(declare-sort var1420 0)
(declare-sort var3540 0)
(declare-sort var1726 0)
(declare-sort var2671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1067 String) var3540)
(declare-fun getTimeOut/-863427830 (var1067) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2671) Int)
(declare-fun cast-from-var3540-to-var2671 (var3540) var2671)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3919 var3919)
(declare-const null-var1067 var1067)
(declare-const null-String String)
(declare-const null-var3540 var3540)
(declare-const var1726-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2645 var3919) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2645 null-var3919)))
(declare-const var1864 var1067) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1864 null-var1067)))
(declare-const var2189 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2189 null-String)))
(assert true)
(define-const var1645 var3540 (getAliasSpecificLockMode/491246003 var1864 var2189)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1645 null-var3540))) ; Cond: r35 != null 
(assert true)
(define-const var1389 Int (getTimeOut/-863427830 var1864)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3207 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1389 var3207))) ; Cond: $i0 != $i7 
(define-const var1087 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3401 String var1087) ; Statement: r2 = $r36 
(assert true)
(define-const var2531 Int (getTimeOut/-863427830 var1864)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2432 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2531 var2432)))) ; Negate: Cond: $i1 != $i9  
(define-const var3856 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var973 String var3856) ; Statement: r3 = $r37 
(assert true)
(define-const var1080 Int (getTimeOut/-863427830 var1864)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1080 0)))) ; Negate: Cond: $i2 != 0  
(define-const var685 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var244 String var685) ; Statement: r4 = $r38 
(assert true)
(define-const var3616 Int (getTimeOut/-863427830 var1864)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1426 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3616 var1426))) ; Cond: $i3 != $i11 
(define-const var857 String "") ; Statement: $r41 = "" 
(define-const var3018 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2181 (Array Int Int) var1726-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var630 Int (ordinal/-291641772 (cast-from-var3540-to-var2671 var1645))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var271 Int (select var2181 var630)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var271 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var3349 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3349)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3349!1 String)
(assert (= var3349!1 ""))
(assert true)
(define-const var3996 String (append/672562846 var3349!1 var2189)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3349!2 String)
(assert (= var3349!2 (str.++ var3349!1 var2189)))
(assert true)
(define-const var1873 String (append/672562846 var3996 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3996!1 String)
(assert (= var3996!1 (str.++ var3996 " with (")))
(assert true)
(define-const var1997 String (append/672562846 var1873 var3401)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 var3401)))
(assert true)
(define-const var1868 String (append/672562846 var1997 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var1997!1 String)
(assert (= var1997!1 (str.++ var1997 ", rowlock")))
(assert true)
(define-const var2236 String (append/672562846 var1868 var244)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1868!1 String)
(assert (= var1868!1 (str.++ var1868 var244)))
(assert true)
(define-const var566 String (append/672562846 var2236 var3018)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2236!1 String)
(assert (= var2236!1 (str.++ var2236 var3018)))
(assert true)
(define-const var1958 String (append/672562846 var566 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var566!1 String)
(assert (= var566!1 (str.++ var566 ")")))
(assert true)
(define-const var705 String (toString/-2075883882 var1958)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3540-to-var2671=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3919=org.hibernate.dialect.SQLServer2005Dialect, var2645=r34, var1067=org.hibernate.LockOptions, var1864=r0, var2189=r1, var1420=null_type, var3540=org.hibernate.LockMode, var1645=r35, var1389=$i0, var3207=$i7, var1087=$r36, var3401=r2, var2531=$i1, var2432=$i9, var3856=$r37, var973=r3, var1080=$i2, var685=$r38, var244=r4, var3616=$i3, var1426=$i11, var857=$r41, var3018=$r40, var1726=org.hibernate.dialect.SQLServer2005Dialect$2, var2181=$r5, var2671=java.lang.Enum, var630=$i4, var271=$i5, var3349=$r42, var3996=$r26, var1873=$r27, var1997=$r28, var1868=$r29, var2236=$r30, var566=$r31, var1958=$r32, var705=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var3919, r34=var2645, org.hibernate.LockOptions=var1067, r0=var1864, r1=var2189, null_type=var1420, org.hibernate.LockMode=var3540, r35=var1645, $i0=var1389, $i7=var3207, $r36=var1087, r2=var3401, $i1=var2531, $i9=var2432, $r37=var3856, r3=var973, $i2=var1080, $r38=var685, r4=var244, $i3=var3616, $i11=var1426, $r41=var857, $r40=var3018, org.hibernate.dialect.SQLServer2005Dialect$2=var1726, $r5=var2181, java.lang.Enum=var2671, $i4=var630, $i5=var271, $r42=var3349, $r26=var3996, $r27=var1873, $r28=var1997, $r29=var1868, $r30=var2236, $r31=var566, $r32=var1958, $r33=var705}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11