(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1009 0)
(declare-sort var3389 0)
(declare-sort var3522 0)
(declare-sort var2758 0)
(declare-sort var1654 0)
(declare-sort var3157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var3389 String) var2758)
(declare-fun getTimeOut/-863427830 (var3389) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3157) Int)
(declare-fun cast-from-var2758-to-var3157 (var2758) var3157)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1009 var1009)
(declare-const null-var3389 var3389)
(declare-const null-String String)
(declare-const null-var2758 var2758)
(declare-const var1654-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2234 var1009) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2234 null-var1009)))
(declare-const var2966 var3389) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2966 null-var3389)))
(declare-const var1772 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1772 null-String)))
(assert true)
(define-const var3732 var2758 (getAliasSpecificLockMode/491246003 var2966 var1772)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3732 null-var2758))) ; Cond: r35 != null 
(assert true)
(define-const var402 Int (getTimeOut/-863427830 var2966)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1882 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var402 var1882)))) ; Negate: Cond: $i0 != $i7  
(define-const var2328 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2998 String var2328) ; Statement: r2 = $r36 
(assert true)
(define-const var932 Int (getTimeOut/-863427830 var2966)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var908 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var932 var908)))) ; Negate: Cond: $i1 != $i9  
(define-const var2044 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2628 String var2044) ; Statement: r3 = $r37 
(assert true)
(define-const var257 Int (getTimeOut/-863427830 var2966)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var257 0))) ; Cond: $i2 != 0 
(define-const var1961 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var190 String var1961) ; Statement: r4 = $r38 
(assert true)
(define-const var3723 Int (getTimeOut/-863427830 var2966)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1642 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var3723 var1642)))) ; Negate: Cond: $i3 != $i11  
(define-const var386 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1763 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var501 (Array Int Int) var1654-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2763 Int (ordinal/-291641772 (cast-from-var2758-to-var3157 var3732))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2843 Int (select var501 var2763)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2843 4) (and (not (= var2843 3)) (and (not (= var2843 2)) (and (not (= var2843 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var3471 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3471)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3471!1 String)
(assert (= var3471!1 ""))
(assert true)
(define-const var466 String (append/672562846 var3471!1 var1772)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3471!2 String)
(assert (= var3471!2 (str.++ var3471!1 var1772)))
(assert true)
(define-const var244 String (append/672562846 var466 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var466!1 String)
(assert (= var466!1 (str.++ var466 " with (")))
(assert true)
(define-const var1572 String (append/672562846 var244 var2628)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var244!1 String)
(assert (= var244!1 (str.++ var244 var2628)))
(assert true)
(define-const var460 String (append/672562846 var1572 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var1572!1 String)
(assert (= var1572!1 (str.++ var1572 ", rowlock")))
(assert true)
(define-const var3624 String (append/672562846 var460 var190)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var460!1 String)
(assert (= var460!1 (str.++ var460 var190)))
(assert true)
(define-const var3229 String (append/672562846 var3624 var386)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3624!1 String)
(assert (= var3624!1 (str.++ var3624 var386)))
(assert true)
(define-const var89 String (append/672562846 var3229 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3229!1 String)
(assert (= var3229!1 (str.++ var3229 ")")))
(assert true)
(define-const var2263 String (toString/-2075883882 var89)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2758-to-var3157=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1009=org.hibernate.dialect.SQLServer2005Dialect, var2234=r34, var3389=org.hibernate.LockOptions, var2966=r0, var1772=r1, var3522=null_type, var2758=org.hibernate.LockMode, var3732=r35, var402=$i0, var1882=$i7, var2328=$r36, var2998=r2, var932=$i1, var908=$i9, var2044=$r37, var2628=r3, var257=$i2, var1961=$r38, var190=r4, var3723=$i3, var1642=$i11, var386=$r41, var1763=$r40, var1654=org.hibernate.dialect.SQLServer2005Dialect$2, var501=$r5, var3157=java.lang.Enum, var2763=$i4, var2843=$i5, var3471=$r43, var466=$r17, var244=$r18, var1572=$r19, var460=$r20, var3624=$r21, var3229=$r22, var89=$r23, var2263=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var1009, r34=var2234, org.hibernate.LockOptions=var3389, r0=var2966, r1=var1772, null_type=var3522, org.hibernate.LockMode=var2758, r35=var3732, $i0=var402, $i7=var1882, $r36=var2328, r2=var2998, $i1=var932, $i9=var908, $r37=var2044, r3=var2628, $i2=var257, $r38=var1961, r4=var190, $i3=var3723, $i11=var1642, $r41=var386, $r40=var1763, org.hibernate.dialect.SQLServer2005Dialect$2=var1654, $r5=var501, java.lang.Enum=var3157, $i4=var2763, $i5=var2843, $r43=var3471, $r17=var466, $r18=var244, $r19=var1572, $r20=var460, $r21=var3624, $r22=var3229, $r23=var89, $r24=var2263}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11