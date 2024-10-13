(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3216 0)
(declare-sort var2757 0)
(declare-sort var3157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun validationType/-749904774 (var3216) var2757)
(declare-fun append/-1031950772 (String var3157) String)
(declare-fun cast-from-var2757-to-var3157 (var2757) var3157)
(declare-fun validatorClass/-749904774 (var3216) ClassObject)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3216 var3216)
(declare-const null-ClassObject ClassObject)
(declare-const var2764 var3216) ; Statement: r1 := @this: jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator 
(assert (not (= var2764 null-var3216)))
(define-const var2190 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2190)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2190!1 String)
(assert (= var2190!1 ""))
(assert true)
(define-const var1166 String (append/672562846 var2190!1 "Validator[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Validator[") 
(declare-const var2190!2 String)
(assert (= var2190!2 (str.++ var2190!1 "Validator[")))
(define-const var3953 var2757 (validationType/-749904774 var2764)) ; Statement: $r2 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType validationType> 
(assert true)
(define-const var2897 String (append/-1031950772 var1166 (cast-from-var2757-to-var3157 var3953))) ; Statement: $r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1166!1 String)
(assert (str.prefixof var1166 var1166!1))
(define-const var3874 ClassObject (validatorClass/-749904774 var2764)) ; Statement: $r4 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: java.lang.Class validatorClass> 
 ; Statement: if $r4 != null goto $r5 = new java.lang.StringBuilder 
(assert (not (not (= var3874 null-ClassObject)))) ; Negate: Cond: $r4 != null  
(define-const var2252 String "") ; Statement: $r14 = "" 
 ; Statement: goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var54 String (append/672562846 var2897 var2252)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2897!1 String)
(assert (= var2897!1 (str.++ var2897 var2252)))
(assert true)
(define-const var2834 String (append/672562846 var54 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var54!1 String)
(assert (= var54!1 (str.++ var54 "]")))
(assert true)
(define-const var428 String (toString/-2075883882 var2834)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), validationType/-749904774=([jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator], jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2757-to-var3157=([jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType], java.lang.Object), validatorClass/-749904774=([jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator], java.lang.Class), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3216=jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator, var2764=r1, var2190=$r0, var1166=$r3, var2757=jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType, var3953=$r2, var3157=java.lang.Object, var2897=$r10, var3874=$r4, var2252=$r14, var54=$r11, var2834=$r12, var428=$r13}
; {jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator=var3216, r1=var2764, $r0=var2190, $r3=var1166, jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType=var2757, $r2=var3953, java.lang.Object=var3157, $r10=var2897, $r4=var3874, $r14=var2252, $r11=var54, $r12=var2834, $r13=var428}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Validator[");	$r2 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: jdk.internal.dynalink.beans.GuardedInvocationComponent$ValidationType validationType>;	$r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = r1.<jdk.internal.dynalink.beans.GuardedInvocationComponent$Validator: java.lang.Class validatorClass>;	if $r4 != null goto $r5 = new java.lang.StringBuilder;	$r14 = "";	goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 3