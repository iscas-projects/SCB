(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort var2405 0)
(declare-sort var2245 0)
(declare-sort var3733 0)
(declare-sort var2102 0)
(declare-sort var790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2405 String) var3733)
(declare-fun getTimeOut/-863427830 (var2405) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var790) Int)
(declare-fun cast-from-var3733-to-var790 (var3733) var790)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var667 var667)
(declare-const null-var2405 var2405)
(declare-const null-String String)
(declare-const null-var3733 var3733)
(declare-const var2102-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var566 var667) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var566 null-var667)))
(declare-const var1317 var2405) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1317 null-var2405)))
(declare-const var2773 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2773 null-String)))
(assert true)
(define-const var1394 var3733 (getAliasSpecificLockMode/491246003 var1317 var2773)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1394 null-var3733))) ; Cond: r35 != null 
(assert true)
(define-const var49 Int (getTimeOut/-863427830 var1317)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2894 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var49 var2894)))) ; Negate: Cond: $i0 != $i7  
(define-const var2402 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2615 String var2402) ; Statement: r2 = $r36 
(assert true)
(define-const var2661 Int (getTimeOut/-863427830 var1317)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3403 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var2661 var3403))) ; Cond: $i1 != $i9 
(define-const var3157 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var158 String var3157) ; Statement: r3 = $r37 
(assert true)
(define-const var3426 Int (getTimeOut/-863427830 var1317)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3426 0))) ; Cond: $i2 != 0 
(define-const var1809 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3856 String var1809) ; Statement: r4 = $r38 
(assert true)
(define-const var701 Int (getTimeOut/-863427830 var1317)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var1019 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var701 var1019))) ; Cond: $i3 != $i11 
(define-const var1776 String "") ; Statement: $r41 = "" 
(define-const var3072 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var610 (Array Int Int) var2102-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3721 Int (ordinal/-291641772 (cast-from-var3733-to-var790 var1394))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var986 Int (select var610 var3721)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var986 4) (and (not (= var986 3)) (and (not (= var986 2)) (and (not (= var986 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var3037 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3037)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3037!1 String)
(assert (= var3037!1 ""))
(assert true)
(define-const var3691 String (append/672562846 var3037!1 var2773)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3037!2 String)
(assert (= var3037!2 (str.++ var3037!1 var2773)))
(assert true)
(define-const var331 String (append/672562846 var3691 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3691!1 String)
(assert (= var3691!1 (str.++ var3691 " with (")))
(assert true)
(define-const var3615 String (append/672562846 var331 var158)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var331!1 String)
(assert (= var331!1 (str.++ var331 var158)))
(assert true)
(define-const var2200 String (append/672562846 var3615 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3615!1 String)
(assert (= var3615!1 (str.++ var3615 ", rowlock")))
(assert true)
(define-const var1410 String (append/672562846 var2200 var3856)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2200!1 String)
(assert (= var2200!1 (str.++ var2200 var3856)))
(assert true)
(define-const var1686 String (append/672562846 var1410 var1776)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1410!1 String)
(assert (= var1410!1 (str.++ var1410 var1776)))
(assert true)
(define-const var3638 String (append/672562846 var1686 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1686!1 String)
(assert (= var1686!1 (str.++ var1686 ")")))
(assert true)
(define-const var2972 String (toString/-2075883882 var3638)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3733-to-var790=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var667=org.hibernate.dialect.SQLServer2005Dialect, var566=r34, var2405=org.hibernate.LockOptions, var1317=r0, var2773=r1, var2245=null_type, var3733=org.hibernate.LockMode, var1394=r35, var49=$i0, var2894=$i7, var2402=$r36, var2615=r2, var2661=$i1, var3403=$i9, var3157=$r37, var158=r3, var3426=$i2, var1809=$r38, var3856=r4, var701=$i3, var1019=$i11, var1776=$r41, var3072=$r40, var2102=org.hibernate.dialect.SQLServer2005Dialect$2, var610=$r5, var790=java.lang.Enum, var3721=$i4, var986=$i5, var3037=$r43, var3691=$r17, var331=$r18, var3615=$r19, var2200=$r20, var1410=$r21, var1686=$r22, var3638=$r23, var2972=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var667, r34=var566, org.hibernate.LockOptions=var2405, r0=var1317, r1=var2773, null_type=var2245, org.hibernate.LockMode=var3733, r35=var1394, $i0=var49, $i7=var2894, $r36=var2402, r2=var2615, $i1=var2661, $i9=var3403, $r37=var3157, r3=var158, $i2=var3426, $r38=var1809, r4=var3856, $i3=var701, $i11=var1019, $r41=var1776, $r40=var3072, org.hibernate.dialect.SQLServer2005Dialect$2=var2102, $r5=var610, java.lang.Enum=var790, $i4=var3721, $i5=var986, $r43=var3037, $r17=var3691, $r18=var331, $r19=var3615, $r20=var2200, $r21=var1410, $r22=var1686, $r23=var3638, $r24=var2972}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11