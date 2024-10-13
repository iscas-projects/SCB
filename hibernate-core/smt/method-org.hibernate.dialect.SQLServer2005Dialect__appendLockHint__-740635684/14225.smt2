(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3678 0)
(declare-sort var14 0)
(declare-sort var3818 0)
(declare-sort var3088 0)
(declare-sort var3860 0)
(declare-sort var2018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var14 String) var3088)
(declare-fun getTimeOut/-863427830 (var14) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2018) Int)
(declare-fun cast-from-var3088-to-var2018 (var3088) var2018)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3678 var3678)
(declare-const null-var14 var14)
(declare-const null-String String)
(declare-const null-var3088 var3088)
(declare-const var3860-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1143 var3678) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1143 null-var3678)))
(declare-const var2458 var14) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2458 null-var14)))
(declare-const var1691 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1691 null-String)))
(assert true)
(define-const var1972 var3088 (getAliasSpecificLockMode/491246003 var2458 var1691)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1972 null-var3088))) ; Cond: r35 != null 
(assert true)
(define-const var2023 Int (getTimeOut/-863427830 var2458)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var150 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2023 var150))) ; Cond: $i0 != $i7 
(define-const var575 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3541 String var575) ; Statement: r2 = $r36 
(assert true)
(define-const var585 Int (getTimeOut/-863427830 var2458)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3878 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var585 var3878)))) ; Negate: Cond: $i1 != $i9  
(define-const var1463 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var278 String var1463) ; Statement: r3 = $r37 
(assert true)
(define-const var1253 Int (getTimeOut/-863427830 var2458)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1253 0)))) ; Negate: Cond: $i2 != 0  
(define-const var929 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var2455 String var929) ; Statement: r4 = $r38 
(assert true)
(define-const var2450 Int (getTimeOut/-863427830 var2458)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1985 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var2450 var1985)))) ; Negate: Cond: $i3 != $i11  
(define-const var626 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1789 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3470 (Array Int Int) var3860-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2681 Int (ordinal/-291641772 (cast-from-var3088-to-var2018 var1972))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3617 Int (select var3470 var2681)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3617 6) (and (not (= var3617 5)) (and (not (= var3617 4)) (and (not (= var3617 3)) (and (not (= var3617 2)) (and (not (= var3617 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var3686 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3686)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3686!1 String)
(assert (= var3686!1 ""))
(assert true)
(define-const var1631 String (append/672562846 var3686!1 var1691)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3686!2 String)
(assert (= var3686!2 (str.++ var3686!1 var1691)))
(assert true)
(define-const var1322 String (append/672562846 var1631 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var1631!1 String)
(assert (= var1631!1 (str.++ var1631 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var879 String (toString/-2075883882 var1322)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3088-to-var2018=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3678=org.hibernate.dialect.SQLServer2005Dialect, var1143=r34, var14=org.hibernate.LockOptions, var2458=r0, var1691=r1, var3818=null_type, var3088=org.hibernate.LockMode, var1972=r35, var2023=$i0, var150=$i7, var575=$r36, var3541=r2, var585=$i1, var3878=$i9, var1463=$r37, var278=r3, var1253=$i2, var929=$r38, var2455=r4, var2450=$i3, var1985=$i11, var626=$r41, var1789=$r40, var3860=org.hibernate.dialect.SQLServer2005Dialect$2, var3470=$r5, var2018=java.lang.Enum, var2681=$i4, var3617=$i5, var3686=$r45, var1631=$r7, var1322=$r8, var879=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var3678, r34=var1143, org.hibernate.LockOptions=var14, r0=var2458, r1=var1691, null_type=var3818, org.hibernate.LockMode=var3088, r35=var1972, $i0=var2023, $i7=var150, $r36=var575, r2=var3541, $i1=var585, $i9=var3878, $r37=var1463, r3=var278, $i2=var1253, $r38=var929, r4=var2455, $i3=var2450, $i11=var1985, $r41=var626, $r40=var1789, org.hibernate.dialect.SQLServer2005Dialect$2=var3860, $r5=var3470, java.lang.Enum=var2018, $i4=var2681, $i5=var3617, $r45=var3686, $r7=var1631, $r8=var1322, $r9=var879}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11