(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3224 0)
(declare-sort var3142 0)
(declare-sort var701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-1579571732 (var3224) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun write/654681022 (var701 String) void)
(declare-const null-var3224 var3224)
(declare-const null-var3142 var3142)
(declare-const null-var701 var701)
(declare-const var525 var3224) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.Text 
(assert (not (= var525 null-var3224)))
(declare-const var2707 var3142) ; Statement: r4 := @parameter0: com.github.jknack.handlebars.Context 
(assert (not (= var2707 null-var3142)))
(declare-const var3513 var701) ; Statement: r0 := @parameter1: java.io.Writer 
(assert (not (= var3513 null-var701)))
(define-const var2977 String (text/-1579571732 var525)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text> 
(assert true)
(define-const var2513 String (toString/-2075883882 var2977)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (write/654681022 var3513 var2513)) ; Statement: virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r3) 

(declare-const var3513!1 var701)
(declare-const var2513!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-1579571732=([com.github.jknack.handlebars.internal.Text], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void)}
; {var3224=com.github.jknack.handlebars.internal.Text, var525=r1, var3142=com.github.jknack.handlebars.Context, var2707=r4, var701=java.io.Writer, var3513=r0, var2977=$r2, var2513=$r3}
; {com.github.jknack.handlebars.internal.Text=var3224, r1=var525, com.github.jknack.handlebars.Context=var3142, r4=var2707, java.io.Writer=var701, r0=var3513, $r2=var2977, $r3=var2513}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.Text;	r4 := @parameter0: com.github.jknack.handlebars.Context;	r0 := @parameter1: java.io.Writer;	$r2 = r1.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r3);	return
;block_num 1