(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var1435 var1435)
(declare-const null-ClassObject ClassObject)
(declare-const var3338 var1435) ; Statement: r5 := @this: com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor 
(assert (not (= var3338 null-var1435)))
(declare-const var3424 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3424 null-ClassObject)))
(assert true)
(define-const var3145 String (getName/-1958580599 var3424)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var382 String "com.fasterxml.jackson.databind.JsonDeserializer$None") ; Statement: r2 = "com.fasterxml.jackson.databind.JsonDeserializer$None" 
(define-const var3890 String "com.alibaba.fastjson2.adapter.jackson.databind.JsonDeserializer$None") ; Statement: r3 = "com.alibaba.fastjson2.adapter.jackson.databind.JsonDeserializer$None" 
(assert true)
(define-const var2428 Bool (= var382 var3145)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return null 
(assert (not (= (ite var2428 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var1435=com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor, var3338=r5, var3424=r0, var3145=r1, var382=r2, var3890=r3, var2428=$z0}
; {com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor=var1435, r5=var3338, r0=var3424, r1=var3145, r2=var382, r3=var3890, $z0=var2428}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	r2 = "com.fasterxml.jackson.databind.JsonDeserializer$None";	r3 = "com.alibaba.fastjson2.adapter.jackson.databind.JsonDeserializer$None";	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return null;	return null
;block_num 2