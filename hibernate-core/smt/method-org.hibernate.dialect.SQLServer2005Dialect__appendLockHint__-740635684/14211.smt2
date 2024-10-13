(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2426 0)
(declare-sort var940 0)
(declare-sort var3837 0)
(declare-sort var1940 0)
(declare-sort var1519 0)
(declare-sort var753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var940 String) var1940)
(declare-fun getTimeOut/-863427830 (var940) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var753) Int)
(declare-fun cast-from-var1940-to-var753 (var1940) var753)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2426 var2426)
(declare-const null-var940 var940)
(declare-const null-String String)
(declare-const null-var1940 var1940)
(declare-const var1519-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1595 var2426) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1595 null-var2426)))
(declare-const var3338 var940) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3338 null-var940)))
(declare-const var2295 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2295 null-String)))
(assert true)
(define-const var3404 var1940 (getAliasSpecificLockMode/491246003 var3338 var2295)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3404 null-var1940))) ; Cond: r35 != null 
(assert true)
(define-const var2676 Int (getTimeOut/-863427830 var3338)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1967 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2676 var1967))) ; Cond: $i0 != $i7 
(define-const var3650 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3347 String var3650) ; Statement: r2 = $r36 
(assert true)
(define-const var3540 Int (getTimeOut/-863427830 var3338)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var563 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3540 var563)))) ; Negate: Cond: $i1 != $i9  
(define-const var3126 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var1652 String var3126) ; Statement: r3 = $r37 
(assert true)
(define-const var1720 Int (getTimeOut/-863427830 var3338)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1720 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2769 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var553 String var2769) ; Statement: r4 = $r38 
(assert true)
(define-const var688 Int (getTimeOut/-863427830 var3338)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3341 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var688 var3341)))) ; Negate: Cond: $i3 != $i11  
(define-const var2581 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1280 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var461 (Array Int Int) var1519-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1046 Int (ordinal/-291641772 (cast-from-var1940-to-var753 var3404))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3102 Int (select var461 var1046)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3102 4) (and (not (= var3102 3)) (and (not (= var3102 2)) (and (not (= var3102 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var2471 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2471)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2471!1 String)
(assert (= var2471!1 ""))
(assert true)
(define-const var2919 String (append/672562846 var2471!1 var2295)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2471!2 String)
(assert (= var2471!2 (str.++ var2471!1 var2295)))
(assert true)
(define-const var3878 String (append/672562846 var2919 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2919!1 String)
(assert (= var2919!1 (str.++ var2919 " with (")))
(assert true)
(define-const var3353 String (append/672562846 var3878 var1652)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3878!1 String)
(assert (= var3878!1 (str.++ var3878 var1652)))
(assert true)
(define-const var1386 String (append/672562846 var3353 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3353!1 String)
(assert (= var3353!1 (str.++ var3353 ", rowlock")))
(assert true)
(define-const var2578 String (append/672562846 var1386 var553)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1386!1 String)
(assert (= var1386!1 (str.++ var1386 var553)))
(assert true)
(define-const var2444 String (append/672562846 var2578 var2581)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2578!1 String)
(assert (= var2578!1 (str.++ var2578 var2581)))
(assert true)
(define-const var2980 String (append/672562846 var2444 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2444!1 String)
(assert (= var2444!1 (str.++ var2444 ")")))
(assert true)
(define-const var1100 String (toString/-2075883882 var2980)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1940-to-var753=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2426=org.hibernate.dialect.SQLServer2005Dialect, var1595=r34, var940=org.hibernate.LockOptions, var3338=r0, var2295=r1, var3837=null_type, var1940=org.hibernate.LockMode, var3404=r35, var2676=$i0, var1967=$i7, var3650=$r36, var3347=r2, var3540=$i1, var563=$i9, var3126=$r37, var1652=r3, var1720=$i2, var2769=$r38, var553=r4, var688=$i3, var3341=$i11, var2581=$r41, var1280=$r40, var1519=org.hibernate.dialect.SQLServer2005Dialect$2, var461=$r5, var753=java.lang.Enum, var1046=$i4, var3102=$i5, var2471=$r43, var2919=$r17, var3878=$r18, var3353=$r19, var1386=$r20, var2578=$r21, var2444=$r22, var2980=$r23, var1100=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var2426, r34=var1595, org.hibernate.LockOptions=var940, r0=var3338, r1=var2295, null_type=var3837, org.hibernate.LockMode=var1940, r35=var3404, $i0=var2676, $i7=var1967, $r36=var3650, r2=var3347, $i1=var3540, $i9=var563, $r37=var3126, r3=var1652, $i2=var1720, $r38=var2769, r4=var553, $i3=var688, $i11=var3341, $r41=var2581, $r40=var1280, org.hibernate.dialect.SQLServer2005Dialect$2=var1519, $r5=var461, java.lang.Enum=var753, $i4=var1046, $i5=var3102, $r43=var2471, $r17=var2919, $r18=var3878, $r19=var3353, $r20=var1386, $r21=var2578, $r22=var2444, $r23=var2980, $r24=var1100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11