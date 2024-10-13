(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var2505 0)
(declare-sort var3272 0)
(declare-sort var1199 0)
(declare-sort var1518 0)
(declare-sort var1216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2505 String) var1199)
(declare-fun getTimeOut/-863427830 (var2505) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1216) Int)
(declare-fun cast-from-var1199-to-var1216 (var1199) var1216)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2194 var2194)
(declare-const null-var2505 var2505)
(declare-const null-String String)
(declare-const null-var1199 var1199)
(declare-const var1518-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1740 var2194) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1740 null-var2194)))
(declare-const var1931 var2505) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1931 null-var2505)))
(declare-const var592 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var592 null-String)))
(assert true)
(define-const var1959 var1199 (getAliasSpecificLockMode/491246003 var1931 var592)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1959 null-var1199))) ; Cond: r35 != null 
(assert true)
(define-const var3899 Int (getTimeOut/-863427830 var1931)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1967 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3899 var1967))) ; Cond: $i0 != $i7 
(define-const var3050 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var478 String var3050) ; Statement: r2 = $r36 
(assert true)
(define-const var901 Int (getTimeOut/-863427830 var1931)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2434 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var901 var2434)))) ; Negate: Cond: $i1 != $i9  
(define-const var3598 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var326 String var3598) ; Statement: r3 = $r37 
(assert true)
(define-const var1462 Int (getTimeOut/-863427830 var1931)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1462 0)))) ; Negate: Cond: $i2 != 0  
(define-const var70 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2495 String var70) ; Statement: r4 = $r38 
(assert true)
(define-const var1735 Int (getTimeOut/-863427830 var1931)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1581 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1735 var1581)))) ; Negate: Cond: $i3 != $i11  
(define-const var2937 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1248 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var318 (Array Int Int) var1518-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2506 Int (ordinal/-291641772 (cast-from-var1199-to-var1216 var1959))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var253 Int (select var318 var2506)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var253 5) (and (not (= var253 4)) (and (not (= var253 3)) (and (not (= var253 2)) (and (not (= var253 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var2416 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2416)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2416!1 String)
(assert (= var2416!1 ""))
(assert true)
(define-const var2085 String (append/672562846 var2416!1 var592)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2416!2 String)
(assert (= var2416!2 (str.++ var2416!1 var592)))
(assert true)
(define-const var229 String (append/672562846 var2085 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var2085!1 String)
(assert (= var2085!1 (str.++ var2085 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var604 String (append/672562846 var229 var2495)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var229!1 String)
(assert (= var229!1 (str.++ var229 var2495)))
(assert true)
(define-const var2019 String (append/672562846 var604 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var604!1 String)
(assert (= var604!1 (str.++ var604 ")")))
(assert true)
(define-const var3724 String (toString/-2075883882 var2019)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1199-to-var1216=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2194=org.hibernate.dialect.SQLServer2005Dialect, var1740=r34, var2505=org.hibernate.LockOptions, var1931=r0, var592=r1, var3272=null_type, var1199=org.hibernate.LockMode, var1959=r35, var3899=$i0, var1967=$i7, var3050=$r36, var478=r2, var901=$i1, var2434=$i9, var3598=$r37, var326=r3, var1462=$i2, var70=$r38, var2495=r4, var1735=$i3, var1581=$i11, var2937=$r41, var1248=$r40, var1518=org.hibernate.dialect.SQLServer2005Dialect$2, var318=$r5, var1216=java.lang.Enum, var2506=$i4, var253=$i5, var2416=$r44, var2085=$r11, var229=$r12, var604=$r13, var2019=$r14, var3724=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var2194, r34=var1740, org.hibernate.LockOptions=var2505, r0=var1931, r1=var592, null_type=var3272, org.hibernate.LockMode=var1199, r35=var1959, $i0=var3899, $i7=var1967, $r36=var3050, r2=var478, $i1=var901, $i9=var2434, $r37=var3598, r3=var326, $i2=var1462, $r38=var70, r4=var2495, $i3=var1735, $i11=var1581, $r41=var2937, $r40=var1248, org.hibernate.dialect.SQLServer2005Dialect$2=var1518, $r5=var318, java.lang.Enum=var1216, $i4=var2506, $i5=var253, $r44=var2416, $r11=var2085, $r12=var229, $r13=var604, $r14=var2019, $r15=var3724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11