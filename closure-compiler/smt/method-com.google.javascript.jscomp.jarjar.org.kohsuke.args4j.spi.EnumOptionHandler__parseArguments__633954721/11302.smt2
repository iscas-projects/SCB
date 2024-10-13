(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var954 0)
(declare-sort var2567 0)
(declare-sort var472 0)
(declare-sort var3182 0)
(declare-sort var2665 0)
(declare-sort var747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2567_getParameter/-363839198 (var2567 Int) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun enumType/-813887360 (var954) ClassObject)
(declare-fun getEnumConstants/1422352872 (ClassObject) (Array Int var3182))
(declare-fun cast-from-__Array__Int__var3182__-to-__Array__Int__var472__ ((Array Int var3182)) (Array Int var472))
(declare-fun getLength-Arr-var472-1 ((Array Int var472)) Int)
(declare-fun setter/338944513 (var747) var2665)
(declare-fun cast-from-var954-to-var747 (var954) var747)
(declare-fun var2665_addValue/-1173879279 (var2665 var3182) void)
(declare-fun cast-from-var472-to-var3182 (var472) var3182)
(declare-const null-var954 var954)
(declare-const null-var2567 var2567)
(declare-const null-var472 var472)
(declare-const var546 var954) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler 
(assert (not (= var546 null-var954)))
(declare-const var2277 var2567) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters 
(assert (not (= var2277 null-var2567)))
(define-const var756 String (var2567_getParameter/-363839198 var2277 0)) ; Statement: $r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters: java.lang.String getParameter(int)>(0) 
(assert true)
(define-const var142 String (replaceAll/1692887130 var756 "-" "_")) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("-", "_") 
(assert (= (replaceAll/1692887130 var756 "-" "_") (str.replace_re_all var756 (str.to_re "-") "_")))
(define-const var3537 var472 null-var472) ; Statement: r22 = null 
(define-const var2047 ClassObject (enumType/-813887360 var546)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: java.lang.Class enumType> 
(assert true)
(define-const var2566 (Array Int var3182) (getEnumConstants/1422352872 var2047)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.Object[] getEnumConstants()>() 
(define-const var1112 (Array Int var472) (cast-from-__Array__Int__var3182__-to-__Array__Int__var472__ var2566)) ; Statement: r6 = (java.lang.Enum[]) $r5 
(define-const var1983 Int (getLength-Arr-var472-1 var1112)) ; Statement: i0 = lengthof r6 
(define-const var2351 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto (branch) 
(assert (>= var2351 var1983)) ; Cond: i1 >= i0 
 ; Statement: if r22 != null goto $r7 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter setter> 
(assert (not (= var3537 null-var472))) ; Cond: r22 != null 
(define-const var3229 var2665 (setter/338944513 (cast-from-var954-to-var747 var546))) ; Statement: $r7 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter setter> 
;(assert (var2665_addValue/-1173879279 var3229 (cast-from-var472-to-var3182 var3537))) ; Statement: interfaceinvoke $r7.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter: void addValue(java.lang.Object)>(r22) 

(declare-const var3229!1 var2665)
(declare-const var3537!1 var472)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2567_getParameter/-363839198=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters, int], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), enumType/-813887360=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler], java.lang.Class), getEnumConstants/1422352872=([java.lang.Class], java.lang.Object[]), cast-from-__Array__Int__var3182__-to-__Array__Int__var472__=([java.lang.Object[]], java.lang.Enum[]), getLength-Arr-var472-1=([java.lang.Enum[]], int), setter/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter), cast-from-var954-to-var747=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler), var2665_addValue/-1173879279=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter, java.lang.Object], void), cast-from-var472-to-var3182=([java.lang.Enum], java.lang.Object)}
; {var954=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler, var546=r3, var2567=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters, var2277=r0, var756=$r1, var142=r2, var472=java.lang.Enum, var3537=r22, var2047=$r4, var3182=java.lang.Object, var2566=$r5, var1112=r6, var1983=i0, var2351=i1, var2665=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter, var747=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var3229=$r7}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler=var954, r3=var546, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters=var2567, r0=var2277, $r1=var756, r2=var142, java.lang.Enum=var472, r22=var3537, $r4=var2047, java.lang.Object=var3182, $r5=var2566, r6=var1112, i0=var1983, i1=var2351, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter=var2665, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var747, $r7=var3229}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters;	$r1 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Parameters: java.lang.String getParameter(int)>(0);	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("-", "_");	r22 = null;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: java.lang.Class enumType>;	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.Object[] getEnumConstants()>();	r6 = (java.lang.Enum[]) $r5;	i0 = lengthof r6;	i1 = 0;	if i1 >= i0 goto (branch);	if r22 != null goto $r7 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter setter>;	$r7 = r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.EnumOptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter setter>;	interfaceinvoke $r7.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.Setter: void addValue(java.lang.Object)>(r22);	return 1
;block_num 4