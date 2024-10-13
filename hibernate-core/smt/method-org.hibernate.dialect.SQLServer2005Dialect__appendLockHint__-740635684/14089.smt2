(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort var1391 0)
(declare-sort var694 0)
(declare-sort var3629 0)
(declare-sort var2159 0)
(declare-sort var113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1391 String) var3629)
(declare-fun getTimeOut/-863427830 (var1391) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var113) Int)
(declare-fun cast-from-var3629-to-var113 (var3629) var113)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var745 var745)
(declare-const null-var1391 var1391)
(declare-const null-String String)
(declare-const null-var3629 var3629)
(declare-const var2159-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2080 var745) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2080 null-var745)))
(declare-const var2460 var1391) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2460 null-var1391)))
(declare-const var3743 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3743 null-String)))
(assert true)
(define-const var1071 var3629 (getAliasSpecificLockMode/491246003 var2460 var3743)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1071 null-var3629))) ; Cond: r35 != null 
(assert true)
(define-const var3119 Int (getTimeOut/-863427830 var2460)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3821 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3119 var3821)))) ; Negate: Cond: $i0 != $i7  
(define-const var461 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3622 String var461) ; Statement: r2 = $r36 
(assert true)
(define-const var2021 Int (getTimeOut/-863427830 var2460)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var105 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2021 var105))) ; Cond: $i1 != $i9 
(define-const var2614 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1768 String var2614) ; Statement: r3 = $r37 
(assert true)
(define-const var1984 Int (getTimeOut/-863427830 var2460)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1984 0))) ; Cond: $i2 != 0 
(define-const var30 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3348 String var30) ; Statement: r4 = $r38 
(assert true)
(define-const var364 Int (getTimeOut/-863427830 var2460)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3297 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var364 var3297))) ; Cond: $i3 != $i11 
(define-const var941 String "") ; Statement: $r41 = "" 
(define-const var3224 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3250 (Array Int Int) var2159-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2801 Int (ordinal/-291641772 (cast-from-var3629-to-var113 var1071))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2954 Int (select var3250 var2801)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2954 5) (and (not (= var2954 4)) (and (not (= var2954 3)) (and (not (= var2954 2)) (and (not (= var2954 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var147 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var147)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var147!1 String)
(assert (= var147!1 ""))
(assert true)
(define-const var3526 String (append/672562846 var147!1 var3743)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var147!2 String)
(assert (= var147!2 (str.++ var147!1 var3743)))
(assert true)
(define-const var842 String (append/672562846 var3526 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var3526!1 String)
(assert (= var3526!1 (str.++ var3526 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var3263 String (append/672562846 var842 var3348)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var842!1 String)
(assert (= var842!1 (str.++ var842 var3348)))
(assert true)
(define-const var875 String (append/672562846 var3263 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3263!1 String)
(assert (= var3263!1 (str.++ var3263 ")")))
(assert true)
(define-const var525 String (toString/-2075883882 var875)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3629-to-var113=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var745=org.hibernate.dialect.SQLServer2005Dialect, var2080=r34, var1391=org.hibernate.LockOptions, var2460=r0, var3743=r1, var694=null_type, var3629=org.hibernate.LockMode, var1071=r35, var3119=$i0, var3821=$i7, var461=$r36, var3622=r2, var2021=$i1, var105=$i9, var2614=$r37, var1768=r3, var1984=$i2, var30=$r38, var3348=r4, var364=$i3, var3297=$i11, var941=$r41, var3224=$r40, var2159=org.hibernate.dialect.SQLServer2005Dialect$2, var3250=$r5, var113=java.lang.Enum, var2801=$i4, var2954=$i5, var147=$r44, var3526=$r11, var842=$r12, var3263=$r13, var875=$r14, var525=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var745, r34=var2080, org.hibernate.LockOptions=var1391, r0=var2460, r1=var3743, null_type=var694, org.hibernate.LockMode=var3629, r35=var1071, $i0=var3119, $i7=var3821, $r36=var461, r2=var3622, $i1=var2021, $i9=var105, $r37=var2614, r3=var1768, $i2=var1984, $r38=var30, r4=var3348, $i3=var364, $i11=var3297, $r41=var941, $r40=var3224, org.hibernate.dialect.SQLServer2005Dialect$2=var2159, $r5=var3250, java.lang.Enum=var113, $i4=var2801, $i5=var2954, $r44=var147, $r11=var3526, $r12=var842, $r13=var3263, $r14=var875, $r15=var525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11