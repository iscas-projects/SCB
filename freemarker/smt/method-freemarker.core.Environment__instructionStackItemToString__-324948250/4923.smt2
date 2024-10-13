(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var769 0)
(declare-sort var2783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2783_appendInstructionStackItem/-2121079601 (var769 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var769 var769)
(declare-const var3342 var769) ; Statement: r1 := @parameter0: freemarker.core.TemplateElement 
(assert (not (= var3342 null-var769)))
(define-const var1729 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1729)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1729!1 String)
(assert (= var1729!1 ""))
;(assert (var2783_appendInstructionStackItem/-2121079601 var3342 var1729!1)) ; Statement: staticinvoke <freemarker.core.Environment: void appendInstructionStackItem(freemarker.core.TemplateElement,java.lang.StringBuilder)>(r1, $r0) 

(declare-const var3342!1 var769)
(declare-const var1729!2 String)
(assert true)
(define-const var750 String (toString/-2075883882 var1729!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2783_appendInstructionStackItem/-2121079601=([freemarker.core.TemplateElement, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var769=freemarker.core.TemplateElement, var3342=r1, var1729=$r0, var2783=freemarker.core.Environment, var750=$r2}
; {freemarker.core.TemplateElement=var769, r1=var3342, $r0=var1729, freemarker.core.Environment=var2783, $r2=var750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: freemarker.core.TemplateElement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <freemarker.core.Environment: void appendInstructionStackItem(freemarker.core.TemplateElement,java.lang.StringBuilder)>(r1, $r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1