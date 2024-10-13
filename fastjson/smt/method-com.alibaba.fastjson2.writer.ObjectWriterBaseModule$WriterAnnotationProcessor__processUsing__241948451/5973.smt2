(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var3042 var3042)
(declare-const null-ClassObject ClassObject)
(declare-const var3848 var3042) ; Statement: r5 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor 
(assert (not (= var3848 null-var3042)))
(declare-const var376 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var376 null-ClassObject)))
(assert true)
(define-const var2396 String (getName/-1958580599 var376)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var1304 String "com.fasterxml.jackson.databind.JsonSerializer$None") ; Statement: r2 = "com.fasterxml.jackson.databind.JsonSerializer$None" 
(assert true)
(define-const var1985 Bool (= var1304 var2396)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer" 
(assert (not (= (ite var1985 1 0) 0))) ; Cond: $z0 != 0 
(define-const var738 String "com.fasterxml.jackson.databind.ser.std.ToStringSerializer") ; Statement: $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer" 
(assert true)
(define-const var2848 Bool (= var738 var2396)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 == 0 goto return null 
(assert (= (ite var2848 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var3042=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor, var3848=r5, var376=r0, var2396=r1, var1304=r2, var1985=$z0, var738=$r3, var2848=$z1}
; {com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor=var3042, r5=var3848, r0=var376, r1=var2396, r2=var1304, $z0=var1985, $r3=var738, $z1=var2848}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r5 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	r2 = "com.fasterxml.jackson.databind.JsonSerializer$None";	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer";	$r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 == 0 goto return null;	return null
;block_num 3