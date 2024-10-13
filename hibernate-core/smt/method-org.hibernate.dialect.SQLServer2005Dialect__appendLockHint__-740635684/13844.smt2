(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3276 0)
(declare-sort var1583 0)
(declare-sort var597 0)
(declare-sort var1684 0)
(declare-sort var1039 0)
(declare-sort var1300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1583 String) var1684)
(declare-fun getTimeOut/-863427830 (var1583) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1300) Int)
(declare-fun cast-from-var1684-to-var1300 (var1684) var1300)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3276 var3276)
(declare-const null-var1583 var1583)
(declare-const null-String String)
(declare-const null-var1684 var1684)
(declare-const var1039-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3221 var3276) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3221 null-var3276)))
(declare-const var818 var1583) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var818 null-var1583)))
(declare-const var2681 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2681 null-String)))
(assert true)
(define-const var3145 var1684 (getAliasSpecificLockMode/491246003 var818 var2681)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3145 null-var1684))) ; Cond: r35 != null 
(assert true)
(define-const var1697 Int (getTimeOut/-863427830 var818)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var604 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1697 var604)))) ; Negate: Cond: $i0 != $i7  
(define-const var3273 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3060 String var3273) ; Statement: r2 = $r36 
(assert true)
(define-const var1623 Int (getTimeOut/-863427830 var818)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var250 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var1623 var250)))) ; Negate: Cond: $i1 != $i9  
(define-const var25 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3274 String var25) ; Statement: r3 = $r37 
(assert true)
(define-const var202 Int (getTimeOut/-863427830 var818)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var202 0))) ; Cond: $i2 != 0 
(define-const var1994 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2556 String var1994) ; Statement: r4 = $r38 
(assert true)
(define-const var1513 Int (getTimeOut/-863427830 var818)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2825 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1513 var2825)))) ; Negate: Cond: $i3 != $i11  
(define-const var1132 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var2659 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var1173 (Array Int Int) var1039-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1031 Int (ordinal/-291641772 (cast-from-var1684-to-var1300 var3145))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2022 Int (select var1173 var1031)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2022 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var2984 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2984)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2984!1 String)
(assert (= var2984!1 ""))
(assert true)
(define-const var2492 String (append/672562846 var2984!1 var2681)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2984!2 String)
(assert (= var2984!2 (str.++ var2984!1 var2681)))
(assert true)
(define-const var1083 String (append/672562846 var2492 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2492!1 String)
(assert (= var2492!1 (str.++ var2492 " with (")))
(assert true)
(define-const var3515 String (append/672562846 var1083 var3060)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1083!1 String)
(assert (= var1083!1 (str.++ var1083 var3060)))
(assert true)
(define-const var2891 String (append/672562846 var3515 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3515!1 String)
(assert (= var3515!1 (str.++ var3515 ", rowlock")))
(assert true)
(define-const var3421 String (append/672562846 var2891 var2556)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2891!1 String)
(assert (= var2891!1 (str.++ var2891 var2556)))
(assert true)
(define-const var3318 String (append/672562846 var3421 var2659)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3421!1 String)
(assert (= var3421!1 (str.++ var3421 var2659)))
(assert true)
(define-const var803 String (append/672562846 var3318 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3318!1 String)
(assert (= var3318!1 (str.++ var3318 ")")))
(assert true)
(define-const var2157 String (toString/-2075883882 var803)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1684-to-var1300=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3276=org.hibernate.dialect.SQLServer2005Dialect, var3221=r34, var1583=org.hibernate.LockOptions, var818=r0, var2681=r1, var597=null_type, var1684=org.hibernate.LockMode, var3145=r35, var1697=$i0, var604=$i7, var3273=$r36, var3060=r2, var1623=$i1, var250=$i9, var25=$r37, var3274=r3, var202=$i2, var1994=$r38, var2556=r4, var1513=$i3, var2825=$i11, var1132=$r41, var2659=$r40, var1039=org.hibernate.dialect.SQLServer2005Dialect$2, var1173=$r5, var1300=java.lang.Enum, var1031=$i4, var2022=$i5, var2984=$r42, var2492=$r26, var1083=$r27, var3515=$r28, var2891=$r29, var3421=$r30, var3318=$r31, var803=$r32, var2157=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var3276, r34=var3221, org.hibernate.LockOptions=var1583, r0=var818, r1=var2681, null_type=var597, org.hibernate.LockMode=var1684, r35=var3145, $i0=var1697, $i7=var604, $r36=var3273, r2=var3060, $i1=var1623, $i9=var250, $r37=var25, r3=var3274, $i2=var202, $r38=var1994, r4=var2556, $i3=var1513, $i11=var2825, $r41=var1132, $r40=var2659, org.hibernate.dialect.SQLServer2005Dialect$2=var1039, $r5=var1173, java.lang.Enum=var1300, $i4=var1031, $i5=var2022, $r42=var2984, $r26=var2492, $r27=var1083, $r28=var3515, $r29=var2891, $r30=var3421, $r31=var3318, $r32=var803, $r33=var2157}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11