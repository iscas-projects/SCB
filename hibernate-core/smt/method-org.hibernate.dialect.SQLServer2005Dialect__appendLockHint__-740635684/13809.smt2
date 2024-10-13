(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2500 0)
(declare-sort var1704 0)
(declare-sort var1142 0)
(declare-sort var1010 0)
(declare-sort var3215 0)
(declare-sort var1110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1704 String) var1010)
(declare-fun getTimeOut/-863427830 (var1704) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1110) Int)
(declare-fun cast-from-var1010-to-var1110 (var1010) var1110)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2500 var2500)
(declare-const null-var1704 var1704)
(declare-const null-String String)
(declare-const null-var1010 var1010)
(declare-const var3215-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2619 var2500) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2619 null-var2500)))
(declare-const var3238 var1704) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3238 null-var1704)))
(declare-const var3888 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3888 null-String)))
(assert true)
(define-const var727 var1010 (getAliasSpecificLockMode/491246003 var3238 var3888)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var727 null-var1010))) ; Cond: r35 != null 
(assert true)
(define-const var145 Int (getTimeOut/-863427830 var3238)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var41 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var145 var41)))) ; Negate: Cond: $i0 != $i7  
(define-const var151 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3362 String var151) ; Statement: r2 = $r36 
(assert true)
(define-const var2771 Int (getTimeOut/-863427830 var3238)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3754 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2771 var3754)))) ; Negate: Cond: $i1 != $i9  
(define-const var1189 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3695 String var1189) ; Statement: r3 = $r37 
(assert true)
(define-const var2860 Int (getTimeOut/-863427830 var3238)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2860 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2553 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2517 String var2553) ; Statement: r4 = $r38 
(assert true)
(define-const var302 Int (getTimeOut/-863427830 var3238)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2182 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var302 var2182))) ; Cond: $i3 != $i11 
(define-const var1009 String "") ; Statement: $r41 = "" 
(define-const var2421 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var691 (Array Int Int) var3215-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var143 Int (ordinal/-291641772 (cast-from-var1010-to-var1110 var727))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2361 Int (select var691 var143)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2361 4) (and (not (= var2361 3)) (and (not (= var2361 2)) (and (not (= var2361 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var2501 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2501)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2501!1 String)
(assert (= var2501!1 ""))
(assert true)
(define-const var1481 String (append/672562846 var2501!1 var3888)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2501!2 String)
(assert (= var2501!2 (str.++ var2501!1 var3888)))
(assert true)
(define-const var2567 String (append/672562846 var1481 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1481!1 String)
(assert (= var1481!1 (str.++ var1481 " with (")))
(assert true)
(define-const var3864 String (append/672562846 var2567 var3695)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2567!1 String)
(assert (= var2567!1 (str.++ var2567 var3695)))
(assert true)
(define-const var3325 String (append/672562846 var3864 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3864!1 String)
(assert (= var3864!1 (str.++ var3864 ", rowlock")))
(assert true)
(define-const var3026 String (append/672562846 var3325 var2517)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3325!1 String)
(assert (= var3325!1 (str.++ var3325 var2517)))
(assert true)
(define-const var3666 String (append/672562846 var3026 var1009)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3026!1 String)
(assert (= var3026!1 (str.++ var3026 var1009)))
(assert true)
(define-const var502 String (append/672562846 var3666 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3666!1 String)
(assert (= var3666!1 (str.++ var3666 ")")))
(assert true)
(define-const var445 String (toString/-2075883882 var502)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1010-to-var1110=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2500=org.hibernate.dialect.SQLServer2005Dialect, var2619=r34, var1704=org.hibernate.LockOptions, var3238=r0, var3888=r1, var1142=null_type, var1010=org.hibernate.LockMode, var727=r35, var145=$i0, var41=$i7, var151=$r36, var3362=r2, var2771=$i1, var3754=$i9, var1189=$r37, var3695=r3, var2860=$i2, var2553=$r38, var2517=r4, var302=$i3, var2182=$i11, var1009=$r41, var2421=$r40, var3215=org.hibernate.dialect.SQLServer2005Dialect$2, var691=$r5, var1110=java.lang.Enum, var143=$i4, var2361=$i5, var2501=$r43, var1481=$r17, var2567=$r18, var3864=$r19, var3325=$r20, var3026=$r21, var3666=$r22, var502=$r23, var445=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var2500, r34=var2619, org.hibernate.LockOptions=var1704, r0=var3238, r1=var3888, null_type=var1142, org.hibernate.LockMode=var1010, r35=var727, $i0=var145, $i7=var41, $r36=var151, r2=var3362, $i1=var2771, $i9=var3754, $r37=var1189, r3=var3695, $i2=var2860, $r38=var2553, r4=var2517, $i3=var302, $i11=var2182, $r41=var1009, $r40=var2421, org.hibernate.dialect.SQLServer2005Dialect$2=var3215, $r5=var691, java.lang.Enum=var1110, $i4=var143, $i5=var2361, $r43=var2501, $r17=var1481, $r18=var2567, $r19=var3864, $r20=var3325, $r21=var3026, $r22=var3666, $r23=var502, $r24=var445}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11