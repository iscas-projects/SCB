(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var199 0)
(declare-sort var2221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStartOffset/1012158004 (var199) Int)
(declare-fun word/-1775170697 (var199) var2221)
(declare-fun word/-490822211 (var2221) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var199 var199)
(declare-const var1971 var199) ; Statement: r0 := @this: cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord 
(assert (not (= var1971 null-var199)))
(assert true)
(define-const var1464 Int (getStartOffset/1012158004 var1971)) ; Statement: $i1 = virtualinvoke r0.<cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord: int getStartOffset()>() 
(define-const var739 var2221 (word/-1775170697 var1971)) ; Statement: $r1 = r0.<cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord: com.mayabot.nlp.segment.WordTerm word> 
(define-const var3180 String (word/-490822211 var739)) ; Statement: $r2 = $r1.<com.mayabot.nlp.segment.WordTerm: java.lang.String word> 
(assert true)
(define-const var3927 Int (length/-134980193 var3180)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var3794 Int (+ var1464 var3927)) ; Statement: $i2 = $i1 + $i0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getStartOffset/1012158004=([cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord], int), word/-1775170697=([cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord], com.mayabot.nlp.segment.WordTerm), word/-490822211=([com.mayabot.nlp.segment.WordTerm], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var199=cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord, var1971=r0, var1464=$i1, var2221=com.mayabot.nlp.segment.WordTerm, var739=$r1, var3180=$r2, var3927=$i0, var3794=$i2}
; {cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord=var199, r0=var1971, $i1=var1464, com.mayabot.nlp.segment.WordTerm=var2221, $r1=var739, $r2=var3180, $i0=var3927, $i2=var3794}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord;	$i1 = virtualinvoke r0.<cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord: int getStartOffset()>();	$r1 = r0.<cn.hutool.extra.tokenizer.engine.mynlp.MynlpWord: com.mayabot.nlp.segment.WordTerm word>;	$r2 = $r1.<com.mayabot.nlp.segment.WordTerm: java.lang.String word>;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	return $i2
;block_num 1