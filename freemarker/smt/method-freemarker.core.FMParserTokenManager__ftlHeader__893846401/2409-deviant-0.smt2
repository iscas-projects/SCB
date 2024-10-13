(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3242 0)
(declare-sort var722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tagSyntaxEstablished/929889025 (var3242) Bool)
(declare-fun image/-1758362606 (var722) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun kind/-1758362606 (var722) Int)
(declare-const null-var3242 var3242)
(declare-const null-var722 var722)
(declare-const var3892 var3242) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var3892 null-var3242)))
(declare-const var911 var722) ; Statement: r1 := @parameter0: freemarker.core.Token 
(assert (not (= var911 null-var722)))
(define-const var1428 Bool (tagSyntaxEstablished/929889025 var3892)) ; Statement: $z0 = r0.<freemarker.core.FMParserTokenManager: boolean tagSyntaxEstablished> 
 ; Statement: if $z0 != 0 goto $r3 = r1.<freemarker.core.Token: java.lang.String image> 
(assert (not (= (ite var1428 1 0) 0))) ; Cond: $z0 != 0 
(define-const var517 String (image/-1758362606 var911)) ; Statement: $r3 = r1.<freemarker.core.Token: java.lang.String image> 
(assert (not (and true (and (> (str.len var517) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {tagSyntaxEstablished/929889025=([freemarker.core.FMParserTokenManager], boolean), image/-1758362606=([freemarker.core.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([char], int), kind/-1758362606=([freemarker.core.Token], int)}
; {var3242=freemarker.core.FMParserTokenManager, var3892=r0, var722=freemarker.core.Token, var911=r1, var1428=$z0, var517=$r3, var1129=$c1, var204=$i2, var3916=$i3, var3222=$c4, var3344=$i7, var1073=$i8, var1824=$i5}
; {freemarker.core.FMParserTokenManager=var3242, r0=var3892, freemarker.core.Token=var722, r1=var911, $z0=var1428, $r3=var517, $c1=var1129, $i2=var204, $i3=var3916, $c4=var3222, $i7=var3344, $i8=var1073, $i5=var1824}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	r1 := @parameter0: freemarker.core.Token;	$z0 = r0.<freemarker.core.FMParserTokenManager: boolean tagSyntaxEstablished>;	if $z0 != 0 goto $r3 = r1.<freemarker.core.Token: java.lang.String image>;	$r3 = r1.<freemarker.core.Token: java.lang.String image>;	$c1 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0);	$i2 = virtualinvoke $r3.<java.lang.String: int length()>();	$i3 = $i2 - 1;	$c4 = virtualinvoke $r3.<java.lang.String: char charAt(int)>($i3);	$i7 = (int) $c1;	if $i7 != 91 goto $i8 = (int) $c1;	$i8 = (int) $c1;	if $i8 != 60 goto $i5 = r1.<freemarker.core.Token: int kind>;	$i5 = r1.<freemarker.core.Token: int kind>;	if $i5 == 80 goto return;	return
;block_num 5