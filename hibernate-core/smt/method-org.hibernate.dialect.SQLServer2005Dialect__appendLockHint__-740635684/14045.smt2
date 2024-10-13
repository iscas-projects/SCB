(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var796 0)
(declare-sort var2742 0)
(declare-sort var2309 0)
(declare-sort var3921 0)
(declare-sort var1187 0)
(declare-sort var842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasSpecificLockMode/491246003 (var2742 String) var3921)
(declare-fun getTimeOut/-863427830 (var2742) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var842) Int)
(declare-fun cast-from-var3921-to-var842 (var3921) var842)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var796 var796)
(declare-const null-var2742 var2742)
(declare-const null-String String)
(declare-const null-var3921 var3921)
(declare-const var1187-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3132 var796) ; Statement: r34 := @this: org.hibernate.dialect.SQLServer2005Dialect 
(assert (not (= var3132 null-var796)))
(declare-const var2239 var2742) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var2239 null-var2742)))
(declare-const var1307 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1307 null-String)))
(assert true)
(define-const var1645 var3921 (getAliasSpecificLockMode/491246003 var2239 var1307)) ; Statement: r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1) 
 ; Statement: if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(assert (not (= var1645 null-var3921))) ; Cond: r35 != null 
(assert true)
(define-const var3864 Int (getTimeOut/-863427830 var2239)) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var439 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
 ; Statement: if $i0 != $i7 goto $r36 = "updlock, holdlock" 
(assert (not (not (= var3864 var439)))) ; Negate: Cond: $i0 != $i7  
(define-const var262 String "updlock") ; Statement: $r36 = "updlock" 
 ; Statement: goto [?= r2 = $r36] 
(assert true) ; Non Conditional
(define-const var2015 String var262) ; Statement: r2 = $r36 
(assert true)
(define-const var3215 Int (getTimeOut/-863427830 var2239)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var381 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i9 = (int) -2 
 ; Statement: if $i1 != $i9 goto $r37 = "holdlock" 
(assert (not (= var3215 var381))) ; Cond: $i1 != $i9 
(define-const var808 String "holdlock") ; Statement: $r37 = "holdlock" 
(assert true) ; Non Conditional
(define-const var975 String var808) ; Statement: r3 = $r37 
(assert true)
(define-const var2882 Int (getTimeOut/-863427830 var2239)) ; Statement: $i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
 ; Statement: if $i2 != 0 goto $r38 = "" 
(assert (not (= var2882 0))) ; Cond: $i2 != 0 
(define-const var1811 String "") ; Statement: $r38 = "" 
(assert true) ; Non Conditional
(define-const var1082 String var1811) ; Statement: r4 = $r38 
(assert true)
(define-const var1943 Int (getTimeOut/-863427830 var2239)) ; Statement: $i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>() 
(define-const var2734 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i11 = (int) -2 
 ; Statement: if $i3 != $i11 goto $r41 = "" 
(assert (not (not (= var1943 var2734)))) ; Negate: Cond: $i3 != $i11  
(define-const var1806 String ", readpast") ; Statement: $r41 = ", readpast" 
(define-const var720 String ", readpast") ; Statement: $r40 = ", readpast" 
 ; Statement: goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>] 
(assert true) ; Non Conditional
(define-const var1397 (Array Int Int) var1187-$SwitchMap$org$hibernate$LockMode) ; Statement: $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2148 Int (ordinal/-291641772 (cast-from-var3921-to-var842 var1645))) ; Statement: $i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2767 Int (select var1397 var2148)) ; Statement: $i5 = $r5[$i4] 
 ; Statement: tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; } 
