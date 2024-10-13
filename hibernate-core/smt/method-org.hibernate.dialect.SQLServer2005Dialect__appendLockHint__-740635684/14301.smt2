(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var603 0)
(declare-sort var1485 0)
(declare-sort var1801 0)
(declare-sort var302 0)
(declare-sort var2447 0)
(declare-sort var1112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1485 String) var302)
(declare-fun getTimeOut/-863427830 (var1485) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1112) Int)
(declare-fun cast-from-var302-to-var1112 (var302) var1112)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var603 var603)
(declare-const null-var1485 var1485)
(declare-const null-String String)
(declare-const null-var302 var302)
(declare-const var2447-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var103 var603) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var103 null-var603)))
(declare-const var2104 var1485) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2104 null-var1485)))
(declare-const var883 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var883 null-String)))
(assert true)
(define-const var2611 var302 (getAliasSpecificLockMode/491246003 var2104 var883)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2611 null-var302))) ; Cond: r35 != null 
(assert true)
(define-const var3274 Int (getTimeOut/-863427830 var2104)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2765 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3274 var2765))) ; Cond: $i0 != $i7 
(define-const var3900 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2076 String var3900) ; Statement: r2 = $r36 
(assert true)
(define-const var121 Int (getTimeOut/-863427830 var2104)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var911 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var121 var911)))) ; Negate: Cond: $i1 != $i9  
(define-const var1992 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2415 String var1992) ; Statement: r3 = $r37 
(assert true)
(define-const var949 Int (getTimeOut/-863427830 var2104)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var949 0))) ; Cond: $i2 != 0 
(define-const var538 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3471 String var538) ; Statement: r4 = $r38 
(assert true)
(define-const var827 Int (getTimeOut/-863427830 var2104)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3116 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var827 var3116)))) ; Negate: Cond: $i3 != $i11  
(define-const var314 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3209 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3099 (Array Int Int) var2447-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3649 Int (ordinal/-291641772 (cast-from-var302-to-var1112 var2611))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3812 Int (select var3099 var3649)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3812 4) (and (not (= var3812 3)) (and (not (= var3812 2)) (and (not (= var3812 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var2109 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2109)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2109!1 String)
(assert (= var2109!1 ""))
(assert true)
(define-const var238 String (append/672562846 var2109!1 var883)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2109!2 String)
(assert (= var2109!2 (str.++ var2109!1 var883)))
(assert true)
(define-const var1669 String (append/672562846 var238 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var238!1 String)
(assert (= var238!1 (str.++ var238 " with (")))
(assert true)
(define-const var2550 String (append/672562846 var1669 var2415)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1669!1 String)
(assert (= var1669!1 (str.++ var1669 var2415)))
(assert true)
(define-const var1622 String (append/672562846 var2550 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var2550!1 String)
(assert (= var2550!1 (str.++ var2550 ", rowlock")))
(assert true)
(define-const var1848 String (append/672562846 var1622 var3471)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1622!1 String)
(assert (= var1622!1 (str.++ var1622 var3471)))
(assert true)
(define-const var2169 String (append/672562846 var1848 var314)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1848!1 String)
(assert (= var1848!1 (str.++ var1848 var314)))
(assert true)
(define-const var3524 String (append/672562846 var2169 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2169!1 String)
(assert (= var2169!1 (str.++ var2169 ")")))
(assert true)
(define-const var1373 String (toString/-2075883882 var3524)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var302-to-var1112=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var603=org.hibernate.dialect.SQLServer2005Dialect, var103=r34, var1485=org.hibernate.LockOptions, var2104=r0, var883=r1, var1801=null_type, var302=org.hibernate.LockMode, var2611=r35, var3274=$i0, var2765=$i7, var3900=$r36, var2076=r2, var121=$i1, var911=$i9, var1992=$r37, var2415=r3, var949=$i2, var538=$r38, var3471=r4, var827=$i3, var3116=$i11, var314=$r41, var3209=$r40, var2447=org.hibernate.dialect.SQLServer2005Dialect$2, var3099=$r5, var1112=java.lang.Enum, var3649=$i4, var3812=$i5, var2109=$r43, var238=$r17, var1669=$r18, var2550=$r19, var1622=$r20, var1848=$r21, var2169=$r22, var3524=$r23, var1373=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var603, r34=var103, org.hibernate.LockOptions=var1485, r0=var2104, r1=var883, null_type=var1801, org.hibernate.LockMode=var302, r35=var2611, $i0=var3274, $i7=var2765, $r36=var3900, r2=var2076, $i1=var121, $i9=var911, $r37=var1992, r3=var2415, $i2=var949, $r38=var538, r4=var3471, $i3=var827, $i11=var3116, $r41=var314, $r40=var3209, org.hibernate.dialect.SQLServer2005Dialect$2=var2447, $r5=var3099, java.lang.Enum=var1112, $i4=var3649, $i5=var3812, $r43=var2109, $r17=var238, $r18=var1669, $r19=var2550, $r20=var1622, $r21=var1848, $r22=var2169, $r23=var3524, $r24=var1373}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11