(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1513 0)
(declare-sort var3629 0)
(declare-sort var1946 0)
(declare-sort var1625 0)
(declare-sort var2201 0)
(declare-sort var764 0)
(declare-sort var81 0)
(declare-sort var1193 0)
(declare-sort var2340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var1513 Int) var3629)
(declare-fun token_source/-1475596563 (var1513) var1946)
(declare-fun checkNamingConvention/-1610710857 (var1946 var3629) void)
(declare-fun image/-1758362606 (var3629) String)
(declare-fun var1625-init () var1625)
(declare-fun outputFormat/-1475596563 (var1513) var2201)
(declare-fun getName/-959053322 (var2201) String)
(declare-fun <init>/378607920 (var1625 String) void)
(declare-fun cast-from-var1625-to-var764 (var1625) var764)
(declare-fun var81-init () var81)
(declare-fun <init>/1921053075 (var81 var3629 var1946 var764) void)
(declare-fun template/-1475596563 (var1513) var1193)
(declare-fun setLocation/2027311074 (var2340 var1193 var3629 var3629) void)
(declare-fun cast-from-var81-to-var2340 (var81) var2340)
(declare-const null-var1513 var1513)
(declare-const var1769 var1513) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var1769 null-var1513)))
(assert true)
(define-const var353 var3629 (jj_consume_token/-1662239344 var1769 99)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(99) 
(assert true)
(define-const var2836 var3629 (jj_consume_token/-1662239344 var1769 142)) ; Statement: r2 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142) 
(define-const var590 var1946 (token_source/-1475596563 var1769)) ; Statement: $r3 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source> 
(assert true)
;(assert (checkNamingConvention/-1610710857 var590 var2836)) ; Statement: virtualinvoke $r3.<freemarker.core.FMParserTokenManager: void checkNamingConvention(freemarker.core.Token)>(r2) 

(declare-const var590!1 var1946)
(declare-const var2836!1 var3629)
(define-const var3218 String (image/-1758362606 var2836!1)) ; Statement: r4 = r2.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var336 Bool (= var3218 "output_format")) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("output_format") 
 ; Statement: if $z0 != 0 goto $r5 = new freemarker.template.SimpleScalar 
(assert (not (= (ite var336 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1392 var1625 var1625-init) ; Statement: $r5 = new freemarker.template.SimpleScalar 
(define-const var2703 var2201 (outputFormat/-1475596563 var1769)) ; Statement: $r6 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> 
(assert true)
(define-const var3312 String (getName/-959053322 var2703)) ; Statement: $r7 = virtualinvoke $r6.<freemarker.core.OutputFormat: java.lang.String getName()>() 
(assert true)
;(assert (<init>/378607920 var1392 var3312)) ; Statement: specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r7) 

(declare-const var1392!1 var1625)
(declare-const var3312!1 String)
(define-const var3910 var764 (cast-from-var1625-to-var764 var1392!1)) ; Statement: r11 = $r5 
 ; Statement: goto [?= $r13 = new freemarker.core.BuiltinVariable] 
(assert true) ; Non Conditional
(define-const var1186 var81 var81-init) ; Statement: $r13 = new freemarker.core.BuiltinVariable 
(define-const var3394 var1946 (token_source/-1475596563 var1769)) ; Statement: $r14 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source> 
(assert true)
;(assert (<init>/1921053075 var1186 var2836!1 var3394 var3910)) ; Statement: specialinvoke $r13.<freemarker.core.BuiltinVariable: void <init>(freemarker.core.Token,freemarker.core.FMParserTokenManager,freemarker.template.TemplateModel)>(r2, $r14, r11) 

(declare-const var1186!1 var81)
(declare-const var2836!2 var3629)
(declare-const var3394!1 var1946)
(declare-const var3910!1 var764)
(define-const var2654 var1193 (template/-1475596563 var1769)) ; Statement: $r15 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (setLocation/2027311074 (cast-from-var81-to-var2340 var1186!1) var2654 var353 var2836!2)) ; Statement: virtualinvoke $r13.<freemarker.core.BuiltinVariable: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r15, r1, r2) 

