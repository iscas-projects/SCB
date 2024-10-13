(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2395 0)
(declare-sort var496 0)
(declare-sort var1680 0)
(declare-sort var2106 0)
(declare-sort var886 0)
(declare-sort var239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var496 String) var2106)
(declare-fun getTimeOut/-863427830 (var496) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var239) Int)
(declare-fun cast-from-var2106-to-var239 (var2106) var239)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2395 var2395)
(declare-const null-var496 var496)
(declare-const null-String String)
(declare-const null-var2106 var2106)
(declare-const var886-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2463 var2395) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2463 null-var2395)))
(declare-const var916 var496) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var916 null-var496)))
(declare-const var1403 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1403 null-String)))
(assert true)
(define-const var2417 var2106 (getAliasSpecificLockMode/491246003 var916 var1403)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2417 null-var2106))) ; Cond: r35 != null 
(assert true)
(define-const var1727 Int (getTimeOut/-863427830 var916)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1264 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1727 var1264)))) ; Negate: Cond: $i0 != $i7  
(define-const var69 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2359 String var69) ; Statement: r2 = $r36 
(assert true)
(define-const var2533 Int (getTimeOut/-863427830 var916)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2756 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2533 var2756))) ; Cond: $i1 != $i9 
(define-const var321 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var449 String var321) ; Statement: r3 = $r37 
(assert true)
(define-const var3857 Int (getTimeOut/-863427830 var916)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3857 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3001 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var101 String var3001) ; Statement: r4 = $r38 
(assert true)
(define-const var1696 Int (getTimeOut/-863427830 var916)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1416 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1696 var1416)))) ; Negate: Cond: $i3 != $i11  
(define-const var2609 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1179 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2154 (Array Int Int) var886-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2139 Int (ordinal/-291641772 (cast-from-var2106-to-var239 var2417))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2744 Int (select var2154 var2139)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2744 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var448 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var448)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var448!1 String)
(assert (= var448!1 ""))
(assert true)
(define-const var2040 String (append/672562846 var448!1 var1403)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var448!2 String)
(assert (= var448!2 (str.++ var448!1 var1403)))
(assert true)
(define-const var2872 String (append/672562846 var2040 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2040!1 String)
(assert (= var2040!1 (str.++ var2040 " with (")))
(assert true)
(define-const var3564 String (append/672562846 var2872 var2359)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2872!1 String)
(assert (= var2872!1 (str.++ var2872 var2359)))
(assert true)
(define-const var935 String (append/672562846 var3564 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3564!1 String)
(assert (= var3564!1 (str.++ var3564 ", rowlock")))
(assert true)
(define-const var3244 String (append/672562846 var935 var101)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var935!1 String)
(assert (= var935!1 (str.++ var935 var101)))
(assert true)
(define-const var78 String (append/672562846 var3244 var1179)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3244!1 String)
(assert (= var3244!1 (str.++ var3244 var1179)))
(assert true)
(define-const var1847 String (append/672562846 var78 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var78!1 String)
(assert (= var78!1 (str.++ var78 ")")))
(assert true)
(define-const var84 String (toString/-2075883882 var1847)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2106-to-var239=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2395=org.hibernate.dialect.SQLServer2005Dialect, var2463=r34, var496=org.hibernate.LockOptions, var916=r0, var1403=r1, var1680=null_type, var2106=org.hibernate.LockMode, var2417=r35, var1727=$i0, var1264=$i7, var69=$r36, var2359=r2, var2533=$i1, var2756=$i9, var321=$r37, var449=r3, var3857=$i2, var3001=$r38, var101=r4, var1696=$i3, var1416=$i11, var2609=$r41, var1179=$r40, var886=org.hibernate.dialect.SQLServer2005Dialect$2, var2154=$r5, var239=java.lang.Enum, var2139=$i4, var2744=$i5, var448=$r42, var2040=$r26, var2872=$r27, var3564=$r28, var935=$r29, var3244=$r30, var78=$r31, var1847=$r32, var84=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var2395, r34=var2463, org.hibernate.LockOptions=var496, r0=var916, r1=var1403, null_type=var1680, org.hibernate.LockMode=var2106, r35=var2417, $i0=var1727, $i7=var1264, $r36=var69, r2=var2359, $i1=var2533, $i9=var2756, $r37=var321, r3=var449, $i2=var3857, $r38=var3001, r4=var101, $i3=var1696, $i11=var1416, $r41=var2609, $r40=var1179, org.hibernate.dialect.SQLServer2005Dialect$2=var886, $r5=var2154, java.lang.Enum=var239, $i4=var2139, $i5=var2744, $r42=var448, $r26=var2040, $r27=var2872, $r28=var3564, $r29=var935, $r30=var3244, $r31=var78, $r32=var1847, $r33=var84}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11