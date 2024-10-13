(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3625 0)
(declare-sort var2750 0)
(declare-sort var3102 0)
(declare-sort var1892 0)
(declare-sort var3768 0)
(declare-sort var289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2750 String) var1892)
(declare-fun getTimeOut/-863427830 (var2750) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var289) Int)
(declare-fun cast-from-var1892-to-var289 (var1892) var289)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3625 var3625)
(declare-const null-var2750 var2750)
(declare-const null-String String)
(declare-const null-var1892 var1892)
(declare-const var3768-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2946 var3625) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2946 null-var3625)))
(declare-const var3120 var2750) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3120 null-var2750)))
(declare-const var1099 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1099 null-String)))
(assert true)
(define-const var2049 var1892 (getAliasSpecificLockMode/491246003 var3120 var1099)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2049 null-var1892))) ; Cond: r35 != null 
(assert true)
(define-const var2784 Int (getTimeOut/-863427830 var3120)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var276 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2784 var276)))) ; Negate: Cond: $i0 != $i7  
(define-const var2059 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1425 String var2059) ; Statement: r2 = $r36 
(assert true)
(define-const var406 Int (getTimeOut/-863427830 var3120)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var692 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var406 var692))) ; Cond: $i1 != $i9 
(define-const var2152 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1220 String var2152) ; Statement: r3 = $r37 
(assert true)
(define-const var2582 Int (getTimeOut/-863427830 var3120)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2582 0)))) ; Negate: Cond: $i2 != 0  
(define-const var326 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2142 String var326) ; Statement: r4 = $r38 
(assert true)
(define-const var27 Int (getTimeOut/-863427830 var3120)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1473 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var27 var1473))) ; Cond: $i3 != $i11 
(define-const var3479 String "") ; Statement: $r41 = "" 
(define-const var2477 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1555 (Array Int Int) var3768-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1103 Int (ordinal/-291641772 (cast-from-var1892-to-var289 var2049))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1046 Int (select var1555 var1103)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1046 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var26 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var26)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var26!1 String)
(assert (= var26!1 ""))
(assert true)
(define-const var2156 String (append/672562846 var26!1 var1099)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var26!2 String)
(assert (= var26!2 (str.++ var26!1 var1099)))
(assert true)
(define-const var777 String (append/672562846 var2156 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var2156!1 String)
(assert (= var2156!1 (str.++ var2156 " with (")))
(assert true)
(define-const var13 String (append/672562846 var777 var1425)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var777!1 String)
(assert (= var777!1 (str.++ var777 var1425)))
(assert true)
(define-const var1216 String (append/672562846 var13 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var13!1 String)
(assert (= var13!1 (str.++ var13 ", rowlock")))
(assert true)
(define-const var3631 String (append/672562846 var1216 var2142)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1216!1 String)
(assert (= var1216!1 (str.++ var1216 var2142)))
(assert true)
(define-const var1808 String (append/672562846 var3631 var2477)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3631!1 String)
(assert (= var3631!1 (str.++ var3631 var2477)))
(assert true)
(define-const var3253 String (append/672562846 var1808 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1808!1 String)
(assert (= var1808!1 (str.++ var1808 ")")))
(assert true)
(define-const var440 String (toString/-2075883882 var3253)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1892-to-var289=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3625=org.hibernate.dialect.SQLServer2005Dialect, var2946=r34, var2750=org.hibernate.LockOptions, var3120=r0, var1099=r1, var3102=null_type, var1892=org.hibernate.LockMode, var2049=r35, var2784=$i0, var276=$i7, var2059=$r36, var1425=r2, var406=$i1, var692=$i9, var2152=$r37, var1220=r3, var2582=$i2, var326=$r38, var2142=r4, var27=$i3, var1473=$i11, var3479=$r41, var2477=$r40, var3768=org.hibernate.dialect.SQLServer2005Dialect$2, var1555=$r5, var289=java.lang.Enum, var1103=$i4, var1046=$i5, var26=$r42, var2156=$r26, var777=$r27, var13=$r28, var1216=$r29, var3631=$r30, var1808=$r31, var3253=$r32, var440=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var3625, r34=var2946, org.hibernate.LockOptions=var2750, r0=var3120, r1=var1099, null_type=var3102, org.hibernate.LockMode=var1892, r35=var2049, $i0=var2784, $i7=var276, $r36=var2059, r2=var1425, $i1=var406, $i9=var692, $r37=var2152, r3=var1220, $i2=var2582, $r38=var326, r4=var2142, $i3=var27, $i11=var1473, $r41=var3479, $r40=var2477, org.hibernate.dialect.SQLServer2005Dialect$2=var3768, $r5=var1555, java.lang.Enum=var289, $i4=var1103, $i5=var1046, $r42=var26, $r26=var2156, $r27=var777, $r28=var13, $r29=var1216, $r30=var3631, $r31=var1808, $r32=var3253, $r33=var440}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11