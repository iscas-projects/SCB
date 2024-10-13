(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2189 0)
(declare-sort var1478 0)
(declare-sort var3031 0)
(declare-sort var1439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3031-init () (Array Int var3031))
(declare-fun var1439_notNull/-1935316562 (var3031 String (Array Int var3031)) var3031)
(declare-fun cast-from-String-to-var3031 (String) var3031)
(declare-fun cast-from-var3031-to-String (var3031) String)
(declare-fun prefix/1282794213 (var2189) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var2189 var2189)
(declare-const null-String String)
(declare-const var1013 var2189) ; Statement: r0 := @this: com.github.jknack.handlebars.io.AbstractTemplateLoader 
(assert (not (= var1013 null-var2189)))
(declare-const var137 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var137 null-String)))
(define-const var351 (Array Int var3031) arr-var3031-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var1231 var3031 (var1439_notNull/-1935316562 (cast-from-String-to-var3031 var137) "A view prefix is required." var351)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "A view prefix is required.", $r2) 
(define-const var3193 String (cast-from-var3031-to-String var1231)) ; Statement: $r4 = (java.lang.String) $r3 
(declare-const var1013!1 var2189)
(assert (not (= var1013!1 null-var2189)))
(assert (= (prefix/1282794213 var1013!1) var3193)) ; Statement: r0.<com.github.jknack.handlebars.io.AbstractTemplateLoader: java.lang.String prefix> = $r4 
(define-const var1509 String (prefix/1282794213 var1013!1)) ; Statement: $r5 = r0.<com.github.jknack.handlebars.io.AbstractTemplateLoader: java.lang.String prefix> 
(assert true)
(define-const var772 Bool (endsWith/985337093 var1509 "/")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var772 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3031-init=([], java.lang.Object[]), var1439_notNull/-1935316562=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3031=([java.lang.String], java.lang.Object), cast-from-var3031-to-String=([java.lang.Object], java.lang.String), prefix/1282794213=([com.github.jknack.handlebars.io.AbstractTemplateLoader], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var2189=com.github.jknack.handlebars.io.AbstractTemplateLoader, var1013=r0, var137=r1, var1478=null_type, var3031=java.lang.Object, var351=$r2, var1439=org.apache.commons.lang3.Validate, var1231=$r3, var3193=$r4, var1509=$r5, var772=$z0}
; {com.github.jknack.handlebars.io.AbstractTemplateLoader=var2189, r0=var1013, r1=var137, null_type=var1478, java.lang.Object=var3031, $r2=var351, org.apache.commons.lang3.Validate=var1439, $r3=var1231, $r4=var3193, $r5=var1509, $z0=var772}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.io.AbstractTemplateLoader;	r1 := @parameter0: java.lang.String;	$r2 = newarray (java.lang.Object)[0];	$r3 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r1, "A view prefix is required.", $r2);	$r4 = (java.lang.String) $r3;	r0.<com.github.jknack.handlebars.io.AbstractTemplateLoader: java.lang.String prefix> = $r4;	$r5 = r0.<com.github.jknack.handlebars.io.AbstractTemplateLoader: java.lang.String prefix>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 != 0 goto return;	return
;block_num 2