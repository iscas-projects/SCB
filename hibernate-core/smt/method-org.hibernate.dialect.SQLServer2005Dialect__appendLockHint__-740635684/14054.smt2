(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2586 0)
(declare-sort var2692 0)
(declare-sort var879 0)
(declare-sort var168 0)
(declare-sort var355 0)
(declare-sort var1998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2692 String) var168)
(declare-fun getTimeOut/-863427830 (var2692) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1998) Int)
(declare-fun cast-from-var168-to-var1998 (var168) var1998)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2586 var2586)
(declare-const null-var2692 var2692)
(declare-const null-String String)
(declare-const null-var168 var168)
(declare-const var355-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3054 var2586) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3054 null-var2586)))
(declare-const var3141 var2692) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3141 null-var2692)))
(declare-const var2968 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2968 null-String)))
(assert true)
(define-const var464 var168 (getAliasSpecificLockMode/491246003 var3141 var2968)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var464 null-var168))) ; Cond: r35 != null 
(assert true)
(define-const var2525 Int (getTimeOut/-863427830 var3141)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2844 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2525 var2844)))) ; Negate: Cond: $i0 != $i7  
(define-const var437 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1101 String var437) ; Statement: r2 = $r36 
(assert true)
(define-const var3351 Int (getTimeOut/-863427830 var3141)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3075 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3351 var3075))) ; Cond: $i1 != $i9 
(define-const var3006 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var171 String var3006) ; Statement: r3 = $r37 
(assert true)
(define-const var369 Int (getTimeOut/-863427830 var3141)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var369 0))) ; Cond: $i2 != 0 
(define-const var1219 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var886 String var1219) ; Statement: r4 = $r38 
(assert true)
(define-const var1466 Int (getTimeOut/-863427830 var3141)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var132 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1466 var132)))) ; Negate: Cond: $i3 != $i11  
(define-const var3738 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var477 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var1209 (Array Int Int) var355-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1621 Int (ordinal/-291641772 (cast-from-var168-to-var1998 var464))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2970 Int (select var1209 var1621)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2970 6) (and (not (= var2970 5)) (and (not (= var2970 4)) (and (not (= var2970 3)) (and (not (= var2970 2)) (and (not (= var2970 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var2774 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2774)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2774!1 String)
(assert (= var2774!1 ""))
(assert true)
(define-const var3255 String (append/672562846 var2774!1 var2968)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2774!2 String)
(assert (= var2774!2 (str.++ var2774!1 var2968)))
(assert true)
(define-const var3547 String (append/672562846 var3255 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3255!1 String)
(assert (= var3255!1 (str.++ var3255 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var3750 String (toString/-2075883882 var3547)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var168-to-var1998=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2586=org.hibernate.dialect.SQLServer2005Dialect, var3054=r34, var2692=org.hibernate.LockOptions, var3141=r0, var2968=r1, var879=null_type, var168=org.hibernate.LockMode, var464=r35, var2525=$i0, var2844=$i7, var437=$r36, var1101=r2, var3351=$i1, var3075=$i9, var3006=$r37, var171=r3, var369=$i2, var1219=$r38, var886=r4, var1466=$i3, var132=$i11, var3738=$r41, var477=$r40, var355=org.hibernate.dialect.SQLServer2005Dialect$2, var1209=$r5, var1998=java.lang.Enum, var1621=$i4, var2970=$i5, var2774=$r45, var3255=$r7, var3547=$r8, var3750=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var2586, r34=var3054, org.hibernate.LockOptions=var2692, r0=var3141, r1=var2968, null_type=var879, org.hibernate.LockMode=var168, r35=var464, $i0=var2525, $i7=var2844, $r36=var437, r2=var1101, $i1=var3351, $i9=var3075, $r37=var3006, r3=var171, $i2=var369, $r38=var1219, r4=var886, $i3=var1466, $i11=var132, $r41=var3738, $r40=var477, org.hibernate.dialect.SQLServer2005Dialect$2=var355, $r5=var1209, java.lang.Enum=var1998, $i4=var1621, $i5=var2970, $r45=var2774, $r7=var3255, $r8=var3547, $r9=var3750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11