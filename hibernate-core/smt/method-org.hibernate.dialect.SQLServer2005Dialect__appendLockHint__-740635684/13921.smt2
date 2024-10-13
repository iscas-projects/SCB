(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3546 0)
(declare-sort var188 0)
(declare-sort var3727 0)
(declare-sort var2312 0)
(declare-sort var1742 0)
(declare-sort var3515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var188 String) var2312)
(declare-fun getTimeOut/-863427830 (var188) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3515) Int)
(declare-fun cast-from-var2312-to-var3515 (var2312) var3515)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3546 var3546)
(declare-const null-var188 var188)
(declare-const null-String String)
(declare-const null-var2312 var2312)
(declare-const var1742-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2562 var3546) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2562 null-var3546)))
(declare-const var829 var188) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var829 null-var188)))
(declare-const var200 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var200 null-String)))
(assert true)
(define-const var2926 var2312 (getAliasSpecificLockMode/491246003 var829 var200)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2926 null-var2312))) ; Cond: r35 != null 
(assert true)
(define-const var3646 Int (getTimeOut/-863427830 var829)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2077 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3646 var2077)))) ; Negate: Cond: $i0 != $i7  
(define-const var1488 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var3841 String var1488) ; Statement: r2 = $r36 
(assert true)
(define-const var1111 Int (getTimeOut/-863427830 var829)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2862 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var1111 var2862)))) ; Negate: Cond: $i1 != $i9  
(define-const var3212 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3539 String var3212) ; Statement: r3 = $r37 
(assert true)
(define-const var2442 Int (getTimeOut/-863427830 var829)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2442 0))) ; Cond: $i2 != 0 
(define-const var1961 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2319 String var1961) ; Statement: r4 = $r38 
(assert true)
(define-const var2819 Int (getTimeOut/-863427830 var829)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2235 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2819 var2235))) ; Cond: $i3 != $i11 
(define-const var698 String "") ; Statement: $r41 = "" 
(define-const var3474 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var1578 (Array Int Int) var1742-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3756 Int (ordinal/-291641772 (cast-from-var2312-to-var3515 var2926))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1977 Int (select var1578 var3756)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1977 6) (and (not (= var1977 5)) (and (not (= var1977 4)) (and (not (= var1977 3)) (and (not (= var1977 2)) (and (not (= var1977 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var370 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var370)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var370!1 String)
(assert (= var370!1 ""))
(assert true)
(define-const var3555 String (append/672562846 var370!1 var200)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var370!2 String)
(assert (= var370!2 (str.++ var370!1 var200)))
(assert true)
(define-const var295 String (append/672562846 var3555 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3555!1 String)
(assert (= var3555!1 (str.++ var3555 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var453 String (toString/-2075883882 var295)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2312-to-var3515=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3546=org.hibernate.dialect.SQLServer2005Dialect, var2562=r34, var188=org.hibernate.LockOptions, var829=r0, var200=r1, var3727=null_type, var2312=org.hibernate.LockMode, var2926=r35, var3646=$i0, var2077=$i7, var1488=$r36, var3841=r2, var1111=$i1, var2862=$i9, var3212=$r37, var3539=r3, var2442=$i2, var1961=$r38, var2319=r4, var2819=$i3, var2235=$i11, var698=$r41, var3474=$r40, var1742=org.hibernate.dialect.SQLServer2005Dialect$2, var1578=$r5, var3515=java.lang.Enum, var3756=$i4, var1977=$i5, var370=$r45, var3555=$r7, var295=$r8, var453=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var3546, r34=var2562, org.hibernate.LockOptions=var188, r0=var829, r1=var200, null_type=var3727, org.hibernate.LockMode=var2312, r35=var2926, $i0=var3646, $i7=var2077, $r36=var1488, r2=var3841, $i1=var1111, $i9=var2862, $r37=var3212, r3=var3539, $i2=var2442, $r38=var1961, r4=var2319, $i3=var2819, $i11=var2235, $r41=var698, $r40=var3474, org.hibernate.dialect.SQLServer2005Dialect$2=var1742, $r5=var1578, java.lang.Enum=var3515, $i4=var3756, $i5=var1977, $r45=var370, $r7=var3555, $r8=var295, $r9=var453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11