(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var114 0)
(declare-sort var1055 0)
(declare-sort var642 0)
(declare-sort var2463 0)
(declare-sort var2370 0)
(declare-sort var367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1055 String) var2463)
(declare-fun getTimeOut/-863427830 (var1055) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var367) Int)
(declare-fun cast-from-var2463-to-var367 (var2463) var367)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var114 var114)
(declare-const null-var1055 var1055)
(declare-const null-String String)
(declare-const null-var2463 var2463)
(declare-const var2370-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2416 var114) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2416 null-var114)))
(declare-const var890 var1055) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var890 null-var1055)))
(declare-const var562 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var562 null-String)))
(assert true)
(define-const var405 var2463 (getAliasSpecificLockMode/491246003 var890 var562)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var405 null-var2463))) ; Cond: r35 != null 
(assert true)
(define-const var3204 Int (getTimeOut/-863427830 var890)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1379 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3204 var1379))) ; Cond: $i0 != $i7 
(define-const var3825 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3720 String var3825) ; Statement: r2 = $r36 
(assert true)
(define-const var803 Int (getTimeOut/-863427830 var890)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2879 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var803 var2879))) ; Cond: $i1 != $i9 
(define-const var2670 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var183 String var2670) ; Statement: r3 = $r37 
(assert true)
(define-const var3070 Int (getTimeOut/-863427830 var890)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3070 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3769 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3888 String var3769) ; Statement: r4 = $r38 
(assert true)
(define-const var1645 Int (getTimeOut/-863427830 var890)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3758 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1645 var3758)))) ; Negate: Cond: $i3 != $i11  
(define-const var2517 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var2563 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2764 (Array Int Int) var2370-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3269 Int (ordinal/-291641772 (cast-from-var2463-to-var367 var405))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3983 Int (select var2764 var3269)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3983 5) (and (not (= var3983 4)) (and (not (= var3983 3)) (and (not (= var3983 2)) (and (not (= var3983 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var702 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var702)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var702!1 String)
(assert (= var702!1 ""))
(assert true)
(define-const var2685 String (append/672562846 var702!1 var562)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var702!2 String)
(assert (= var702!2 (str.++ var702!1 var562)))
(assert true)
(define-const var236 String (append/672562846 var2685 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var2685!1 String)
(assert (= var2685!1 (str.++ var2685 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var1747 String (append/672562846 var236 var3888)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var236!1 String)
(assert (= var236!1 (str.++ var236 var3888)))
(assert true)
(define-const var1189 String (append/672562846 var1747 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1747!1 String)
(assert (= var1747!1 (str.++ var1747 ")")))
(assert true)
(define-const var2628 String (toString/-2075883882 var1189)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2463-to-var367=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var114=org.hibernate.dialect.SQLServer2005Dialect, var2416=r34, var1055=org.hibernate.LockOptions, var890=r0, var562=r1, var642=null_type, var2463=org.hibernate.LockMode, var405=r35, var3204=$i0, var1379=$i7, var3825=$r36, var3720=r2, var803=$i1, var2879=$i9, var2670=$r37, var183=r3, var3070=$i2, var3769=$r38, var3888=r4, var1645=$i3, var3758=$i11, var2517=$r41, var2563=$r40, var2370=org.hibernate.dialect.SQLServer2005Dialect$2, var2764=$r5, var367=java.lang.Enum, var3269=$i4, var3983=$i5, var702=$r44, var2685=$r11, var236=$r12, var1747=$r13, var1189=$r14, var2628=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var114, r34=var2416, org.hibernate.LockOptions=var1055, r0=var890, r1=var562, null_type=var642, org.hibernate.LockMode=var2463, r35=var405, $i0=var3204, $i7=var1379, $r36=var3825, r2=var3720, $i1=var803, $i9=var2879, $r37=var2670, r3=var183, $i2=var3070, $r38=var3769, r4=var3888, $i3=var1645, $i11=var3758, $r41=var2517, $r40=var2563, org.hibernate.dialect.SQLServer2005Dialect$2=var2370, $r5=var2764, java.lang.Enum=var367, $i4=var3269, $i5=var3983, $r44=var702, $r11=var2685, $r12=var236, $r13=var1747, $r14=var1189, $r15=var2628}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11