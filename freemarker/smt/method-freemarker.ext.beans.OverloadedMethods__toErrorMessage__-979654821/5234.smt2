(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2411 0)
(declare-sort var250 0)
(declare-sort var3695 0)
(declare-sort var3136 0)
(declare-sort var2594 0)
(declare-sort var371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getUnwrappedArguments/1016106144 (var250) (Array Int var3136))
(declare-fun arr-var3136-init () (Array Int var3136))
(declare-fun getErrorDescription/-65313640 (var250) var3136)
(declare-fun cast-from-__Array__Int__var3136__-to-var2594 ((Array Int var3136)) var2594)
(declare-fun cast-from-var2594-to-__Array__Int__var2594__ (var2594) (Array Int var2594))
(declare-fun cast-from-String-to-var2594 (String) var2594)
(declare-fun getTMActualParameterTypes/1774738791 (var2411 var3695) var371)
(declare-fun cast-from-var371-to-var2594 (var371) var2594)
(declare-fun cast-from-var2594-to-var3136 (var2594) var3136)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getUnwrappedActualParameterTypes/1764911404 (var2411 (Array Int var3136)) var3136)
(declare-fun append/-1031950772 (String var3136) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2411 var2411)
(declare-const null-var250 var250)
(declare-const null-var3695 var3695)
(declare-const null-__Array__Int__var3136__ (Array Int var3136))
(declare-const null-__Array__Int__var2594__ (Array Int var2594))
(declare-const var1680 var2411) ; Statement: r6 := @this: freemarker.ext.beans.OverloadedMethods 
(assert (not (= var1680 null-var2411)))
(declare-const var3054 var250) ; Statement: r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments 
(assert (not (= var3054 null-var250)))
(declare-const var2253 var3695) ; Statement: r4 := @parameter1: java.util.List 
(assert (not (= var2253 null-var3695)))
(assert true)
(define-const var676 (Array Int var3136) (getUnwrappedArguments/1016106144 var3054)) ; Statement: r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>() 
(define-const var684 (Array Int var3136) arr-var3136-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var584 var3136 (getErrorDescription/-65313640 var3054)) ; Statement: $r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>() 
(declare-const var684!1 (Array Int var3136))
(assert (not (= var684!1 null-__Array__Int__var3136__)))
(assert (= (select var684!1 0) var584)) ; Statement: $r2[0] = $r3 
 ; Statement: if r4 == null goto $r12 = "" 
(assert (not (= var2253 null-var3695))) ; Negate: Cond: r4 == null  
(define-const var46 var2594 (cast-from-__Array__Int__var3136__-to-var2594 arr-var3136-init)) ; Statement: $r12 = newarray (java.lang.Object)[3] 
(define-const var1245 (Array Int var2594) (cast-from-var2594-to-__Array__Int__var2594__ var46)) ; Statement: $r15 = (java.io.Serializable[]) $r12 
(declare-const var1245!1 (Array Int var2594))
(assert (not (= var1245!1 null-__Array__Int__var2594__)))
(assert (= (select var1245!1 0) (cast-from-String-to-var2594 "\nThe FTL type of the argument values were: "))) ; Statement: $r15[0] = "\nThe FTL type of the argument values were: " 
(assert true)
(define-const var3390 var371 (getTMActualParameterTypes/1774738791 var1680 var2253)) ; Statement: $r11 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: freemarker.core._DelayedConversionToString getTMActualParameterTypes(java.util.List)>(r4) 
(define-const var301 (Array Int var2594) (cast-from-var2594-to-__Array__Int__var2594__ var46)) ; Statement: $r16 = (java.io.Serializable[]) $r12 
(define-const var1929 var2594 (cast-from-var371-to-var2594 var3390)) ; Statement: $r17 = (java.io.Serializable) $r11 
(declare-const var301!1 (Array Int var2594))
(assert (not (= var301!1 null-__Array__Int__var2594__)))
(assert (= (select var301!1 1) var1929)) ; Statement: $r16[1] = $r17 
(define-const var2600 (Array Int var2594) (cast-from-var2594-to-__Array__Int__var2594__ var46)) ; Statement: $r18 = (java.io.Serializable[]) $r12 
(declare-const var2600!1 (Array Int var2594))
(assert (not (= var2600!1 null-__Array__Int__var2594__)))
(assert (= (select var2600!1 2) (cast-from-String-to-var2594 "."))) ; Statement: $r18[2] = "." 
 ; Statement: goto [?= $r2[1] = $r12] 
(assert true) ; Non Conditional
(declare-const var684!2 (Array Int var3136))
(assert (not (= var684!2 null-__Array__Int__var3136__)))
(assert (= (select var684!2 1) (cast-from-var2594-to-var3136 var46))) ; Statement: $r2[1] = $r12 
 ; Statement: if r1 == null goto $r13 = "" 
