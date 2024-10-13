(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1911 0)
(declare-sort var1590 0)
(declare-sort var829 0)
(declare-sort var2502 0)
(declare-sort var1561 0)
(declare-sort var3258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1590 String) var2502)
(declare-fun getTimeOut/-863427830 (var1590) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3258) Int)
(declare-fun cast-from-var2502-to-var3258 (var2502) var3258)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1911 var1911)
(declare-const null-var1590 var1590)
(declare-const null-String String)
(declare-const null-var2502 var2502)
(declare-const var1561-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3643 var1911) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3643 null-var1911)))
(declare-const var3069 var1590) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3069 null-var1590)))
(declare-const var1025 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1025 null-String)))
(assert true)
(define-const var3195 var2502 (getAliasSpecificLockMode/491246003 var3069 var1025)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3195 null-var2502))) ; Cond: r35 != null 
(assert true)
(define-const var750 Int (getTimeOut/-863427830 var3069)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1704 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var750 var1704))) ; Cond: $i0 != $i7 
(define-const var2016 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var356 String var2016) ; Statement: r2 = $r36 
(assert true)
(define-const var1249 Int (getTimeOut/-863427830 var3069)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1677 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var1249 var1677))) ; Cond: $i1 != $i9 
(define-const var3213 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var2983 String var3213) ; Statement: r3 = $r37 
(assert true)
(define-const var2270 Int (getTimeOut/-863427830 var3069)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2270 0))) ; Cond: $i2 != 0 
(define-const var2344 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2846 String var2344) ; Statement: r4 = $r38 
(assert true)
(define-const var3177 Int (getTimeOut/-863427830 var3069)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1381 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3177 var1381)))) ; Negate: Cond: $i3 != $i11  
(define-const var1568 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3067 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var1158 (Array Int Int) var1561-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2343 Int (ordinal/-291641772 (cast-from-var2502-to-var3258 var3195))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1018 Int (select var1158 var2343)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1018 6) (and (not (= var1018 5)) (and (not (= var1018 4)) (and (not (= var1018 3)) (and (not (= var1018 2)) (and (not (= var1018 1)) true))))))) ; Intersect: Cond: $i5 == 6  and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
(define-const var2102 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2102)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2102!1 String)
(assert (= var2102!1 ""))
(assert true)
(define-const var2993 String (append/672562846 var2102!1 var1025)) ; Statement: $r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2102!2 String)
(assert (= var2102!2 (str.++ var2102!1 var1025)))
(assert true)
(define-const var3450 String (append/672562846 var2993 " with (updlock, holdlock, rowlock, nowait)")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)") 
(declare-const var2993!1 String)
(assert (= var2993!1 (str.++ var2993 " with (updlock, holdlock, rowlock, nowait)")))
(assert true)
(define-const var3138 String (toString/-2075883882 var3450)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2502-to-var3258=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1911=org.hibernate.dialect.SQLServer2005Dialect, var3643=r34, var1590=org.hibernate.LockOptions, var3069=r0, var1025=r1, var829=null_type, var2502=org.hibernate.LockMode, var3195=r35, var750=$i0, var1704=$i7, var2016=$r36, var356=r2, var1249=$i1, var1677=$i9, var3213=$r37, var2983=r3, var2270=$i2, var2344=$r38, var2846=r4, var3177=$i3, var1381=$i11, var1568=$r41, var3067=$r40, var1561=org.hibernate.dialect.SQLServer2005Dialect$2, var1158=$r5, var3258=java.lang.Enum, var2343=$i4, var1018=$i5, var2102=$r45, var2993=$r7, var3450=$r8, var3138=$r9}
; {org.hibernate.dialect.SQLServer2005Dialect=var1911, r34=var3643, org.hibernate.LockOptions=var1590, r0=var3069, r1=var1025, null_type=var829, org.hibernate.LockMode=var2502, r35=var3195, $i0=var750, $i7=var1704, $r36=var2016, r2=var356, $i1=var1249, $i9=var1677, $r37=var3213, r3=var2983, $i2=var2270, $r38=var2344, r4=var2846, $i3=var3177, $i11=var1381, $r41=var1568, $r40=var3067, org.hibernate.dialect.SQLServer2005Dialect$2=var1561, $r5=var1158, java.lang.Enum=var3258, $i4=var2343, $i5=var1018, $r45=var2102, $r7=var2993, $r8=var3450, $r9=var3138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, holdlock, rowlock, nowait)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 11