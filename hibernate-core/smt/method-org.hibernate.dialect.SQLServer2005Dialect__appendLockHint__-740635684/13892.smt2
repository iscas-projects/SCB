(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2361 0)
(declare-sort var884 0)
(declare-sort var719 0)
(declare-sort var3773 0)
(declare-sort var576 0)
(declare-sort var2706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var884 String) var3773)
(declare-fun getTimeOut/-863427830 (var884) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var2706) Int)
(declare-fun cast-from-var3773-to-var2706 (var3773) var2706)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2361 var2361)
(declare-const null-var884 var884)
(declare-const null-String String)
(declare-const null-var3773 var3773)
(declare-const var576-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3370 var2361) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3370 null-var2361)))
(declare-const var2888 var884) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2888 null-var884)))
(declare-const var3348 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3348 null-String)))
(assert true)
(define-const var280 var3773 (getAliasSpecificLockMode/491246003 var2888 var3348)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var280 null-var3773))) ; Cond: r35 != null 
(assert true)
(define-const var2628 Int (getTimeOut/-863427830 var2888)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3501 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var2628 var3501)))) ; Negate: Cond: $i0 != $i7  
(define-const var967 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2346 String var967) ; Statement: r2 = $r36 
(assert true)
(define-const var765 Int (getTimeOut/-863427830 var2888)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var3804 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (not (= var765 var3804)))) ; Negate: Cond: $i1 != $i9  
(define-const var512 String "updlock") ; Statement: $r37 = "updlock" 
 ; Statement: goto [?= r3 = $r37] 
(assert true) ; Non Conditional
(define-const var2318 String var512) ; Statement: r3 = $r37 
(assert true)
(define-const var438 Int (getTimeOut/-863427830 var2888)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var438 0))) ; Cond: $i2 != 0 
(define-const var532 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var181 String var532) ; Statement: r4 = $r38 
(assert true)
(define-const var1082 Int (getTimeOut/-863427830 var2888)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var237 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (= var1082 var237))) ; Cond: $i3 != $i11 
(define-const var1595 String "") ; Statement: $r41 = "" 
(define-const var3167 String "") ; Statement: $r40 = "" 
(assert true) ; Non Conditional
(define-const var3300 (Array Int Int) var576-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3584 Int (ordinal/-291641772 (cast-from-var3773-to-var2706 var280))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1318 Int (select var3300 var3584)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var1318 1) true)) ; Intersect: Cond: $i5 == 1  and Non Conditional 
(define-const var883 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var883)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var883!1 String)
(assert (= var883!1 ""))
(assert true)
(define-const var3683 String (append/672562846 var883!1 var3348)) ; Statement: $r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var883!2 String)
(assert (= var883!2 (str.++ var883!1 var3348)))
(assert true)
(define-const var3141 String (append/672562846 var3683 " with (")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (") 
(declare-const var3683!1 String)
(assert (= var3683!1 (str.++ var3683 " with (")))
(assert true)
(define-const var2081 String (append/672562846 var3141 var2346)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3141!1 String)
(assert (= var3141!1 (str.++ var3141 var2346)))
(assert true)
(define-const var2164 String (append/672562846 var2081 ", rowlock")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock") 
(declare-const var2081!1 String)
(assert (= var2081!1 (str.++ var2081 ", rowlock")))
(assert true)
(define-const var3604 String (append/672562846 var2164 var181)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2164!1 String)
(assert (= var2164!1 (str.++ var2164 var181)))
(assert true)
(define-const var3874 String (append/672562846 var3604 var3167)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40) 
(declare-const var3604!1 String)
(assert (= var3604!1 (str.++ var3604 var3167)))
(assert true)
(define-const var585 String (append/672562846 var3874 ")")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3874!1 String)
(assert (= var3874!1 (str.++ var3874 ")")))
(assert true)
(define-const var2610 String (toString/-2075883882 var585)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3773-to-var2706=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2361=org.hibernate.dialect.SQLServer2005Dialect, var3370=r34, var884=org.hibernate.LockOptions, var2888=r0, var3348=r1, var719=null_type, var3773=org.hibernate.LockMode, var280=r35, var2628=$i0, var3501=$i7, var967=$r36, var2346=r2, var765=$i1, var3804=$i9, var512=$r37, var2318=r3, var438=$i2, var532=$r38, var181=r4, var1082=$i3, var237=$i11, var1595=$r41, var3167=$r40, var576=org.hibernate.dialect.SQLServer2005Dialect$2, var3300=$r5, var2706=java.lang.Enum, var3584=$i4, var1318=$i5, var883=$r42, var3683=$r26, var3141=$r27, var2081=$r28, var2164=$r29, var3604=$r30, var3874=$r31, var585=$r32, var2610=$r33}
; {org.hibernate.dialect.SQLServer2005Dialect=var2361, r34=var3370, org.hibernate.LockOptions=var884, r0=var2888, r1=var3348, null_type=var719, org.hibernate.LockMode=var3773, r35=var280, $i0=var2628, $i7=var3501, $r36=var967, r2=var2346, $i1=var765, $i9=var3804, $r37=var512, r3=var2318, $i2=var438, $r38=var532, r4=var181, $i3=var1082, $i11=var237, $r41=var1595, $r40=var3167, org.hibernate.dialect.SQLServer2005Dialect$2=var576, $r5=var3300, java.lang.Enum=var2706, $i4=var3584, $i5=var1318, $r42=var883, $r26=var3683, $r27=var3141, $r28=var2081, $r29=var2164, $r30=var3604, $r31=var3874, $r32=var585, $r33=var2610}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "updlock";	goto [?= r3 = $r37];	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = "";	$r40 = "";	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", rowlock");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 11