(assert (not (= var676 null-__Array__Int__var3136__))) ; Negate: Cond: r1 == null  
(define-const var894 var2594 (cast-from-__Array__Int__var3136__-to-var2594 arr-var3136-init)) ; Statement: $r13 = newarray (java.lang.Object)[2] 
(define-const var1126 (Array Int var2594) (cast-from-var2594-to-__Array__Int__var2594__ var894)) ; Statement: $r19 = (java.io.Serializable[]) $r13 
(declare-const var1126!1 (Array Int var2594))
(assert (not (= var1126!1 null-__Array__Int__var2594__)))
(assert (= (select var1126!1 0) (cast-from-String-to-var2594 "\nThe Java type of the argument values were: "))) ; Statement: $r19[0] = "\nThe Java type of the argument values were: " 
(define-const var117 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var117)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var117!1 String)
(assert (= var117!1 ""))
(assert true)
(define-const var2539 var3136 (getUnwrappedActualParameterTypes/1764911404 var1680 var676)) ; Statement: $r7 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: java.lang.Object getUnwrappedActualParameterTypes(java.lang.Object[])>(r1) 
(assert true)
(define-const var465 String (append/-1031950772 var117!1 var2539)) ; Statement: $r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var117!2 String)
(assert (str.prefixof var117!1 var117!2))
(assert true)
(define-const var2566 String (append/672562846 var465 ".")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var465!1 String)
(assert (= var465!1 (str.++ var465 ".")))
(assert true)
(define-const var1220 String (toString/-2075883882 var2566)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1818 (Array Int var2594) (cast-from-var2594-to-__Array__Int__var2594__ var894)) ; Statement: $r20 = (java.io.Serializable[]) $r13 
(declare-const var1818!1 (Array Int var2594))
(assert (not (= var1818!1 null-__Array__Int__var2594__)))
(assert (= (select var1818!1 1) (cast-from-String-to-var2594 var1220))) ; Statement: $r20[1] = $r10 
 ; Statement: goto [?= $r2[2] = $r13] 
(assert true) ; Non Conditional
(declare-const var684!3 (Array Int var3136))
(assert (not (= var684!3 null-__Array__Int__var3136__)))
(assert (= (select var684!3 2) (cast-from-var2594-to-var3136 var894))) ; Statement: $r2[2] = $r13 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getUnwrappedArguments/1016106144=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object[]), arr-var3136-init=([], java.lang.Object[]), getErrorDescription/-65313640=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object), cast-from-__Array__Int__var3136__-to-var2594=([java.lang.Object[]], java.io.Serializable), cast-from-var2594-to-__Array__Int__var2594__=([java.io.Serializable], java.io.Serializable[]), cast-from-String-to-var2594=([java.lang.String], java.io.Serializable), getTMActualParameterTypes/1774738791=([freemarker.ext.beans.OverloadedMethods, java.util.List], freemarker.core._DelayedConversionToString), cast-from-var371-to-var2594=([freemarker.core._DelayedConversionToString], java.io.Serializable), cast-from-var2594-to-var3136=([java.io.Serializable], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getUnwrappedActualParameterTypes/1764911404=([freemarker.ext.beans.OverloadedMethods, java.lang.Object[]], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2411=freemarker.ext.beans.OverloadedMethods, var1680=r6, var250=freemarker.ext.beans.EmptyMemberAndArguments, var3054=r0, var3695=java.util.List, var2253=r4, var3136=java.lang.Object, var676=r1, var684=$r2, var584=$r3, var2594=java.io.Serializable, var46=$r12, var1245=$r15, var371=freemarker.core._DelayedConversionToString, var3390=$r11, var301=$r16, var1929=$r17, var2600=$r18, var894=$r13, var1126=$r19, var117=$r14, var2539=$r7, var465=$r8, var2566=$r9, var1220=$r10, var1818=$r20}
; {freemarker.ext.beans.OverloadedMethods=var2411, r6=var1680, freemarker.ext.beans.EmptyMemberAndArguments=var250, r0=var3054, java.util.List=var3695, r4=var2253, java.lang.Object=var3136, r1=var676, $r2=var684, $r3=var584, java.io.Serializable=var2594, $r12=var46, $r15=var1245, freemarker.core._DelayedConversionToString=var371, $r11=var3390, $r16=var301, $r17=var1929, $r18=var2600, $r13=var894, $r19=var1126, $r14=var117, $r7=var2539, $r8=var465, $r9=var2566, $r10=var1220, $r20=var1818}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.ext.beans.OverloadedMethods;	r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments;	r4 := @parameter1: java.util.List;	r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>();	$r2 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>();	$r2[0] = $r3;	if r4 == null goto $r12 = "";	$r12 = newarray (java.lang.Object)[3];	$r15 = (java.io.Serializable[]) $r12;	$r15[0] = "\nThe FTL type of the argument values were: ";	$r11 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: freemarker.core._DelayedConversionToString getTMActualParameterTypes(java.util.List)>(r4);	$r16 = (java.io.Serializable[]) $r12;	$r17 = (java.io.Serializable) $r11;	$r16[1] = $r17;	$r18 = (java.io.Serializable[]) $r12;	$r18[2] = ".";	goto [?= $r2[1] = $r12];	$r2[1] = $r12;	if r1 == null goto $r13 = "";	$r13 = newarray (java.lang.Object)[2];	$r19 = (java.io.Serializable[]) $r13;	$r19[0] = "\nThe Java type of the argument values were: ";	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r7 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: java.lang.Object getUnwrappedActualParameterTypes(java.lang.Object[])>(r1);	$r8 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = (java.io.Serializable[]) $r13;	$r20[1] = $r10;	goto [?= $r2[2] = $r13];	$r2[2] = $r13;	return $r2
;block_num 5