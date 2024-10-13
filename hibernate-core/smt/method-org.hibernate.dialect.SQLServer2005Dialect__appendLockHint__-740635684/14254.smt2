(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2695 0)
(declare-sort var1947 0)
(declare-sort var1406 0)
(declare-sort var2738 0)
(declare-sort var2736 0)
(declare-sort var690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1947 String) var2738)
(declare-fun getTimeOut/-863427830 (var1947) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var690) Int)
(declare-fun cast-from-var2738-to-var690 (var2738) var690)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2695 var2695)
(declare-const null-var1947 var1947)
(declare-const null-String String)
(declare-const null-var2738 var2738)
(declare-const var2736-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1827 var2695) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var1827 null-var2695)))
(declare-const var2827 var1947) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2827 null-var1947)))
(declare-const var3963 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3963 null-String)))
(assert true)
(define-const var3195 var2738 (getAliasSpecificLockMode/491246003 var2827 var3963)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3195 null-var2738))) ; Cond: r35 != null 
(assert true)
(define-const var3535 Int (getTimeOut/-863427830 var2827)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1101 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var3535 var1101))) ; Cond: $i0 != $i7 
(define-const var3323 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var1707 String var3323) ; Statement: r2 = $r36 
(assert true)
(define-const var2608 Int (getTimeOut/-863427830 var2827)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var543 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var2608 var543)))) ; Negate: Cond: $i1 != $i9  
(define-const var1396 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var958 String var1396) ; Statement: r3 = $r37 
(assert true)
(define-const var1321 Int (getTimeOut/-863427830 var2827)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (not (= var1321 0)))) ; Negate: Cond: $i2 != 0  
(define-const var1445 String ", nowait") ; Statement: $r38 = ", nowait" 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var3398 String var1445) ; Statement: r4 = $r38 
(assert true)
(define-const var1868 Int (getTimeOut/-863427830 var2827)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3142 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1868 var3142))) ; Cond: $i3 != $i11 
(define-const var2558 String "") ; Statement: $r41 = "" 
(define-const var1402 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3089 (Array Int Int) var2736-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1585 Int (ordinal/-291641772 (cast-from-var2738-to-var690 var3195))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var885 Int (select var3089 var1585)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var885 4) (and (not (= var885 3)) (and (not (= var885 2)) (and (not (= var885 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var1974 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1974)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1974!1 String)
(assert (= var1974!1 ""))
(assert true)
(define-const var3312 String (append/672562846 var1974!1 var3963)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1974!2 String)
(assert (= var1974!2 (str.++ var1974!1 var3963)))
(assert true)
(define-const var3102 String (append/672562846 var3312 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3312!1 String)
(assert (= var3312!1 (str.++ var3312 " with (")))
(assert true)
(define-const var3247 String (append/672562846 var3102 var958)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3102!1 String)
(assert (= var3102!1 (str.++ var3102 var958)))
(assert true)
(define-const var3897 String (append/672562846 var3247 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3247!1 String)
(assert (= var3247!1 (str.++ var3247 ", rowlock")))
(assert true)
(define-const var1 String (append/672562846 var3897 var3398)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3897!1 String)
(assert (= var3897!1 (str.++ var3897 var3398)))
(assert true)
(define-const var249 String (append/672562846 var1 var2558)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1!1 String)
(assert (= var1!1 (str.++ var1 var2558)))
(assert true)
(define-const var642 String (append/672562846 var249 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var249!1 String)
(assert (= var249!1 (str.++ var249 ")")))
(assert true)
(define-const var3267 String (toString/-2075883882 var642)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2738-to-var690=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2695=org.hibernate.dialect.SQLServer2005Dialect, var1827=r34, var1947=org.hibernate.LockOptions, var2827=r0, var3963=r1, var1406=null_type, var2738=org.hibernate.LockMode, var3195=r35, var3535=$i0, var1101=$i7, var3323=$r36, var1707=r2, var2608=$i1, var543=$i9, var1396=$r37, var958=r3, var1321=$i2, var1445=$r38, var3398=r4, var1868=$i3, var3142=$i11, var2558=$r41, var1402=$r40, var2736=org.hibernate.dialect.SQLServer2005Dialect$2, var3089=$r5, var690=java.lang.Enum, var1585=$i4, var885=$i5, var1974=$r43, var3312=$r17, var3102=$r18, var3247=$r19, var3897=$r20, var1=$r21, var249=$r22, var642=$r23, var3267=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var2695, r34=var1827, org.hibernate.LockOptions=var1947, r0=var2827, r1=var3963, null_type=var1406, org.hibernate.LockMode=var2738, r35=var3195, $i0=var3535, $i7=var1101, $r36=var3323, r2=var1707, $i1=var2608, $i9=var543, $r37=var1396, r3=var958, $i2=var1321, $r38=var1445, r4=var3398, $i3=var1868, $i11=var3142, $r41=var2558, $r40=var1402, org.hibernate.dialect.SQLServer2005Dialect$2=var2736, $r5=var3089, java.lang.Enum=var690, $i4=var1585, $i5=var885, $r43=var1974, $r17=var3312, $r18=var3102, $r19=var3247, $r20=var3897, $r21=var1, $r22=var249, $r23=var642, $r24=var3267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = ", nowait";	goto [?= r4 = $r38];	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11