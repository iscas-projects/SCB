(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var328 0)
(declare-sort var3227 0)
(declare-sort var1182 0)
(declare-sort var1887 0)
(declare-sort var1352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1887_getCurrentEnvironment/-1977882473 () var1887)
(declare-fun var1352-init () var1352)
(declare-fun <init>/-683087673 (var1352 var328 String var3227 var1887) void)
(declare-const null-var328 var328)
(declare-const null-var3227 var3227)
(declare-const null-var1182 var1182)
(declare-const var3922 var328) ; Statement: r3 := @this: freemarker.template.utility.JythonRuntime 
(assert (not (= var3922 null-var328)))
(declare-const var3703 var3227) ; Statement: r4 := @parameter0: java.io.Writer 
(assert (not (= var3703 null-var3227)))
(declare-const var2624 var1182) ; Statement: r5 := @parameter1: java.util.Map 
(assert (not (= var2624 null-var1182)))
(define-const var290 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var290)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var290!1 String)
(assert (= var290!1 ""))
(define-const var1085 var1887 var1887_getCurrentEnvironment/-1977882473) ; Statement: r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>() 
(define-const var1595 var1352 var1352-init) ; Statement: $r2 = new freemarker.template.utility.JythonRuntime$1 
(assert true)
;(assert (<init>/-683087673 var1595 var3922 var290!1 var3703 var1085)) ; Statement: specialinvoke $r2.<freemarker.template.utility.JythonRuntime$1: void <init>(freemarker.template.utility.JythonRuntime,java.lang.StringBuilder,java.io.Writer,freemarker.core.Environment)>(r3, $r0, r4, r1) 

(declare-const var1595!1 var1352)
(declare-const var3922!1 var328)
(declare-const var290!2 String)
(declare-const var3703!1 var3227)
(declare-const var1085!1 var1887)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1887_getCurrentEnvironment/-1977882473=([], freemarker.core.Environment), var1352-init=([], freemarker.template.utility.JythonRuntime$1), <init>/-683087673=([freemarker.template.utility.JythonRuntime$1, freemarker.template.utility.JythonRuntime, java.lang.StringBuilder, java.io.Writer, freemarker.core.Environment], void)}
; {var328=freemarker.template.utility.JythonRuntime, var3922=r3, var3227=java.io.Writer, var3703=r4, var1182=java.util.Map, var2624=r5, var290=$r0, var1887=freemarker.core.Environment, var1085=r1, var1352=freemarker.template.utility.JythonRuntime$1, var1595=$r2}
; {freemarker.template.utility.JythonRuntime=var328, r3=var3922, java.io.Writer=var3227, r4=var3703, java.util.Map=var1182, r5=var2624, $r0=var290, freemarker.core.Environment=var1887, r1=var1085, freemarker.template.utility.JythonRuntime$1=var1352, $r2=var1595}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r3 := @this: freemarker.template.utility.JythonRuntime;	r4 := @parameter0: java.io.Writer;	r5 := @parameter1: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = staticinvoke <freemarker.core.Environment: freemarker.core.Environment getCurrentEnvironment()>();	$r2 = new freemarker.template.utility.JythonRuntime$1;	specialinvoke $r2.<freemarker.template.utility.JythonRuntime$1: void <init>(freemarker.template.utility.JythonRuntime,java.lang.StringBuilder,java.io.Writer,freemarker.core.Environment)>(r3, $r0, r4, r1);	return $r2
;block_num 1