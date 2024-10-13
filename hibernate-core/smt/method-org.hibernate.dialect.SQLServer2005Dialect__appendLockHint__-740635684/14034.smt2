(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort var2265 0)
(declare-sort var1893 0)
(declare-sort var2357 0)
(declare-sort var3936 0)
(declare-sort var1297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2265 String) var2357)
(declare-fun getTimeOut/-863427830 (var2265) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1297) Int)
(declare-fun cast-from-var2357-to-var1297 (var2357) var1297)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3558 var3558)
(declare-const null-var2265 var2265)
(declare-const null-String String)
(declare-const null-var2357 var2357)
(declare-const var3936-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2975 var3558) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var2975 null-var3558)))
(declare-const var3331 var2265) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3331 null-var2265)))
(declare-const var3530 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3530 null-String)))
(assert true)
(define-const var3586 var2357 (getAliasSpecificLockMode/491246003 var3331 var3530)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var3586 null-var2357))) ; Cond: r35 != null 
(assert true)
(define-const var2647 Int (getTimeOut/-863427830 var3331)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var180 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2647 var180)))) ; Negate: Cond: $i0 != $i7  
(define-const var471 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2855 String var471) ; Statement: r2 = $r36 
(assert true)
(define-const var545 Int (getTimeOut/-863427830 var3331)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2299 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var545 var2299))) ; Cond: $i1 != $i9 
(define-const var3970 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var907 String var3970) ; Statement: r3 = $r37 
(assert true)
(define-const var3345 Int (getTimeOut/-863427830 var3331)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var3345 0))) ; Cond: $i2 != 0 
(define-const var1573 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var3924 String var1573) ; Statement: r4 = $r38 
(assert true)
(define-const var2769 Int (getTimeOut/-863427830 var3331)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var749 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var2769 var749)))) ; Negate: Cond: $i3 != $i11  
(define-const var2824 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var891 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var3151 (Array Int Int) var3936-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var515 Int (ordinal/-291641772 (cast-from-var2357-to-var1297 var3586))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var553 Int (select var3151 var515)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var553 4) (and (not (= var553 3)) (and (not (= var553 2)) (and (not (= var553 1)) true))))) ; Intersect: Cond: $i5 == 4  and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional    
(define-const var745 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var745)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var745!1 String)
(assert (= var745!1 ""))
(assert true)
(define-const var1981 String (append/672562846 var745!1 var3530)) ; Statement: $r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var745!2 String)
(assert (= var745!2 (str.++ var745!1 var3530)))
(assert true)
(define-const var3133 String (append/672562846 var1981 " with (")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var1981!1 String)
(assert (= var1981!1 (str.++ var1981 " with (")))
(assert true)
(define-const var3002 String (append/672562846 var3133 var907)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3133!1 String)
(assert (= var3133!1 (str.++ var3133 var907)))
(assert true)
(define-const var3516 String (append/672562846 var3002 ", rowlock")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var3002!1 String)
(assert (= var3002!1 (str.++ var3002 ", rowlock")))
(assert true)
(define-const var655 String (append/672562846 var3516 var3924)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3516!1 String)
(assert (= var3516!1 (str.++ var3516 var3924)))
(assert true)
(define-const var2469 String (append/672562846 var655 var2824)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var655!1 String)
(assert (= var655!1 (str.++ var655 var2824)))
(assert true)
(define-const var635 String (append/672562846 var2469 ")")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2469!1 String)
(assert (= var2469!1 (str.++ var2469 ")")))
(assert true)
(define-const var2819 String (toString/-2075883882 var635)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2357-to-var1297=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3558=org.hibernate.dialect.SQLServer2005Dialect, var2975=r34, var2265=org.hibernate.LockOptions, var3331=r0, var3530=r1, var1893=null_type, var2357=org.hibernate.LockMode, var3586=r35, var2647=$i0, var180=$i7, var471=$r36, var2855=r2, var545=$i1, var2299=$i9, var3970=$r37, var907=r3, var3345=$i2, var1573=$r38, var3924=r4, var2769=$i3, var749=$i11, var2824=$r41, var891=$r40, var3936=org.hibernate.dialect.SQLServer2005Dialect$2, var3151=$r5, var1297=java.lang.Enum, var515=$i4, var553=$i5, var745=$r43, var1981=$r17, var3133=$r18, var3002=$r19, var3516=$r20, var655=$r21, var2469=$r22, var635=$r23, var2819=$r24}
; {org.hibernate.dialect.SQLServer2005Dialect=var3558, r34=var2975, org.hibernate.LockOptions=var2265, r0=var3331, r1=var3530, null_type=var1893, org.hibernate.LockMode=var2357, r35=var3586, $i0=var2647, $i7=var180, $r36=var471, r2=var2855, $i1=var545, $i9=var2299, $r37=var3970, r3=var907, $i2=var3345, $r38=var1573, r4=var3924, $i3=var2769, $i11=var749, $r41=var2824, $r40=var891, org.hibernate.dialect.SQLServer2005Dialect$2=var3936, $r5=var3151, java.lang.Enum=var1297, $i4=var515, $i5=var553, $r43=var745, $r17=var1981, $r18=var3133, $r19=var3002, $r20=var3516, $r21=var655, $r22=var2469, $r23=var635, $r24=var2819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 11