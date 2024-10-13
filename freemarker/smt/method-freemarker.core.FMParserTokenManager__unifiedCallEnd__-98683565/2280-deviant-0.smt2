(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2666 0)
(declare-sort var1954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/-1758362606 (var1954) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun squBracTagSyntax/929889025 (var2666) Bool)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun kind/-1758362606 (var1954) Int)
(declare-const null-var2666 var2666)
(declare-const null-var1954 var1954)
(declare-const var137 var2666) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var137 null-var2666)))
(declare-const var316 var1954) ; Statement: r0 := @parameter0: freemarker.core.Token 
(assert (not (= var316 null-var1954)))
(define-const var2003 String (image/-1758362606 var316)) ; Statement: $r1 = r0.<freemarker.core.Token: java.lang.String image> 
(assert (not (and true (and (> (str.len var2003) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/-1758362606=([freemarker.core.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), squBracTagSyntax/929889025=([freemarker.core.FMParserTokenManager], boolean), cast-from-Int-to-Int=([char], int), kind/-1758362606=([freemarker.core.Token], int)}
; {var2666=freemarker.core.FMParserTokenManager, var137=r2, var1954=freemarker.core.Token, var316=r0, var2003=$r1, var1824=c0, var651=$z0, var3969=$i1}
; {freemarker.core.FMParserTokenManager=var2666, r2=var137, freemarker.core.Token=var1954, r0=var316, $r1=var2003, c0=var1824, $z0=var651, $i1=var3969}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r0 := @parameter0: freemarker.core.Token;	$r1 = r0.<freemarker.core.Token: java.lang.String image>;	c0 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(0);	$z0 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	if $z0 == 0 goto $z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	$i1 = (int) c0;	if $i1 != 60 goto $z1 = r2.<freemarker.core.FMParserTokenManager: boolean squBracTagSyntax>;	r0.<freemarker.core.Token: int kind> = 80;	return
;block_num 3