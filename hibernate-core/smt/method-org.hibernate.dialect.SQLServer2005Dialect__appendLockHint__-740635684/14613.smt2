(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2898 0)
(declare-sort var1666 0)
(declare-sort var3151 0)
(declare-sort var2880 0)
(declare-sort var515 0)
(declare-sort var3522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1666 String) var2880)
(declare-fun getTimeOut/-863427830 (var1666) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3522) Int)
(declare-fun cast-from-var2880-to-var3522 (var2880) var3522)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2898 var2898)
(declare-const null-var1666 var1666)
(declare-const null-String String)
(declare-const null-var2880 var2880)
(declare-const var515-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2311 var2898) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2311 null-var2898)))
(declare-const var282 var1666) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var282 null-var1666)))
(declare-const var2942 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2942 null-String)))
(assert true)
(define-const var3812 var2880 (getAliasSpecificLockMode/491246003 var282 var2942)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3812 null-var2880))) ; Cond: r35 != null 
(assert true)
(define-const var1902 Int (getTimeOut/-863427830 var282)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2424 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var1902 var2424))) ; Cond: $i0 != $i7 
(define-const var2435 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var3029 String var2435) ; Statement: r2 = $r36 
(assert true)
(define-const var769 Int (getTimeOut/-863427830 var282)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var462 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var769 var462))) ; Cond: $i1 != $i9 
(define-const var499 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3498 String var499) ; Statement: r3 = $r37 
(assert true)
(define-const var3182 Int (getTimeOut/-863427830 var282)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3182 0))) ; Cond: $i2 != 0 
(define-const var3544 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var2043 String var3544) ; Statement: r4 = $r38 
(assert true)
(define-const var2489 Int (getTimeOut/-863427830 var282)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3031 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var2489 var3031))) ; Cond: $i3 != $i11 
(define-const var2350 String "") ; Statement: $r41 = "" 
(define-const var3817 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var928 (Array Int Int) var515-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var624 Int (ordinal/-291641772 (cast-from-var2880-to-var3522 var3812))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1026 Int (select var928 var624)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1026 4) (and (not (= var1026 3)) (and (not (= var1026 2)) (and (not (= var1026 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var767 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var767)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var767!1 String)
(assert (= var767!1 ""))
(assert true)
(define-const var1148 String (append/672562846 var767!1 var2942)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var767!2 String)
(assert (= var767!2 (str.++ var767!1 var2942)))
(assert true)
(define-const var2105 String (append/672562846 var1148 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1148!1 String)
(assert (= var1148!1 (str.++ var1148 " with (")))
(assert true)
(define-const var456 String (append/672562846 var2105 var3498)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2105!1 String)
(assert (= var2105!1 (str.++ var2105 var3498)))
(assert true)
(define-const var1073 String (append/672562846 var456 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var456!1 String)
(assert (= var456!1 (str.++ var456 ", rowlock")))
(assert true)
(define-const var3368 String (append/672562846 var1073 var2043)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1073!1 String)
(assert (= var1073!1 (str.++ var1073 var2043)))
(assert true)
(define-const var2319 String (append/672562846 var3368 var2350)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3368!1 String)
(assert (= var3368!1 (str.++ var3368 var2350)))
(assert true)
(define-const var2925 String (append/672562846 var2319 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2319!1 String)
(assert (= var2319!1 (str.++ var2319 ")")))
(assert true)
(define-const var564 String (toString/-2075883882 var2925)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2880-to-var3522=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2898=org.hibernate.dialect.SQLServer2005Dialect, var2311=r34, var1666=org.hibernate.LockOptions, var282=r0, var2942=r1, var3151=null_type, var2880=org.hibernate.LockMode, var3812=r35, var1902=$i0, var2424=$i7, var2435=$r36, var3029=r2, var769=$i1, var462=$i9, var499=$r37, var3498=r3, var3182=$i2, var3544=$r38, var2043=r4, var2489=$i3, var3031=$i11, var2350=$r41, var3817=$r40, var515=org.hibernate.dialect.SQLServer2005Dialect$2, var928=$r5, var3522=java.lang.Enum, var624=$i4, var1026=$i5, var767=$r43, var1148=$r17, var2105=$r18, var456=$r19, var1073=$r20, var3368=$r21, var2319=$r22, var2925=$r23, var564=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var2898, r34=var2311, org.hibernate.LockOptions=var1666, r0=var282, r1=var2942, null_type=var3151, org.hibernate.LockMode=var2880, r35=var3812, $i0=var1902, $i7=var2424, $r36=var2435, r2=var3029, $i1=var769, $i9=var462, $r37=var499, r3=var3498, $i2=var3182, $r38=var3544, r4=var2043, $i3=var2489, $i11=var3031, $r41=var2350, $r40=var3817, org.hibernate.dialect.SQLServer2005Dialect$2=var515, $r5=var928, java.lang.Enum=var3522, $i4=var624, $i5=var1026, $r43=var767, $r17=var1148, $r18=var2105, $r19=var456, $r20=var1073, $r21=var3368, $r22=var2319, $r23=var2925, $r24=var564}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11