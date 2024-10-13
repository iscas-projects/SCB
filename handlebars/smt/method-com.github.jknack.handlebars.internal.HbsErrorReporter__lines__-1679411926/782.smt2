(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3293 0)
(declare-sort var3723 0)
(declare-sort var1843 0)
(declare-sort var276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInputStream/1878812050 (var3723) var1843)
(declare-fun toString/-522406933 (var276) String)
(declare-fun cast-from-var1843-to-var276 (var1843) var276)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-const null-var3293 var3293)
(declare-const null-var3723 var3723)
(declare-const var1204 var3293) ; Statement: r6 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter 
(assert (not (= var1204 null-var3293)))
(declare-const var3658 var3723) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var3658 null-var3723)))
(assert true)
(define-const var1461 var1843 (getInputStream/1878812050 var3658)) ; Statement: r7 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Recognizer: com.github.jknack.handlebars.internal.antlr.IntStream getInputStream()>() 
(define-const var1041 Bool true) ; Statement: $z0 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CommonTokenStream 
 ; Statement: if $z0 == 0 goto $z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream 
(assert (= (ite var1041 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1231 Bool true) ; Statement: $z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream 
 ; Statement: if $z1 == 0 goto r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var1231 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2077 String (toString/-522406933 (cast-from-var1843-to-var276 var1461))) ; Statement: r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1857 (Array Int String) (split/-636890950 var2077 "\n")) ; Statement: $r3 = virtualinvoke r8.<java.lang.String: java.lang.String[] split(java.lang.String)>("\n") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2077 "\n") i) (re.++ (re.* re.all) (str.to_re "\u{005c}u{000a}") (re.* re.all))))))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getInputStream/1878812050=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.IntStream), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1843-to-var276=([com.github.jknack.handlebars.internal.antlr.IntStream], java.lang.Object), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[])}
; {var3293=com.github.jknack.handlebars.internal.HbsErrorReporter, var1204=r6, var3723=com.github.jknack.handlebars.internal.antlr.Recognizer, var3658=r0, var1843=com.github.jknack.handlebars.internal.antlr.IntStream, var1461=r7, var1041=$z0, var1231=$z1, var276=java.lang.Object, var2077=r8, var1857=$r3}
; {com.github.jknack.handlebars.internal.HbsErrorReporter=var3293, r6=var1204, com.github.jknack.handlebars.internal.antlr.Recognizer=var3723, r0=var3658, com.github.jknack.handlebars.internal.antlr.IntStream=var1843, r7=var1461, $z0=var1041, $z1=var1231, java.lang.Object=var276, r8=var2077, $r3=var1857}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	r7 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Recognizer: com.github.jknack.handlebars.internal.antlr.IntStream getInputStream()>();	$z0 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CommonTokenStream;	if $z0 == 0 goto $z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream;	$z1 = r7 instanceof com.github.jknack.handlebars.internal.antlr.CharStream;	if $z1 == 0 goto r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>();	r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke r8.<java.lang.String: java.lang.String[] split(java.lang.String)>("\n");	return $r3
;block_num 4