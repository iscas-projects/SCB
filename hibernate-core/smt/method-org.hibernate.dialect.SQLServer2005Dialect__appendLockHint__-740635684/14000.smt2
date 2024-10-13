(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2710 0)
(declare-sort var226 0)
(declare-sort var2622 0)
(declare-sort var1577 0)
(declare-sort var3216 0)
(declare-sort var401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var226 String) var1577)
(declare-fun getTimeOut/-863427830 (var226) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var401) Int)
(declare-fun cast-from-var1577-to-var401 (var1577) var401)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2710 var2710)
(declare-const null-var226 var226)
(declare-const null-String String)
(declare-const null-var1577 var1577)
(declare-const var3216-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3413 var2710) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3413 null-var2710)))
(declare-const var635 var226) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var635 null-var226)))
(declare-const var1837 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1837 null-String)))
(assert true)
(define-const var3469 var1577 (getAliasSpecificLockMode/491246003 var635 var1837)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3469 null-var1577))) ; Cond: r35 != null 
(assert true)
(define-const var1404 Int (getTimeOut/-863427830 var635)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1625 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1404 var1625)))) ; Negate: Cond: $i0 != $i7  
(define-const var712 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3226 String var712) ; Statement: r2 = $r36 
(assert true)
(define-const var1168 Int (getTimeOut/-863427830 var635)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1772 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var1168 var1772))) ; Cond: $i1 != $i9 
(define-const var2314 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3206 String var2314) ; Statement: r3 = $r37 
(assert true)
(define-const var3879 Int (getTimeOut/-863427830 var635)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3879 0)))) ; Negate: Cond: $i2 != 0  
(define-const var250 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var168 String var250) ; Statement: r4 = $r38 
(assert true)
(define-const var3230 Int (getTimeOut/-863427830 var635)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var811 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var3230 var811))) ; Cond: $i3 != $i11 
(define-const var3830 String "") ; Statement: $r41 = "" 
(define-const var2276 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var9 (Array Int Int) var3216-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3862 Int (ordinal/-291641772 (cast-from-var1577-to-var401 var3469))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var933 Int (select var9 var3862)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var933 5) (and (not (= var933 4)) (and (not (= var933 3)) (and (not (= var933 2)) (and (not (= var933 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var274 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var274)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var274!1 String)
(assert (= var274!1 ""))
(assert true)
(define-const var242 String (append/672562846 var274!1 var1837)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var274!2 String)
(assert (= var274!2 (str.++ var274!1 var1837)))
(assert true)
(define-const var3430 String (append/672562846 var242 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var242!1 String)
(assert (= var242!1 (str.++ var242 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var2660 String (append/672562846 var3430 var168)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3430!1 String)
(assert (= var3430!1 (str.++ var3430 var168)))
(assert true)
(define-const var645 String (append/672562846 var2660 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2660!1 String)
(assert (= var2660!1 (str.++ var2660 ")")))
(assert true)
(define-const var813 String (toString/-2075883882 var645)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1577-to-var401=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2710=org.hibernate.dialect.SQLServer2005Dialect, var3413=r34, var226=org.hibernate.LockOptions, var635=r0, var1837=r1, var2622=null_type, var1577=org.hibernate.LockMode, var3469=r35, var1404=$i0, var1625=$i7, var712=$r36, var3226=r2, var1168=$i1, var1772=$i9, var2314=$r37, var3206=r3, var3879=$i2, var250=$r38, var168=r4, var3230=$i3, var811=$i11, var3830=$r41, var2276=$r40, var3216=org.hibernate.dialect.SQLServer2005Dialect$2, var9=$r5, var401=java.lang.Enum, var3862=$i4, var933=$i5, var274=$r44, var242=$r11, var3430=$r12, var2660=$r13, var645=$r14, var813=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var2710, r34=var3413, org.hibernate.LockOptions=var226, r0=var635, r1=var1837, null_type=var2622, org.hibernate.LockMode=var1577, r35=var3469, $i0=var1404, $i7=var1625, $r36=var712, r2=var3226, $i1=var1168, $i9=var1772, $r37=var2314, r3=var3206, $i2=var3879, $r38=var250, r4=var168, $i3=var3230, $i11=var811, $r41=var3830, $r40=var2276, org.hibernate.dialect.SQLServer2005Dialect$2=var3216, $r5=var9, java.lang.Enum=var401, $i4=var3862, $i5=var933, $r44=var274, $r11=var242, $r12=var3430, $r13=var2660, $r14=var645, $r15=var813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11