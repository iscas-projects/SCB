(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2978 0)
(declare-sort var51 0)
(declare-sort var3668 0)
(declare-sort var3723 0)
(declare-sort var2865 0)
(declare-sort var2839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var51 String) var3723)
(declare-fun getTimeOut/-863427830 (var51) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2839) Int)
(declare-fun cast-from-var3723-to-var2839 (var3723) var2839)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2978 var2978)
(declare-const null-var51 var51)
(declare-const null-String String)
(declare-const null-var3723 var3723)
(declare-const var2865-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2249 var2978) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2249 null-var2978)))
(declare-const var2493 var51) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2493 null-var51)))
(declare-const var1847 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1847 null-String)))
(assert true)
(define-const var3896 var3723 (getAliasSpecificLockMode/491246003 var2493 var1847)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3896 null-var3723))) ; Cond: r35 != null 
(assert true)
(define-const var165 Int (getTimeOut/-863427830 var2493)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1773 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var165 var1773)))) ; Negate: Cond: $i0 != $i7  
(define-const var658 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2490 String var658) ; Statement: r2 = $r36 
(assert true)
(define-const var906 Int (getTimeOut/-863427830 var2493)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3878 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var906 var3878)))) ; Negate: Cond: $i1 != $i9  
(define-const var357 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3433 String var357) ; Statement: r3 = $r37 
(assert true)
(define-const var2862 Int (getTimeOut/-863427830 var2493)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var2862 0)))) ; Negate: Cond: $i2 != 0  
(define-const var2034 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var1180 String var2034) ; Statement: r4 = $r38 
(assert true)
(define-const var311 Int (getTimeOut/-863427830 var2493)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1662 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var311 var1662)))) ; Negate: Cond: $i3 != $i11  
(define-const var900 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3892 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var195 (Array Int Int) var2865-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1946 Int (ordinal/-291641772 (cast-from-var3723-to-var2839 var3896))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1933 Int (select var195 var1946)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1933 4) (and (not (= var1933 3)) (and (not (= var1933 2)) (and (not (= var1933 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var1554 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1554)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1554!1 String)
(assert (= var1554!1 ""))
(assert true)
(define-const var1650 String (append/672562846 var1554!1 var1847)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1554!2 String)
(assert (= var1554!2 (str.++ var1554!1 var1847)))
(assert true)
(define-const var2063 String (append/672562846 var1650 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1650!1 String)
(assert (= var1650!1 (str.++ var1650 " with (")))
(assert true)
(define-const var3058 String (append/672562846 var2063 var3433)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2063!1 String)
(assert (= var2063!1 (str.++ var2063 var3433)))
(assert true)
(define-const var1852 String (append/672562846 var3058 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3058!1 String)
(assert (= var3058!1 (str.++ var3058 ", rowlock")))
(assert true)
(define-const var1021 String (append/672562846 var1852 var1180)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1852!1 String)
(assert (= var1852!1 (str.++ var1852 var1180)))
(assert true)
(define-const var52 String (append/672562846 var1021 var900)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1021!1 String)
(assert (= var1021!1 (str.++ var1021 var900)))
(assert true)
(define-const var2483 String (append/672562846 var52 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var52!1 String)
(assert (= var52!1 (str.++ var52 ")")))
(assert true)
(define-const var3673 String (toString/-2075883882 var2483)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3723-to-var2839=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2978=org.hibernate.dialect.SQLServer2005Dialect, var2249=r34, var51=org.hibernate.LockOptions, var2493=r0, var1847=r1, var3668=null_type, var3723=org.hibernate.LockMode, var3896=r35, var165=$i0, var1773=$i7, var658=$r36, var2490=r2, var906=$i1, var3878=$i9, var357=$r37, var3433=r3, var2862=$i2, var2034=$r38, var1180=r4, var311=$i3, var1662=$i11, var900=$r41, var3892=$r40, var2865=org.hibernate.dialect.SQLServer2005Dialect$2, var195=$r5, var2839=java.lang.Enum, var1946=$i4, var1933=$i5, var1554=$r43, var1650=$r17, var2063=$r18, var3058=$r19, var1852=$r20, var1021=$r21, var52=$r22, var2483=$r23, var3673=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var2978, r34=var2249, org.hibernate.LockOptions=var51, r0=var2493, r1=var1847, null_type=var3668, org.hibernate.LockMode=var3723, r35=var3896, $i0=var165, $i7=var1773, $r36=var658, r2=var2490, $i1=var906, $i9=var3878, $r37=var357, r3=var3433, $i2=var2862, $r38=var2034, r4=var1180, $i3=var311, $i11=var1662, $r41=var900, $r40=var3892, org.hibernate.dialect.SQLServer2005Dialect$2=var2865, $r5=var195, java.lang.Enum=var2839, $i4=var1946, $i5=var1933, $r43=var1554, $r17=var1650, $r18=var2063, $r19=var3058, $r20=var1852, $r21=var1021, $r22=var52, $r23=var2483, $r24=var3673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11