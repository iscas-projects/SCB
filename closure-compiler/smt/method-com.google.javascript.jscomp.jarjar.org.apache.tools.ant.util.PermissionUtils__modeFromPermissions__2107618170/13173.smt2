(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3379 0)
(declare-sort var806 0)
(declare-sort var3902 0)
(declare-sort var3691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3902_valueOf/-226906268 (String) var3902)
(declare-fun var3379_contains/1636690605 (var3379 var3691) Bool)
(declare-fun cast-from-var3902-to-var3691 (var3902) var3691)
(declare-const null-var3379 var3379)
(declare-const null-String String)
(declare-const var1150 var3379) ; Statement: r0 := @parameter0: java.util.Set 
(assert (not (= var1150 null-var3379)))
(declare-const var2576 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2576 null-String)))
(define-const var1715 Int 0) ; Statement: l0 = 0L 
(define-const var2825 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2825)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2825!1 String)
(assert (= var2825!1 ""))
(assert true)
(define-const var734 String (append/672562846 var2825!1 var2576)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2825!2 String)
(assert (= var2825!2 (str.++ var2825!1 var2576)))
(assert true)
(define-const var1420 String (append/672562846 var734 "_READ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_READ") 
(declare-const var734!1 String)
(assert (= var734!1 (str.++ var734 "_READ")))
(assert true)
(define-const var2927 String (toString/-2075883882 var1420)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3116 var3902 (var3902_valueOf/-226906268 var2927)) ; Statement: $r6 = staticinvoke <java.nio.file.attribute.PosixFilePermission: java.nio.file.attribute.PosixFilePermission valueOf(java.lang.String)>($r5) 
(define-const var182 Bool (var3379_contains/1636690605 var1150 (cast-from-var3902-to-var3691 var3116))) ; Statement: $z0 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (= (ite var182 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3302 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3302)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3302!1 String)
(assert (= var3302!1 ""))
(assert true)
(define-const var3504 String (append/672562846 var3302!1 var2576)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3302!2 String)
(assert (= var3302!2 (str.++ var3302!1 var2576)))
(assert true)
(define-const var1412 String (append/672562846 var3504 "_WRITE")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_WRITE") 
(declare-const var3504!1 String)
(assert (= var3504!1 (str.++ var3504 "_WRITE")))
(assert true)
(define-const var3806 String (toString/-2075883882 var1412)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var528 var3902 (var3902_valueOf/-226906268 var3806)) ; Statement: $r11 = staticinvoke <java.nio.file.attribute.PosixFilePermission: java.nio.file.attribute.PosixFilePermission valueOf(java.lang.String)>($r10) 
(define-const var3895 Bool (var3379_contains/1636690605 var1150 (cast-from-var3902-to-var3691 var528))) ; Statement: $z1 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>($r11) 
 ; Statement: if $z1 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (= (ite var3895 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2665 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2665)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2665!1 String)
(assert (= var2665!1 ""))
(assert true)
(define-const var3434 String (append/672562846 var2665!1 var2576)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2665!2 String)
(assert (= var2665!2 (str.++ var2665!1 var2576)))
(assert true)
(define-const var2696 String (append/672562846 var3434 "_EXECUTE")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_EXECUTE") 
(declare-const var3434!1 String)
(assert (= var3434!1 (str.++ var3434 "_EXECUTE")))
(assert true)
(define-const var2703 String (toString/-2075883882 var2696)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var604 var3902 (var3902_valueOf/-226906268 var2703)) ; Statement: $r16 = staticinvoke <java.nio.file.attribute.PosixFilePermission: java.nio.file.attribute.PosixFilePermission valueOf(java.lang.String)>($r15) 
(define-const var1592 Bool (var3379_contains/1636690605 var1150 (cast-from-var3902-to-var3691 var604))) ; Statement: $z2 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>($r16) 
 ; Statement: if $z2 == 0 goto return l0 
(assert (= (ite var1592 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return l0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3902_valueOf/-226906268=([java.lang.String], java.nio.file.attribute.PosixFilePermission), var3379_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var3902-to-var3691=([java.nio.file.attribute.PosixFilePermission], java.lang.Object)}
; {var3379=java.util.Set, var1150=r0, var2576=r2, var806=null_type, var1715=l0, var2825=$r1, var734=$r3, var1420=$r4, var2927=$r5, var3902=java.nio.file.attribute.PosixFilePermission, var3116=$r6, var3691=java.lang.Object, var182=$z0, var3302=$r7, var3504=$r8, var1412=$r9, var3806=$r10, var528=$r11, var3895=$z1, var2665=$r12, var3434=$r13, var2696=$r14, var2703=$r15, var604=$r16, var1592=$z2}
; {java.util.Set=var3379, r0=var1150, r2=var2576, null_type=var806, l0=var1715, $r1=var2825, $r3=var734, $r4=var1420, $r5=var2927, java.nio.file.attribute.PosixFilePermission=var3902, $r6=var3116, java.lang.Object=var3691, $z0=var182, $r7=var3302, $r8=var3504, $r9=var1412, $r10=var3806, $r11=var528, $z1=var3895, $r12=var2665, $r13=var3434, $r14=var2696, $r15=var2703, $r16=var604, $z2=var1592}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: java.util.Set;	r2 := @parameter1: java.lang.String;	l0 = 0L;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_READ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = staticinvoke <java.nio.file.attribute.PosixFilePermission: java.nio.file.attribute.PosixFilePermission valueOf(java.lang.String)>($r5);	$z0 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>($r6);	if $z0 == 0 goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_WRITE");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <java.nio.file.attribute.PosixFilePermission: java.nio.file.attribute.PosixFilePermission valueOf(java.lang.String)>($r10);	$z1 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>($r11);	if $z1 == 0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_EXECUTE");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = staticinvoke <java.nio.file.attribute.PosixFilePermission: java.nio.file.attribute.PosixFilePermission valueOf(java.lang.String)>($r15);	$z2 = interfaceinvoke r0.<java.util.Set: boolean contains(java.lang.Object)>($r16);	if $z2 == 0 goto return l0;	return l0
;block_num 4