(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1081 0)
(declare-sort var2224 0)
(declare-sort var2208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2224) ClassObject)
(declare-fun cast-from-var1081-to-var2224 (var1081) var2224)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2208_identityHashCode/1096208673 (var2224) Int)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun isCancelled/1219229452 (var1081) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1081 var1081)
(declare-const var125 var1081) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var125 null-var1081)))
(define-const var857 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var857)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var857!1 String)
(assert (= var857!1 ""))
(assert true)
(define-const var3427 ClassObject (getClass/1258963082 (cast-from-var1081-to-var2224 var125))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2394 String (getName/-1958580599 var3427)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var104 Bool (startsWith/-1785782452 var2394 "com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.") 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var104 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3897 ClassObject (getClass/1258963082 (cast-from-var1081-to-var2224 var125))) ; Statement: $r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2663 String (getSimpleName/-390194377 var3897)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (append/672562846 var857!1 var2663)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var857!2 String)
(assert (= var857!2 (str.++ var857!1 var2663)))
 ; Statement: goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2871 String (append/-1166366385 var857!2 64)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var857!3 String)
(assert (str.prefixof var857!2 var857!3))
(define-const var2436 Int (var2208_identityHashCode/1096208673 (cast-from-var1081-to-var2224 var125))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(define-const var2372 String (Int_toHexString/1865784998 var2436)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0) 
(assert true)
(define-const var107 String (append/672562846 var2871 var2372)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2871!1 String)
(assert (= var2871!1 (str.++ var2871 var2372)))
(assert true)
;(assert (append/672562846 var107 "[status=")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[status=") 
(declare-const var107!1 String)
(assert (= var107!1 (str.++ var107 "[status=")))
(assert true)
(define-const var3863 Bool (isCancelled/1219229452 var125)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isCancelled()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>() 
(assert (not (= (ite var3863 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (append/672562846 var857!3 "CANCELLED")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CANCELLED") 
(declare-const var857!4 String)
(assert (= var857!4 (str.++ var857!3 "CANCELLED")))
 ; Statement: goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3464 String (append/672562846 var857!4 "]")) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var857!5 String)
(assert (= var857!5 (str.++ var857!4 "]")))
(assert true)
(define-const var1154 String (toString/-2075883882 var3464)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1081-to-var2224=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2208_identityHashCode/1096208673=([java.lang.Object], int), Int_toHexString/1865784998=([int], java.lang.String), isCancelled/1219229452=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1081=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var125=r1, var857=$r0, var2224=java.lang.Object, var3427=$r2, var2394=$r3, var104=$z0, var3897=$r9, var2663=$r10, var2871=$r7, var2208=java.lang.System, var2436=$i0, var2372=$r6, var107=$r8, var3863=$z1, var3464=$r11, var1154=$r12}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var1081, r1=var125, $r0=var857, java.lang.Object=var2224, $r2=var3427, $r3=var2394, $z0=var104, $r9=var3897, $r10=var2663, $r7=var2871, java.lang.System=var2208, $i0=var2436, $r6=var2372, $r8=var107, $z1=var3863, $r11=var3464, $r12=var1154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.");	if $z0 == 0 goto $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64)];	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[status=");	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isCancelled()>();	if $z1 == 0 goto $z2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture: boolean isDone()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CANCELLED");	goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]")];	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5