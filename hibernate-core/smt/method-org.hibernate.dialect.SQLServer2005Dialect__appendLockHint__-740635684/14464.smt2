(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1503 0)
(declare-sort var328 0)
(declare-sort var11 0)
(declare-sort var343 0)
(declare-sort var1840 0)
(declare-sort var1236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var328 String) var343)
(declare-fun getTimeOut/-863427830 (var328) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1236) Int)
(declare-fun cast-from-var343-to-var1236 (var343) var1236)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1503 var1503)
(declare-const null-var328 var328)
(declare-const null-String String)
(declare-const null-var343 var343)
(declare-const var1840-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2987 var1503) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2987 null-var1503)))
(declare-const var3891 var328) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3891 null-var328)))
(declare-const var2320 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2320 null-String)))
(assert true)
(define-const var495 var343 (getAliasSpecificLockMode/491246003 var3891 var2320)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var495 null-var343))) ; Cond: r35 != null 
(assert true)
(define-const var3986 Int (getTimeOut/-863427830 var3891)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2437 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3986 var2437))) ; Cond: $i0 != $i7 
(define-const var1706 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var2357 String var1706) ; Statement: r2 = $r36 
(assert true)
(define-const var1217 Int (getTimeOut/-863427830 var3891)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1574 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var1217 var1574))) ; Cond: $i1 != $i9 
(define-const var1021 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1333 String var1021) ; Statement: r3 = $r37 
(assert true)
(define-const var1416 Int (getTimeOut/-863427830 var3891)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1416 0)))) ; Negate: Cond: $i2 != 0  
(define-const var3923 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2010 String var3923) ; Statement: r4 = $r38 
(assert true)
(define-const var1204 Int (getTimeOut/-863427830 var3891)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var517 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1204 var517)))) ; Negate: Cond: $i3 != $i11  
(define-const var1437 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3302 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2958 (Array Int Int) var1840-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3957 Int (ordinal/-291641772 (cast-from-var343-to-var1236 var495))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1615 Int (select var2958 var3957)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1615 4) (and (not (= var1615 3)) (and (not (= var1615 2)) (and (not (= var1615 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var483 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var483)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var483!1 String)
(assert (= var483!1 ""))
(assert true)
(define-const var838 String (append/672562846 var483!1 var2320)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var483!2 String)
(assert (= var483!2 (str.++ var483!1 var2320)))
(assert true)
(define-const var3951 String (append/672562846 var838 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var838!1 String)
(assert (= var838!1 (str.++ var838 " with (")))
(assert true)
(define-const var2173 String (append/672562846 var3951 var1333)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3951!1 String)
(assert (= var3951!1 (str.++ var3951 var1333)))
(assert true)
(define-const var797 String (append/672562846 var2173 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var2173!1 String)
(assert (= var2173!1 (str.++ var2173 ", rowlock")))
(assert true)
(define-const var3582 String (append/672562846 var797 var2010)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var797!1 String)
(assert (= var797!1 (str.++ var797 var2010)))
(assert true)
(define-const var157 String (append/672562846 var3582 var1437)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3582!1 String)
(assert (= var3582!1 (str.++ var3582 var1437)))
(assert true)
(define-const var1875 String (append/672562846 var157 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var157!1 String)
(assert (= var157!1 (str.++ var157 ")")))
(assert true)
(define-const var418 String (toString/-2075883882 var1875)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var343-to-var1236=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1503=org.hibernate.dialect.SQLServer2005Dialect, var2987=r34, var328=org.hibernate.LockOptions, var3891=r0, var2320=r1, var11=null_type, var343=org.hibernate.LockMode, var495=r35, var3986=$i0, var2437=$i7, var1706=$r36, var2357=r2, var1217=$i1, var1574=$i9, var1021=$r37, var1333=r3, var1416=$i2, var3923=$r38, var2010=r4, var1204=$i3, var517=$i11, var1437=$r41, var3302=$r40, var1840=org.hibernate.dialect.SQLServer2005Dialect$2, var2958=$r5, var1236=java.lang.Enum, var3957=$i4, var1615=$i5, var483=$r43, var838=$r17, var3951=$r18, var2173=$r19, var797=$r20, var3582=$r21, var157=$r22, var1875=$r23, var418=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var1503, r34=var2987, org.hibernate.LockOptions=var328, r0=var3891, r1=var2320, null_type=var11, org.hibernate.LockMode=var343, r35=var495, $i0=var3986, $i7=var2437, $r36=var1706, r2=var2357, $i1=var1217, $i9=var1574, $r37=var1021, r3=var1333, $i2=var1416, $r38=var3923, r4=var2010, $i3=var1204, $i11=var517, $r41=var1437, $r40=var3302, org.hibernate.dialect.SQLServer2005Dialect$2=var1840, $r5=var2958, java.lang.Enum=var1236, $i4=var3957, $i5=var1615, $r43=var483, $r17=var838, $r18=var3951, $r19=var2173, $r20=var797, $r21=var3582, $r22=var157, $r23=var1875, $r24=var418}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11