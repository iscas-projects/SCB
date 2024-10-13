(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var1006 var1006)
(declare-const null-ClassObject ClassObject)
(declare-const var2486 var1006) ; Statement: r5 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor 
(assert (not (= var2486 null-var1006)))
(declare-const var3160 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3160 null-ClassObject)))
(assert true)
(define-const var2010 String (getName/-1958580599 var3160)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var970 String "com.fasterxml.jackson.databind.JsonSerializer$None") ; Statement: r2 = "com.fasterxml.jackson.databind.JsonSerializer$None" 
(assert true)
(define-const var2848 Bool (= var970 var2010)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer" 
(assert (not (= (ite var2848 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2237 String "com.fasterxml.jackson.databind.ser.std.ToStringSerializer") ; Statement: $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer" 
(assert true)
(define-const var2199 Bool (= var2237 var2010)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 == 0 goto return null 
(assert (not (= (ite var2199 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return class "Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;" 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var1006=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor, var2486=r5, var3160=r0, var2010=r1, var970=r2, var2848=$z0, var2237=$r3, var2199=$z1}
; {com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor=var1006, r5=var2486, r0=var3160, r1=var2010, r2=var970, $z0=var2848, $r3=var2237, $z1=var2199}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r5 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	r2 = "com.fasterxml.jackson.databind.JsonSerializer$None";	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer";	$r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 == 0 goto return null;	return class "Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;"
;block_num 3