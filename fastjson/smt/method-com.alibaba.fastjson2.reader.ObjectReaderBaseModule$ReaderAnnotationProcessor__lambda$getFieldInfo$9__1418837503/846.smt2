(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort var2311 0)
(declare-sort var2570 0)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var1381) String)
(declare-const null-var1192 var1192)
(declare-const null-String String)
(declare-const null-var2570 var2570)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1381 var1381)
(declare-const var1682 var1192) ; Statement: r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor 
(assert (not (= var1682 null-var1192)))
(declare-const var2293 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2293 null-String)))
(declare-const var2481 var2570) ; Statement: r7 := @parameter1: com.alibaba.fastjson2.codec.FieldInfo 
(assert (not (= var2481 null-var2570)))
(declare-const var2448 ClassObject) ; Statement: r9 := @parameter2: java.lang.Class 
(assert (not (= var2448 null-ClassObject)))
(declare-const var1536 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var1536 null-String)))
(declare-const var1525 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var1525 null-String)))
(declare-const var1802 var1381) ; Statement: r0 := @parameter5: java.lang.reflect.Field 
(assert (not (= var1802 null-var1381)))
(assert true)
(define-const var1722 String (getName/1618348824 var1802)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var1399 Bool (= var1722 var2293)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert (= (ite var1399 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var94 String (getName/1618348824 var1802)) ; Statement: $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var3759 Bool (= var94 var1536)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z1 == 0 goto $r6 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert (= (ite var3759 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2561 String (getName/1618348824 var1802)) ; Statement: $r6 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var471 Bool (= var2561 var1525)) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var471 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String)}
; {var1192=com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor, var1682=r8, var2293=r1, var2311=null_type, var2570=com.alibaba.fastjson2.codec.FieldInfo, var2481=r7, var2448=r9, var1536=r3, var1525=r5, var1381=java.lang.reflect.Field, var1802=r0, var1722=$r2, var1399=$z0, var94=$r4, var3759=$z1, var2561=$r6, var471=$z2}
; {com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor=var1192, r8=var1682, r1=var2293, null_type=var2311, com.alibaba.fastjson2.codec.FieldInfo=var2570, r7=var2481, r9=var2448, r3=var1536, r5=var1525, java.lang.reflect.Field=var1381, r0=var1802, $r2=var1722, $z0=var1399, $r4=var94, $z1=var3759, $r6=var2561, $z2=var471}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r8 := @this: com.alibaba.fastjson2.reader.ObjectReaderBaseModule$ReaderAnnotationProcessor;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: com.alibaba.fastjson2.codec.FieldInfo;	r9 := @parameter2: java.lang.Class;	r3 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String;	r0 := @parameter5: java.lang.reflect.Field;	$r2 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z1 == 0 goto $r6 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r6 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z2 == 0 goto return;	return
;block_num 4