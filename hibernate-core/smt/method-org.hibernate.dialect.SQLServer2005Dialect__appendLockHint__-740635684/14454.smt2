(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2979 0)
(declare-sort var2018 0)
(declare-sort var503 0)
(declare-sort var3966 0)
(declare-sort var1934 0)
(declare-sort var1823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2018 String) var3966)
(declare-fun getTimeOut/-863427830 (var2018) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1823) Int)
(declare-fun cast-from-var3966-to-var1823 (var3966) var1823)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2979 var2979)
(declare-const null-var2018 var2018)
(declare-const null-String String)
(declare-const null-var3966 var3966)
(declare-const var1934-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var830 var2979) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var830 null-var2979)))
(declare-const var1 var2018) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1 null-var2018)))
(declare-const var58 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var58 null-String)))
(assert true)
(define-const var3443 var3966 (getAliasSpecificLockMode/491246003 var1 var58)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3443 null-var3966))) ; Cond: r35 != null 
(assert true)
(define-const var2010 Int (getTimeOut/-863427830 var1)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1094 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2010 var1094))) ; Cond: $i0 != $i7 
(define-const var3975 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var649 String var3975) ; Statement: r2 = $r36 
(assert true)
(define-const var1203 Int (getTimeOut/-863427830 var1)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2552 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var1203 var2552))) ; Cond: $i1 != $i9 
(define-const var1440 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1875 String var1440) ; Statement: r3 = $r37 
(assert true)
(define-const var1809 Int (getTimeOut/-863427830 var1)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1809 0)))) ; Negate: Cond: $i2 != 0  
(define-const var501 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var1701 String var501) ; Statement: r4 = $r38 
(assert true)
(define-const var1585 Int (getTimeOut/-863427830 var1)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3073 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1585 var3073)))) ; Negate: Cond: $i3 != $i11  
(define-const var3357 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3285 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var180 (Array Int Int) var1934-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3497 Int (ordinal/-291641772 (cast-from-var3966-to-var1823 var3443))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var508 Int (select var180 var3497)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var508 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var376 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var376)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var376!1 String)
(assert (= var376!1 ""))
(assert true)
(define-const var3133 String (append/672562846 var376!1 var58)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var376!2 String)
(assert (= var376!2 (str.++ var376!1 var58)))
(assert true)
(define-const var3736 String (append/672562846 var3133 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3133!1 String)
(assert (= var3133!1 (str.++ var3133 " with (")))
(assert true)
(define-const var2133 String (append/672562846 var3736 var649)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3736!1 String)
(assert (= var3736!1 (str.++ var3736 var649)))
(assert true)
(define-const var2334 String (append/672562846 var2133 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var2133!1 String)
(assert (= var2133!1 (str.++ var2133 ", rowlock")))
(assert true)
(define-const var1960 String (append/672562846 var2334 var1701)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2334!1 String)
(assert (= var2334!1 (str.++ var2334 var1701)))
(assert true)
(define-const var2637 String (append/672562846 var1960 var3285)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var1960!1 String)
(assert (= var1960!1 (str.++ var1960 var3285)))
(assert true)
(define-const var1832 String (append/672562846 var2637 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2637!1 String)
(assert (= var2637!1 (str.++ var2637 ")")))
(assert true)
(define-const var1113 String (toString/-2075883882 var1832)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3966-to-var1823=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2979=org.hibernate.dialect.SQLServer2005Dialect, var830=r34, var2018=org.hibernate.LockOptions, var1=r0, var58=r1, var503=null_type, var3966=org.hibernate.LockMode, var3443=r35, var2010=$i0, var1094=$i7, var3975=$r36, var649=r2, var1203=$i1, var2552=$i9, var1440=$r37, var1875=r3, var1809=$i2, var501=$r38, var1701=r4, var1585=$i3, var3073=$i11, var3357=$r41, var3285=$r40, var1934=org.hibernate.dialect.SQLServer2005Dialect$2, var180=$r5, var1823=java.lang.Enum, var3497=$i4, var508=$i5, var376=$r42, var3133=$r26, var3736=$r27, var2133=$r28, var2334=$r29, var1960=$r30, var2637=$r31, var1832=$r32, var1113=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var2979, r34=var830, org.hibernate.LockOptions=var2018, r0=var1, r1=var58, null_type=var503, org.hibernate.LockMode=var3966, r35=var3443, $i0=var2010, $i7=var1094, $r36=var3975, r2=var649, $i1=var1203, $i9=var2552, $r37=var1440, r3=var1875, $i2=var1809, $r38=var501, r4=var1701, $i3=var1585, $i11=var3073, $r41=var3357, $r40=var3285, org.hibernate.dialect.SQLServer2005Dialect$2=var1934, $r5=var180, java.lang.Enum=var1823, $i4=var3497, $i5=var508, $r42=var376, $r26=var3133, $r27=var3736, $r28=var2133, $r29=var2334, $r30=var1960, $r31=var2637, $r32=var1832, $r33=var1113}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11