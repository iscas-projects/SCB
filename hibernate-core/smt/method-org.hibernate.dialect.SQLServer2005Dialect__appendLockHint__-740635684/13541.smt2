(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var294 0)
(declare-sort var3611 0)
(declare-sort var2812 0)
(declare-sort var522 0)
(declare-sort var3383 0)
(declare-sort var3280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3611 String) var522)
(declare-fun getTimeOut/-863427830 (var3611) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3280) Int)
(declare-fun cast-from-var522-to-var3280 (var522) var3280)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var294 var294)
(declare-const null-var3611 var3611)
(declare-const null-String String)
(declare-const null-var522 var522)
(declare-const var3383-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1973 var294) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1973 null-var294)))
(declare-const var2610 var3611) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2610 null-var3611)))
(declare-const var3689 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3689 null-String)))
(assert true)
(define-const var705 var522 (getAliasSpecificLockMode/491246003 var2610 var3689)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var705 null-var522))) ; Cond: r35 != null 
(assert true)
(define-const var132 Int (getTimeOut/-863427830 var2610)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var274 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var132 var274)))) ; Negate: Cond: $i0 != $i7  
(define-const var702 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var607 String var702) ; Statement: r2 = $r36 
(assert true)
(define-const var2140 Int (getTimeOut/-863427830 var2610)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2499 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2140 var2499)))) ; Negate: Cond: $i1 != $i9  
(define-const var1319 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2372 String var1319) ; Statement: r3 = $r37 
(assert true)
(define-const var520 Int (getTimeOut/-863427830 var2610)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var520 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1679 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3088 String var1679) ; Statement: r4 = $r38 
(assert true)
(define-const var2509 Int (getTimeOut/-863427830 var2610)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1816 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var2509 var1816)))) ; Negate: Cond: $i3 != $i11  
(define-const var1946 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var2138 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2639 (Array Int Int) var3383-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var193 Int (ordinal/-291641772 (cast-from-var522-to-var3280 var705))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3251 Int (select var2639 var193)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3251 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var3854 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3854)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3854!1 String)
(assert (= var3854!1 ""))
(assert true)
(define-const var2129 String (append/672562846 var3854!1 var3689)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3854!2 String)
(assert (= var3854!2 (str.++ var3854!1 var3689)))
(assert true)
(define-const var3571 String (append/672562846 var2129 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2129!1 String)
(assert (= var2129!1 (str.++ var2129 " with (")))
(assert true)
(define-const var3900 String (append/672562846 var3571 var607)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3571!1 String)
(assert (= var3571!1 (str.++ var3571 var607)))
(assert true)
(define-const var2293 String (append/672562846 var3900 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3900!1 String)
(assert (= var3900!1 (str.++ var3900 ", rowlock")))
(assert true)
(define-const var1878 String (append/672562846 var2293 var3088)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2293!1 String)
(assert (= var2293!1 (str.++ var2293 var3088)))
(assert true)
(define-const var696 String (append/672562846 var1878 var2138)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var1878!1 String)
(assert (= var1878!1 (str.++ var1878 var2138)))
(assert true)
(define-const var1890 String (append/672562846 var696 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var696!1 String)
(assert (= var696!1 (str.++ var696 ")")))
(assert true)
(define-const var2795 String (toString/-2075883882 var1890)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var522-to-var3280=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var294=org.hibernate.dialect.SQLServer2005Dialect, var1973=r34, var3611=org.hibernate.LockOptions, var2610=r0, var3689=r1, var2812=null_type, var522=org.hibernate.LockMode, var705=r35, var132=$i0, var274=$i7, var702=$r36, var607=r2, var2140=$i1, var2499=$i9, var1319=$r37, var2372=r3, var520=$i2, var1679=$r38, var3088=r4, var2509=$i3, var1816=$i11, var1946=$r41, var2138=$r40, var3383=org.hibernate.dialect.SQLServer2005Dialect$2, var2639=$r5, var3280=java.lang.Enum, var193=$i4, var3251=$i5, var3854=$r42, var2129=$r26, var3571=$r27, var3900=$r28, var2293=$r29, var1878=$r30, var696=$r31, var1890=$r32, var2795=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var294, r34=var1973, org.hibernate.LockOptions=var3611, r0=var2610, r1=var3689, null_type=var2812, org.hibernate.LockMode=var522, r35=var705, $i0=var132, $i7=var274, $r36=var702, r2=var607, $i1=var2140, $i9=var2499, $r37=var1319, r3=var2372, $i2=var520, $r38=var1679, r4=var3088, $i3=var2509, $i11=var1816, $r41=var1946, $r40=var2138, org.hibernate.dialect.SQLServer2005Dialect$2=var3383, $r5=var2639, java.lang.Enum=var3280, $i4=var193, $i5=var3251, $r42=var3854, $r26=var2129, $r27=var3571, $r28=var3900, $r29=var2293, $r30=var1878, $r31=var696, $r32=var1890, $r33=var2795}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11