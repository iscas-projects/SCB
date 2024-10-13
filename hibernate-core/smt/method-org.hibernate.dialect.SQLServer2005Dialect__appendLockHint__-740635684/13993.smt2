(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1993 0)
(declare-sort var1941 0)
(declare-sort var112 0)
(declare-sort var2397 0)
(declare-sort var1689 0)
(declare-sort var143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1941 String) var2397)
(declare-fun getTimeOut/-863427830 (var1941) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var143) Int)
(declare-fun cast-from-var2397-to-var143 (var2397) var143)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1993 var1993)
(declare-const null-var1941 var1941)
(declare-const null-String String)
(declare-const null-var2397 var2397)
(declare-const var1689-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3982 var1993) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3982 null-var1993)))
(declare-const var1878 var1941) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1878 null-var1941)))
(declare-const var1591 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1591 null-String)))
(assert true)
(define-const var357 var2397 (getAliasSpecificLockMode/491246003 var1878 var1591)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var357 null-var2397))) ; Cond: r35 != null 
(assert true)
(define-const var2927 Int (getTimeOut/-863427830 var1878)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var557 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2927 var557)))) ; Negate: Cond: $i0 != $i7  
(define-const var1193 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2318 String var1193) ; Statement: r2 = $r36 
(assert true)
(define-const var2542 Int (getTimeOut/-863427830 var1878)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2965 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2542 var2965))) ; Cond: $i1 != $i9 
(define-const var3064 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var2784 String var3064) ; Statement: r3 = $r37 
(assert true)
(define-const var973 Int (getTimeOut/-863427830 var1878)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var973 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2648 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var1156 String var2648) ; Statement: r4 = $r38 
(assert true)
(define-const var812 Int (getTimeOut/-863427830 var1878)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var340 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var812 var340))) ; Cond: $i3 != $i11 
(define-const var2173 String "") ; Statement: $r41 = "" 
(define-const var3492 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var2566 (Array Int Int) var1689-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1087 Int (ordinal/-291641772 (cast-from-var2397-to-var143 var357))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var48 Int (select var2566 var1087)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var48 4) (and (not (= var48 3)) (and (not (= var48 2)) (and (not (= var48 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var1831 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1831)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1831!1 String)
(assert (= var1831!1 ""))
(assert true)
(define-const var2574 String (append/672562846 var1831!1 var1591)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1831!2 String)
(assert (= var1831!2 (str.++ var1831!1 var1591)))
(assert true)
(define-const var3712 String (append/672562846 var2574 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2574!1 String)
(assert (= var2574!1 (str.++ var2574 " with (")))
(assert true)
(define-const var111 String (append/672562846 var3712 var2784)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3712!1 String)
(assert (= var3712!1 (str.++ var3712 var2784)))
(assert true)
(define-const var500 String (append/672562846 var111 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var111!1 String)
(assert (= var111!1 (str.++ var111 ", rowlock")))
(assert true)
(define-const var1907 String (append/672562846 var500 var1156)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var500!1 String)
(assert (= var500!1 (str.++ var500 var1156)))
(assert true)
(define-const var3125 String (append/672562846 var1907 var2173)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1907!1 String)
(assert (= var1907!1 (str.++ var1907 var2173)))
(assert true)
(define-const var3435 String (append/672562846 var3125 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3125!1 String)
(assert (= var3125!1 (str.++ var3125 ")")))
(assert true)
(define-const var2630 String (toString/-2075883882 var3435)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2397-to-var143=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1993=org.hibernate.dialect.SQLServer2005Dialect, var3982=r34, var1941=org.hibernate.LockOptions, var1878=r0, var1591=r1, var112=null_type, var2397=org.hibernate.LockMode, var357=r35, var2927=$i0, var557=$i7, var1193=$r36, var2318=r2, var2542=$i1, var2965=$i9, var3064=$r37, var2784=r3, var973=$i2, var2648=$r38, var1156=r4, var812=$i3, var340=$i11, var2173=$r41, var3492=$r40, var1689=org.hibernate.dialect.SQLServer2005Dialect$2, var2566=$r5, var143=java.lang.Enum, var1087=$i4, var48=$i5, var1831=$r43, var2574=$r17, var3712=$r18, var111=$r19, var500=$r20, var1907=$r21, var3125=$r22, var3435=$r23, var2630=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var1993, r34=var3982, org.hibernate.LockOptions=var1941, r0=var1878, r1=var1591, null_type=var112, org.hibernate.LockMode=var2397, r35=var357, $i0=var2927, $i7=var557, $r36=var1193, r2=var2318, $i1=var2542, $i9=var2965, $r37=var3064, r3=var2784, $i2=var973, $r38=var2648, r4=var1156, $i3=var812, $i11=var340, $r41=var2173, $r40=var3492, org.hibernate.dialect.SQLServer2005Dialect$2=var1689, $r5=var2566, java.lang.Enum=var143, $i4=var1087, $i5=var48, $r43=var1831, $r17=var2574, $r18=var3712, $r19=var111, $r20=var500, $r21=var1907, $r22=var3125, $r23=var3435, $r24=var2630}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11