(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2261 0)
(declare-sort var1229 0)
(declare-sort var3950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun validationType/-749904774 (var2261) var1229)
(declare-fun append/-1031950772 (String var3950) String)
(declare-fun cast-from-var1229-to-var3950 (var1229) var3950)
(declare-fun validatorClass/-749904774 (var2261) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2261 var2261)
(declare-const null-ClassObject ClassObject)
(declare-const var1961 var2261) ; Statement: r1 := @this: jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator 
(assert (not (= var1961 null-var2261)))
(define-const var459 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var459)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var459!1 String)
(assert (= var459!1 ""))
(assert true)
(define-const var1085 String (append/672562846 var459!1 "Validator[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Validator[") 
(declare-const var459!2 String)
(assert (= var459!2 (str.++ var459!1 "Validator[")))
(define-const var99 var1229 (validationType/-749904774 var1961)) ; Statement: $r2 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType validationType> 
(assert true)
(define-const var2808 String (append/-1031950772 var1085 (cast-from-var1229-to-var3950 var99))) ; Statement: $r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1085!1 String)
(assert (str.prefixof var1085 var1085!1))
(define-const var2810 ClassObject (validatorClass/-749904774 var1961)) ; Statement: $r4 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: java.lang.Class validatorClass> 
 ; Statement: if $r4 != null goto $r5 = new java.lang.StringBuilder 
(assert (not (= var2810 null-ClassObject))) ; Cond: $r4 != null 
(define-const var3880 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3880)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3880!1 String)
(assert (= var3880!1 ""))
(assert true)
(define-const var582 String (append/672562846 var3880!1 " ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3880!2 String)
(assert (= var3880!2 (str.++ var3880!1 " ")))
(define-const var1589 ClassObject (validatorClass/-749904774 var1961)) ; Statement: $r6 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: java.lang.Class validatorClass> 
(assert true)
(define-const var3342 String (getName/-1958580599 var1589)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2860 String (append/672562846 var582 var3342)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var582!1 String)
(assert (= var582!1 (str.++ var582 var3342)))
(assert true)
(define-const var1273 String (toString/-2075883882 var2860)) ; Statement: $r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2817 String (append/672562846 var2808 var1273)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2808!1 String)
(assert (= var2808!1 (str.++ var2808 var1273)))
(assert true)
(define-const var3228 String (append/672562846 var2817 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2817!1 String)
(assert (= var2817!1 (str.++ var2817 "]")))
(assert true)
(define-const var1752 String (toString/-2075883882 var3228)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), validationType/-749904774=([jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator], jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1229-to-var3950=([jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType], java.lang.Object), validatorClass/-749904774=([jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2261=jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator, var1961=r1, var459=$r0, var1085=$r3, var1229=jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType, var99=$r2, var3950=java.lang.Object, var2808=$r10, var2810=$r4, var3880=$r5, var582=$r8, var1589=$r6, var3342=$r7, var2860=$r9, var1273=$r14, var2817=$r11, var3228=$r12, var1752=$r13}
; {jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator=var2261, r1=var1961, $r0=var459, $r3=var1085, jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType=var1229, $r2=var99, java.lang.Object=var3950, $r10=var2808, $r4=var2810, $r5=var3880, $r8=var582, $r6=var1589, $r7=var3342, $r9=var2860, $r14=var1273, $r11=var2817, $r12=var3228, $r13=var1752}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Validator[");	$r2 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType validationType>;	$r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: java.lang.Class validatorClass>;	if $r4 != null goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: java.lang.Class validatorClass>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 3