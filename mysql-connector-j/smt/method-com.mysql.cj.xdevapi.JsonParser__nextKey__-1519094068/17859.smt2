(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1586 0)
(declare-sort var2293 0)
(declare-sort var1901 0)
(declare-sort var1039 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mark/422674531 (var1586 Int) void)
(declare-fun var1901_parseString/1690285217 (var1586) var2293)
(declare-fun read/-959402780 (var1586) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun CHAR/1789999486 (var1039) Int)
(declare-fun getString/1135773839 (var2293) String)
(declare-const null-var1586 var1586)
(declare-const null-var2293 var2293)
(declare-const var1039-COLON var1039)
(declare-const var1457 var1586) ; Statement: r0 := @parameter0: java.io.StringReader 
(assert (not (= var1457 null-var1586)))
(assert true)
;(assert (mark/422674531 var1457 1)) ; Statement: virtualinvoke r0.<java.io.StringReader: void mark(int)>(1) 

(declare-const var1457!1 var1586)
(declare-const var149 Int)
(define-const var1173 var2293 (var1901_parseString/1690285217 var1457!1)) ; Statement: r1 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.JsonString parseString(java.io.StringReader)>(r0) 
 ; Statement: if r1 != null goto c3 = 32 
(assert (not (= var1173 null-var2293))) ; Cond: r1 != null 
(define-const var260 Int 32) ; Statement: c3 = 32 
(assert true) ; Non Conditional
(assert true)
(define-const var3625 Int (read/-959402780 var1457!1)) ; Statement: $i4 = virtualinvoke r0.<java.io.StringReader: int read()>() 
(define-const var2157 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i4 == $i7 goto $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON> 
(assert (= var3625 var2157)) ; Cond: $i4 == $i7 
(define-const var878 var1039 var1039-COLON) ; Statement: $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON> 
(define-const var2441 Int (CHAR/1789999486 var878)) ; Statement: $c5 = $r17.<com.mysql.cj.xdevapi.JsonParser$StructuralToken: char CHAR> 
(define-const var2775 Int (cast-from-Int-to-Int var2441)) ; Statement: $i10 = (int) $c5 
 ; Statement: if c3 == $i10 goto (branch) 
(assert (= var260 var2775)) ; Cond: c3 == $i10 
 ; Statement: if r1 == null goto $r18 = null 
(assert (not (= var1173 null-var2293))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2846 String (getString/1135773839 var1173)) ; Statement: $r18 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String getString()>() 
 ; Statement: goto [?= return $r18] 
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {mark/422674531=([java.io.StringReader, int], void), var1901_parseString/1690285217=([java.io.StringReader], com.mysql.cj.xdevapi.JsonString), read/-959402780=([java.io.StringReader], int), cast-from-Int-to-Int=([int], int), CHAR/1789999486=([com.mysql.cj.xdevapi.JsonParser$StructuralToken], char), getString/1135773839=([com.mysql.cj.xdevapi.JsonString], java.lang.String)}
; {var1586=java.io.StringReader, var1457=r0, var149=1, var2293=com.mysql.cj.xdevapi.JsonString, var1901=com.mysql.cj.xdevapi.JsonParser, var1173=r1, var260=c3, var3625=$i4, var2157=$i7, var1039=com.mysql.cj.xdevapi.JsonParser$StructuralToken, var878=$r17, var2441=$c5, var2775=$i10, var2846=$r18}
; {java.io.StringReader=var1586, r0=var1457, 1=var149, com.mysql.cj.xdevapi.JsonString=var2293, com.mysql.cj.xdevapi.JsonParser=var1901, r1=var1173, c3=var260, $i4=var3625, $i7=var2157, com.mysql.cj.xdevapi.JsonParser$StructuralToken=var1039, $r17=var878, $c5=var2441, $i10=var2775, $r18=var2846}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.StringReader;	virtualinvoke r0.<java.io.StringReader: void mark(int)>(1);	r1 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.JsonString parseString(java.io.StringReader)>(r0);	if r1 != null goto c3 = 32;	c3 = 32;	$i4 = virtualinvoke r0.<java.io.StringReader: int read()>();	$i7 = (int) -1;	if $i4 == $i7 goto $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON>;	$r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON>;	$c5 = $r17.<com.mysql.cj.xdevapi.JsonParser$StructuralToken: char CHAR>;	$i10 = (int) $c5;	if c3 == $i10 goto (branch);	if r1 == null goto $r18 = null;	$r18 = virtualinvoke r1.<com.mysql.cj.xdevapi.JsonString: java.lang.String getString()>();	goto [?= return $r18];	return $r18
;block_num 7