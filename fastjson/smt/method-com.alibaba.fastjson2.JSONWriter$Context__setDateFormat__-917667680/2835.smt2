(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1535 0)
(declare-sort var1419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dateFormat/-146628731 (var1535) String)
(declare-const null-var1535 var1535)
(declare-const null-String String)
(declare-const var547 var1535) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriter$Context 
(assert (not (= var547 null-var1535)))
(declare-const var2777 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2777 null-String)))
 ; Statement: if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.time.format.DateTimeFormatter dateFormatter> = null 
(assert (not (= var2777 null-String))) ; Negate: Cond: r2 == null  
(define-const var1037 String (dateFormat/-146628731 var547)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> 
(assert true)
(define-const var2215 Bool (= var2777 var1037)) ; Statement: $z6 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z6 != 0 goto (branch) 
(assert (not (= (ite var2215 1 0) 0))) ; Cond: $z6 != 0 
 ; Statement: if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2 
(assert (= var2777 null-String)) ; Cond: r2 == null 
(declare-const var547!1 var1535)
(assert (not (= var547!1 null-var1535)))
(assert (= (dateFormat/-146628731 var547!1) var2777)) ; Statement: r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {dateFormat/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], java.lang.String)}
; {var1535=com.alibaba.fastjson2.JSONWriter$Context, var547=r0, var2777=r2, var1419=null_type, var1037=$r1, var2215=$z6}
; {com.alibaba.fastjson2.JSONWriter$Context=var1535, r0=var547, r2=var2777, null_type=var1419, $r1=var1037, $z6=var2215}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriter$Context;	r2 := @parameter0: java.lang.String;	if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.time.format.DateTimeFormatter dateFormatter> = null;	$r1 = r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat>;	$z6 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z6 != 0 goto (branch);	if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2;	r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2;	return
;block_num 4