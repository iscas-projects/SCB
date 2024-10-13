(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var672 0)
(declare-sort var3214 0)
(declare-sort var3246 0)
(declare-sort var2193 0)
(declare-sort var3633 0)
(declare-sort var1220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3214 String) var2193)
(declare-fun getTimeOut/-863427830 (var3214) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1220) Int)
(declare-fun cast-from-var2193-to-var1220 (var2193) var1220)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var672 var672)
(declare-const null-var3214 var3214)
(declare-const null-String String)
(declare-const null-var2193 var2193)
(declare-const var3633-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1054 var672) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1054 null-var672)))
(declare-const var3174 var3214) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3174 null-var3214)))
(declare-const var1832 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1832 null-String)))
(assert true)
(define-const var2372 var2193 (getAliasSpecificLockMode/491246003 var3174 var1832)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2372 null-var2193))) ; Cond: r35 != null 
(assert true)
(define-const var1601 Int (getTimeOut/-863427830 var3174)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1720 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1601 var1720)))) ; Negate: Cond: $i0 != $i7  
(define-const var56 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1362 String var56) ; Statement: r2 = $r36 
(assert true)
(define-const var3672 Int (getTimeOut/-863427830 var3174)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1847 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3672 var1847)))) ; Negate: Cond: $i1 != $i9  
(define-const var1085 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3424 String var1085) ; Statement: r3 = $r37 
(assert true)
(define-const var2952 Int (getTimeOut/-863427830 var3174)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2952 0))) ; Cond: $i2 != 0 
(define-const var1973 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var652 String var1973) ; Statement: r4 = $r38 
(assert true)
(define-const var986 Int (getTimeOut/-863427830 var3174)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2908 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var986 var2908)))) ; Negate: Cond: $i3 != $i11  
(define-const var641 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1712 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2887 (Array Int Int) var3633-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1837 Int (ordinal/-291641772 (cast-from-var2193-to-var1220 var2372))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1505 Int (select var2887 var1837)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1505 5) (and (not (= var1505 4)) (and (not (= var1505 3)) (and (not (= var1505 2)) (and (not (= var1505 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var1764 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1764)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1764!1 String)
(assert (= var1764!1 ""))
(assert true)
(define-const var1767 String (append/672562846 var1764!1 var1832)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1764!2 String)
(assert (= var1764!2 (str.++ var1764!1 var1832)))
(assert true)
(define-const var2498 String (append/672562846 var1767 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var1767!1 String)
(assert (= var1767!1 (str.++ var1767 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var648 String (append/672562846 var2498 var652)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 var652)))
(assert true)
(define-const var1790 String (append/672562846 var648 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var648!1 String)
(assert (= var648!1 (str.++ var648 ")")))
(assert true)
(define-const var2201 String (toString/-2075883882 var1790)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2193-to-var1220=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var672=org.hibernate.dialect.SQLServer2005Dialect, var1054=r34, var3214=org.hibernate.LockOptions, var3174=r0, var1832=r1, var3246=null_type, var2193=org.hibernate.LockMode, var2372=r35, var1601=$i0, var1720=$i7, var56=$r36, var1362=r2, var3672=$i1, var1847=$i9, var1085=$r37, var3424=r3, var2952=$i2, var1973=$r38, var652=r4, var986=$i3, var2908=$i11, var641=$r41, var1712=$r40, var3633=org.hibernate.dialect.SQLServer2005Dialect$2, var2887=$r5, var1220=java.lang.Enum, var1837=$i4, var1505=$i5, var1764=$r44, var1767=$r11, var2498=$r12, var648=$r13, var1790=$r14, var2201=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var672, r34=var1054, org.hibernate.LockOptions=var3214, r0=var3174, r1=var1832, null_type=var3246, org.hibernate.LockMode=var2193, r35=var2372, $i0=var1601, $i7=var1720, $r36=var56, r2=var1362, $i1=var3672, $i9=var1847, $r37=var1085, r3=var3424, $i2=var2952, $r38=var1973, r4=var652, $i3=var986, $i11=var2908, $r41=var641, $r40=var1712, org.hibernate.dialect.SQLServer2005Dialect$2=var3633, $r5=var2887, java.lang.Enum=var1220, $i4=var1837, $i5=var1505, $r44=var1764, $r11=var1767, $r12=var2498, $r13=var648, $r14=var1790, $r15=var2201}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11