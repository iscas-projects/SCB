(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort var3812 0)
(declare-sort var3011 0)
(declare-sort var1738 0)
(declare-sort var1254 0)
(declare-sort var2834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3812 String) var1738)
(declare-fun getTimeOut/-863427830 (var3812) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2834) Int)
(declare-fun cast-from-var1738-to-var2834 (var1738) var2834)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2828 var2828)
(declare-const null-var3812 var3812)
(declare-const null-String String)
(declare-const null-var1738 var1738)
(declare-const var1254-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1294 var2828) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1294 null-var2828)))
(declare-const var1508 var3812) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1508 null-var3812)))
(declare-const var2383 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2383 null-String)))
(assert true)
(define-const var12 var1738 (getAliasSpecificLockMode/491246003 var1508 var2383)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var12 null-var1738))) ; Cond: r35 != null 
(assert true)
(define-const var1463 Int (getTimeOut/-863427830 var1508)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3102 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1463 var3102))) ; Cond: $i0 != $i7 
(define-const var1527 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3466 String var1527) ; Statement: r2 = $r36 
(assert true)
(define-const var880 Int (getTimeOut/-863427830 var1508)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3941 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var880 var3941)))) ; Negate: Cond: $i1 != $i9  
(define-const var2247 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var3486 String var2247) ; Statement: r3 = $r37 
(assert true)
(define-const var3136 Int (getTimeOut/-863427830 var1508)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3136 0))) ; Cond: $i2 != 0 
(define-const var688 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2437 String var688) ; Statement: r4 = $r38 
(assert true)
(define-const var1389 Int (getTimeOut/-863427830 var1508)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3344 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1389 var3344))) ; Cond: $i3 != $i11 
(define-const var3802 String "") ; Statement: $r41 = "" 
(define-const var1891 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var499 (Array Int Int) var1254-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1147 Int (ordinal/-291641772 (cast-from-var1738-to-var2834 var12))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var705 Int (select var499 var1147)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var705 6) (and (not (= var705 5)) (and (not (= var705 4)) (and (not (= var705 3)) (and (not (= var705 2)) (and (not (= var705 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var2262 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2262)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2262!1 String)
(assert (= var2262!1 ""))
(assert true)
(define-const var3094 String (append/672562846 var2262!1 var2383)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2262!2 String)
(assert (= var2262!2 (str.++ var2262!1 var2383)))
(assert true)
(define-const var2350 String (append/672562846 var3094 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3094!1 String)
(assert (= var3094!1 (str.++ var3094 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var2722 String (toString/-2075883882 var2350)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1738-to-var2834=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2828=org.hibernate.dialect.SQLServer2005Dialect, var1294=r34, var3812=org.hibernate.LockOptions, var1508=r0, var2383=r1, var3011=null_type, var1738=org.hibernate.LockMode, var12=r35, var1463=$i0, var3102=$i7, var1527=$r36, var3466=r2, var880=$i1, var3941=$i9, var2247=$r37, var3486=r3, var3136=$i2, var688=$r38, var2437=r4, var1389=$i3, var3344=$i11, var3802=$r41, var1891=$r40, var1254=org.hibernate.dialect.SQLServer2005Dialect$2, var499=$r5, var2834=java.lang.Enum, var1147=$i4, var705=$i5, var2262=$r45, var3094=$r7, var2350=$r8, var2722=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var2828, r34=var1294, org.hibernate.LockOptions=var3812, r0=var1508, r1=var2383, null_type=var3011, org.hibernate.LockMode=var1738, r35=var12, $i0=var1463, $i7=var3102, $r36=var1527, r2=var3466, $i1=var880, $i9=var3941, $r37=var2247, r3=var3486, $i2=var3136, $r38=var688, r4=var2437, $i3=var1389, $i11=var3344, $r41=var3802, $r40=var1891, org.hibernate.dialect.SQLServer2005Dialect$2=var1254, $r5=var499, java.lang.Enum=var2834, $i4=var1147, $i5=var705, $r45=var2262, $r7=var3094, $r8=var2350, $r9=var2722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11