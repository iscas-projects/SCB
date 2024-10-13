(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var487 0)
(declare-sort var1006 0)
(declare-sort var1497 0)
(declare-sort var1569 0)
(declare-sort var3692 0)
(declare-sort var1431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1006 String) var1569)
(declare-fun getTimeOut/-863427830 (var1006) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1431) Int)
(declare-fun cast-from-var1569-to-var1431 (var1569) var1431)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var487 var487)
(declare-const null-var1006 var1006)
(declare-const null-String String)
(declare-const null-var1569 var1569)
(declare-const var3692-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1177 var487) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1177 null-var487)))
(declare-const var1130 var1006) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1130 null-var1006)))
(declare-const var1263 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1263 null-String)))
(assert true)
(define-const var2272 var1569 (getAliasSpecificLockMode/491246003 var1130 var1263)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2272 null-var1569))) ; Cond: r35 != null 
(assert true)
(define-const var283 Int (getTimeOut/-863427830 var1130)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2950 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var283 var2950)))) ; Negate: Cond: $i0 != $i7  
(define-const var2707 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2338 String var2707) ; Statement: r2 = $r36 
(assert true)
(define-const var2702 Int (getTimeOut/-863427830 var1130)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1436 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2702 var1436))) ; Cond: $i1 != $i9 
(define-const var234 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1101 String var234) ; Statement: r3 = $r37 
(assert true)
(define-const var2611 Int (getTimeOut/-863427830 var1130)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2611 0))) ; Cond: $i2 != 0 
(define-const var2440 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3236 String var2440) ; Statement: r4 = $r38 
(assert true)
(define-const var3629 Int (getTimeOut/-863427830 var1130)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2393 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3629 var2393)))) ; Negate: Cond: $i3 != $i11  
(define-const var1126 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var904 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3931 (Array Int Int) var3692-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var847 Int (ordinal/-291641772 (cast-from-var1569-to-var1431 var2272))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2827 Int (select var3931 var847)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2827 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var2152 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2152)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2152!1 String)
(assert (= var2152!1 ""))
(assert true)
(define-const var1823 String (append/672562846 var2152!1 var1263)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2152!2 String)
(assert (= var2152!2 (str.++ var2152!1 var1263)))
(assert true)
(define-const var2402 String (append/672562846 var1823 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1823!1 String)
(assert (= var1823!1 (str.++ var1823 " with (")))
(assert true)
(define-const var2878 String (append/672562846 var2402 var2338)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2402!1 String)
(assert (= var2402!1 (str.++ var2402 var2338)))
(assert true)
(define-const var2882 String (append/672562846 var2878 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var2878!1 String)
(assert (= var2878!1 (str.++ var2878 ", rowlock")))
(assert true)
(define-const var3936 String (append/672562846 var2882 var3236)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2882!1 String)
(assert (= var2882!1 (str.++ var2882 var3236)))
(assert true)
(define-const var2684 String (append/672562846 var3936 var904)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3936!1 String)
(assert (= var3936!1 (str.++ var3936 var904)))
(assert true)
(define-const var3738 String (append/672562846 var2684 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2684!1 String)
(assert (= var2684!1 (str.++ var2684 ")")))
(assert true)
(define-const var3033 String (toString/-2075883882 var3738)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1569-to-var1431=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var487=org.hibernate.dialect.SQLServer2005Dialect, var1177=r34, var1006=org.hibernate.LockOptions, var1130=r0, var1263=r1, var1497=null_type, var1569=org.hibernate.LockMode, var2272=r35, var283=$i0, var2950=$i7, var2707=$r36, var2338=r2, var2702=$i1, var1436=$i9, var234=$r37, var1101=r3, var2611=$i2, var2440=$r38, var3236=r4, var3629=$i3, var2393=$i11, var1126=$r41, var904=$r40, var3692=org.hibernate.dialect.SQLServer2005Dialect$2, var3931=$r5, var1431=java.lang.Enum, var847=$i4, var2827=$i5, var2152=$r42, var1823=$r26, var2402=$r27, var2878=$r28, var2882=$r29, var3936=$r30, var2684=$r31, var3738=$r32, var3033=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var487, r34=var1177, org.hibernate.LockOptions=var1006, r0=var1130, r1=var1263, null_type=var1497, org.hibernate.LockMode=var1569, r35=var2272, $i0=var283, $i7=var2950, $r36=var2707, r2=var2338, $i1=var2702, $i9=var1436, $r37=var234, r3=var1101, $i2=var2611, $r38=var2440, r4=var3236, $i3=var3629, $i11=var2393, $r41=var1126, $r40=var904, org.hibernate.dialect.SQLServer2005Dialect$2=var3692, $r5=var3931, java.lang.Enum=var1431, $i4=var847, $i5=var2827, $r42=var2152, $r26=var1823, $r27=var2402, $r28=var2878, $r29=var2882, $r30=var3936, $r31=var2684, $r32=var3738, $r33=var3033}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11