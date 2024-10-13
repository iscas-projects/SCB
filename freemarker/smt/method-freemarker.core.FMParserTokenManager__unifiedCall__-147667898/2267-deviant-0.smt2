(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2454 0)
(declare-sort var3412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/-1758362606 (var3412) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun autodetectTagSyntax/929889025 (var2454) Bool)
(declare-fun squBracTagSyntax/929889025 (var2454) Bool)
(declare-fun tagSyntaxEstablished/929889025 (var2454) Bool)
(declare-fun SwitchTo/-1839513100 (var2454 Int) void)
(declare-const null-var2454 var2454)
(declare-const null-var3412 var3412)
(declare-const var1135 var2454) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var1135 null-var2454)))
(declare-const var3117 var3412) ; Statement: r0 := @parameter0: freemarker.core.Token 
(assert (not (= var3117 null-var3412)))
(define-const var2371 String (image/-1758362606 var3117)) ; Statement: $r1 = r0.<freemarker.core.Token: java.lang.String image> 
(assert (not (and true (and (> (str.len var2371) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/-1758362606=([freemarker.core.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), autodetectTagSyntax/929889025=([freemarker.core.FMParserTokenManager], boolean), squBracTagSyntax/929889025=([freemarker.core.FMParserTokenManager], boolean), tagSyntaxEstablished/929889025=([freemarker.core.FMParserTokenManager], boolean), SwitchTo/-1839513100=([freemarker.core.FMParserTokenManager, int], void)}
; {var2454=freemarker.core.FMParserTokenManager, var1135=r2, var3412=freemarker.core.Token, var3117=r0, var2371=$r1, var605=c0, var748=$z0, var3724=$z4, var3345=$z1, var285=6}
; {freemarker.core.FMParserTokenManager=var2454, r2=var1135, freemarker.core.Token=var3412, r0=var3117, $r1=var2371, c0=var605, $z0=var748, $z4=var3724, $z1=var3345, 6=var285}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r0 := @parameter0: freemarker.core.Token;	$r1 = r0.<freemarker.core.Token: java.lang.String image>;	c0 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0);	$z0 = r2.<freemarker.core.FMParserTokenManager: boolean autodetectTagSyntax>;	if $z0 == 0 goto $z4 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	$z4 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	if $z4 == 0 goto $z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	$z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	if $z1 != 0 goto r2.<freemarker.core.FMParserTokenManager: boolean tagSyntaxEstablished> = 1;	r2.<freemarker.core.FMParserTokenManager: boolean tagSyntaxEstablished> = 1;	virtualinvoke r2.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(6);	return
;block_num 4