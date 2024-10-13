(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort var1536 0)
(declare-sort var2310 0)
(declare-sort var1723 0)
(declare-sort var2392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/2108483861 (var2310) var1536)
(declare-fun cast-from-var2976-to-var2310 (var2976) var2310)
(declare-fun incrementToken/-1581328132 (var1536) Bool)
(declare-fun termAtt/1485626605 (var2976) var1723)
(declare-fun var1723_buffer/-1657253545 (var1723) (Array Int Int))
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var1723-to-String (var1723) String)
(declare-fun var2392_toLowerCase/-520978077 ((Array Int Int) Int Int) void)
(declare-const null-var2976 var2976)
(declare-const var2227 var2976) ; Statement: r0 := @this: org.apache.lucene.analysis.LowerCaseFilter 
(assert (not (= var2227 null-var2976)))
(define-const var3992 var1536 (input/2108483861 (cast-from-var2976-to-var2310 var2227))) ; Statement: $r1 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.TokenStream input> 
(assert true)
(define-const var2834 Bool (incrementToken/-1581328132 var3992)) ; Statement: $z0 = virtualinvoke $r1.<org.apache.lucene.analysis.TokenStream: boolean incrementToken()>() 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var2834 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var48 var1723 (termAtt/1485626605 var2227)) ; Statement: $r2 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt> 
(define-const var3452 (Array Int Int) (var1723_buffer/-1657253545 var48)) ; Statement: $r4 = interfaceinvoke $r2.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>() 
(define-const var3076 var1723 (termAtt/1485626605 var2227)) ; Statement: $r3 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt> 
(define-const var1216 Int (String_length/-667254855 (cast-from-var1723-to-String var3076))) ; Statement: $i0 = interfaceinvoke $r3.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>() 
;(assert (var2392_toLowerCase/-520978077 var3452 0 var1216)) ; Statement: staticinvoke <org.apache.lucene.analysis.CharacterUtils: void toLowerCase(char[],int,int)>($r4, 0, $i0) 

(declare-const var3452!1 (Array Int Int))
(declare-const var3738 Int)
(declare-const var1216!1 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {input/2108483861=([org.apache.lucene.analysis.TokenFilter], org.apache.lucene.analysis.TokenStream), cast-from-var2976-to-var2310=([org.apache.lucene.analysis.LowerCaseFilter], org.apache.lucene.analysis.TokenFilter), incrementToken/-1581328132=([org.apache.lucene.analysis.TokenStream], boolean), termAtt/1485626605=([org.apache.lucene.analysis.LowerCaseFilter], org.apache.lucene.analysis.tokenattributes.CharTermAttribute), var1723_buffer/-1657253545=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], char[]), String_length/-667254855=([java.lang.CharSequence], int), cast-from-var1723-to-String=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], java.lang.CharSequence), var2392_toLowerCase/-520978077=([char[], int, int], void)}
; {var2976=org.apache.lucene.analysis.LowerCaseFilter, var2227=r0, var1536=org.apache.lucene.analysis.TokenStream, var2310=org.apache.lucene.analysis.TokenFilter, var3992=$r1, var2834=$z0, var1723=org.apache.lucene.analysis.tokenattributes.CharTermAttribute, var48=$r2, var3452=$r4, var3076=$r3, var1216=$i0, var2392=org.apache.lucene.analysis.CharacterUtils, var3738=0}
; {org.apache.lucene.analysis.LowerCaseFilter=var2976, r0=var2227, org.apache.lucene.analysis.TokenStream=var1536, org.apache.lucene.analysis.TokenFilter=var2310, $r1=var3992, $z0=var2834, org.apache.lucene.analysis.tokenattributes.CharTermAttribute=var1723, $r2=var48, $r4=var3452, $r3=var3076, $i0=var1216, org.apache.lucene.analysis.CharacterUtils=var2392, 0=var3738}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.LowerCaseFilter;	$r1 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.TokenStream input>;	$z0 = virtualinvoke $r1.<org.apache.lucene.analysis.TokenStream: boolean incrementToken()>();	if $z0 == 0 goto return 0;	$r2 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt>;	$r4 = interfaceinvoke $r2.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>();	$r3 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.tokenattributes.CharTermAttribute termAtt>;	$i0 = interfaceinvoke $r3.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>();	staticinvoke <org.apache.lucene.analysis.CharacterUtils: void toLowerCase(char[],int,int)>($r4, 0, $i0);	return 1
;block_num 2