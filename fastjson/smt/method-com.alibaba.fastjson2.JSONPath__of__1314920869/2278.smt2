(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3995 0)
(declare-sort var2226 0)
(declare-sort var1857 0)
(declare-sort var3998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2226-init () var2226)
(declare-fun <init>/-1450846863 (var2226 String) void)
(declare-fun arr-var1857-init () (Array Int var1857))
(declare-fun parse/-326097423 (var2226 (Array Int var1857)) var3998)
(declare-const null-String String)
(declare-const var2773 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2773 null-String)))
(define-const var730 String "#-1") ; Statement: $r1 = "#-1" 
(assert true)
(define-const var364 Bool (= var730 var2773)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser 
(assert (= (ite var364 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1324 var2226 var2226-init) ; Statement: $r2 = new com.alibaba.fastjson2.JSONPathParser 
(assert true)
;(assert (<init>/-1450846863 var1324 var2773)) ; Statement: specialinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: void <init>(java.lang.String)>(r0) 

(declare-const var1324!1 var2226)
(declare-const var2773!1 String)
(define-const var3918 (Array Int var1857) arr-var1857-init) ; Statement: $r3 = newarray (com.alibaba.fastjson2.JSONPath$Feature)[0] 
(assert true)
(define-const var2066 var3998 (parse/-326097423 var1324!1 var3918)) ; Statement: $r4 = virtualinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONPath parse(com.alibaba.fastjson2.JSONPath$Feature[])>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2226-init=([], com.alibaba.fastjson2.JSONPathParser), <init>/-1450846863=([com.alibaba.fastjson2.JSONPathParser, java.lang.String], void), arr-var1857-init=([], com.alibaba.fastjson2.JSONPath$Feature[]), parse/-326097423=([com.alibaba.fastjson2.JSONPathParser, com.alibaba.fastjson2.JSONPath$Feature[]], com.alibaba.fastjson2.JSONPath)}
; {var2773=r0, var3995=null_type, var730=$r1, var364=$z0, var2226=com.alibaba.fastjson2.JSONPathParser, var1324=$r2, var1857=com.alibaba.fastjson2.JSONPath$Feature, var3918=$r3, var3998=com.alibaba.fastjson2.JSONPath, var2066=$r4}
; {r0=var2773, null_type=var3995, $r1=var730, $z0=var364, com.alibaba.fastjson2.JSONPathParser=var2226, $r2=var1324, com.alibaba.fastjson2.JSONPath$Feature=var1857, $r3=var3918, com.alibaba.fastjson2.JSONPath=var3998, $r4=var2066}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "#-1";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser;	$r2 = new com.alibaba.fastjson2.JSONPathParser;	specialinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: void <init>(java.lang.String)>(r0);	$r3 = newarray (com.alibaba.fastjson2.JSONPath$Feature)[0];	$r4 = virtualinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONPath parse(com.alibaba.fastjson2.JSONPath$Feature[])>($r3);	return $r4
;block_num 2