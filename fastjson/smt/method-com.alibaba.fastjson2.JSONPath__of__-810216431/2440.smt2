(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3597 0)
(declare-sort var1538 0)
(declare-sort var2530 0)
(declare-sort var3446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2530-init () var2530)
(declare-fun <init>/-1450846863 (var2530 String) void)
(declare-fun parse/-326097423 (var2530 (Array Int var1538)) var3446)
(declare-const null-String String)
(declare-const null-__Array__Int__var1538__ (Array Int var1538))
(declare-const var2920 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2920 null-String)))
(declare-const var3755 (Array Int var1538)) ; Statement: r3 := @parameter1: com.alibaba.fastjson2.JSONPath$Feature[] 
(assert (not (= var3755 null-__Array__Int__var1538__)))
(define-const var2321 String "#-1") ; Statement: $r1 = "#-1" 
(assert true)
(define-const var91 Bool (= var2321 var2920)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser 
(assert (= (ite var91 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2837 var2530 var2530-init) ; Statement: $r2 = new com.alibaba.fastjson2.JSONPathParser 
(assert true)
;(assert (<init>/-1450846863 var2837 var2920)) ; Statement: specialinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: void <init>(java.lang.String)>(r0) 

(declare-const var2837!1 var2530)
(declare-const var2920!1 String)
(assert true)
(define-const var3426 var3446 (parse/-326097423 var2837!1 var3755)) ; Statement: $r4 = virtualinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONPath parse(com.alibaba.fastjson2.JSONPath$Feature[])>(r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2530-init=([], com.alibaba.fastjson2.JSONPathParser), <init>/-1450846863=([com.alibaba.fastjson2.JSONPathParser, java.lang.String], void), parse/-326097423=([com.alibaba.fastjson2.JSONPathParser, com.alibaba.fastjson2.JSONPath$Feature[]], com.alibaba.fastjson2.JSONPath)}
; {var2920=r0, var3597=null_type, var1538=com.alibaba.fastjson2.JSONPath$Feature, var3755=r3, var2321=$r1, var91=$z0, var2530=com.alibaba.fastjson2.JSONPathParser, var2837=$r2, var3446=com.alibaba.fastjson2.JSONPath, var3426=$r4}
; {r0=var2920, null_type=var3597, com.alibaba.fastjson2.JSONPath$Feature=var1538, r3=var3755, $r1=var2321, $z0=var91, com.alibaba.fastjson2.JSONPathParser=var2530, $r2=var2837, com.alibaba.fastjson2.JSONPath=var3446, $r4=var3426}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.alibaba.fastjson2.JSONPath$Feature[];	$r1 = "#-1";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new com.alibaba.fastjson2.JSONPathParser;	$r2 = new com.alibaba.fastjson2.JSONPathParser;	specialinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: void <init>(java.lang.String)>(r0);	$r4 = virtualinvoke $r2.<com.alibaba.fastjson2.JSONPathParser: com.alibaba.fastjson2.JSONPath parse(com.alibaba.fastjson2.JSONPath$Feature[])>(r3);	return $r4
;block_num 2