(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1968 0)
(declare-sort var1034 0)
(declare-sort var2048 0)
(declare-sort var2598 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2598-init () (Array Int var2598))
(declare-fun var2280_notNull/-1935316562 (var2598 String (Array Int var2598)) var2598)
(declare-fun cast-from-String-to-var2598 (String) var2598)
(declare-fun var2280_isTrue/-214704028 (Bool String (Array Int var2598)) void)
(declare-fun inverseLabel/-1738507346 (var1968) String)
(declare-fun cast-from-var2048-to-var2598 (var2048) var2598)
(declare-fun cast-from-var2598-to-var2048 (var2598) var2048)
(declare-fun inverse/-1738507346 (var1968) var2048)
(declare-const null-var1968 var1968)
(declare-const null-String String)
(declare-const null-var2048 var2048)
(declare-const var2423 var1968) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.Block 
(assert (not (= var2423 null-var1968)))
(declare-const var2 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2 null-String)))
(declare-const var2506 var2048) ; Statement: r5 := @parameter1: com.github.jknack.handlebars.Template 
(assert (not (= var2506 null-var2048)))
(define-const var1393 (Array Int var2598) arr-var2598-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2280_notNull/-1935316562 (cast-from-String-to-var2598 var2) "The inverseLabel can\u0027t be null." var1393)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "The inverseLabel can\'t be null.", $r1) 

(declare-const var2!1 String)
(declare-const var890 String)
(declare-const var1393!1 (Array Int var2598))
(assert true)
(define-const var2070 Bool (= var2!1 "^")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("^") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2070 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3359 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("The inverseLabel must be one of \'^\' or \'else\'. Found: \u0001")] 
(assert true) ; Non Conditional
(define-const var3834 String (str.++ "The inverseLabel must be one of \u0027^\u0027 or \u0027else\u0027. Found: \u0001" var2!1)) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("The inverseLabel must be one of \'^\' or \'else\'. Found: \u0001") 
(define-const var2933 (Array Int var2598) arr-var2598-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
;(assert (var2280_isTrue/-214704028 var3359 var3834 var2933)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z2, $r3, $r2) 

(declare-const var3359!1 Bool)
(declare-const var3834!1 String)
(declare-const var2933!1 (Array Int var2598))
(declare-const var2423!1 var1968)
(assert (not (= var2423!1 null-var1968)))
(assert (= (inverseLabel/-1738507346 var2423!1) var2!1)) ; Statement: r4.<com.github.jknack.handlebars.internal.Block: java.lang.String inverseLabel> = r0 
(define-const var1271 (Array Int var2598) arr-var2598-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
(define-const var3504 var2598 (var2280_notNull/-1935316562 (cast-from-var2048-to-var2598 var2506) "The inverse\u0027s template is required." var1271)) ; Statement: $r7 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r5, "The inverse\'s template is required.", $r6) 
(define-const var2868 var2048 (cast-from-var2598-to-var2048 var3504)) ; Statement: $r8 = (com.github.jknack.handlebars.Template) $r7 
(declare-const var2423!2 var1968)
(assert (not (= var2423!2 null-var1968)))
(assert (= (inverse/-1738507346 var2423!2) var2868)) ; Statement: r4.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.Template inverse> = $r8 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2598-init=([], java.lang.Object[]), var2280_notNull/-1935316562=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var2598=([java.lang.String], java.lang.Object), var2280_isTrue/-214704028=([boolean, java.lang.String, java.lang.Object[]], void), inverseLabel/-1738507346=([com.github.jknack.handlebars.internal.Block], java.lang.String), cast-from-var2048-to-var2598=([com.github.jknack.handlebars.Template], java.lang.Object), cast-from-var2598-to-var2048=([java.lang.Object], com.github.jknack.handlebars.Template), inverse/-1738507346=([com.github.jknack.handlebars.internal.Block], com.github.jknack.handlebars.Template)}
; {var1968=com.github.jknack.handlebars.internal.Block, var2423=r4, var2=r0, var1034=null_type, var2048=com.github.jknack.handlebars.Template, var2506=r5, var2598=java.lang.Object, var1393=$r1, var2280=org.apache.commons.lang3.Validate, var890="The inverseLabel can\'t be null.", var2070=$z0, var3359=$z2, var3834=$r3, var2933=$r2, var1271=$r6, var3504=$r7, var2868=$r8}
; {com.github.jknack.handlebars.internal.Block=var1968, r4=var2423, r0=var2, null_type=var1034, com.github.jknack.handlebars.Template=var2048, r5=var2506, java.lang.Object=var2598, $r1=var1393, org.apache.commons.lang3.Validate=var2280, "The inverseLabel can\'t be null."=var890, $z0=var2070, $z2=var3359, $r3=var3834, $r2=var2933, $r6=var1271, $r7=var3504, $r8=var2868}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.Block;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: com.github.jknack.handlebars.Template;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "The inverseLabel can\'t be null.", $r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("^");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("The inverseLabel must be one of \'^\' or \'else\'. Found: \u0001")];	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r0) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("The inverseLabel must be one of \'^\' or \'else\'. Found: \u0001");	$r2 = newarray (java.lang.Object)[0];	staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z2, $r3, $r2);	r4.<com.github.jknack.handlebars.internal.Block: java.lang.String inverseLabel> = r0;	$r6 = newarray (java.lang.Object)[0];	$r7 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r5, "The inverse\'s template is required.", $r6);	$r8 = (com.github.jknack.handlebars.Template) $r7;	r4.<com.github.jknack.handlebars.internal.Block: com.github.jknack.handlebars.Template inverse> = $r8;	return r4
;block_num 3