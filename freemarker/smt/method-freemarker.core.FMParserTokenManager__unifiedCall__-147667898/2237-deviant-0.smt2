(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var299 0)
(declare-sort var458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/-1758362606 (var458) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun autodetectTagSyntax/929889025 (var299) Bool)
(declare-fun squBracTagSyntax/929889025 (var299) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun kind/-1758362606 (var458) Int)
(declare-const null-var299 var299)
(declare-const null-var458 var458)
(declare-const var1145 var299) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var1145 null-var299)))
(declare-const var2479 var458) ; Statement: r0 := @parameter0: freemarker.core.Token 
(assert (not (= var2479 null-var458)))
(define-const var3307 String (image/-1758362606 var2479)) ; Statement: $r1 = r0.<freemarker.core.Token: java.lang.String image> 
(assert (not (and true (and (> (str.len var3307) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/-1758362606=([freemarker.core.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), autodetectTagSyntax/929889025=([freemarker.core.FMParserTokenManager], boolean), squBracTagSyntax/929889025=([freemarker.core.FMParserTokenManager], boolean), cast-from-Int-to-Int=([char], int), kind/-1758362606=([freemarker.core.Token], int)}
; {var299=freemarker.core.FMParserTokenManager, var1145=r2, var458=freemarker.core.Token, var2479=r0, var3307=$r1, var3228=c0, var2807=$z0, var449=$z4, var3323=$i2}
; {freemarker.core.FMParserTokenManager=var299, r2=var1145, freemarker.core.Token=var458, r0=var2479, $r1=var3307, c0=var3228, $z0=var2807, $z4=var449, $i2=var3323}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r0 := @parameter0: freemarker.core.Token;	$r1 = r0.<freemarker.core.Token: java.lang.String image>;	c0 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0);	$z0 = r2.<freemarker.core.FMParserTokenManager: boolean autodetectTagSyntax>;	if $z0 == 0 goto $z4 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	$z4 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	if $z4 == 0 goto $z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	$i2 = (int) c0;	if $i2 != 60 goto $z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	r0.<freemarker.core.Token: int kind> = 80;	return
;block_num 4