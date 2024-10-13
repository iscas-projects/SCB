(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1082 0)
(declare-sort var3028 0)
(declare-sort var3775 0)
(declare-sort var297 0)
(declare-sort var963 0)
(declare-sort var3062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3028 String) var297)
(declare-fun getTimeOut/-863427830 (var3028) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3062) Int)
(declare-fun cast-from-var297-to-var3062 (var297) var3062)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1082 var1082)
(declare-const null-var3028 var3028)
(declare-const null-String String)
(declare-const null-var297 var297)
(declare-const var963-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3564 var1082) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3564 null-var1082)))
(declare-const var2207 var3028) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2207 null-var3028)))
(declare-const var1275 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1275 null-String)))
(assert true)
(define-const var160 var297 (getAliasSpecificLockMode/491246003 var2207 var1275)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var160 null-var297))) ; Cond: r35 != null 
(assert true)
(define-const var3458 Int (getTimeOut/-863427830 var2207)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var670 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3458 var670)))) ; Negate: Cond: $i0 != $i7  
(define-const var1110 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var1162 String var1110) ; Statement: r2 = $r36 
(assert true)
(define-const var2913 Int (getTimeOut/-863427830 var2207)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var661 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2913 var661))) ; Cond: $i1 != $i9 
(define-const var2723 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var159 String var2723) ; Statement: r3 = $r37 
(assert true)
(define-const var1623 Int (getTimeOut/-863427830 var2207)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1623 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3131 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var18 String var3131) ; Statement: r4 = $r38 
(assert true)
(define-const var259 Int (getTimeOut/-863427830 var2207)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3261 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var259 var3261)))) ; Negate: Cond: $i3 != $i11  
(define-const var562 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var2640 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3875 (Array Int Int) var963-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1450 Int (ordinal/-291641772 (cast-from-var297-to-var3062 var160))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3003 Int (select var3875 var1450)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3003 6) (and (not (= var3003 5)) (and (not (= var3003 4)) (and (not (= var3003 3)) (and (not (= var3003 2)) (and (not (= var3003 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var1223 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1223)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1223!1 String)
(assert (= var1223!1 ""))
(assert true)
(define-const var735 String (append/672562846 var1223!1 var1275)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1223!2 String)
(assert (= var1223!2 (str.++ var1223!1 var1275)))
(assert true)
(define-const var1963 String (append/672562846 var735 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var735!1 String)
(assert (= var735!1 (str.++ var735 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var225 String (toString/-2075883882 var1963)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var297-to-var3062=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1082=org.hibernate.dialect.SQLServer2005Dialect, var3564=r34, var3028=org.hibernate.LockOptions, var2207=r0, var1275=r1, var3775=null_type, var297=org.hibernate.LockMode, var160=r35, var3458=$i0, var670=$i7, var1110=$r36, var1162=r2, var2913=$i1, var661=$i9, var2723=$r37, var159=r3, var1623=$i2, var3131=$r38, var18=r4, var259=$i3, var3261=$i11, var562=$r41, var2640=$r40, var963=org.hibernate.dialect.SQLServer2005Dialect$2, var3875=$r5, var3062=java.lang.Enum, var1450=$i4, var3003=$i5, var1223=$r45, var735=$r7, var1963=$r8, var225=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var1082, r34=var3564, org.hibernate.LockOptions=var3028, r0=var2207, r1=var1275, null_type=var3775, org.hibernate.LockMode=var297, r35=var160, $i0=var3458, $i7=var670, $r36=var1110, r2=var1162, $i1=var2913, $i9=var661, $r37=var2723, r3=var159, $i2=var1623, $r38=var3131, r4=var18, $i3=var259, $i11=var3261, $r41=var562, $r40=var2640, org.hibernate.dialect.SQLServer2005Dialect$2=var963, $r5=var3875, java.lang.Enum=var3062, $i4=var1450, $i5=var3003, $r45=var1223, $r7=var735, $r8=var1963, $r9=var225}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11