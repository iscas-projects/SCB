(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1117 0)
(declare-sort var1387 0)
(declare-sort var3674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stopWords/-1464547498 (var1117) var1387)
(declare-fun termAtt/-1464547498 (var1117) var3674)
(declare-fun var3674_buffer/-1657253545 (var3674) (Array Int Int))
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var3674-to-String (var3674) String)
(declare-fun contains/-1012662817 (var1387 (Array Int Int) Int Int) Bool)
(declare-const null-var1117 var1117)
(declare-const var125 var1117) ; Statement: r0 := @this: org.apache.lucene.analysis.StopFilter 
(assert (not (= var125 null-var1117)))
(define-const var3141 var1387 (stopWords/-1464547498 var125)) ; Statement: $r2 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.CharArraySet stopWords> 
(define-const var2914 var3674 (termAtt/-1464547498 var125)) ; Statement: $r1 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt> 
(define-const var1586 (Array Int Int) (var3674_buffer/-1657253545 var2914)) ; Statement: $r4 = interfaceinvoke $r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>() 
(define-const var592 var3674 (termAtt/-1464547498 var125)) ; Statement: $r3 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt> 
(define-const var1809 Int (String_length/-667254855 (cast-from-var3674-to-String var592))) ; Statement: $i0 = interfaceinvoke $r3.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>() 
(assert true)
(define-const var3847 Bool (contains/-1012662817 var3141 var1586 0 var1809)) ; Statement: $z0 = virtualinvoke $r2.<org.apache.lucene.analysis.CharArraySet: boolean contains(char[],int,int)>($r4, 0, $i0) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3847 1 0) 0))) ; Cond: $z0 != 0 
(define-const var644 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {stopWords/-1464547498=([org.apache.lucene.analysis.StopFilter], org.apache.lucene.analysis.CharArraySet), termAtt/-1464547498=([org.apache.lucene.analysis.StopFilter], org.apache.lucene.analysis.tokenattributes.CharTermAttribute), var3674_buffer/-1657253545=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], char[]), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var3674-to-String=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], java.lang.CharSequence), contains/-1012662817=([org.apache.lucene.analysis.CharArraySet, char[], int, int], boolean)}
; {var1117=org.apache.lucene.analysis.StopFilter, var125=r0, var1387=org.apache.lucene.analysis.CharArraySet, var3141=$r2, var3674=org.apache.lucene.analysis.tokenattributes.CharTermAttribute, var2914=$r1, var1586=$r4, var592=$r3, var1809=$i0, var3847=$z0, var644=$z1}
; {org.apache.lucene.analysis.StopFilter=var1117, r0=var125, org.apache.lucene.analysis.CharArraySet=var1387, $r2=var3141, org.apache.lucene.analysis.tokenattributes.CharTermAttribute=var3674, $r1=var2914, $r4=var1586, $r3=var592, $i0=var1809, $z0=var3847, $z1=var644}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.StopFilter;	$r2 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.CharArraySet stopWords>;	$r1 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt>;	$r4 = interfaceinvoke $r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>();	$r3 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt>;	$i0 = interfaceinvoke $r3.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>();	$z0 = virtualinvoke $r2.<org.apache.lucene.analysis.CharArraySet: boolean contains(char[],int,int)>($r4, 0, $i0);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3