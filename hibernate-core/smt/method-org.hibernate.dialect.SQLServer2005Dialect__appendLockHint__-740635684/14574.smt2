(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var56 0)
(declare-sort var3785 0)
(declare-sort var3401 0)
(declare-sort var3063 0)
(declare-sort var2675 0)
(declare-sort var3712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3785 String) var3063)
(declare-fun getTimeOut/-863427830 (var3785) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3712) Int)
(declare-fun cast-from-var3063-to-var3712 (var3063) var3712)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var56 var56)
(declare-const null-var3785 var3785)
(declare-const null-String String)
(declare-const null-var3063 var3063)
(declare-const var2675-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3735 var56) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3735 null-var56)))
(declare-const var72 var3785) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var72 null-var3785)))
(declare-const var3564 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3564 null-String)))
(assert true)
(define-const var3628 var3063 (getAliasSpecificLockMode/491246003 var72 var3564)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3628 null-var3063))) ; Cond: r35 != null 
(assert true)
(define-const var1474 Int (getTimeOut/-863427830 var72)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3622 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1474 var3622))) ; Cond: $i0 != $i7 
(define-const var2638 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2814 String var2638) ; Statement: r2 = $r36 
(assert true)
(define-const var163 Int (getTimeOut/-863427830 var72)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2509 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var163 var2509))) ; Cond: $i1 != $i9 
(define-const var3321 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var2489 String var3321) ; Statement: r3 = $r37 
(assert true)
(define-const var1003 Int (getTimeOut/-863427830 var72)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1003 0))) ; Cond: $i2 != 0 
(define-const var88 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2212 String var88) ; Statement: r4 = $r38 
(assert true)
(define-const var790 Int (getTimeOut/-863427830 var72)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1657 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var790 var1657)))) ; Negate: Cond: $i3 != $i11  
(define-const var406 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1998 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var1467 (Array Int Int) var2675-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2130 Int (ordinal/-291641772 (cast-from-var3063-to-var3712 var3628))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1811 Int (select var1467 var2130)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1811 5) (and (not (= var1811 4)) (and (not (= var1811 3)) (and (not (= var1811 2)) (and (not (= var1811 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var322 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var322)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var322!1 String)
(assert (= var322!1 ""))
(assert true)
(define-const var2894 String (append/672562846 var322!1 var3564)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var322!2 String)
(assert (= var322!2 (str.++ var322!1 var3564)))
(assert true)
(define-const var1153 String (append/672562846 var2894 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var2894!1 String)
(assert (= var2894!1 (str.++ var2894 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var177 String (append/672562846 var1153 var2212)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1153!1 String)
(assert (= var1153!1 (str.++ var1153 var2212)))
(assert true)
(define-const var886 String (append/672562846 var177 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var177!1 String)
(assert (= var177!1 (str.++ var177 ")")))
(assert true)
(define-const var2748 String (toString/-2075883882 var886)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3063-to-var3712=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var56=org.hibernate.dialect.SQLServer2005Dialect, var3735=r34, var3785=org.hibernate.LockOptions, var72=r0, var3564=r1, var3401=null_type, var3063=org.hibernate.LockMode, var3628=r35, var1474=$i0, var3622=$i7, var2638=$r36, var2814=r2, var163=$i1, var2509=$i9, var3321=$r37, var2489=r3, var1003=$i2, var88=$r38, var2212=r4, var790=$i3, var1657=$i11, var406=$r41, var1998=$r40, var2675=org.hibernate.dialect.SQLServer2005Dialect$2, var1467=$r5, var3712=java.lang.Enum, var2130=$i4, var1811=$i5, var322=$r44, var2894=$r11, var1153=$r12, var177=$r13, var886=$r14, var2748=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var56, r34=var3735, org.hibernate.LockOptions=var3785, r0=var72, r1=var3564, null_type=var3401, org.hibernate.LockMode=var3063, r35=var3628, $i0=var1474, $i7=var3622, $r36=var2638, r2=var2814, $i1=var163, $i9=var2509, $r37=var3321, r3=var2489, $i2=var1003, $r38=var88, r4=var2212, $i3=var790, $i11=var1657, $r41=var406, $r40=var1998, org.hibernate.dialect.SQLServer2005Dialect$2=var2675, $r5=var1467, java.lang.Enum=var3712, $i4=var2130, $i5=var1811, $r44=var322, $r11=var2894, $r12=var1153, $r13=var177, $r14=var886, $r15=var2748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11