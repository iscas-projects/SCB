(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var775 0)
(declare-sort var3100 0)
(declare-sort var3816 0)
(declare-sort var2214 0)
(declare-sort var3949 0)
(declare-sort var21 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3100 String) var2214)
(declare-fun getTimeOut/-863427830 (var3100) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var21) Int)
(declare-fun cast-from-var2214-to-var21 (var2214) var21)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var775 var775)
(declare-const null-var3100 var3100)
(declare-const null-String String)
(declare-const null-var2214 var2214)
(declare-const var3949-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3736 var775) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3736 null-var775)))
(declare-const var2628 var3100) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2628 null-var3100)))
(declare-const var1335 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1335 null-String)))
(assert true)
(define-const var2431 var2214 (getAliasSpecificLockMode/491246003 var2628 var1335)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2431 null-var2214))) ; Cond: r35 != null 
(assert true)
(define-const var3469 Int (getTimeOut/-863427830 var2628)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var557 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3469 var557))) ; Cond: $i0 != $i7 
(define-const var3189 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var440 String var3189) ; Statement: r2 = $r36 
(assert true)
(define-const var3336 Int (getTimeOut/-863427830 var2628)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var170 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var3336 var170)))) ; Negate: Cond: $i1 != $i9  
(define-const var1572 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var1989 String var1572) ; Statement: r3 = $r37 
(assert true)
(define-const var152 Int (getTimeOut/-863427830 var2628)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var152 0))) ; Cond: $i2 != 0 
(define-const var723 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2534 String var723) ; Statement: r4 = $r38 
(assert true)
(define-const var1886 Int (getTimeOut/-863427830 var2628)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2533 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1886 var2533)))) ; Negate: Cond: $i3 != $i11  
(define-const var3395 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1187 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var89 (Array Int Int) var3949-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var773 Int (ordinal/-291641772 (cast-from-var2214-to-var21 var2431))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var477 Int (select var89 var773)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var477 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var2241 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2241)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2241!1 String)
(assert (= var2241!1 ""))
(assert true)
(define-const var3623 String (append/672562846 var2241!1 var1335)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2241!2 String)
(assert (= var2241!2 (str.++ var2241!1 var1335)))
(assert true)
(define-const var2038 String (append/672562846 var3623 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3623!1 String)
(assert (= var3623!1 (str.++ var3623 " with (")))
(assert true)
(define-const var1287 String (append/672562846 var2038 var440)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2038!1 String)
(assert (= var2038!1 (str.++ var2038 var440)))
(assert true)
(define-const var3645 String (append/672562846 var1287 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var1287!1 String)
(assert (= var1287!1 (str.++ var1287 ", rowlock")))
(assert true)
(define-const var2326 String (append/672562846 var3645 var2534)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3645!1 String)
(assert (= var3645!1 (str.++ var3645 var2534)))
(assert true)
(define-const var2659 String (append/672562846 var2326 var1187)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 var1187)))
(assert true)
(define-const var236 String (append/672562846 var2659 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2659!1 String)
(assert (= var2659!1 (str.++ var2659 ")")))
(assert true)
(define-const var1402 String (toString/-2075883882 var236)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2214-to-var21=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var775=org.hibernate.dialect.SQLServer2005Dialect, var3736=r34, var3100=org.hibernate.LockOptions, var2628=r0, var1335=r1, var3816=null_type, var2214=org.hibernate.LockMode, var2431=r35, var3469=$i0, var557=$i7, var3189=$r36, var440=r2, var3336=$i1, var170=$i9, var1572=$r37, var1989=r3, var152=$i2, var723=$r38, var2534=r4, var1886=$i3, var2533=$i11, var3395=$r41, var1187=$r40, var3949=org.hibernate.dialect.SQLServer2005Dialect$2, var89=$r5, var21=java.lang.Enum, var773=$i4, var477=$i5, var2241=$r42, var3623=$r26, var2038=$r27, var1287=$r28, var3645=$r29, var2326=$r30, var2659=$r31, var236=$r32, var1402=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var775, r34=var3736, org.hibernate.LockOptions=var3100, r0=var2628, r1=var1335, null_type=var3816, org.hibernate.LockMode=var2214, r35=var2431, $i0=var3469, $i7=var557, $r36=var3189, r2=var440, $i1=var3336, $i9=var170, $r37=var1572, r3=var1989, $i2=var152, $r38=var723, r4=var2534, $i3=var1886, $i11=var2533, $r41=var3395, $r40=var1187, org.hibernate.dialect.SQLServer2005Dialect$2=var3949, $r5=var89, java.lang.Enum=var21, $i4=var773, $i5=var477, $r42=var2241, $r26=var3623, $r27=var2038, $r28=var1287, $r29=var3645, $r30=var2326, $r31=var2659, $r32=var236, $r33=var1402}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11