(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2606 0)
(declare-sort var1775 0)
(declare-sort var910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stopWords/-1464547498 (var2606) var1775)
(declare-fun termAtt/-1464547498 (var2606) var910)
(declare-fun var910_buffer/-1657253545 (var910) (Array Int Int))
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var910-to-String (var910) String)
(declare-fun contains/-1012662817 (var1775 (Array Int Int) Int Int) Bool)
(declare-const null-var2606 var2606)
(declare-const var3351 var2606) ; Statement: r0 := @this: org.apache.lucene.analysis.StopFilter 
(assert (not (= var3351 null-var2606)))
(define-const var3103 var1775 (stopWords/-1464547498 var3351)) ; Statement: $r2 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.CharArraySet stopWords> 
(define-const var3159 var910 (termAtt/-1464547498 var3351)) ; Statement: $r1 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt> 
(define-const var3790 (Array Int Int) (var910_buffer/-1657253545 var3159)) ; Statement: $r4 = interfaceinvoke $r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>() 
(define-const var169 var910 (termAtt/-1464547498 var3351)) ; Statement: $r3 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt> 
(define-const var388 Int (String_length/-667254855 (cast-from-var910-to-String var169))) ; Statement: $i0 = interfaceinvoke $r3.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>() 
(assert true)
(define-const var2673 Bool (contains/-1012662817 var3103 var3790 0 var388)) ; Statement: $z0 = virtualinvoke $r2.<org.apache.lucene.analysis.CharArraySet: boolean contains(char[],int,int)>($r4, 0, $i0) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var2673 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2035 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {stopWords/-1464547498=([org.apache.lucene.analysis.StopFilter], org.apache.lucene.analysis.CharArraySet), termAtt/-1464547498=([org.apache.lucene.analysis.StopFilter], org.apache.lucene.analysis.tokenattributes.CharTermAttribute), var910_buffer/-1657253545=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], char[]), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var910-to-String=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], java.lang.CharSequence), contains/-1012662817=([org.apache.lucene.analysis.CharArraySet, char[], int, int], boolean)}
; {var2606=org.apache.lucene.analysis.StopFilter, var3351=r0, var1775=org.apache.lucene.analysis.CharArraySet, var3103=$r2, var910=org.apache.lucene.analysis.tokenattributes.CharTermAttribute, var3159=$r1, var3790=$r4, var169=$r3, var388=$i0, var2673=$z0, var2035=$z1}
; {org.apache.lucene.analysis.StopFilter=var2606, r0=var3351, org.apache.lucene.analysis.CharArraySet=var1775, $r2=var3103, org.apache.lucene.analysis.tokenattributes.CharTermAttribute=var910, $r1=var3159, $r4=var3790, $r3=var169, $i0=var388, $z0=var2673, $z1=var2035}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.StopFilter;	$r2 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.CharArraySet stopWords>;	$r1 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt>;	$r4 = interfaceinvoke $r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>();	$r3 = r0.<org.apache.lucene.analysis.StopFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt>;	$i0 = interfaceinvoke $r3.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>();	$z0 = virtualinvoke $r2.<org.apache.lucene.analysis.CharArraySet: boolean contains(char[],int,int)>($r4, 0, $i0);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3