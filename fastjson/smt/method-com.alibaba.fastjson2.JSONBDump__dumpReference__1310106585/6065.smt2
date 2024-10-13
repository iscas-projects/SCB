(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var755 0)
(declare-sort var870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonWriter/302871663 (var755) var870)
(declare-fun writeRaw/1434477577 (var870 String) void)
(declare-fun readReference/1640432970 (var755) String)
(declare-fun writeString/-1604794942 (var870 String) void)
(declare-const null-var755 var755)
(declare-const var526 var755) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONBDump 
(assert (not (= var526 null-var755)))
(define-const var1030 var870 (jsonWriter/302871663 var526)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter> 
(assert true)
;(assert (writeRaw/1434477577 var1030 "{\u0022$ref\u0022:")) ; Statement: virtualinvoke $r1.<com.alibaba.fastjson2.JSONWriter: void writeRaw(java.lang.String)>("{\"$ref\":") 

(declare-const var1030!1 var870)
(declare-const var865 String)
(assert true)
(define-const var2992 String (readReference/1640432970 var526)) ; Statement: r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONBDump: java.lang.String readReference()>() 
(define-const var777 var870 (jsonWriter/302871663 var526)) ; Statement: $r3 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter> 
(assert true)
;(assert (writeString/-1604794942 var777 var2992)) ; Statement: virtualinvoke $r3.<com.alibaba.fastjson2.JSONWriter: void writeString(java.lang.String)>(r2) 

(declare-const var777!1 var870)
(declare-const var2992!1 String)
(define-const var2656 String "#-1") ; Statement: $r4 = "#-1" 
(assert true)
(define-const var522 Bool (= var2656 var2992!1)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r5 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter> 
(assert (not (= (ite var522 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2829 var870 (jsonWriter/302871663 var526)) ; Statement: $r5 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter> 
(assert true)
;(assert (writeRaw/1434477577 var2829 "}")) ; Statement: virtualinvoke $r5.<com.alibaba.fastjson2.JSONWriter: void writeRaw(java.lang.String)>("}") 

(declare-const var2829!1 var870)
(declare-const var3512 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonWriter/302871663=([com.alibaba.fastjson2.JSONBDump], com.alibaba.fastjson2.JSONWriter), writeRaw/1434477577=([com.alibaba.fastjson2.JSONWriter, java.lang.String], void), readReference/1640432970=([com.alibaba.fastjson2.JSONBDump], java.lang.String), writeString/-1604794942=([com.alibaba.fastjson2.JSONWriter, java.lang.String], void)}
; {var755=com.alibaba.fastjson2.JSONBDump, var526=r0, var870=com.alibaba.fastjson2.JSONWriter, var1030=$r1, var865="{\"$ref\":", var2992=r2, var777=$r3, var2656=$r4, var522=$z0, var2829=$r5, var3512="}"}
; {com.alibaba.fastjson2.JSONBDump=var755, r0=var526, com.alibaba.fastjson2.JSONWriter=var870, $r1=var1030, "{\"$ref\":"=var865, r2=var2992, $r3=var777, $r4=var2656, $z0=var522, $r5=var2829, "}"=var3512}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONBDump;	$r1 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter>;	virtualinvoke $r1.<com.alibaba.fastjson2.JSONWriter: void writeRaw(java.lang.String)>("{\"$ref\":");	r2 = virtualinvoke r0.<com.alibaba.fastjson2.JSONBDump: java.lang.String readReference()>();	$r3 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter>;	virtualinvoke $r3.<com.alibaba.fastjson2.JSONWriter: void writeString(java.lang.String)>(r2);	$r4 = "#-1";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r5 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter>;	$r5 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.JSONWriter jsonWriter>;	virtualinvoke $r5.<com.alibaba.fastjson2.JSONWriter: void writeRaw(java.lang.String)>("}");	return
;block_num 2