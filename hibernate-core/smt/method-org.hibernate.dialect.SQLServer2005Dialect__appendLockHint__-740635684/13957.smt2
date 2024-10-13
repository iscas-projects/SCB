(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3481 0)
(declare-sort var3208 0)
(declare-sort var953 0)
(declare-sort var2226 0)
(declare-sort var3341 0)
(declare-sort var2016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3208 String) var2226)
(declare-fun getTimeOut/-863427830 (var3208) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2016) Int)
(declare-fun cast-from-var2226-to-var2016 (var2226) var2016)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3481 var3481)
(declare-const null-var3208 var3208)
(declare-const null-String String)
(declare-const null-var2226 var2226)
(declare-const var3341-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2 var3481) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2 null-var3481)))
(declare-const var3502 var3208) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3502 null-var3208)))
(declare-const var145 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var145 null-String)))
(assert true)
(define-const var1683 var2226 (getAliasSpecificLockMode/491246003 var3502 var145)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1683 null-var2226))) ; Cond: r35 != null 
(assert true)
(define-const var1195 Int (getTimeOut/-863427830 var3502)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var412 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var1195 var412)))) ; Negate: Cond: $i0 != $i7  
(define-const var3580 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2434 String var3580) ; Statement: r2 = $r36 
(assert true)
(define-const var272 Int (getTimeOut/-863427830 var3502)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2565 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var272 var2565))) ; Cond: $i1 != $i9 
(define-const var2084 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var1307 String var2084) ; Statement: r3 = $r37 
(assert true)
(define-const var3360 Int (getTimeOut/-863427830 var3502)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var3360 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1366 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var1050 String var1366) ; Statement: r4 = $r38 
(assert true)
(define-const var3362 Int (getTimeOut/-863427830 var3502)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3917 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3362 var3917)))) ; Negate: Cond: $i3 != $i11  
(define-const var2814 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var3225 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3686 (Array Int Int) var3341-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3328 Int (ordinal/-291641772 (cast-from-var2226-to-var2016 var1683))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var3335 Int (select var3686 var3328)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var3335 5) (and (not (= var3335 4)) (and (not (= var3335 3)) (and (not (= var3335 2)) (and (not (= var3335 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var2724 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2724)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2724!1 String)
(assert (= var2724!1 ""))
(assert true)
(define-const var3808 String (append/672562846 var2724!1 var145)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2724!2 String)
(assert (= var2724!2 (str.++ var2724!1 var145)))
(assert true)
(define-const var1482 String (append/672562846 var3808 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var3808!1 String)
(assert (= var3808!1 (str.++ var3808 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var387 String (append/672562846 var1482 var1050)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1482!1 String)
(assert (= var1482!1 (str.++ var1482 var1050)))
(assert true)
(define-const var676 String (append/672562846 var387 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var387!1 String)
(assert (= var387!1 (str.++ var387 ")")))
(assert true)
(define-const var1285 String (toString/-2075883882 var676)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2226-to-var2016=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3481=org.hibernate.dialect.SQLServer2005Dialect, var2=r34, var3208=org.hibernate.LockOptions, var3502=r0, var145=r1, var953=null_type, var2226=org.hibernate.LockMode, var1683=r35, var1195=$i0, var412=$i7, var3580=$r36, var2434=r2, var272=$i1, var2565=$i9, var2084=$r37, var1307=r3, var3360=$i2, var1366=$r38, var1050=r4, var3362=$i3, var3917=$i11, var2814=$r41, var3225=$r40, var3341=org.hibernate.dialect.SQLServer2005Dialect$2, var3686=$r5, var2016=java.lang.Enum, var3328=$i4, var3335=$i5, var2724=$r44, var3808=$r11, var1482=$r12, var387=$r13, var676=$r14, var1285=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var3481, r34=var2, org.hibernate.LockOptions=var3208, r0=var3502, r1=var145, null_type=var953, org.hibernate.LockMode=var2226, r35=var1683, $i0=var1195, $i7=var412, $r36=var3580, r2=var2434, $i1=var272, $i9=var2565, $r37=var2084, r3=var1307, $i2=var3360, $r38=var1366, r4=var1050, $i3=var3362, $i11=var3917, $r41=var2814, $r40=var3225, org.hibernate.dialect.SQLServer2005Dialect$2=var3341, $r5=var3686, java.lang.Enum=var2016, $i4=var3328, $i5=var3335, $r44=var2724, $r11=var3808, $r12=var1482, $r13=var387, $r14=var676, $r15=var1285}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11