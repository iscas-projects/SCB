(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3150 0)
(declare-sort var1259 0)
(declare-sort var1630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameEscape/1287024874 (var1259) Bool)
(declare-fun cast-from-var3150-to-var1259 (var3150) var1259)
(declare-fun str/-403530942 (var3150) String)
(declare-fun nameBegin/-403530942 (var3150) Int)
(declare-fun nameEnd/-403530942 (var3150) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3150 var3150)
(declare-const null-String String)
(declare-const var3093 var3150) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16 
(assert (not (= var3093 null-var3150)))
(define-const var3798 Bool (nameEscape/1287024874 (cast-from-var3150-to-var1259 var3093))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: boolean nameEscape> 
 ; Statement: if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameLength> 
(assert (not (not (= (ite var3798 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var841 String (str/-403530942 var3093)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> 
 ; Statement: if $r4 == null goto $r9 = new java.lang.String 
(assert (not (= var841 null-String))) ; Negate: Cond: $r4 == null  
(define-const var2083 String (str/-403530942 var3093)) ; Statement: $r7 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str> 
(define-const var1683 Int (nameBegin/-403530942 var3093)) ; Statement: $i19 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameBegin> 
(define-const var438 Int (nameEnd/-403530942 var3093)) ; Statement: $i18 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameEnd> 
(assert (not (and true (and (>= var1683 0) (>= (str.len var2083) var438) (>= var438 var1683)))))
(check-sat)
(get-model)
(get-unsat-core)
; {nameEscape/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), cast-from-var3150-to-var1259=([com.alibaba.fastjson2.JSONReaderUTF16], com.alibaba.fastjson2.JSONReader), str/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], java.lang.String), nameBegin/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), nameEnd/-403530942=([com.alibaba.fastjson2.JSONReaderUTF16], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3150=com.alibaba.fastjson2.JSONReaderUTF16, var3093=r0, var1259=com.alibaba.fastjson2.JSONReader, var3798=$z0, var841=$r4, var1630=null_type, var2083=$r7, var1683=$i19, var438=$i18, var1811=$r8}
; {com.alibaba.fastjson2.JSONReaderUTF16=var3150, r0=var3093, com.alibaba.fastjson2.JSONReader=var1259, $z0=var3798, $r4=var841, null_type=var1630, $r7=var2083, $i19=var1683, $i18=var438, $r8=var1811}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderUTF16;	$z0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: boolean nameEscape>;	if $z0 != 0 goto $i0 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameLength>;	$r4 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str>;	if $r4 == null goto $r9 = new java.lang.String;	$r7 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: java.lang.String str>;	$i19 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameBegin>;	$i18 = r0.<com.alibaba.fastjson2.JSONReaderUTF16: int nameEnd>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String substring(int,int)>($i19, $i18);	return $r8
;block_num 3