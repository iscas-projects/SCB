(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3113 0)
(declare-sort var3568 0)
(declare-sort var1301 0)
(declare-sort var2544 0)
(declare-sort var2935 0)
(declare-sort var1282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3568 String) var2544)
(declare-fun getTimeOut/-863427830 (var3568) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1282) Int)
(declare-fun cast-from-var2544-to-var1282 (var2544) var1282)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3113 var3113)
(declare-const null-var3568 var3568)
(declare-const null-String String)
(declare-const null-var2544 var2544)
(declare-const var2935-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2912 var3113) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2912 null-var3113)))
(declare-const var2869 var3568) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2869 null-var3568)))
(declare-const var1242 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1242 null-String)))
(assert true)
(define-const var1630 var2544 (getAliasSpecificLockMode/491246003 var2869 var1242)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1630 null-var2544))) ; Cond: r35 != null 
(assert true)
(define-const var343 Int (getTimeOut/-863427830 var2869)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1513 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var343 var1513)))) ; Negate: Cond: $i0 != $i7  
(define-const var3902 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3254 String var3902) ; Statement: r2 = $r36 
(assert true)
(define-const var3440 Int (getTimeOut/-863427830 var2869)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1853 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3440 var1853)))) ; Negate: Cond: $i1 != $i9  
(define-const var3183 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var562 String var3183) ; Statement: r3 = $r37 
(assert true)
(define-const var393 Int (getTimeOut/-863427830 var2869)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var393 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1532 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2109 String var1532) ; Statement: r4 = $r38 
(assert true)
(define-const var2996 Int (getTimeOut/-863427830 var2869)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3132 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2996 var3132))) ; Cond: $i3 != $i11 
(define-const var2692 String "") ; Statement: $r41 = "" 
(define-const var3724 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var573 (Array Int Int) var2935-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1579 Int (ordinal/-291641772 (cast-from-var2544-to-var1282 var1630))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var323 Int (select var573 var1579)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var323 5) (and (not (= var323 4)) (and (not (= var323 3)) (and (not (= var323 2)) (and (not (= var323 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var1076 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1076)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1076!1 String)
(assert (= var1076!1 ""))
(assert true)
(define-const var1225 String (append/672562846 var1076!1 var1242)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1076!2 String)
(assert (= var1076!2 (str.++ var1076!1 var1242)))
(assert true)
(define-const var998 String (append/672562846 var1225 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var1225!1 String)
(assert (= var1225!1 (str.++ var1225 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var3615 String (append/672562846 var998 var2109)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var998!1 String)
(assert (= var998!1 (str.++ var998 var2109)))
(assert true)
(define-const var706 String (append/672562846 var3615 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3615!1 String)
(assert (= var3615!1 (str.++ var3615 ")")))
(assert true)
(define-const var2798 String (toString/-2075883882 var706)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2544-to-var1282=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3113=org.hibernate.dialect.SQLServer2005Dialect, var2912=r34, var3568=org.hibernate.LockOptions, var2869=r0, var1242=r1, var1301=null_type, var2544=org.hibernate.LockMode, var1630=r35, var343=$i0, var1513=$i7, var3902=$r36, var3254=r2, var3440=$i1, var1853=$i9, var3183=$r37, var562=r3, var393=$i2, var1532=$r38, var2109=r4, var2996=$i3, var3132=$i11, var2692=$r41, var3724=$r40, var2935=org.hibernate.dialect.SQLServer2005Dialect$2, var573=$r5, var1282=java.lang.Enum, var1579=$i4, var323=$i5, var1076=$r44, var1225=$r11, var998=$r12, var3615=$r13, var706=$r14, var2798=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var3113, r34=var2912, org.hibernate.LockOptions=var3568, r0=var2869, r1=var1242, null_type=var1301, org.hibernate.LockMode=var2544, r35=var1630, $i0=var343, $i7=var1513, $r36=var3902, r2=var3254, $i1=var3440, $i9=var1853, $r37=var3183, r3=var562, $i2=var393, $r38=var1532, r4=var2109, $i3=var2996, $i11=var3132, $r41=var2692, $r40=var3724, org.hibernate.dialect.SQLServer2005Dialect$2=var2935, $r5=var573, java.lang.Enum=var1282, $i4=var1579, $i5=var323, $r44=var1076, $r11=var1225, $r12=var998, $r13=var3615, $r14=var706, $r15=var2798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11