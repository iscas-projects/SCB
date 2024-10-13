(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3406 0)
(declare-sort var2445 0)
(declare-sort var1422 0)
(declare-sort var2620 0)
(declare-sort var2596 0)
(declare-sort var2994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2445 String) var2620)
(declare-fun getTimeOut/-863427830 (var2445) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2994) Int)
(declare-fun cast-from-var2620-to-var2994 (var2620) var2994)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3406 var3406)
(declare-const null-var2445 var2445)
(declare-const null-String String)
(declare-const null-var2620 var2620)
(declare-const var2596-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3290 var3406) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3290 null-var3406)))
(declare-const var2887 var2445) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2887 null-var2445)))
(declare-const var2385 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2385 null-String)))
(assert true)
(define-const var3164 var2620 (getAliasSpecificLockMode/491246003 var2887 var2385)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3164 null-var2620))) ; Cond: r35 != null 
(assert true)
(define-const var2960 Int (getTimeOut/-863427830 var2887)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2550 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2960 var2550)))) ; Negate: Cond: $i0 != $i7  
(define-const var645 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1421 String var645) ; Statement: r2 = $r36 
(assert true)
(define-const var1765 Int (getTimeOut/-863427830 var2887)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2673 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var1765 var2673))) ; Cond: $i1 != $i9 
(define-const var1322 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1534 String var1322) ; Statement: r3 = $r37 
(assert true)
(define-const var2777 Int (getTimeOut/-863427830 var2887)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2777 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1482 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3145 String var1482) ; Statement: r4 = $r38 
(assert true)
(define-const var552 Int (getTimeOut/-863427830 var2887)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var226 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var552 var226)))) ; Negate: Cond: $i3 != $i11  
(define-const var1132 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1401 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2388 (Array Int Int) var2596-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var128 Int (ordinal/-291641772 (cast-from-var2620-to-var2994 var3164))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2792 Int (select var2388 var128)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2792 4) (and (not (= var2792 3)) (and (not (= var2792 2)) (and (not (= var2792 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var251 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var251)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var251!1 String)
(assert (= var251!1 ""))
(assert true)
(define-const var2172 String (append/672562846 var251!1 var2385)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var251!2 String)
(assert (= var251!2 (str.++ var251!1 var2385)))
(assert true)
(define-const var3984 String (append/672562846 var2172 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2172!1 String)
(assert (= var2172!1 (str.++ var2172 " with (")))
(assert true)
(define-const var3118 String (append/672562846 var3984 var1534)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3984!1 String)
(assert (= var3984!1 (str.++ var3984 var1534)))
(assert true)
(define-const var3315 String (append/672562846 var3118 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3118!1 String)
(assert (= var3118!1 (str.++ var3118 ", rowlock")))
(assert true)
(define-const var1240 String (append/672562846 var3315 var3145)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3315!1 String)
(assert (= var3315!1 (str.++ var3315 var3145)))
(assert true)
(define-const var1413 String (append/672562846 var1240 var1132)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1240!1 String)
(assert (= var1240!1 (str.++ var1240 var1132)))
(assert true)
(define-const var549 String (append/672562846 var1413 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1413!1 String)
(assert (= var1413!1 (str.++ var1413 ")")))
(assert true)
(define-const var330 String (toString/-2075883882 var549)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2620-to-var2994=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3406=org.hibernate.dialect.SQLServer2005Dialect, var3290=r34, var2445=org.hibernate.LockOptions, var2887=r0, var2385=r1, var1422=null_type, var2620=org.hibernate.LockMode, var3164=r35, var2960=$i0, var2550=$i7, var645=$r36, var1421=r2, var1765=$i1, var2673=$i9, var1322=$r37, var1534=r3, var2777=$i2, var1482=$r38, var3145=r4, var552=$i3, var226=$i11, var1132=$r41, var1401=$r40, var2596=org.hibernate.dialect.SQLServer2005Dialect$2, var2388=$r5, var2994=java.lang.Enum, var128=$i4, var2792=$i5, var251=$r43, var2172=$r17, var3984=$r18, var3118=$r19, var3315=$r20, var1240=$r21, var1413=$r22, var549=$r23, var330=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var3406, r34=var3290, org.hibernate.LockOptions=var2445, r0=var2887, r1=var2385, null_type=var1422, org.hibernate.LockMode=var2620, r35=var3164, $i0=var2960, $i7=var2550, $r36=var645, r2=var1421, $i1=var1765, $i9=var2673, $r37=var1322, r3=var1534, $i2=var2777, $r38=var1482, r4=var3145, $i3=var552, $i11=var226, $r41=var1132, $r40=var1401, org.hibernate.dialect.SQLServer2005Dialect$2=var2596, $r5=var2388, java.lang.Enum=var2994, $i4=var128, $i5=var2792, $r43=var251, $r17=var2172, $r18=var3984, $r19=var3118, $r20=var3315, $r21=var1240, $r22=var1413, $r23=var549, $r24=var330}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11