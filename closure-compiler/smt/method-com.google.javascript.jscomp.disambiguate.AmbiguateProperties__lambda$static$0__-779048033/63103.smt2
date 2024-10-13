(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun numOccurrences/443045891 (var1319) Int)
(declare-fun oldName/443045891 (var1319) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1319 var1319)
(declare-const var1008 var1319) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property 
(assert (not (= var1008 null-var1319)))
(declare-const var3361 var1319) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property 
(assert (not (= var3361 null-var1319)))
(define-const var2596 Int (numOccurrences/443045891 var1008)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: int numOccurrences> 
(define-const var2650 Int (numOccurrences/443045891 var3361)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: int numOccurrences> 
 ; Statement: if $i1 == $i0 goto $r3 = r0.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: java.lang.String oldName> 
(assert (= var2596 var2650)) ; Cond: $i1 == $i0 
(define-const var2308 String (oldName/443045891 var1008)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: java.lang.String oldName> 
(define-const var1994 String (oldName/443045891 var3361)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: java.lang.String oldName> 
(assert true)
(define-const var939 Int (compareTo/1411385946 var2308 var1994)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2308 var1994)) (this<=other (str.<= var2308 var1994)) (compareRes (compareTo/1411385946 var2308 var1994))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {numOccurrences/443045891=([com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property], int), oldName/443045891=([com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1319=com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property, var1008=r0, var3361=r1, var2596=$i1, var2650=$i0, var2308=$r3, var1994=$r2, var939=$i2}
; {com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property=var1319, r0=var1008, r1=var3361, $i1=var2596, $i0=var2650, $r3=var2308, $r2=var1994, $i2=var939}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property;	r1 := @parameter1: com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property;	$i1 = r0.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: int numOccurrences>;	$i0 = r1.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: int numOccurrences>;	if $i1 == $i0 goto $r3 = r0.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: java.lang.String oldName>;	$r3 = r0.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: java.lang.String oldName>;	$r2 = r1.<com.google.javascript.jscomp.disambiguate.AmbiguateProperties$Property: java.lang.String oldName>;	$i2 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i2
;block_num 2