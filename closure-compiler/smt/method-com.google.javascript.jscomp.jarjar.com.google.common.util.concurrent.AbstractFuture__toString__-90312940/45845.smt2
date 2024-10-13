(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3158 0)
(declare-sort var1292 0)
(declare-sort var859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1292) ClassObject)
(declare-fun cast-from-var3158-to-var1292 (var3158) var1292)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var859_identityHashCode/1096208673 (var1292) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun isCancelled/1219229452 (var3158) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3158 var3158)
(declare-const var2109 var3158) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var2109 null-var3158)))
(define-const var1846 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1846)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1846!1 String)
(assert (= var1846!1 ""))
(assert true)
(define-const var421 ClassObject (getClass/1258963082 (cast-from-var3158-to-var1292 var2109))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var623 String (getName/-1958580599 var421)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1693 Bool (startsWith/-1785782452 var623 "com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.") 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var1693 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1898 ClassObject (getClass/1258963082 (cast-from-var3158-to-var1292 var2109))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1634 String (getName/-1958580599 var1898)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1846!1 var1634)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1846!2 String)
(assert (= var1846!2 (str.++ var1846!1 var1634)))
(assert true) ; Non Conditional
(assert true)
(define-const var3722 String (append/-1166366385 var1846!2 64)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var1846!3 String)
(assert (str.prefixof var1846!2 var1846!3))
(define-const var634 Int (var859_identityHashCode/1096208673 (cast-from-var3158-to-var1292 var2109))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(define-const var2685 String (Int_toHexString/1865784998 var634)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(assert true)
(define-const var583 String (append/672562846 var3722 var2685)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3722!1 String)
(assert (= var3722!1 (str.++ var3722 var2685)))
(assert true)
;(assert (append/672562846 var583 "[status=")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[status=") 
(declare-const var583!1 String)
(assert (= var583!1 (str.++ var583 "[status=")))
(assert true)
(define-const var2324 Bool (isCancelled/1219229452 var2109)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isCancelled()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>() 
(assert (not (= (ite var2324 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (append/672562846 var1846!3 "CANCELLED")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CANCELLED") 
(declare-const var1846!4 String)
(assert (= var1846!4 (str.++ var1846!3 "CANCELLED")))
 ; Statement: goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3944 String (append/672562846 var1846!4 "]")) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1846!5 String)
(assert (= var1846!5 (str.++ var1846!4 "]")))
(assert true)
(define-const var257 String (toString/-2075883882 var3944)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3158-to-var1292=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var859_identityHashCode/1096208673=([java.lang.Object], int), Int_toHexString/1865784998=([int], java.lang.String), isCancelled/1219229452=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3158=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var2109=r1, var1846=$r0, var1292=java.lang.Object, var421=$r2, var623=$r3, var1693=$z0, var1898=$r4, var1634=$r5, var3722=$r7, var859=java.lang.System, var634=$i0, var2685=$r6, var583=$r8, var2324=$z1, var3944=$r11, var257=$r12}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var3158, r1=var2109, $r0=var1846, java.lang.Object=var1292, $r2=var421, $r3=var623, $z0=var1693, $r4=var1898, $r5=var1634, $r7=var3722, java.lang.System=var859, $i0=var634, $r6=var2685, $r8=var583, $z1=var2324, $r11=var3944, $r12=var257}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.");	if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[status=");	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isCancelled()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CANCELLED");	goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]")];	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5