(assert (and (= var2767 5) (and (not (= var2767 4)) (and (not (= var2767 3)) (and (not (= var2767 2)) (and (not (= var2767 1)) true)))))) ; Intersect: Cond: $i5 == 5  and Intersect: Negate: Cond: $i5 == 4   and Intersect: Negate: Cond: $i5 == 3   and Intersect: Negate: Cond: $i5 == 2   and Intersect: Negate: Cond: $i5 == 1   and Non Conditional     
(define-const var266 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var266)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var266!1 String)
(assert (= var266!1 ""))
(assert true)
(define-const var3902 String (append/672562846 var266!1 var1307)) ; Statement: $r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var266!2 String)
(assert (= var266!2 (str.++ var266!1 var1307)))
(assert true)
(define-const var2955 String (append/672562846 var3902 " with (updlock, rowlock, readpast")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast") 
(declare-const var3902!1 String)
(assert (= var3902!1 (str.++ var3902 " with (updlock, rowlock, readpast")))
(assert true)
(define-const var656 String (append/672562846 var2955 var1082)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2955!1 String)
(assert (= var2955!1 (str.++ var2955 var1082)))
(assert true)
(define-const var2999 String (append/672562846 var656 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var656!1 String)
(assert (= var656!1 (str.++ var656 ")")))
(assert true)
(define-const var386 String (toString/-2075883882 var2999)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasSpecificLockMode/491246003=([org.hibernate.LockOptions, java.lang.String], org.hibernate.LockMode), getTimeOut/-863427830=([org.hibernate.LockOptions], int), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3921-to-var842=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var796=org.hibernate.dialect.SQLServer2005Dialect, var3132=r34, var2742=org.hibernate.LockOptions, var2239=r0, var1307=r1, var2309=null_type, var3921=org.hibernate.LockMode, var1645=r35, var3864=$i0, var439=$i7, var262=$r36, var2015=r2, var3215=$i1, var381=$i9, var808=$r37, var975=r3, var2882=$i2, var1811=$r38, var1082=r4, var1943=$i3, var2734=$i11, var1806=$r41, var720=$r40, var1187=org.hibernate.dialect.SQLServer2005Dialect$2, var1397=$r5, var842=java.lang.Enum, var2148=$i4, var2767=$i5, var266=$r44, var3902=$r11, var2955=$r12, var656=$r13, var2999=$r14, var386=$r15}
; {org.hibernate.dialect.SQLServer2005Dialect=var796, r34=var3132, org.hibernate.LockOptions=var2742, r0=var2239, r1=var1307, null_type=var2309, org.hibernate.LockMode=var3921, r35=var1645, $i0=var3864, $i7=var439, $r36=var262, r2=var2015, $i1=var3215, $i9=var381, $r37=var808, r3=var975, $i2=var2882, $r38=var1811, r4=var1082, $i3=var1943, $i11=var2734, $r41=var1806, $r40=var720, org.hibernate.dialect.SQLServer2005Dialect$2=var1187, $r5=var1397, java.lang.Enum=var842, $i4=var2148, $i5=var2767, $r44=var266, $r11=var3902, $r12=var2955, $r13=var656, $r14=var2999, $r15=var386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: org.hibernate.dialect.SQLServer2005Dialect;	r0 := @parameter0: org.hibernate.LockOptions;	r1 := @parameter1: java.lang.String;	r35 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getAliasSpecificLockMode(java.lang.String)>(r1);	if r35 != null goto $i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i0 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i7 = (int) -2;	if $i0 != $i7 goto $r36 = "updlock, holdlock";	$r36 = "updlock";	goto [?= r2 = $r36];	r2 = $r36;	$i1 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i9 = (int) -2;	if $i1 != $i9 goto $r37 = "holdlock";	$r37 = "holdlock";	r3 = $r37;	$i2 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	if $i2 != 0 goto $r38 = "";	$r38 = "";	r4 = $r38;	$i3 = virtualinvoke r0.<org.hibernate.LockOptions: int getTimeOut()>();	$i11 = (int) -2;	if $i3 != $i11 goto $r41 = "";	$r41 = ", readpast";	$r40 = ", readpast";	goto [?= $r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>];	$r5 = <org.hibernate.dialect.SQLServer2005Dialect$2: int[] $SwitchMap$org$hibernate$LockMode>;	$i4 = virtualinvoke r35.<org.hibernate.LockMode: int ordinal()>();	$i5 = $r5[$i4];	tableswitch($i5) {     case 1: goto $r42 = new java.lang.StringBuilder;     case 2: goto $r42 = new java.lang.StringBuilder;     case 3: goto $r42 = new java.lang.StringBuilder;     case 4: goto $r43 = new java.lang.StringBuilder;     case 5: goto $r44 = new java.lang.StringBuilder;     case 6: goto $r45 = new java.lang.StringBuilder;     default: goto return r1; };	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 11