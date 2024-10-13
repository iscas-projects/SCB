(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun escapeChar/-1579571732 (var944) String)
(declare-fun text/-1579571732 (var944) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var944 var944)
(declare-const var798 var944) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Text 
(assert (not (= var798 null-var944)))
(define-const var1667 String (escapeChar/-1579571732 var798)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.String escapeChar> 
(define-const var2393 String (text/-1579571732 var798)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text> 
(assert true)
(define-const var1293 String (toString/-2075883882 var2393)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var50 String (str.++ "\u0001\u0001" var1667 var1293)) ; Statement: $r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r2, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {escapeChar/-1579571732=([com.github.jknack.handlebars.internal.Text], java.lang.String), text/-1579571732=([com.github.jknack.handlebars.internal.Text], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var944=com.github.jknack.handlebars.internal.Text, var798=r0, var1667=$r2, var2393=$r1, var1293=$r3, var50=$r4}
; {com.github.jknack.handlebars.internal.Text=var944, r0=var798, $r2=var1667, $r1=var2393, $r3=var1293, $r4=var50}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Text;	$r2 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.String escapeChar>;	$r1 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r2, $r3) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	return $r4
;block_num 1