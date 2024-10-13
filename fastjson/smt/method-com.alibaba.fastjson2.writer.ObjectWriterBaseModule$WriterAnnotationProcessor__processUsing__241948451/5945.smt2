(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var590 0)
(declare-sort var520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var520!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var590 var590)
(declare-const null-ClassObject ClassObject)
(declare-const var2381 var590) ; Statement: r5 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor 
(assert (not (= var2381 null-var590)))
(declare-const var3102 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3102 null-ClassObject)))
(assert true)
(define-const var1011 String (getName/-1958580599 var3102)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var2550 String "com.fasterxml.jackson.databind.JsonSerializer$None") ; Statement: r2 = "com.fasterxml.jackson.databind.JsonSerializer$None" 
(assert true)
(define-const var295 Bool (= var2550 var1011)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer" 
(assert (not (not (= (ite var295 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var821 ClassObject var520!class) ; Statement: $r4 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter;" 
(assert true)
(define-const var172 Bool (isAssignableFrom/-1028998700 var821 var3102)) ; Statement: $z2 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z2 == 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer" 
(assert (not (= (ite var172 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var590=com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor, var2381=r5, var3102=r0, var1011=r1, var2550=r2, var295=$z0, var520=com.alibaba.fastjson2.writer.ObjectWriter, var821=$r4, var172=$z2}
; {com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor=var590, r5=var2381, r0=var3102, r1=var1011, r2=var2550, $z0=var295, com.alibaba.fastjson2.writer.ObjectWriter=var520, $r4=var821, $z2=var172}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.writer.ObjectWriterBaseModule$WriterAnnotationProcessor;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	r2 = "com.fasterxml.jackson.databind.JsonSerializer$None";	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer";	$r4 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter;";	$z2 = virtualinvoke $r4.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z2 == 0 goto $r3 = "com.fasterxml.jackson.databind.ser.std.ToStringSerializer";	return r0
;block_num 3