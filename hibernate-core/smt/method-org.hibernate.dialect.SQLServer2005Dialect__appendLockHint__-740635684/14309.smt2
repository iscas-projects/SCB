(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1087 0)
(declare-sort var3050 0)
(declare-sort var3029 0)
(declare-sort var2527 0)
(declare-sort var3731 0)
(declare-sort var3511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3050 String) var2527)
(declare-fun getTimeOut/-863427830 (var3050) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3511) Int)
(declare-fun cast-from-var2527-to-var3511 (var2527) var3511)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1087 var1087)
(declare-const null-var3050 var3050)
(declare-const null-String String)
(declare-const null-var2527 var2527)
(declare-const var3731-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3269 var1087) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3269 null-var1087)))
(declare-const var3682 var3050) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3682 null-var3050)))
(declare-const var1406 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1406 null-String)))
(assert true)
(define-const var1013 var2527 (getAliasSpecificLockMode/491246003 var3682 var1406)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1013 null-var2527))) ; Cond: r35 != null 
(assert true)
(define-const var3632 Int (getTimeOut/-863427830 var3682)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2966 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3632 var2966))) ; Cond: $i0 != $i7 
(define-const var294 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var899 String var294) ; Statement: r2 = $r36 
(assert true)
(define-const var414 Int (getTimeOut/-863427830 var3682)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1606 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var414 var1606)))) ; Negate: Cond: $i1 != $i9  
(define-const var268 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2887 String var268) ; Statement: r3 = $r37 
(assert true)
(define-const var378 Int (getTimeOut/-863427830 var3682)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var378 0))) ; Cond: $i2 != 0 
(define-const var3431 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1197 String var3431) ; Statement: r4 = $r38 
(assert true)
(define-const var1783 Int (getTimeOut/-863427830 var3682)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var817 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1783 var817)))) ; Negate: Cond: $i3 != $i11  
(define-const var228 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3372 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2700 (Array Int Int) var3731-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2289 Int (ordinal/-291641772 (cast-from-var2527-to-var3511 var1013))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2975 Int (select var2700 var2289)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2975 5) (and (not (= var2975 4)) (and (not (= var2975 3)) (and (not (= var2975 2)) (and (not (= var2975 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var33 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var33)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var33!1 String)
(assert (= var33!1 ""))
(assert true)
(define-const var1862 String (append/672562846 var33!1 var1406)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var33!2 String)
(assert (= var33!2 (str.++ var33!1 var1406)))
(assert true)
(define-const var3133 String (append/672562846 var1862 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var1862!1 String)
(assert (= var1862!1 (str.++ var1862 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var2288 String (append/672562846 var3133 var1197)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3133!1 String)
(assert (= var3133!1 (str.++ var3133 var1197)))
(assert true)
(define-const var64 String (append/672562846 var2288 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2288!1 String)
(assert (= var2288!1 (str.++ var2288 ")")))
(assert true)
(define-const var1360 String (toString/-2075883882 var64)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2527-to-var3511=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1087=org.hibernate.dialect.SQLServer2005Dialect, var3269=r34, var3050=org.hibernate.LockOptions, var3682=r0, var1406=r1, var3029=null_type, var2527=org.hibernate.LockMode, var1013=r35, var3632=$i0, var2966=$i7, var294=$r36, var899=r2, var414=$i1, var1606=$i9, var268=$r37, var2887=r3, var378=$i2, var3431=$r38, var1197=r4, var1783=$i3, var817=$i11, var228=$r41, var3372=$r40, var3731=org.hibernate.dialect.SQLServer2005Dialect$2, var2700=$r5, var3511=java.lang.Enum, var2289=$i4, var2975=$i5, var33=$r44, var1862=$r11, var3133=$r12, var2288=$r13, var64=$r14, var1360=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var1087, r34=var3269, org.hibernate.LockOptions=var3050, r0=var3682, r1=var1406, null_type=var3029, org.hibernate.LockMode=var2527, r35=var1013, $i0=var3632, $i7=var2966, $r36=var294, r2=var899, $i1=var414, $i9=var1606, $r37=var268, r3=var2887, $i2=var378, $r38=var3431, r4=var1197, $i3=var1783, $i11=var817, $r41=var228, $r40=var3372, org.hibernate.dialect.SQLServer2005Dialect$2=var3731, $r5=var2700, java.lang.Enum=var3511, $i4=var2289, $i5=var2975, $r44=var33, $r11=var1862, $r12=var3133, $r13=var2288, $r14=var64, $r15=var1360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11