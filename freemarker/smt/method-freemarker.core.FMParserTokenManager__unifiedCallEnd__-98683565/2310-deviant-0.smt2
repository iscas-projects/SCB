(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1509 0)
(declare-sort var1744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/-1758362606 (var1744) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun squBracTagSyntax/929889025 (var1509) Bool)
(declare-const null-var1509 var1509)
(declare-const null-var1744 var1744)
(declare-const var2078 var1509) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var2078 null-var1509)))
(declare-const var1888 var1744) ; Statement: r0 := @parameter0: freemarker.core.Token 
(assert (not (= var1888 null-var1744)))
(define-const var5 String (image/-1758362606 var1888)) ; Statement: $r1 = r0.<freemarker.core.Token: java.lang.String image> 
(assert (not (and true (and (> (str.len var5) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/-1758362606=([freemarker.core.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), squBracTagSyntax/929889025=([freemarker.core.FMParserTokenManager], boolean)}
; {var1509=freemarker.core.FMParserTokenManager, var2078=r2, var1744=freemarker.core.Token, var1888=r0, var5=$r1, var3184=c0, var2958=$z0, var160=$z1}
; {freemarker.core.FMParserTokenManager=var1509, r2=var2078, freemarker.core.Token=var1744, r0=var1888, $r1=var5, c0=var3184, $z0=var2958, $z1=var160}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r0 := @parameter0: freemarker.core.Token;	$r1 = r0.<freemarker.core.Token: java.lang.String image>;	c0 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0);	$z0 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	if $z0 == 0 goto $z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	$z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	if $z1 != 0 goto return;	return
;block_num 3