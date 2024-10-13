(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1611 0)
(declare-sort var3306 0)
(declare-sort var2558 0)
(declare-sort var3602 0)
(declare-sort var2786 0)
(declare-sort var2958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3306 String) var3602)
(declare-fun getTimeOut/-863427830 (var3306) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2958) Int)
(declare-fun cast-from-var3602-to-var2958 (var3602) var2958)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1611 var1611)
(declare-const null-var3306 var3306)
(declare-const null-String String)
(declare-const null-var3602 var3602)
(declare-const var2786-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1674 var1611) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1674 null-var1611)))
(declare-const var1828 var3306) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1828 null-var3306)))
(declare-const var1288 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1288 null-String)))
(assert true)
(define-const var335 var3602 (getAliasSpecificLockMode/491246003 var1828 var1288)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var335 null-var3602))) ; Cond: r35 != null 
(assert true)
(define-const var3505 Int (getTimeOut/-863427830 var1828)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2220 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3505 var2220)))) ; Negate: Cond: $i0 != $i7  
(define-const var3687 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1340 String var3687) ; Statement: r2 = $r36 
(assert true)
(define-const var3179 Int (getTimeOut/-863427830 var1828)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2604 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3179 var2604))) ; Cond: $i1 != $i9 
(define-const var1314 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var2232 String var1314) ; Statement: r3 = $r37 
(assert true)
(define-const var1156 Int (getTimeOut/-863427830 var1828)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1156 0))) ; Cond: $i2 != 0 
(define-const var1454 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2153 String var1454) ; Statement: r4 = $r38 
(assert true)
(define-const var1311 Int (getTimeOut/-863427830 var1828)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1537 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1311 var1537))) ; Cond: $i3 != $i11 
(define-const var147 String "") ; Statement: $r41 = "" 
(define-const var3758 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3287 (Array Int Int) var2786-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1066 Int (ordinal/-291641772 (cast-from-var3602-to-var2958 var335))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3210 Int (select var3287 var1066)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3210 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var209 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var209)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var209!1 String)
(assert (= var209!1 ""))
(assert true)
(define-const var3706 String (append/672562846 var209!1 var1288)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var209!2 String)
(assert (= var209!2 (str.++ var209!1 var1288)))
(assert true)
(define-const var3957 String (append/672562846 var3706 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3706!1 String)
(assert (= var3706!1 (str.++ var3706 " with (")))
(assert true)
(define-const var57 String (append/672562846 var3957 var1340)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3957!1 String)
(assert (= var3957!1 (str.++ var3957 var1340)))
(assert true)
(define-const var3037 String (append/672562846 var57 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var57!1 String)
(assert (= var57!1 (str.++ var57 ", rowlock")))
(assert true)
(define-const var1294 String (append/672562846 var3037 var2153)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3037!1 String)
(assert (= var3037!1 (str.++ var3037 var2153)))
(assert true)
(define-const var3142 String (append/672562846 var1294 var3758)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var1294!1 String)
(assert (= var1294!1 (str.++ var1294 var3758)))
(assert true)
(define-const var1306 String (append/672562846 var3142 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3142!1 String)
(assert (= var3142!1 (str.++ var3142 ")")))
(assert true)
(define-const var2253 String (toString/-2075883882 var1306)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3602-to-var2958=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1611=org.hibernate.dialect.SQLServer2005Dialect, var1674=r34, var3306=org.hibernate.LockOptions, var1828=r0, var1288=r1, var2558=null_type, var3602=org.hibernate.LockMode, var335=r35, var3505=$i0, var2220=$i7, var3687=$r36, var1340=r2, var3179=$i1, var2604=$i9, var1314=$r37, var2232=r3, var1156=$i2, var1454=$r38, var2153=r4, var1311=$i3, var1537=$i11, var147=$r41, var3758=$r40, var2786=org.hibernate.dialect.SQLServer2005Dialect$2, var3287=$r5, var2958=java.lang.Enum, var1066=$i4, var3210=$i5, var209=$r42, var3706=$r26, var3957=$r27, var57=$r28, var3037=$r29, var1294=$r30, var3142=$r31, var1306=$r32, var2253=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var1611, r34=var1674, org.hibernate.LockOptions=var3306, r0=var1828, r1=var1288, null_type=var2558, org.hibernate.LockMode=var3602, r35=var335, $i0=var3505, $i7=var2220, $r36=var3687, r2=var1340, $i1=var3179, $i9=var2604, $r37=var1314, r3=var2232, $i2=var1156, $r38=var1454, r4=var2153, $i3=var1311, $i11=var1537, $r41=var147, $r40=var3758, org.hibernate.dialect.SQLServer2005Dialect$2=var2786, $r5=var3287, java.lang.Enum=var2958, $i4=var1066, $i5=var3210, $r42=var209, $r26=var3706, $r27=var3957, $r28=var57, $r29=var3037, $r30=var1294, $r31=var3142, $r32=var1306, $r33=var2253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11