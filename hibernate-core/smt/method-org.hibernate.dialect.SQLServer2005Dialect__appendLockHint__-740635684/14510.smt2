(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1624 0)
(declare-sort var2590 0)
(declare-sort var2945 0)
(declare-sort var881 0)
(declare-sort var1009 0)
(declare-sort var765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2590 String) var881)
(declare-fun getTimeOut/-863427830 (var2590) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var765) Int)
(declare-fun cast-from-var881-to-var765 (var881) var765)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1624 var1624)
(declare-const null-var2590 var2590)
(declare-const null-String String)
(declare-const null-var881 var881)
(declare-const var1009-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3412 var1624) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3412 null-var1624)))
(declare-const var1923 var2590) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1923 null-var2590)))
(declare-const var1505 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1505 null-String)))
(assert true)
(define-const var2037 var881 (getAliasSpecificLockMode/491246003 var1923 var1505)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2037 null-var881))) ; Cond: r35 != null 
(assert true)
(define-const var2013 Int (getTimeOut/-863427830 var1923)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2320 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2013 var2320))) ; Cond: $i0 != $i7 
(define-const var1274 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var1665 String var1274) ; Statement: r2 = $r36 
(assert true)
(define-const var2762 Int (getTimeOut/-863427830 var1923)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3154 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2762 var3154))) ; Cond: $i1 != $i9 
(define-const var2436 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1670 String var2436) ; Statement: r3 = $r37 
(assert true)
(define-const var3569 Int (getTimeOut/-863427830 var1923)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3569 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3396 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3853 String var3396) ; Statement: r4 = $r38 
(assert true)
(define-const var1607 Int (getTimeOut/-863427830 var1923)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var136 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1607 var136))) ; Cond: $i3 != $i11 
(define-const var2252 String "") ; Statement: $r41 = "" 
(define-const var1179 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1327 (Array Int Int) var1009-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1230 Int (ordinal/-291641772 (cast-from-var881-to-var765 var2037))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3299 Int (select var1327 var1230)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3299 4) (and (not (= var3299 3)) (and (not (= var3299 2)) (and (not (= var3299 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var3559 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3559)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3559!1 String)
(assert (= var3559!1 ""))
(assert true)
(define-const var1486 String (append/672562846 var3559!1 var1505)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3559!2 String)
(assert (= var3559!2 (str.++ var3559!1 var1505)))
(assert true)
(define-const var2513 String (append/672562846 var1486 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1486!1 String)
(assert (= var1486!1 (str.++ var1486 " with (")))
(assert true)
(define-const var3317 String (append/672562846 var2513 var1670)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2513!1 String)
(assert (= var2513!1 (str.++ var2513 var1670)))
(assert true)
(define-const var1379 String (append/672562846 var3317 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3317!1 String)
(assert (= var3317!1 (str.++ var3317 ", rowlock")))
(assert true)
(define-const var3220 String (append/672562846 var1379 var3853)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1379!1 String)
(assert (= var1379!1 (str.++ var1379 var3853)))
(assert true)
(define-const var160 String (append/672562846 var3220 var2252)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3220!1 String)
(assert (= var3220!1 (str.++ var3220 var2252)))
(assert true)
(define-const var328 String (append/672562846 var160 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var160!1 String)
(assert (= var160!1 (str.++ var160 ")")))
(assert true)
(define-const var3367 String (toString/-2075883882 var328)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var881-to-var765=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1624=org.hibernate.dialect.SQLServer2005Dialect, var3412=r34, var2590=org.hibernate.LockOptions, var1923=r0, var1505=r1, var2945=null_type, var881=org.hibernate.LockMode, var2037=r35, var2013=$i0, var2320=$i7, var1274=$r36, var1665=r2, var2762=$i1, var3154=$i9, var2436=$r37, var1670=r3, var3569=$i2, var3396=$r38, var3853=r4, var1607=$i3, var136=$i11, var2252=$r41, var1179=$r40, var1009=org.hibernate.dialect.SQLServer2005Dialect$2, var1327=$r5, var765=java.lang.Enum, var1230=$i4, var3299=$i5, var3559=$r43, var1486=$r17, var2513=$r18, var3317=$r19, var1379=$r20, var3220=$r21, var160=$r22, var328=$r23, var3367=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var1624, r34=var3412, org.hibernate.LockOptions=var2590, r0=var1923, r1=var1505, null_type=var2945, org.hibernate.LockMode=var881, r35=var2037, $i0=var2013, $i7=var2320, $r36=var1274, r2=var1665, $i1=var2762, $i9=var3154, $r37=var2436, r3=var1670, $i2=var3569, $r38=var3396, r4=var3853, $i3=var1607, $i11=var136, $r41=var2252, $r40=var1179, org.hibernate.dialect.SQLServer2005Dialect$2=var1009, $r5=var1327, java.lang.Enum=var765, $i4=var1230, $i5=var3299, $r43=var3559, $r17=var1486, $r18=var2513, $r19=var3317, $r20=var1379, $r21=var3220, $r22=var160, $r23=var328, $r24=var3367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11