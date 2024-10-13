(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3841 0)
(declare-sort var2049 0)
(declare-sort var3935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2049_size/-959786421 (var2049) Int)
(declare-fun var3935-init () var3935)
(declare-fun <init>/-286431950 (var3935 String) void)
(declare-const null-var3841 var3841)
(declare-const null-var2049 var2049)
(declare-const var2095 var3841) ; Statement: r18 := @this: freemarker.template.utility.Execute 
(assert (not (= var2095 null-var3841)))
(declare-const var2386 var2049) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var2386 null-var2049)))
(define-const var3700 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3700)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3700!1 String)
(assert (= var3700!1 ""))
(define-const var1575 Int (var2049_size/-959786421 var2386)) ; Statement: $i0 = interfaceinvoke r1.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 1 goto $r2 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0) 
(assert (not (>= var1575 1))) ; Negate: Cond: $i0 >= 1  
(define-const var3595 var3935 var3935-init) ; Statement: $r10 = new freemarker.template.TemplateModelException 
(assert true)
;(assert (<init>/-286431950 var3595 "Need an argument to execute")) ; Statement: specialinvoke $r10.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>("Need an argument to execute") 

(declare-const var3595!1 var3935)
(declare-const var347 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2049_size/-959786421=([java.util.List], int), var3935-init=([], freemarker.template.TemplateModelException), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var3841=freemarker.template.utility.Execute, var2095=r18, var2049=java.util.List, var2386=r1, var3700=$r0, var1575=$i0, var3935=freemarker.template.TemplateModelException, var3595=$r10, var347="Need an argument to execute"}
; {freemarker.template.utility.Execute=var3841, r18=var2095, java.util.List=var2049, r1=var2386, $r0=var3700, $i0=var1575, freemarker.template.TemplateModelException=var3935, $r10=var3595, "Need an argument to execute"=var347}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r18 := @this: freemarker.template.utility.Execute;	r1 := @parameter0: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = interfaceinvoke r1.<java.util.List: int size()>();	if $i0 >= 1 goto $r2 = interfaceinvoke r1.<java.util.List: java.lang.Object get(int)>(0);	$r10 = new freemarker.template.TemplateModelException;	specialinvoke $r10.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>("Need an argument to execute");	throw $r10
;block_num 2