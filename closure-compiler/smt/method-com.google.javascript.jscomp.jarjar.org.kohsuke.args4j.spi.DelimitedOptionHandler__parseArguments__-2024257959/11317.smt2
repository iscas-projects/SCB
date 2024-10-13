(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var2019 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2019_getParameter/-363839198 (var2019 Int) String)
(declare-fun delimiter/-1759625168 (var1287) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1287 var1287)
(declare-const null-var2019 var2019)
(declare-const var3705 var1287) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.DelimitedOptionHandler 
(assert (not (= var3705 null-var1287)))
(declare-const var3540 var2019) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters 
(assert (not (= var3540 null-var2019)))
(define-const var314 String (var2019_getParameter/-363839198 var3540 0)) ; Statement: r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters: java.lang.String getParameter(int)>(0) 
(define-const var3138 String (delimiter/-1759625168 var3705)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.DelimitedOptionHandler: java.lang.String delimiter> 
(assert true)
(define-const var3894 (Array Int String) (split/-636890950 var314 var3138)) ; Statement: r4 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>($r3) 
(define-const var3358 Int (getLength-Arr-String-1 var3894)) ; Statement: i0 = lengthof r4 
(define-const var135 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 1 
(assert (>= var135 var3358)) ; Cond: i1 >= i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2019_getParameter/-363839198=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters, int], java.lang.String), delimiter/-1759625168=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.DelimitedOptionHandler], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1287=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.DelimitedOptionHandler, var3705=r2, var2019=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters, var3540=r0, var314=r1, var3138=$r3, var3894=r4, var3358=i0, var135=i1}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.DelimitedOptionHandler=var1287, r2=var3705, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters=var2019, r0=var3540, r1=var314, $r3=var3138, r4=var3894, i0=var3358, i1=var135}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.DelimitedOptionHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters;	r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters: java.lang.String getParameter(int)>(0);	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.DelimitedOptionHandler: java.lang.String delimiter>;	r4 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>($r3);	i0 = lengthof r4;	i1 = 0;	if i1 >= i0 goto return 1;	return 1
;block_num 3