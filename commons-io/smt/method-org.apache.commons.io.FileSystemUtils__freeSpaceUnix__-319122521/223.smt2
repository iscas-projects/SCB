(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var513 0)
(declare-sort var1574 0)
(declare-sort var3787 0)
(declare-sort var2735 0)
(declare-sort var367 0)
(declare-sort var1724 0)
(declare-sort var3033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkPath/-1324960772 (var513 String Bool) var2735)
(declare-fun var2735_toString/1790204457 (var2735) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun performCommand/-1009984896 (var513 (Array Int String) Int var3787) var367)
(declare-fun var367_size/-959786421 (var367) Int)
(declare-fun var1724-init () var1724)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3033) String)
(declare-fun cast-from-var367-to-var3033 (var367) var3033)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1724 String) void)
(declare-const null-var513 var513)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3787 var3787)
(declare-const var513-DF String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3599 var513) ; Statement: r0 := @this: org.apache.commons.io.FileSystemUtils 
(assert (not (= var3599 null-var513)))
(declare-const var701 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var701 null-String)))
(declare-const var113 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var113 null-Bool)))
(declare-const var3736 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3736 null-Bool)))
(declare-const var2694 var3787) ; Statement: r5 := @parameter3: java.time.Duration 
(assert (not (= var2694 null-var3787)))
(assert true)
(define-const var3694 var2735 (checkPath/-1324960772 var3599 var701 (ite (= 1 0) true false))) ; Statement: $r2 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.nio.file.Path checkPath(java.lang.String,boolean)>(r1, 0) 
(define-const var2590 String (var2735_toString/1790204457 var3694)) ; Statement: r3 = interfaceinvoke $r2.<java.nio.file.Path: java.lang.String toString()>() 
(define-const var1902 String "-") ; Statement: r39 = "-" 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var113 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto $i0 = virtualinvoke r39.<java.lang.String: int length()>() 
(assert (= (ite var3736 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var3518 Int (length/-134980193 var1902)) ; Statement: $i0 = virtualinvoke r39.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 1 goto $r40 = newarray (java.lang.String)[2] 
(assert (not (<= var3518 1))) ; Negate: Cond: $i0 <= 1  
(define-const var1744 (Array Int String) arr-String-init) ; Statement: $r40 = newarray (java.lang.String)[3] 
(define-const var1696 String var513-DF) ; Statement: $r31 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF> 
(declare-const var1744!1 (Array Int String))
(assert (not (= var1744!1 null-__Array__Int__String__)))
(assert (= (select var1744!1 0) var1696)) ; Statement: $r40[0] = $r31 
(declare-const var1744!2 (Array Int String))
(assert (not (= var1744!2 null-__Array__Int__String__)))
(assert (= (select var1744!2 1) var1902)) ; Statement: $r40[1] = r39 
(declare-const var1744!3 (Array Int String))
(assert (not (= var1744!3 null-__Array__Int__String__)))
(assert (= (select var1744!3 2) var2590)) ; Statement: $r40[2] = r3 
 ; Statement: goto [?= $r32 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r40, 3, r5)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1336 var367 (performCommand/-1009984896 var3599 var1744!3 3 var2694)) ; Statement: $r32 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r40, 3, r5) 
(define-const var2711 Int (var367_size/-959786421 var1336)) ; Statement: $i1 = interfaceinvoke $r32.<java.util.List: int size()>() 
 ; Statement: if $i1 >= 2 goto $r6 = interfaceinvoke $r32.<java.util.List: java.lang.Object get(int)>(1) 