(declare-const var1186!2 var81)
(declare-const var2654!1 var1193)
(declare-const var353!1 var3629)
(declare-const var2836!3 var3629)
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), token_source/-1475596563=([freemarker.core.FMParser], freemarker.core.FMParserTokenManager), checkNamingConvention/-1610710857=([freemarker.core.FMParserTokenManager, freemarker.core.Token], void), image/-1758362606=([freemarker.core.Token], java.lang.String), var1625-init=([], freemarker.template.SimpleScalar), outputFormat/-1475596563=([freemarker.core.FMParser], freemarker.core.OutputFormat), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void), cast-from-var1625-to-var764=([freemarker.template.SimpleScalar], freemarker.template.TemplateModel), var81-init=([], freemarker.core.BuiltinVariable), <init>/1921053075=([freemarker.core.BuiltinVariable, freemarker.core.Token, freemarker.core.FMParserTokenManager, freemarker.template.TemplateModel], void), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), setLocation/2027311074=([freemarker.core.TemplateObject, freemarker.template.Template, freemarker.core.Token, freemarker.core.Token], void), cast-from-var81-to-var2340=([freemarker.core.BuiltinVariable], freemarker.core.TemplateObject)}
; {var1513=freemarker.core.FMParser, var1769=r0, var3629=freemarker.core.Token, var353=r1, var2836=r2, var1946=freemarker.core.FMParserTokenManager, var590=$r3, var3218=r4, var336=$z0, var1625=freemarker.template.SimpleScalar, var1392=$r5, var2201=freemarker.core.OutputFormat, var2703=$r6, var3312=$r7, var764=freemarker.template.TemplateModel, var3910=r11, var81=freemarker.core.BuiltinVariable, var1186=$r13, var3394=$r14, var1193=freemarker.template.Template, var2654=$r15, var2340=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var1513, r0=var1769, freemarker.core.Token=var3629, r1=var353, r2=var2836, freemarker.core.FMParserTokenManager=var1946, $r3=var590, r4=var3218, $z0=var336, freemarker.template.SimpleScalar=var1625, $r5=var1392, freemarker.core.OutputFormat=var2201, $r6=var2703, $r7=var3312, freemarker.template.TemplateModel=var764, r11=var3910, freemarker.core.BuiltinVariable=var81, $r13=var1186, $r14=var3394, freemarker.template.Template=var1193, $r15=var2654, freemarker.core.TemplateObject=var2340}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(99);	r2 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(142);	$r3 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;	virtualinvoke $r3.<freemarker.core.FMParserTokenManager: void checkNamingConvention(freemarker.core.Token)>(r2);	r4 = r2.<freemarker.core.Token: java.lang.String image>;	$z0 = virtualinvoke r4.<java.lang.String: boolean equals(java.lang.Object)>("output_format");	if $z0 != 0 goto $r5 = new freemarker.template.SimpleScalar;	$r5 = new freemarker.template.SimpleScalar;	$r6 = r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat>;	$r7 = virtualinvoke $r6.<freemarker.core.OutputFormat: java.lang.String getName()>();	specialinvoke $r5.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r7);	r11 = $r5;	goto [?= $r13 = new freemarker.core.BuiltinVariable];	$r13 = new freemarker.core.BuiltinVariable;	$r14 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;	specialinvoke $r13.<freemarker.core.BuiltinVariable: void <init>(freemarker.core.Token,freemarker.core.FMParserTokenManager,freemarker.template.TemplateModel)>(r2, $r14, r11);	$r15 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	virtualinvoke $r13.<freemarker.core.BuiltinVariable: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r15, r1, r2);	return $r13
;block_num 3