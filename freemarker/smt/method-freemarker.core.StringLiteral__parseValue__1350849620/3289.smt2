(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var55 0)
(declare-sort var1169 0)
(declare-sort var93 0)
(declare-sort var3094 0)
(declare-sort var451 0)
(declare-sort var542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTemplate/-542059899 (var451) var3094)
(declare-fun cast-from-var55-to-var451 (var55) var451)
(declare-fun getParserConfiguration/1590235140 (var3094) var542)
(declare-fun var542_getInterpolationSyntax/263273921 (var542) Int)
(declare-fun value/-515181449 (var55) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var55 var55)
(declare-const null-var1169 var1169)
(declare-const null-var93 var93)
(declare-const var2979 var55) ; Statement: r0 := @this: freemarker.core.StringLiteral 
(assert (not (= var2979 null-var55)))
(declare-const var1943 var1169) ; Statement: r5 := @parameter0: freemarker.core.FMParser 
(assert (not (= var1943 null-var1169)))
(declare-const var3343 var93) ; Statement: r6 := @parameter1: freemarker.core.OutputFormat 
(assert (not (= var3343 null-var93)))
(assert true)
(define-const var310 var3094 (getTemplate/-542059899 (cast-from-var55-to-var451 var2979))) ; Statement: r1 = virtualinvoke r0.<freemarker.core.StringLiteral: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var2254 var542 (getParserConfiguration/1590235140 var310)) ; Statement: r2 = virtualinvoke r1.<freemarker.template.Template: freemarker.core.ParserConfiguration getParserConfiguration()>() 
(define-const var1088 Int (var542_getInterpolationSyntax/263273921 var2254)) ; Statement: i0 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getInterpolationSyntax()>() 
(define-const var828 String (value/-515181449 var2979)) ; Statement: $r3 = r0.<freemarker.core.StringLiteral: java.lang.String value> 
(assert true)
(define-const var396 Int (length/-134980193 var828)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 3 goto return 
(assert (<= var396 3)) ; Cond: $i1 <= 3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var55-to-var451=([freemarker.core.StringLiteral], freemarker.core.TemplateObject), getParserConfiguration/1590235140=([freemarker.template.Template], freemarker.core.ParserConfiguration), var542_getInterpolationSyntax/263273921=([freemarker.core.ParserConfiguration], int), value/-515181449=([freemarker.core.StringLiteral], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var55=freemarker.core.StringLiteral, var2979=r0, var1169=freemarker.core.FMParser, var1943=r5, var93=freemarker.core.OutputFormat, var3343=r6, var3094=freemarker.template.Template, var451=freemarker.core.TemplateObject, var310=r1, var542=freemarker.core.ParserConfiguration, var2254=r2, var1088=i0, var828=$r3, var396=$i1}
; {freemarker.core.StringLiteral=var55, r0=var2979, freemarker.core.FMParser=var1169, r5=var1943, freemarker.core.OutputFormat=var93, r6=var3343, freemarker.template.Template=var3094, freemarker.core.TemplateObject=var451, r1=var310, freemarker.core.ParserConfiguration=var542, r2=var2254, i0=var1088, $r3=var828, $i1=var396}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.StringLiteral;	r5 := @parameter0: freemarker.core.FMParser;	r6 := @parameter1: freemarker.core.OutputFormat;	r1 = virtualinvoke r0.<freemarker.core.StringLiteral: freemarker.template.Template getTemplate()>();	r2 = virtualinvoke r1.<freemarker.template.Template: freemarker.core.ParserConfiguration getParserConfiguration()>();	i0 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getInterpolationSyntax()>();	$r3 = r0.<freemarker.core.StringLiteral: java.lang.String value>;	$i1 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i1 <= 3 goto return;	return
;block_num 2