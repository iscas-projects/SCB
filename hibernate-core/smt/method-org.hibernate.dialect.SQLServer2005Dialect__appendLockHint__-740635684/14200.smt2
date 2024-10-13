(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1251 0)
(declare-sort var218 0)
(declare-sort var195 0)
(declare-sort var2758 0)
(declare-sort var3179 0)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var218 String) var2758)
(declare-fun getTimeOut/-863427830 (var218) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1476) Int)
(declare-fun cast-from-var2758-to-var1476 (var2758) var1476)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1251 var1251)
(declare-const null-var218 var218)
(declare-const null-String String)
(declare-const null-var2758 var2758)
(declare-const var3179-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var112 var1251) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var112 null-var1251)))
(declare-const var1815 var218) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1815 null-var218)))
(declare-const var551 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var551 null-String)))
(assert true)
(define-const var946 var2758 (getAliasSpecificLockMode/491246003 var1815 var551)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var946 null-var2758))) ; Cond: r35 != null 
(assert true)
(define-const var3528 Int (getTimeOut/-863427830 var1815)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3264 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3528 var3264))) ; Cond: $i0 != $i7 
(define-const var2292 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var170 String var2292) ; Statement: r2 = $r36 
(assert true)
(define-const var611 Int (getTimeOut/-863427830 var1815)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3535 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var611 var3535)))) ; Negate: Cond: $i1 != $i9  
(define-const var1159 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var1693 String var1159) ; Statement: r3 = $r37 
(assert true)
(define-const var3687 Int (getTimeOut/-863427830 var1815)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3687 0)))) ; Negate: Cond: $i2 != 0  
(define-const var57 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2204 String var57) ; Statement: r4 = $r38 
(assert true)
(define-const var470 Int (getTimeOut/-863427830 var1815)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3658 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var470 var3658)))) ; Negate: Cond: $i3 != $i11  
(define-const var3686 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var812 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var305 (Array Int Int) var3179-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2935 Int (ordinal/-291641772 (cast-from-var2758-to-var1476 var946))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3889 Int (select var305 var2935)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3889 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var3846 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3846)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3846!1 String)
(assert (= var3846!1 ""))
(assert true)
(define-const var2418 String (append/672562846 var3846!1 var551)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3846!2 String)
(assert (= var3846!2 (str.++ var3846!1 var551)))
(assert true)
(define-const var2259 String (append/672562846 var2418 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2418!1 String)
(assert (= var2418!1 (str.++ var2418 " with (")))
(assert true)
(define-const var2410 String (append/672562846 var2259 var170)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2259!1 String)
(assert (= var2259!1 (str.++ var2259 var170)))
(assert true)
(define-const var3612 String (append/672562846 var2410 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var2410!1 String)
(assert (= var2410!1 (str.++ var2410 ", rowlock")))
(assert true)
(define-const var2708 String (append/672562846 var3612 var2204)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3612!1 String)
(assert (= var3612!1 (str.++ var3612 var2204)))
(assert true)
(define-const var3588 String (append/672562846 var2708 var812)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2708!1 String)
(assert (= var2708!1 (str.++ var2708 var812)))
(assert true)
(define-const var2819 String (append/672562846 var3588 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3588!1 String)
(assert (= var3588!1 (str.++ var3588 ")")))
(assert true)
(define-const var3920 String (toString/-2075883882 var2819)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2758-to-var1476=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1251=org.hibernate.dialect.SQLServer2005Dialect, var112=r34, var218=org.hibernate.LockOptions, var1815=r0, var551=r1, var195=null_type, var2758=org.hibernate.LockMode, var946=r35, var3528=$i0, var3264=$i7, var2292=$r36, var170=r2, var611=$i1, var3535=$i9, var1159=$r37, var1693=r3, var3687=$i2, var57=$r38, var2204=r4, var470=$i3, var3658=$i11, var3686=$r41, var812=$r40, var3179=org.hibernate.dialect.SQLServer2005Dialect$2, var305=$r5, var1476=java.lang.Enum, var2935=$i4, var3889=$i5, var3846=$r42, var2418=$r26, var2259=$r27, var2410=$r28, var3612=$r29, var2708=$r30, var3588=$r31, var2819=$r32, var3920=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var1251, r34=var112, org.hibernate.LockOptions=var218, r0=var1815, r1=var551, null_type=var195, org.hibernate.LockMode=var2758, r35=var946, $i0=var3528, $i7=var3264, $r36=var2292, r2=var170, $i1=var611, $i9=var3535, $r37=var1159, r3=var1693, $i2=var3687, $r38=var57, r4=var2204, $i3=var470, $i11=var3658, $r41=var3686, $r40=var812, org.hibernate.dialect.SQLServer2005Dialect$2=var3179, $r5=var305, java.lang.Enum=var1476, $i4=var2935, $i5=var3889, $r42=var3846, $r26=var2418, $r27=var2259, $r28=var2410, $r29=var3612, $r30=var2708, $r31=var3588, $r32=var2819, $r33=var3920}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11