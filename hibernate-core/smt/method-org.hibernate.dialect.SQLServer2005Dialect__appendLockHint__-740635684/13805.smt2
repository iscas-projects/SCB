(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2204 0)
(declare-sort var3085 0)
(declare-sort var3383 0)
(declare-sort var1941 0)
(declare-sort var1018 0)
(declare-sort var1582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3085 String) var1941)
(declare-fun getTimeOut/-863427830 (var3085) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1582) Int)
(declare-fun cast-from-var1941-to-var1582 (var1941) var1582)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2204 var2204)
(declare-const null-var3085 var3085)
(declare-const null-String String)
(declare-const null-var1941 var1941)
(declare-const var1018-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3384 var2204) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3384 null-var2204)))
(declare-const var574 var3085) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var574 null-var3085)))
(declare-const var205 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var205 null-String)))
(assert true)
(define-const var318 var1941 (getAliasSpecificLockMode/491246003 var574 var205)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var318 null-var1941))) ; Cond: r35 != null 
(assert true)
(define-const var47 Int (getTimeOut/-863427830 var574)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1602 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var47 var1602)))) ; Negate: Cond: $i0 != $i7  
(define-const var2192 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var358 String var2192) ; Statement: r2 = $r36 
(assert true)
(define-const var750 Int (getTimeOut/-863427830 var574)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2592 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var750 var2592)))) ; Negate: Cond: $i1 != $i9  
(define-const var175 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2675 String var175) ; Statement: r3 = $r37 
(assert true)
(define-const var2666 Int (getTimeOut/-863427830 var574)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2666 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2409 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2851 String var2409) ; Statement: r4 = $r38 
(assert true)
(define-const var3336 Int (getTimeOut/-863427830 var574)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var29 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3336 var29))) ; Cond: $i3 != $i11 
(define-const var2080 String "") ; Statement: $r41 = "" 
(define-const var3051 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3475 (Array Int Int) var1018-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2680 Int (ordinal/-291641772 (cast-from-var1941-to-var1582 var318))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2632 Int (select var3475 var2680)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2632 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var1820 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1820)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1820!1 String)
(assert (= var1820!1 ""))
(assert true)
(define-const var1365 String (append/672562846 var1820!1 var205)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1820!2 String)
(assert (= var1820!2 (str.++ var1820!1 var205)))
(assert true)
(define-const var304 String (append/672562846 var1365 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1365!1 String)
(assert (= var1365!1 (str.++ var1365 " with (")))
(assert true)
(define-const var1472 String (append/672562846 var304 var358)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var304!1 String)
(assert (= var304!1 (str.++ var304 var358)))
(assert true)
(define-const var1672 String (append/672562846 var1472 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var1472!1 String)
(assert (= var1472!1 (str.++ var1472 ", rowlock")))
(assert true)
(define-const var1453 String (append/672562846 var1672 var2851)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1672!1 String)
(assert (= var1672!1 (str.++ var1672 var2851)))
(assert true)
(define-const var697 String (append/672562846 var1453 var3051)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var1453!1 String)
(assert (= var1453!1 (str.++ var1453 var3051)))
(assert true)
(define-const var3852 String (append/672562846 var697 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var697!1 String)
(assert (= var697!1 (str.++ var697 ")")))
(assert true)
(define-const var732 String (toString/-2075883882 var3852)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1941-to-var1582=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2204=org.hibernate.dialect.SQLServer2005Dialect, var3384=r34, var3085=org.hibernate.LockOptions, var574=r0, var205=r1, var3383=null_type, var1941=org.hibernate.LockMode, var318=r35, var47=$i0, var1602=$i7, var2192=$r36, var358=r2, var750=$i1, var2592=$i9, var175=$r37, var2675=r3, var2666=$i2, var2409=$r38, var2851=r4, var3336=$i3, var29=$i11, var2080=$r41, var3051=$r40, var1018=org.hibernate.dialect.SQLServer2005Dialect$2, var3475=$r5, var1582=java.lang.Enum, var2680=$i4, var2632=$i5, var1820=$r42, var1365=$r26, var304=$r27, var1472=$r28, var1672=$r29, var1453=$r30, var697=$r31, var3852=$r32, var732=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var2204, r34=var3384, org.hibernate.LockOptions=var3085, r0=var574, r1=var205, null_type=var3383, org.hibernate.LockMode=var1941, r35=var318, $i0=var47, $i7=var1602, $r36=var2192, r2=var358, $i1=var750, $i9=var2592, $r37=var175, r3=var2675, $i2=var2666, $r38=var2409, r4=var2851, $i3=var3336, $i11=var29, $r41=var2080, $r40=var3051, org.hibernate.dialect.SQLServer2005Dialect$2=var1018, $r5=var3475, java.lang.Enum=var1582, $i4=var2680, $i5=var2632, $r42=var1820, $r26=var1365, $r27=var304, $r28=var1472, $r29=var1672, $r30=var1453, $r31=var697, $r32=var3852, $r33=var732}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11