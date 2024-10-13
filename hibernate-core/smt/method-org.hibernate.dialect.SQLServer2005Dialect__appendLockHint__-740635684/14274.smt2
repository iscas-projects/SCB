(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3665 0)
(declare-sort var918 0)
(declare-sort var702 0)
(declare-sort var528 0)
(declare-sort var3334 0)
(declare-sort var3883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var918 String) var528)
(declare-fun getTimeOut/-863427830 (var918) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3883) Int)
(declare-fun cast-from-var528-to-var3883 (var528) var3883)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3665 var3665)
(declare-const null-var918 var918)
(declare-const null-String String)
(declare-const null-var528 var528)
(declare-const var3334-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2709 var3665) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2709 null-var3665)))
(declare-const var791 var918) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var791 null-var918)))
(declare-const var237 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var237 null-String)))
(assert true)
(define-const var3913 var528 (getAliasSpecificLockMode/491246003 var791 var237)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3913 null-var528))) ; Cond: r35 != null 
(assert true)
(define-const var2265 Int (getTimeOut/-863427830 var791)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2587 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2265 var2587))) ; Cond: $i0 != $i7 
(define-const var3497 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2292 String var3497) ; Statement: r2 = $r36 
(assert true)
(define-const var3490 Int (getTimeOut/-863427830 var791)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var141 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3490 var141)))) ; Negate: Cond: $i1 != $i9  
(define-const var2902 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var839 String var2902) ; Statement: r3 = $r37 
(assert true)
(define-const var734 Int (getTimeOut/-863427830 var791)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var734 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2742 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3029 String var2742) ; Statement: r4 = $r38 
(assert true)
(define-const var2999 Int (getTimeOut/-863427830 var791)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1700 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2999 var1700))) ; Cond: $i3 != $i11 
(define-const var2826 String "") ; Statement: $r41 = "" 
(define-const var3925 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var720 (Array Int Int) var3334-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3563 Int (ordinal/-291641772 (cast-from-var528-to-var3883 var3913))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var220 Int (select var720 var3563)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var220 6) (and (not (= var220 5)) (and (not (= var220 4)) (and (not (= var220 3)) (and (not (= var220 2)) (and (not (= var220 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var3995 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3995)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3995!1 String)
(assert (= var3995!1 ""))
(assert true)
(define-const var2566 String (append/672562846 var3995!1 var237)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3995!2 String)
(assert (= var3995!2 (str.++ var3995!1 var237)))
(assert true)
(define-const var1012 String (append/672562846 var2566 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var2566!1 String)
(assert (= var2566!1 (str.++ var2566 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var3048 String (toString/-2075883882 var1012)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var528-to-var3883=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3665=org.hibernate.dialect.SQLServer2005Dialect, var2709=r34, var918=org.hibernate.LockOptions, var791=r0, var237=r1, var702=null_type, var528=org.hibernate.LockMode, var3913=r35, var2265=$i0, var2587=$i7, var3497=$r36, var2292=r2, var3490=$i1, var141=$i9, var2902=$r37, var839=r3, var734=$i2, var2742=$r38, var3029=r4, var2999=$i3, var1700=$i11, var2826=$r41, var3925=$r40, var3334=org.hibernate.dialect.SQLServer2005Dialect$2, var720=$r5, var3883=java.lang.Enum, var3563=$i4, var220=$i5, var3995=$r45, var2566=$r7, var1012=$r8, var3048=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var3665, r34=var2709, org.hibernate.LockOptions=var918, r0=var791, r1=var237, null_type=var702, org.hibernate.LockMode=var528, r35=var3913, $i0=var2265, $i7=var2587, $r36=var3497, r2=var2292, $i1=var3490, $i9=var141, $r37=var2902, r3=var839, $i2=var734, $r38=var2742, r4=var3029, $i3=var2999, $i11=var1700, $r41=var2826, $r40=var3925, org.hibernate.dialect.SQLServer2005Dialect$2=var3334, $r5=var720, java.lang.Enum=var3883, $i4=var3563, $i5=var220, $r45=var3995, $r7=var2566, $r8=var1012, $r9=var3048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11