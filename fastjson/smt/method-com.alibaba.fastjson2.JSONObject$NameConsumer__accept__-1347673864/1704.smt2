(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1410 0)
(declare-sort var3992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3992) String)
(declare-const null-var1410 var1410)
(declare-const null-var3992 var3992)
(declare-const var2073 var1410) ; Statement: r3 := @this: com.alibaba.fastjson2.JSONObject$NameConsumer 
(assert (not (= var2073 null-var1410)))
(declare-const var170 var3992) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var170 null-var3992)))
(assert true)
(define-const var922 String (getName/1227988463 var170)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2695 String "name") ; Statement: $r2 = "name" 
(assert true)
(define-const var1140 Bool (= var2695 var922)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1140 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var1410=com.alibaba.fastjson2.JSONObject$NameConsumer, var2073=r3, var3992=java.lang.reflect.Method, var170=r0, var922=r1, var2695=$r2, var1140=$z0}
; {com.alibaba.fastjson2.JSONObject$NameConsumer=var1410, r3=var2073, java.lang.reflect.Method=var3992, r0=var170, r1=var922, $r2=var2695, $z0=var1140}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.JSONObject$NameConsumer;	r0 := @parameter0: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "name";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return;	return
;block_num 2