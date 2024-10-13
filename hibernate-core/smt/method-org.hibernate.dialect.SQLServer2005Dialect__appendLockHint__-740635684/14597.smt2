(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var853 0)
(declare-sort var2733 0)
(declare-sort var1941 0)
(declare-sort var1558 0)
(declare-sort var3688 0)
(declare-sort var1686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2733 String) var1558)
(declare-fun getTimeOut/-863427830 (var2733) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1686) Int)
(declare-fun cast-from-var1558-to-var1686 (var1558) var1686)
(declare-const null-var853 var853)
(declare-const null-var2733 var2733)
(declare-const null-String String)
(declare-const null-var1558 var1558)
(declare-const var3688-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2094 var853) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2094 null-var853)))
(declare-const var2775 var2733) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2775 null-var2733)))
(declare-const var2363 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2363 null-String)))
(assert true)
(define-const var2167 var1558 (getAliasSpecificLockMode/491246003 var2775 var2363)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var2167 null-var1558))) ; Cond: r35 != null 
(assert true)
(define-const var2129 Int (getTimeOut/-863427830 var2775)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3501 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var2129 var3501))) ; Cond: $i0 != $i7 
(define-const var1945 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var535 String var1945) ; Statement: r2 = $r36 
(assert true)
(define-const var691 Int (getTimeOut/-863427830 var2775)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3479 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var691 var3479))) ; Cond: $i1 != $i9 
(define-const var3278 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3208 String var3278) ; Statement: r3 = $r37 
(assert true)
(define-const var484 Int (getTimeOut/-863427830 var2775)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var484 0))) ; Cond: $i2 != 0 
(define-const var3605 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3596 String var3605) ; Statement: r4 = $r38 
(assert true)
(define-const var2754 Int (getTimeOut/-863427830 var2775)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3880 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var2754 var3880)))) ; Negate: Cond: $i3 != $i11  
(define-const var1964 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var365 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var68 (Array Int Int) var3688-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1274 Int (ordinal/-291641772 (cast-from-var1558-to-var1686 var2167))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3717 Int (select var68 var1274)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (not (= var3717 6)) (and (not (= var3717 5)) (and (not (= var3717 4)) (and (not (= var3717 3)) (and (not (= var3717 2)) (and (not (= var3717 1)) true))))))) ; Intersect: Negate: Cond: $i5 == 6   and Intersect: Negate: Cond: $i5 == 5   and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional      
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1558-to-var1686=([org.hibernate.LockMode], java.lang.Enum)}
; {var853=org.hibernate.dialect.SQLServer2005Dialect, var2094=r34, var2733=org.hibernate.LockOptions, var2775=r0, var2363=r1, var1941=null_type, var1558=org.hibernate.LockMode, var2167=r35, var2129=$i0, var3501=$i7, var1945=$r36, var535=r2, var691=$i1, var3479=$i9, var3278=$r37, var3208=r3, var484=$i2, var3605=$r38, var3596=r4, var2754=$i3, var3880=$i11, var1964=$r41, var365=$r40, var3688=org.hibernate.dialect.SQLServer2005Dialect$2, var68=$r5, var1686=java.lang.Enum, var1274=$i4, var3717=$i5}
; {org.hibernate.dialect.SQLServer2005Dialect=var853, r34=var2094, org.hibernate.LockOptions=var2733, r0=var2775, r1=var2363, null_type=var1941, org.hibernate.LockMode=var1558, r35=var2167, $i0=var2129, $i7=var3501, $r36=var1945, r2=var535, $i1=var691, $i9=var3479, $r37=var3278, r3=var3208, $i2=var484, $r38=var3605, r4=var3596, $i3=var2754, $i11=var3880, $r41=var1964, $r40=var365, org.hibernate.dialect.SQLServer2005Dialect$2=var3688, $r5=var68, java.lang.Enum=var1686, $i4=var1274, $i5=var3717}
;seq 
;cnt {}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	return r1
;block_num 11