(assert (not (>= var2711 2))) ; Negate: Cond: $i1 >= 2  
(define-const var2075 var1724 var1724-init) ; Statement: $r21 = new java.io.IOException 
(define-const var878 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var878)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var878!1 String)
(assert (= var878!1 ""))
(assert true)
(define-const var2759 String (append/672562846 var878!1 "Command line \u0027")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'") 
(declare-const var878!2 String)
(assert (= var878!2 (str.++ var878!1 "Command line \u0027")))
(define-const var2226 String var513-DF) ; Statement: $r23 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF> 
(assert true)
(define-const var3670 String (append/672562846 var2759 var2226)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2759!1 String)
(assert (= var2759!1 (str.++ var2759 var2226)))
(assert true)
(define-const var169 String (append/672562846 var3670 "\u0027 did not return info as expected for path \u0027")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' did not return info as expected for path \'") 
(declare-const var3670!1 String)
(assert (= var3670!1 (str.++ var3670 "\u0027 did not return info as expected for path \u0027")))
(assert true)
(define-const var243 String (append/672562846 var169 var2590)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var169!1 String)
(assert (= var169!1 (str.++ var169 var2590)))
(assert true)
(define-const var2657 String (append/672562846 var243 "\u0027- response was ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'- response was ") 
(declare-const var243!1 String)
(assert (= var243!1 (str.++ var243 "\u0027- response was ")))
(assert true)
(define-const var1088 String (append/-1031950772 var2657 (cast-from-var367-to-var3033 var1336))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r32) 
(declare-const var2657!1 String)
(assert (str.prefixof var2657 var2657!1))
(assert true)
(define-const var565 String (toString/-2075883882 var1088)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2075 var565)) ; Statement: specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String)>($r30) 

(declare-const var2075!1 var1724)
(declare-const var565!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {checkPath/-1324960772=([org.apache.commons.io.FileSystemUtils, java.lang.String, boolean], java.nio.file.Path), var2735_toString/1790204457=([java.nio.file.Path], java.lang.String), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), performCommand/-1009984896=([org.apache.commons.io.FileSystemUtils, java.lang.String[], int, java.time.Duration], java.util.List), var367_size/-959786421=([java.util.List], int), var1724-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var367-to-var3033=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var513=org.apache.commons.io.FileSystemUtils, var3599=r0, var701=r1, var1574=null_type, var113=z0, var3736=z1, var3787=java.time.Duration, var2694=r5, var2735=java.nio.file.Path, var3694=$r2, var2590=r3, var1902=r39, var3518=$i0, var1744=$r40, var1696=$r31, var367=java.util.List, var1336=$r32, var2711=$i1, var1724=java.io.IOException, var2075=$r21, var878=$r22, var2759=$r24, var2226=$r23, var3670=$r25, var169=$r26, var243=$r27, var2657=$r28, var3033=java.lang.Object, var1088=$r29, var565=$r30}
; {org.apache.commons.io.FileSystemUtils=var513, r0=var3599, r1=var701, null_type=var1574, z0=var113, z1=var3736, java.time.Duration=var3787, r5=var2694, java.nio.file.Path=var2735, $r2=var3694, r3=var2590, r39=var1902, $i0=var3518, $r40=var1744, $r31=var1696, java.util.List=var367, $r32=var1336, $i1=var2711, java.io.IOException=var1724, $r21=var2075, $r22=var878, $r24=var2759, $r23=var2226, $r25=var3670, $r26=var169, $r27=var243, $r28=var2657, java.lang.Object=var3033, $r29=var1088, $r30=var565}
;seq <java.nio.file.Path: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.FileSystemUtils;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	r5 := @parameter3: java.time.Duration;	$r2 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.nio.file.Path checkPath(java.lang.String,boolean)>(r1, 0);	r3 = interfaceinvoke $r2.<java.nio.file.Path: java.lang.String toString()>();	r39 = "-";	if z0 == 0 goto (branch);	if z1 == 0 goto $i0 = virtualinvoke r39.<java.lang.String: int length()>();	$i0 = virtualinvoke r39.<java.lang.String: int length()>();	if $i0 <= 1 goto $r40 = newarray (java.lang.String)[2];	$r40 = newarray (java.lang.String)[3];	$r31 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF>;	$r40[0] = $r31;	$r40[1] = r39;	$r40[2] = r3;	goto [?= $r32 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r40, 3, r5)];	$r32 = specialinvoke r0.<org.apache.commons.io.FileSystemUtils: java.util.List performCommand(java.lang.String[],int,java.time.Duration)>($r40, 3, r5);	$i1 = interfaceinvoke $r32.<java.util.List: int size()>();	if $i1 >= 2 goto $r6 = interfaceinvoke $r32.<java.util.List: java.lang.Object get(int)>(1);	$r21 = new java.io.IOException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'");	$r23 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' did not return info as expected for path \'");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'- response was ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r32);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.IOException: void <init>(java.lang.String)>($r30);	throw $r21
;block_num 6