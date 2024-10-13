(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/1492324974 (var1192) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun predIndex/1492324974 (var1192) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1192 var1192)
(declare-const var1769 var1192) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.SemanticContext$Predicate 
(assert (not (= var1769 null-var1192)))
(define-const var731 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var731)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var731!1 String)
(assert (= var731!1 ""))
(assert true)
(define-const var3210 String (append/672562846 var731!1 "{")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var731!2 String)
(assert (= var731!2 (str.++ var731!1 "{")))
(define-const var2465 Int (ruleIndex/1492324974 var1769)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.SemanticContext$Predicate: int ruleIndex> 
(assert true)
(define-const var3537 String (append/-1001720160 var3210 var2465)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3210!1 String)
(assert (str.prefixof var3210 var3210!1))
(assert true)
(define-const var1136 String (append/672562846 var3537 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3537!1 String)
(assert (= var3537!1 (str.++ var3537 ":")))
(define-const var2406 Int (predIndex/1492324974 var1769)) ; Statement: $i1 = r1.<org.antlr.v4.runtime.atn.SemanticContext$Predicate: int predIndex> 
(assert true)
(define-const var3410 String (append/-1001720160 var1136 var2406)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1136!1 String)
(assert (str.prefixof var1136 var1136!1))
(assert true)
(define-const var2302 String (append/672562846 var3410 "}?")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}?") 
(declare-const var3410!1 String)
(assert (= var3410!1 (str.++ var3410 "}?")))
(assert true)
(define-const var602 String (toString/-2075883882 var2302)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/1492324974=([org.antlr.v4.runtime.atn.SemanticContext$Predicate], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), predIndex/1492324974=([org.antlr.v4.runtime.atn.SemanticContext$Predicate], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1192=org.antlr.v4.runtime.atn.SemanticContext$Predicate, var1769=r1, var731=$r0, var3210=$r2, var2465=$i0, var3537=$r3, var1136=$r4, var2406=$i1, var3410=$r5, var2302=$r6, var602=$r7}
; {org.antlr.v4.runtime.atn.SemanticContext$Predicate=var1192, r1=var1769, $r0=var731, $r2=var3210, $i0=var2465, $r3=var3537, $r4=var1136, $i1=var2406, $r5=var3410, $r6=var2302, $r7=var602}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.SemanticContext$Predicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$i0 = r1.<org.antlr.v4.runtime.atn.SemanticContext$Predicate: int ruleIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<org.antlr.v4.runtime.atn.SemanticContext$Predicate: int predIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}?");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1