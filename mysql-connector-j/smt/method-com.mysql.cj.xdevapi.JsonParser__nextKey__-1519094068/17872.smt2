(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1153 0)
(declare-sort var138 0)
(declare-sort var2947 0)
(declare-sort var1128 0)
(declare-sort var1568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mark/422674531 (var1153 Int) void)
(declare-fun var2947_parseString/1690285217 (var1153) var138)
(declare-fun read/-959402780 (var1153) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun CHAR/1789999486 (var1128) Int)
(declare-const null-var1153 var1153)
(declare-const null-var138 var138)
(declare-const var1128-COLON var1128)
(declare-const null-String String)
(declare-const var68 var1153) ; Statement: r0 := @parameter0: java.io.StringReader 
(assert (not (= var68 null-var1153)))
(assert true)
;(assert (mark/422674531 var68 1)) ; Statement: virtualinvoke r0.<java.io.StringReader: void mark(int)>(1) 

(declare-const var68!1 var1153)
(declare-const var2820 Int)
(define-const var3431 var138 (var2947_parseString/1690285217 var68!1)) ; Statement: r1 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.JsonString parseString(java.io.StringReader)>(r0) 
 ; Statement: if r1 != null goto c3 = 32 
(assert (not (= var3431 null-var138))) ; Cond: r1 != null 
(define-const var2893 Int 32) ; Statement: c3 = 32 
(assert true) ; Non Conditional
(assert true)
(define-const var2628 Int (read/-959402780 var68!1)) ; Statement: $i4 = virtualinvoke r0.<java.io.StringReader: int read()>() 
(define-const var3703 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i4 == $i7 goto $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON> 
(assert (= var2628 var3703)) ; Cond: $i4 == $i7 
(define-const var3391 var1128 var1128-COLON) ; Statement: $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON> 
(define-const var491 Int (CHAR/1789999486 var3391)) ; Statement: $c5 = $r17.<com.mysql.cj.xdevapi.JsonParser$StructuralToken: char CHAR> 
(define-const var1124 Int (cast-from-Int-to-Int var491)) ; Statement: $i10 = (int) $c5 
 ; Statement: if c3 == $i10 goto (branch) 
(assert (= var2893 var1124)) ; Cond: c3 == $i10 
 ; Statement: if r1 == null goto $r18 = null 
(assert (= var3431 null-var138)) ; Cond: r1 == null 
(define-const var1109 String null-String) ; Statement: $r18 = null 
(assert true) ; Non Conditional
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {mark/422674531=([java.io.StringReader, int], void), var2947_parseString/1690285217=([java.io.StringReader], com.mysql.cj.xdevapi.JsonString), read/-959402780=([java.io.StringReader], int), cast-from-Int-to-Int=([int], int), CHAR/1789999486=([com.mysql.cj.xdevapi.JsonParser$StructuralToken], char)}
; {var1153=java.io.StringReader, var68=r0, var2820=1, var138=com.mysql.cj.xdevapi.JsonString, var2947=com.mysql.cj.xdevapi.JsonParser, var3431=r1, var2893=c3, var2628=$i4, var3703=$i7, var1128=com.mysql.cj.xdevapi.JsonParser$StructuralToken, var3391=$r17, var491=$c5, var1124=$i10, var1568=null_type, var1109=$r18}
; {java.io.StringReader=var1153, r0=var68, 1=var2820, com.mysql.cj.xdevapi.JsonString=var138, com.mysql.cj.xdevapi.JsonParser=var2947, r1=var3431, c3=var2893, $i4=var2628, $i7=var3703, com.mysql.cj.xdevapi.JsonParser$StructuralToken=var1128, $r17=var3391, $c5=var491, $i10=var1124, null_type=var1568, $r18=var1109}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.StringReader;	virtualinvoke r0.<java.io.StringReader: void mark(int)>(1);	r1 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.JsonString parseString(java.io.StringReader)>(r0);	if r1 != null goto c3 = 32;	c3 = 32;	$i4 = virtualinvoke r0.<java.io.StringReader: int read()>();	$i7 = (int) -1;	if $i4 == $i7 goto $r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON>;	$r17 = <com.mysql.cj.xdevapi.JsonParser$StructuralToken: com.mysql.cj.xdevapi.JsonParser$StructuralToken COLON>;	$c5 = $r17.<com.mysql.cj.xdevapi.JsonParser$StructuralToken: char CHAR>;	$i10 = (int) $c5;	if c3 == $i10 goto (branch);	if r1 == null goto $r18 = null;	$r18 = null;	return $r18
;block_num 7