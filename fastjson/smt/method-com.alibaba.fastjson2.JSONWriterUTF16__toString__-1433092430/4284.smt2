(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3750 0)
(declare-sort var1279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun chars/1482366354 (var3750) (Array Int Int))
(declare-fun off/1442430106 (var1279) Int)
(declare-fun cast-from-var3750-to-var1279 (var3750) var1279)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3750 var3750)
(declare-const var2176 var3750) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16 
(assert (not (= var2176 null-var3750)))
(define-const var248 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1201 (Array Int Int) (chars/1482366354 var2176)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars> 
(define-const var1471 Int (off/1442430106 (cast-from-var3750-to-var1279 var2176))) ; Statement: $i0 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off> 
(assert true)
;(assert (<init>/-253222812 var248 var1201 0 var1471)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0) 

(declare-const var248!1 String)
(declare-const var1201!1 (Array Int Int))
(declare-const var3924 Int)
(declare-const var1471!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), chars/1482366354=([com.alibaba.fastjson2.JSONWriterUTF16], char[]), off/1442430106=([com.alibaba.fastjson2.JSONWriter], int), cast-from-var3750-to-var1279=([com.alibaba.fastjson2.JSONWriterUTF16], com.alibaba.fastjson2.JSONWriter), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3750=com.alibaba.fastjson2.JSONWriterUTF16, var2176=r1, var248=$r0, var1201=$r2, var1279=com.alibaba.fastjson2.JSONWriter, var1471=$i0, var3924=0}
; {com.alibaba.fastjson2.JSONWriterUTF16=var3750, r1=var2176, $r0=var248, $r2=var1201, com.alibaba.fastjson2.JSONWriter=var1279, $i0=var1471, 0=var3924}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONWriterUTF16;	$r0 = new java.lang.String;	$r2 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: char[] chars>;	$i0 = r1.<com.alibaba.fastjson2.JSONWriterUTF16: int off>;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0);	return $r0
;block_num 1