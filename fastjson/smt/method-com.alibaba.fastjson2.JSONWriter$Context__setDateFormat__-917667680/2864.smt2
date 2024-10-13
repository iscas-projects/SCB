(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1836 0)
(declare-sort var3453 0)
(declare-sort var2055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dateFormatter/-146628731 (var1836) var2055)
(declare-fun dateFormat/-146628731 (var1836) String)
(declare-const null-var1836 var1836)
(declare-const null-String String)
(declare-const null-var2055 var2055)
(declare-const var3867 var1836) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONWriter$Context 
(assert (not (= var3867 null-var1836)))
(declare-const var2994 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2994 null-String)))
 ; Statement: if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.time.format.DateTimeFormatter dateFormatter> = null 
(assert (= var2994 null-String)) ; Cond: r2 == null 
(declare-const var3867!1 var1836)
(assert (not (= var3867!1 null-var1836)))
(assert (= (dateFormatter/-146628731 var3867!1) null-var2055)) ; Statement: r0.<com.alibaba.fastjson2.JSONWriter$Context: java.time.format.DateTimeFormatter dateFormatter> = null 
(assert true) ; Non Conditional
 ; Statement: if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2 
(assert (= var2994 null-String)) ; Cond: r2 == null 
(declare-const var3867!2 var1836)
(assert (not (= var3867!2 null-var1836)))
(assert (= (dateFormat/-146628731 var3867!2) var2994)) ; Statement: r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {dateFormatter/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], java.time.format.DateTimeFormatter), dateFormat/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], java.lang.String)}
; {var1836=com.alibaba.fastjson2.JSONWriter$Context, var3867=r0, var2994=r2, var3453=null_type, var2055=java.time.format.DateTimeFormatter}
; {com.alibaba.fastjson2.JSONWriter$Context=var1836, r0=var3867, r2=var2994, null_type=var3453, java.time.format.DateTimeFormatter=var2055}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONWriter$Context;	r2 := @parameter0: java.lang.String;	if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.time.format.DateTimeFormatter dateFormatter> = null;	r0.<com.alibaba.fastjson2.JSONWriter$Context: java.time.format.DateTimeFormatter dateFormatter> = null;	if r2 == null goto r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2;	r0.<com.alibaba.fastjson2.JSONWriter$Context: java.lang.String dateFormat> = r2;	return
;block_num 4