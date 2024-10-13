(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2847 0)
(declare-sort var3788 0)
(declare-sort var797 0)
(declare-sort var2959 0)
(declare-sort var3341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getUnwrappedArguments/1016106144 (var3788) (Array Int var2959))
(declare-fun arr-var2959-init () (Array Int var2959))
(declare-fun getErrorDescription/-65313640 (var3788) var2959)
(declare-fun cast-from-String-to-var3341 (String) var3341)
(declare-fun cast-from-var3341-to-var2959 (var3341) var2959)
(declare-fun cast-from-__Array__Int__var2959__-to-var3341 ((Array Int var2959)) var3341)
(declare-fun cast-from-var3341-to-__Array__Int__var3341__ (var3341) (Array Int var3341))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getUnwrappedActualParameterTypes/1764911404 (var2847 (Array Int var2959)) var2959)
(declare-fun append/-1031950772 (String var2959) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2847 var2847)
(declare-const null-var3788 var3788)
(declare-const null-var797 var797)
(declare-const null-__Array__Int__var2959__ (Array Int var2959))
(declare-const null-__Array__Int__var3341__ (Array Int var3341))
(declare-const var266 var2847) ; Statement: r6 := @this: freemarker.ext.beans.OverloadedMethods 
(assert (not (= var266 null-var2847)))
(declare-const var1996 var3788) ; Statement: r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments 
(assert (not (= var1996 null-var3788)))
(declare-const var488 var797) ; Statement: r4 := @parameter1: java.util.List 
(assert (not (= var488 null-var797)))
(assert true)
(define-const var2680 (Array Int var2959) (getUnwrappedArguments/1016106144 var1996)) ; Statement: r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>() 
(define-const var170 (Array Int var2959) arr-var2959-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var167 var2959 (getErrorDescription/-65313640 var1996)) ; Statement: $r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>() 
(declare-const var170!1 (Array Int var2959))
(assert (not (= var170!1 null-__Array__Int__var2959__)))
(assert (= (select var170!1 0) var167)) ; Statement: $r2[0] = $r3 
 ; Statement: if r4 == null goto $r12 = "" 
(assert (= var488 null-var797)) ; Cond: r4 == null 
(define-const var100 var3341 (cast-from-String-to-var3341 "")) ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(declare-const var170!2 (Array Int var2959))
(assert (not (= var170!2 null-__Array__Int__var2959__)))
(assert (= (select var170!2 1) (cast-from-var3341-to-var2959 var100))) ; Statement: $r2[1] = $r12 
 ; Statement: if r1 == null goto $r13 = "" 
(assert (not (= var2680 null-__Array__Int__var2959__))) ; Negate: Cond: r1 == null  
(define-const var3442 var3341 (cast-from-__Array__Int__var2959__-to-var3341 arr-var2959-init)) ; Statement: $r13 = newarray (java.lang.Object)[2] 
(define-const var3221 (Array Int var3341) (cast-from-var3341-to-__Array__Int__var3341__ var3442)) ; Statement: $r19 = (java.io.Serializable[]) $r13 
(declare-const var3221!1 (Array Int var3341))
(assert (not (= var3221!1 null-__Array__Int__var3341__)))
(assert (= (select var3221!1 0) (cast-from-String-to-var3341 "\nThe Java type of the argument values were: "))) ; Statement: $r19[0] = "\nThe Java type of the argument values were: " 
(define-const var2136 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2136)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2136!1 String)
(assert (= var2136!1 ""))
(assert true)
(define-const var2379 var2959 (getUnwrappedActualParameterTypes/1764911404 var266 var2680)) ; Statement: $r7 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: java.lang.Object getUnwrappedActualParameterTypes(java.lang.Object[])>(r1) 
(assert true)
(define-const var1282 String (append/-1031950772 var2136!1 var2379)) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2136!2 String)
(assert (str.prefixof var2136!1 var2136!2))
(assert true)
(define-const var1791 String (append/672562846 var1282 ".")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1282!1 String)
(assert (= var1282!1 (str.++ var1282 ".")))
(assert true)
(define-const var3061 String (toString/-2075883882 var1791)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1052 (Array Int var3341) (cast-from-var3341-to-__Array__Int__var3341__ var3442)) ; Statement: $r20 = (java.io.Serializable[]) $r13 
(declare-const var1052!1 (Array Int var3341))
(assert (not (= var1052!1 null-__Array__Int__var3341__)))
(assert (= (select var1052!1 1) (cast-from-String-to-var3341 var3061))) ; Statement: $r20[1] = $r10 
 ; Statement: goto [?= $r2[2] = $r13] 
(assert true) ; Non Conditional
(declare-const var170!3 (Array Int var2959))
(assert (not (= var170!3 null-__Array__Int__var2959__)))
(assert (= (select var170!3 2) (cast-from-var3341-to-var2959 var3442))) ; Statement: $r2[2] = $r13 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getUnwrappedArguments/1016106144=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object[]), arr-var2959-init=([], java.lang.Object[]), getErrorDescription/-65313640=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object), cast-from-String-to-var3341=([java.lang.String], java.io.Serializable), cast-from-var3341-to-var2959=([java.io.Serializable], java.lang.Object), cast-from-__Array__Int__var2959__-to-var3341=([java.lang.Object[]], java.io.Serializable), cast-from-var3341-to-__Array__Int__var3341__=([java.io.Serializable], java.io.Serializable[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getUnwrappedActualParameterTypes/1764911404=([freemarker.ext.beans.OverloadedMethods, java.lang.Object[]], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2847=freemarker.ext.beans.OverloadedMethods, var266=r6, var3788=freemarker.ext.beans.EmptyMemberAndArguments, var1996=r0, var797=java.util.List, var488=r4, var2959=java.lang.Object, var2680=r1, var170=$r2, var167=$r3, var3341=java.io.Serializable, var100=$r12, var3442=$r13, var3221=$r19, var2136=$r14, var2379=$r7, var1282=$r8, var1791=$r9, var3061=$r10, var1052=$r20}
; {freemarker.ext.beans.OverloadedMethods=var2847, r6=var266, freemarker.ext.beans.EmptyMemberAndArguments=var3788, r0=var1996, java.util.List=var797, r4=var488, java.lang.Object=var2959, r1=var2680, $r2=var170, $r3=var167, java.io.Serializable=var3341, $r12=var100, $r13=var3442, $r19=var3221, $r14=var2136, $r7=var2379, $r8=var1282, $r9=var1791, $r10=var3061, $r20=var1052}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.ext.beans.OverloadedMethods;	r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments;	r4 := @parameter1: java.util.List;	r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>();	$r2 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>();	$r2[0] = $r3;	if r4 == null goto $r12 = "";	$r12 = "";	$r2[1] = $r12;	if r1 == null goto $r13 = "";	$r13 = newarray (java.lang.Object)[2];	$r19 = (java.io.Serializable[]) $r13;	$r19[0] = "\nThe Java type of the argument values were: ";	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r7 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: java.lang.Object getUnwrappedActualParameterTypes(java.lang.Object[])>(r1);	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = (java.io.Serializable[]) $r13;	$r20[1] = $r10;	goto [?= $r2[2] = $r13];	$r2[2] = $r13;	return $r2
;block_num 5