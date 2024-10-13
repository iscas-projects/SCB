(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2985 0)
(declare-sort var298 0)
(declare-sort var340 0)
(declare-sort var3673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3673-init () var3673)
(declare-fun <init>/-1341314105 (var3673 var2985 String var298) void)
(declare-const null-var2985 var2985)
(declare-const null-var298 var298)
(declare-const null-var340 var340)
(declare-const var3742 var2985) ; Statement: r2 := @this: freemarker.template.utility.NormalizeNewlines 
(assert (not (= var3742 null-var2985)))
(declare-const var1343 var298) ; Statement: r3 := @parameter0: java.io.Writer 
(assert (not (= var1343 null-var298)))
(declare-const var2853 var340) ; Statement: r4 := @parameter1: java.util.Map 
(assert (not (= var2853 null-var340)))
(define-const var1434 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1434)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1434!1 String)
(assert (= var1434!1 ""))
(define-const var2068 var3673 var3673-init) ; Statement: $r1 = new freemarker.template.utility.NormalizeNewlines$1 
(assert true)
;(assert (<init>/-1341314105 var2068 var3742 var1434!1 var1343)) ; Statement: specialinvoke $r1.<freemarker.template.utility.NormalizeNewlines$1: void <init>(freemarker.template.utility.NormalizeNewlines,java.lang.StringBuilder,java.io.Writer)>(r2, $r0, r3) 

(declare-const var2068!1 var3673)
(declare-const var3742!1 var2985)
(declare-const var1434!2 String)
(declare-const var1343!1 var298)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3673-init=([], freemarker.template.utility.NormalizeNewlines$1), <init>/-1341314105=([freemarker.template.utility.NormalizeNewlines$1, freemarker.template.utility.NormalizeNewlines, java.lang.StringBuilder, java.io.Writer], void)}
; {var2985=freemarker.template.utility.NormalizeNewlines, var3742=r2, var298=java.io.Writer, var1343=r3, var340=java.util.Map, var2853=r4, var1434=$r0, var3673=freemarker.template.utility.NormalizeNewlines$1, var2068=$r1}
; {freemarker.template.utility.NormalizeNewlines=var2985, r2=var3742, java.io.Writer=var298, r3=var1343, java.util.Map=var340, r4=var2853, $r0=var1434, freemarker.template.utility.NormalizeNewlines$1=var3673, $r1=var2068}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r2 := @this: freemarker.template.utility.NormalizeNewlines;	r3 := @parameter0: java.io.Writer;	r4 := @parameter1: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new freemarker.template.utility.NormalizeNewlines$1;	specialinvoke $r1.<freemarker.template.utility.NormalizeNewlines$1: void <init>(freemarker.template.utility.NormalizeNewlines,java.lang.StringBuilder,java.io.Writer)>(r2, $r0, r3);	return $r1
;block_num 1