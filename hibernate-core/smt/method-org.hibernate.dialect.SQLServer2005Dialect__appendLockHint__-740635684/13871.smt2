(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2253 0)
(declare-sort var2191 0)
(declare-sort var839 0)
(declare-sort var3105 0)
(declare-sort var2198 0)
(declare-sort var2725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2191 String) var3105)
(declare-fun getTimeOut/-863427830 (var2191) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2725) Int)
(declare-fun cast-from-var3105-to-var2725 (var3105) var2725)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2253 var2253)
(declare-const null-var2191 var2191)
(declare-const null-String String)
(declare-const null-var3105 var3105)
(declare-const var2198-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var365 var2253) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var365 null-var2253)))
(declare-const var1172 var2191) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1172 null-var2191)))
(declare-const var1324 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1324 null-String)))
(assert true)
(define-const var579 var3105 (getAliasSpecificLockMode/491246003 var1172 var1324)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var579 null-var3105))) ; Cond: r35 != null 
(assert true)
(define-const var1 Int (getTimeOut/-863427830 var1172)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var881 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1 var881)))) ; Negate: Cond: $i0 != $i7  
(define-const var2767 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2077 String var2767) ; Statement: r2 = $r36 
(assert true)
(define-const var2221 Int (getTimeOut/-863427830 var1172)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1526 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2221 var1526)))) ; Negate: Cond: $i1 != $i9  
(define-const var3911 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var43 String var3911) ; Statement: r3 = $r37 
(assert true)
(define-const var1099 Int (getTimeOut/-863427830 var1172)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var1099 0))) ; Cond: $i2 != 0 
(define-const var3966 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3125 String var3966) ; Statement: r4 = $r38 
(assert true)
(define-const var2620 Int (getTimeOut/-863427830 var1172)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2859 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var2620 var2859)))) ; Negate: Cond: $i3 != $i11  
(define-const var18 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3303 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var2252 (Array Int Int) var2198-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var745 Int (ordinal/-291641772 (cast-from-var3105-to-var2725 var579))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2676 Int (select var2252 var745)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2676 6) (and (not (= var2676 5)) (and (not (= var2676 4)) (and (not (= var2676 3)) (and (not (= var2676 2)) (and (not (= var2676 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var3763 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3763)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3763!1 String)
(assert (= var3763!1 ""))
(assert true)
(define-const var3686 String (append/672562846 var3763!1 var1324)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3763!2 String)
(assert (= var3763!2 (str.++ var3763!1 var1324)))
(assert true)
(define-const var1825 String (append/672562846 var3686 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var3686!1 String)
(assert (= var3686!1 (str.++ var3686 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var2412 String (toString/-2075883882 var1825)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3105-to-var2725=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2253=org.hibernate.dialect.SQLServer2005Dialect, var365=r34, var2191=org.hibernate.LockOptions, var1172=r0, var1324=r1, var839=null_type, var3105=org.hibernate.LockMode, var579=r35, var1=$i0, var881=$i7, var2767=$r36, var2077=r2, var2221=$i1, var1526=$i9, var3911=$r37, var43=r3, var1099=$i2, var3966=$r38, var3125=r4, var2620=$i3, var2859=$i11, var18=$r41, var3303=$r40, var2198=org.hibernate.dialect.SQLServer2005Dialect$2, var2252=$r5, var2725=java.lang.Enum, var745=$i4, var2676=$i5, var3763=$r45, var3686=$r7, var1825=$r8, var2412=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var2253, r34=var365, org.hibernate.LockOptions=var2191, r0=var1172, r1=var1324, null_type=var839, org.hibernate.LockMode=var3105, r35=var579, $i0=var1, $i7=var881, $r36=var2767, r2=var2077, $i1=var2221, $i9=var1526, $r37=var3911, r3=var43, $i2=var1099, $r38=var3966, r4=var3125, $i3=var2620, $i11=var2859, $r41=var18, $r40=var3303, org.hibernate.dialect.SQLServer2005Dialect$2=var2198, $r5=var2252, java.lang.Enum=var2725, $i4=var745, $i5=var2676, $r45=var3763, $r7=var3686, $r8=var1825, $r9=var2412}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11