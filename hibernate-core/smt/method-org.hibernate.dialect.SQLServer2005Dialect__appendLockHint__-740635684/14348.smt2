(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1712 0)
(declare-sort var2487 0)
(declare-sort var3229 0)
(declare-sort var2834 0)
(declare-sort var443 0)
(declare-sort var3911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2487 String) var2834)
(declare-fun getTimeOut/-863427830 (var2487) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3911) Int)
(declare-fun cast-from-var2834-to-var3911 (var2834) var3911)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1712 var1712)
(declare-const null-var2487 var2487)
(declare-const null-String String)
(declare-const null-var2834 var2834)
(declare-const var443-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1387 var1712) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1387 null-var1712)))
(declare-const var1935 var2487) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1935 null-var2487)))
(declare-const var1428 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1428 null-String)))
(assert true)
(define-const var2617 var2834 (getAliasSpecificLockMode/491246003 var1935 var1428)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2617 null-var2834))) ; Cond: r35 != null 
(assert true)
(define-const var2229 Int (getTimeOut/-863427830 var1935)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var935 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2229 var935))) ; Cond: $i0 != $i7 
(define-const var3859 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3485 String var3859) ; Statement: r2 = $r36 
(assert true)
(define-const var1726 Int (getTimeOut/-863427830 var1935)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var750 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var1726 var750)))) ; Negate: Cond: $i1 != $i9  
(define-const var912 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3576 String var912) ; Statement: r3 = $r37 
(assert true)
(define-const var1977 Int (getTimeOut/-863427830 var1935)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1977 0))) ; Cond: $i2 != 0 
(define-const var2085 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2361 String var2085) ; Statement: r4 = $r38 
(assert true)
(define-const var1245 Int (getTimeOut/-863427830 var1935)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2741 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1245 var2741))) ; Cond: $i3 != $i11 
(define-const var3341 String "") ; Statement: $r41 = "" 
(define-const var2930 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3017 (Array Int Int) var443-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2994 Int (ordinal/-291641772 (cast-from-var2834-to-var3911 var2617))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3949 Int (select var3017 var2994)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3949 4) (and (not (= var3949 3)) (and (not (= var3949 2)) (and (not (= var3949 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var3961 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3961)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3961!1 String)
(assert (= var3961!1 ""))
(assert true)
(define-const var3099 String (append/672562846 var3961!1 var1428)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3961!2 String)
(assert (= var3961!2 (str.++ var3961!1 var1428)))
(assert true)
(define-const var323 String (append/672562846 var3099 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3099!1 String)
(assert (= var3099!1 (str.++ var3099 " with (")))
(assert true)
(define-const var3183 String (append/672562846 var323 var3576)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var323!1 String)
(assert (= var323!1 (str.++ var323 var3576)))
(assert true)
(define-const var3126 String (append/672562846 var3183 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3183!1 String)
(assert (= var3183!1 (str.++ var3183 ", rowlock")))
(assert true)
(define-const var3731 String (append/672562846 var3126 var2361)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3126!1 String)
(assert (= var3126!1 (str.++ var3126 var2361)))
(assert true)
(define-const var2188 String (append/672562846 var3731 var3341)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3731!1 String)
(assert (= var3731!1 (str.++ var3731 var3341)))
(assert true)
(define-const var283 String (append/672562846 var2188 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2188!1 String)
(assert (= var2188!1 (str.++ var2188 ")")))
(assert true)
(define-const var916 String (toString/-2075883882 var283)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2834-to-var3911=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1712=org.hibernate.dialect.SQLServer2005Dialect, var1387=r34, var2487=org.hibernate.LockOptions, var1935=r0, var1428=r1, var3229=null_type, var2834=org.hibernate.LockMode, var2617=r35, var2229=$i0, var935=$i7, var3859=$r36, var3485=r2, var1726=$i1, var750=$i9, var912=$r37, var3576=r3, var1977=$i2, var2085=$r38, var2361=r4, var1245=$i3, var2741=$i11, var3341=$r41, var2930=$r40, var443=org.hibernate.dialect.SQLServer2005Dialect$2, var3017=$r5, var3911=java.lang.Enum, var2994=$i4, var3949=$i5, var3961=$r43, var3099=$r17, var323=$r18, var3183=$r19, var3126=$r20, var3731=$r21, var2188=$r22, var283=$r23, var916=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var1712, r34=var1387, org.hibernate.LockOptions=var2487, r0=var1935, r1=var1428, null_type=var3229, org.hibernate.LockMode=var2834, r35=var2617, $i0=var2229, $i7=var935, $r36=var3859, r2=var3485, $i1=var1726, $i9=var750, $r37=var912, r3=var3576, $i2=var1977, $r38=var2085, r4=var2361, $i3=var1245, $i11=var2741, $r41=var3341, $r40=var2930, org.hibernate.dialect.SQLServer2005Dialect$2=var443, $r5=var3017, java.lang.Enum=var3911, $i4=var2994, $i5=var3949, $r43=var3961, $r17=var3099, $r18=var323, $r19=var3183, $r20=var3126, $r21=var3731, $r22=var2188, $r23=var283, $r24=var916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11