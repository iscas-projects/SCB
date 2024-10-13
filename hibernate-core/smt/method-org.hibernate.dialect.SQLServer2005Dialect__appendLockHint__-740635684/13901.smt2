(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var343 0)
(declare-sort var2138 0)
(declare-sort var2311 0)
(declare-sort var3137 0)
(declare-sort var2392 0)
(declare-sort var2421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2138 String) var3137)
(declare-fun getTimeOut/-863427830 (var2138) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2421) Int)
(declare-fun cast-from-var3137-to-var2421 (var3137) var2421)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var343 var343)
(declare-const null-var2138 var2138)
(declare-const null-String String)
(declare-const null-var3137 var3137)
(declare-const var2392-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1608 var343) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1608 null-var343)))
(declare-const var1018 var2138) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1018 null-var2138)))
(declare-const var1835 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1835 null-String)))
(assert true)
(define-const var2302 var3137 (getAliasSpecificLockMode/491246003 var1018 var1835)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2302 null-var3137))) ; Cond: r35 != null 
(assert true)
(define-const var3859 Int (getTimeOut/-863427830 var1018)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2588 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3859 var2588)))) ; Negate: Cond: $i0 != $i7  
(define-const var324 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3198 String var324) ; Statement: r2 = $r36 
(assert true)
(define-const var1261 Int (getTimeOut/-863427830 var1018)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2173 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var1261 var2173)))) ; Negate: Cond: $i1 != $i9  
(define-const var1559 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var333 String var1559) ; Statement: r3 = $r37 
(assert true)
(define-const var1763 Int (getTimeOut/-863427830 var1018)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1763 0))) ; Cond: $i2 != 0 
(define-const var373 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1032 String var373) ; Statement: r4 = $r38 
(assert true)
(define-const var1297 Int (getTimeOut/-863427830 var1018)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1474 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1297 var1474))) ; Cond: $i3 != $i11 
(define-const var9 String "") ; Statement: $r41 = "" 
(define-const var58 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1048 (Array Int Int) var2392-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2855 Int (ordinal/-291641772 (cast-from-var3137-to-var2421 var2302))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1785 Int (select var1048 var2855)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1785 4) (and (not (= var1785 3)) (and (not (= var1785 2)) (and (not (= var1785 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var811 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var811)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var811!1 String)
(assert (= var811!1 ""))
(assert true)
(define-const var1161 String (append/672562846 var811!1 var1835)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var811!2 String)
(assert (= var811!2 (str.++ var811!1 var1835)))
(assert true)
(define-const var1632 String (append/672562846 var1161 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1161!1 String)
(assert (= var1161!1 (str.++ var1161 " with (")))
(assert true)
(define-const var859 String (append/672562846 var1632 var333)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1632!1 String)
(assert (= var1632!1 (str.++ var1632 var333)))
(assert true)
(define-const var762 String (append/672562846 var859 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var859!1 String)
(assert (= var859!1 (str.++ var859 ", rowlock")))
(assert true)
(define-const var3183 String (append/672562846 var762 var1032)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var762!1 String)
(assert (= var762!1 (str.++ var762 var1032)))
(assert true)
(define-const var442 String (append/672562846 var3183 var9)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3183!1 String)
(assert (= var3183!1 (str.++ var3183 var9)))
(assert true)
(define-const var1884 String (append/672562846 var442 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var442!1 String)
(assert (= var442!1 (str.++ var442 ")")))
(assert true)
(define-const var2982 String (toString/-2075883882 var1884)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3137-to-var2421=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var343=org.hibernate.dialect.SQLServer2005Dialect, var1608=r34, var2138=org.hibernate.LockOptions, var1018=r0, var1835=r1, var2311=null_type, var3137=org.hibernate.LockMode, var2302=r35, var3859=$i0, var2588=$i7, var324=$r36, var3198=r2, var1261=$i1, var2173=$i9, var1559=$r37, var333=r3, var1763=$i2, var373=$r38, var1032=r4, var1297=$i3, var1474=$i11, var9=$r41, var58=$r40, var2392=org.hibernate.dialect.SQLServer2005Dialect$2, var1048=$r5, var2421=java.lang.Enum, var2855=$i4, var1785=$i5, var811=$r43, var1161=$r17, var1632=$r18, var859=$r19, var762=$r20, var3183=$r21, var442=$r22, var1884=$r23, var2982=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var343, r34=var1608, org.hibernate.LockOptions=var2138, r0=var1018, r1=var1835, null_type=var2311, org.hibernate.LockMode=var3137, r35=var2302, $i0=var3859, $i7=var2588, $r36=var324, r2=var3198, $i1=var1261, $i9=var2173, $r37=var1559, r3=var333, $i2=var1763, $r38=var373, r4=var1032, $i3=var1297, $i11=var1474, $r41=var9, $r40=var58, org.hibernate.dialect.SQLServer2005Dialect$2=var2392, $r5=var1048, java.lang.Enum=var2421, $i4=var2855, $i5=var1785, $r43=var811, $r17=var1161, $r18=var1632, $r19=var859, $r20=var762, $r21=var3183, $r22=var442, $r23=var1884, $r24=var2982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11