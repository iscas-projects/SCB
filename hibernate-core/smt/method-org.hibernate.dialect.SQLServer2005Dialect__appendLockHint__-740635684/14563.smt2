(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1686 0)
(declare-sort var1233 0)
(declare-sort var797 0)
(declare-sort var2664 0)
(declare-sort var1158 0)
(declare-sort var799 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var1233 String) var2664)
(declare-fun getTimeOut/-863427830 (var1233) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var799) Int)
(declare-fun cast-from-var2664-to-var799 (var2664) var799)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1686 var1686)
(declare-const null-var1233 var1233)
(declare-const null-String String)
(declare-const null-var2664 var2664)
(declare-const var1158-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2870 var1686) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2870 null-var1686)))
(declare-const var138 var1233) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var138 null-var1233)))
(declare-const var1199 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1199 null-String)))
(assert true)
(define-const var3046 var2664 (getAliasSpecificLockMode/491246003 var138 var1199)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3046 null-var2664))) ; Cond: r35 != null 
(assert true)
(define-const var16 Int (getTimeOut/-863427830 var138)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var527 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (= var16 var527))) ; Cond: $i0 != $i7 
(define-const var377 String "updlock, holdlock") ; Statement: $r36 = "updlock, holdlock" 
(assert true) ; Non Conditional
(define-const var814 String var377) ; Statement: r2 = $r36 
(assert true)
(define-const var2529 Int (getTimeOut/-863427830 var138)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2878 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2529 var2878))) ; Cond: $i1 != $i9 
(define-const var719 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var3231 String var719) ; Statement: r3 = $r37 
(assert true)
(define-const var586 Int (getTimeOut/-863427830 var138)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var586 0))) ; Cond: $i2 != 0 
(define-const var2797 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var335 String var2797) ; Statement: r4 = $r38 
(assert true)
(define-const var1529 Int (getTimeOut/-863427830 var138)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1791 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1529 var1791)))) ; Negate: Cond: $i3 != $i11  
(define-const var2638 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var1169 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3291 (Array Int Int) var1158-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var958 Int (ordinal/-291641772 (cast-from-var2664-to-var799 var3046))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2121 Int (select var3291 var958)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2121 4) (and (not (= var2121 3)) (and (not (= var2121 2)) (and (not (= var2121 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var495 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var495)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var495!1 String)
(assert (= var495!1 ""))
(assert true)
(define-const var3873 String (append/672562846 var495!1 var1199)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var495!2 String)
(assert (= var495!2 (str.++ var495!1 var1199)))
(assert true)
(define-const var1326 String (append/672562846 var3873 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3873!1 String)
(assert (= var3873!1 (str.++ var3873 " with (")))
(assert true)
(define-const var3234 String (append/672562846 var1326 var3231)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1326!1 String)
(assert (= var1326!1 (str.++ var1326 var3231)))
(assert true)
(define-const var112 String (append/672562846 var3234 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3234!1 String)
(assert (= var3234!1 (str.++ var3234 ", rowlock")))
(assert true)
(define-const var248 String (append/672562846 var112 var335)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var112!1 String)
(assert (= var112!1 (str.++ var112 var335)))
(assert true)
(define-const var415 String (append/672562846 var248 var2638)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var248!1 String)
(assert (= var248!1 (str.++ var248 var2638)))
(assert true)
(define-const var3032 String (append/672562846 var415 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var415!1 String)
(assert (= var415!1 (str.++ var415 ")")))
(assert true)
(define-const var2806 String (toString/-2075883882 var3032)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2664-to-var799=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1686=org.hibernate.dialect.SQLServer2005Dialect, var2870=r34, var1233=org.hibernate.LockOptions, var138=r0, var1199=r1, var797=null_type, var2664=org.hibernate.LockMode, var3046=r35, var16=$i0, var527=$i7, var377=$r36, var814=r2, var2529=$i1, var2878=$i9, var719=$r37, var3231=r3, var586=$i2, var2797=$r38, var335=r4, var1529=$i3, var1791=$i11, var2638=$r41, var1169=$r40, var1158=org.hibernate.dialect.SQLServer2005Dialect$2, var3291=$r5, var799=java.lang.Enum, var958=$i4, var2121=$i5, var495=$r43, var3873=$r17, var1326=$r18, var3234=$r19, var112=$r20, var248=$r21, var415=$r22, var3032=$r23, var2806=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var1686, r34=var2870, org.hibernate.LockOptions=var1233, r0=var138, r1=var1199, null_type=var797, org.hibernate.LockMode=var2664, r35=var3046, $i0=var16, $i7=var527, $r36=var377, r2=var814, $i1=var2529, $i9=var2878, $r37=var719, r3=var3231, $i2=var586, $r38=var2797, r4=var335, $i3=var1529, $i11=var1791, $r41=var2638, $r40=var1169, org.hibernate.dialect.SQLServer2005Dialect$2=var1158, $r5=var3291, java.lang.Enum=var799, $i4=var958, $i5=var2121, $r43=var495, $r17=var3873, $r18=var1326, $r19=var3234, $r20=var112, $r21=var248, $r22=var415, $r23=var3032, $r24=var2806}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock, holdlock";	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11