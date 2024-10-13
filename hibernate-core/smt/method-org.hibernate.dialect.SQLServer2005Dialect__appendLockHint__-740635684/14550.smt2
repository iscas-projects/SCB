(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2006 0)
(declare-sort var694 0)
(declare-sort var875 0)
(declare-sort var436 0)
(declare-sort var2802 0)
(declare-sort var1049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var694 String) var436)
(declare-fun getTimeOut/-863427830 (var694) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1049) Int)
(declare-fun cast-from-var436-to-var1049 (var436) var1049)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2006 var2006)
(declare-const null-var694 var694)
(declare-const null-String String)
(declare-const null-var436 var436)
(declare-const var2802-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2903 var2006) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2903 null-var2006)))
(declare-const var2935 var694) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2935 null-var694)))
(declare-const var2375 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2375 null-String)))
(assert true)
(define-const var1923 var436 (getAliasSpecificLockMode/491246003 var2935 var2375)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1923 null-var436))) ; Cond: r35 != null 
(assert true)
(define-const var2259 Int (getTimeOut/-863427830 var2935)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var188 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2259 var188))) ; Cond: $i0 != $i7 
(define-const var2251 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3481 String var2251) ; Statement: r2 = $r36 
(assert true)
(define-const var3606 Int (getTimeOut/-863427830 var2935)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1493 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3606 var1493))) ; Cond: $i1 != $i9 
(define-const var763 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1820 String var763) ; Statement: r3 = $r37 
(assert true)
(define-const var2060 Int (getTimeOut/-863427830 var2935)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2060 0))) ; Cond: $i2 != 0 
(define-const var3840 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3194 String var3840) ; Statement: r4 = $r38 
(assert true)
(define-const var2724 Int (getTimeOut/-863427830 var2935)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var679 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var2724 var679)))) ; Negate: Cond: $i3 != $i11  
(define-const var3506 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var2119 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2678 (Array Int Int) var2802-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2342 Int (ordinal/-291641772 (cast-from-var436-to-var1049 var1923))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var900 Int (select var2678 var2342)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var900 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var538 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var538)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var538!1 String)
(assert (= var538!1 ""))
(assert true)
(define-const var2384 String (append/672562846 var538!1 var2375)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var538!2 String)
(assert (= var538!2 (str.++ var538!1 var2375)))
(assert true)
(define-const var1137 String (append/672562846 var2384 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2384!1 String)
(assert (= var2384!1 (str.++ var2384 " with (")))
(assert true)
(define-const var1570 String (append/672562846 var1137 var3481)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1137!1 String)
(assert (= var1137!1 (str.++ var1137 var3481)))
(assert true)
(define-const var100 String (append/672562846 var1570 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var1570!1 String)
(assert (= var1570!1 (str.++ var1570 ", rowlock")))
(assert true)
(define-const var630 String (append/672562846 var100 var3194)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var100!1 String)
(assert (= var100!1 (str.++ var100 var3194)))
(assert true)
(define-const var1893 String (append/672562846 var630 var2119)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var630!1 String)
(assert (= var630!1 (str.++ var630 var2119)))
(assert true)
(define-const var1480 String (append/672562846 var1893 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1893!1 String)
(assert (= var1893!1 (str.++ var1893 ")")))
(assert true)
(define-const var3680 String (toString/-2075883882 var1480)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var436-to-var1049=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2006=org.hibernate.dialect.SQLServer2005Dialect, var2903=r34, var694=org.hibernate.LockOptions, var2935=r0, var2375=r1, var875=null_type, var436=org.hibernate.LockMode, var1923=r35, var2259=$i0, var188=$i7, var2251=$r36, var3481=r2, var3606=$i1, var1493=$i9, var763=$r37, var1820=r3, var2060=$i2, var3840=$r38, var3194=r4, var2724=$i3, var679=$i11, var3506=$r41, var2119=$r40, var2802=org.hibernate.dialect.SQLServer2005Dialect$2, var2678=$r5, var1049=java.lang.Enum, var2342=$i4, var900=$i5, var538=$r42, var2384=$r26, var1137=$r27, var1570=$r28, var100=$r29, var630=$r30, var1893=$r31, var1480=$r32, var3680=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var2006, r34=var2903, org.hibernate.LockOptions=var694, r0=var2935, r1=var2375, null_type=var875, org.hibernate.LockMode=var436, r35=var1923, $i0=var2259, $i7=var188, $r36=var2251, r2=var3481, $i1=var3606, $i9=var1493, $r37=var763, r3=var1820, $i2=var2060, $r38=var3840, r4=var3194, $i3=var2724, $i11=var679, $r41=var3506, $r40=var2119, org.hibernate.dialect.SQLServer2005Dialect$2=var2802, $r5=var2678, java.lang.Enum=var1049, $i4=var2342, $i5=var900, $r42=var538, $r26=var2384, $r27=var1137, $r28=var1570, $r29=var100, $r30=var630, $r31=var1893, $r32=var1480, $r33=var3680}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11