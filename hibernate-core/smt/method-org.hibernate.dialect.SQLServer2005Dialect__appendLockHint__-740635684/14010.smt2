(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3429 0)
(declare-sort var1575 0)
(declare-sort var568 0)
(declare-sort var1402 0)
(declare-sort var2032 0)
(declare-sort var3717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1575 String) var1402)
(declare-fun getTimeOut/-863427830 (var1575) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3717) Int)
(declare-fun cast-from-var1402-to-var3717 (var1402) var3717)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3429 var3429)
(declare-const null-var1575 var1575)
(declare-const null-String String)
(declare-const null-var1402 var1402)
(declare-const var2032-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var344 var3429) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var344 null-var3429)))
(declare-const var3266 var1575) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3266 null-var1575)))
(declare-const var2183 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2183 null-String)))
(assert true)
(define-const var1522 var1402 (getAliasSpecificLockMode/491246003 var3266 var2183)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1522 null-var1402))) ; Cond: r35 != null 
(assert true)
(define-const var3004 Int (getTimeOut/-863427830 var3266)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1489 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3004 var1489)))) ; Negate: Cond: $i0 != $i7  
(define-const var1406 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3632 String var1406) ; Statement: r2 = $r36 
(assert true)
(define-const var2710 Int (getTimeOut/-863427830 var3266)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1824 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2710 var1824))) ; Cond: $i1 != $i9 
(define-const var632 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3170 String var632) ; Statement: r3 = $r37 
(assert true)
(define-const var2173 Int (getTimeOut/-863427830 var3266)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2173 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3054 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3578 String var3054) ; Statement: r4 = $r38 
(assert true)
(define-const var3496 Int (getTimeOut/-863427830 var3266)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2062 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3496 var2062))) ; Cond: $i3 != $i11 
(define-const var185 String "") ; Statement: $r41 = "" 
(define-const var8 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3604 (Array Int Int) var2032-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2307 Int (ordinal/-291641772 (cast-from-var1402-to-var3717 var1522))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1014 Int (select var3604 var2307)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1014 6) (and (not (= var1014 5)) (and (not (= var1014 4)) (and (not (= var1014 3)) (and (not (= var1014 2)) (and (not (= var1014 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var2963 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2963)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2963!1 String)
(assert (= var2963!1 ""))
(assert true)
(define-const var3954 String (append/672562846 var2963!1 var2183)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2963!2 String)
(assert (= var2963!2 (str.++ var2963!1 var2183)))
(assert true)
(define-const var2203 String (append/672562846 var3954 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3954!1 String)
(assert (= var3954!1 (str.++ var3954 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var1743 String (toString/-2075883882 var2203)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1402-to-var3717=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3429=org.hibernate.dialect.SQLServer2005Dialect, var344=r34, var1575=org.hibernate.LockOptions, var3266=r0, var2183=r1, var568=null_type, var1402=org.hibernate.LockMode, var1522=r35, var3004=$i0, var1489=$i7, var1406=$r36, var3632=r2, var2710=$i1, var1824=$i9, var632=$r37, var3170=r3, var2173=$i2, var3054=$r38, var3578=r4, var3496=$i3, var2062=$i11, var185=$r41, var8=$r40, var2032=org.hibernate.dialect.SQLServer2005Dialect$2, var3604=$r5, var3717=java.lang.Enum, var2307=$i4, var1014=$i5, var2963=$r45, var3954=$r7, var2203=$r8, var1743=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var3429, r34=var344, org.hibernate.LockOptions=var1575, r0=var3266, r1=var2183, null_type=var568, org.hibernate.LockMode=var1402, r35=var1522, $i0=var3004, $i7=var1489, $r36=var1406, r2=var3632, $i1=var2710, $i9=var1824, $r37=var632, r3=var3170, $i2=var2173, $r38=var3054, r4=var3578, $i3=var3496, $i11=var2062, $r41=var185, $r40=var8, org.hibernate.dialect.SQLServer2005Dialect$2=var2032, $r5=var3604, java.lang.Enum=var3717, $i4=var2307, $i5=var1014, $r45=var2963, $r7=var3954, $r8=var2203, $r9=var1743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11