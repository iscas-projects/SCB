(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3134 0)
(declare-sort var1359 0)
(declare-sort var2024 0)
(declare-sort var3930 0)
(declare-sort var341 0)
(declare-sort var1814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var1359) var2024)
(declare-fun constructor/220257121 (var3134) var3930)
(declare-fun var3930_construct/786007884 (var3930) var341)
(declare-fun cast-from-var341-to-var1814 (var341) var1814)
(declare-fun beginArray/1551982569 (var1359) void)
(declare-fun hasNext/1315043792 (var1359) Bool)
(declare-fun endArray/-1907335909 (var1359) void)
(declare-const null-var3134 var3134)
(declare-const null-var1359 var1359)
(declare-const var2024-NULL var2024)
(declare-const var2024-BEGIN_ARRAY var2024)
(declare-const var16 var3134) ; Statement: r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var16 null-var3134)))
(declare-const var3278 var1359) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var3278 null-var1359)))
(assert true)
(define-const var3943 var2024 (peek/-699404472 var3278)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var1450 var2024 var2024-NULL) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(assert (not (= var3943 var1450))) ; Cond: r1 != $r2 
(define-const var1125 var3930 (constructor/220257121 var16)) ; Statement: $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(define-const var903 var341 (var3930_construct/786007884 var1125)) ; Statement: $r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>() 
(define-const var1599 var1814 (cast-from-var341-to-var1814 var903)) ; Statement: r6 = (java.util.Map) $r5 
(define-const var2265 var2024 var2024-BEGIN_ARRAY) ; Statement: $r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY> 
 ; Statement: if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>() 
(assert (not (not (= var3943 var2265)))) ; Negate: Cond: r1 != $r7  
(assert true)
;(assert (beginArray/1551982569 var3278)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginArray()>() 

(declare-const var3278!1 var1359)
(assert true) ; Non Conditional
(assert true)
(define-const var3613 Bool (hasNext/1315043792 var3278!1)) ; Statement: $z1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>() 
(assert (= (ite var3613 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (endArray/-1907335909 var3278!1)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>() 

(declare-const var3278!2 var1359)
 ; Statement: goto [?= return r6] 
(assert true) ; Non Conditional
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), constructor/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.internal.ObjectConstructor), var3930_construct/786007884=([com.google.gson.internal.ObjectConstructor], java.lang.Object), cast-from-var341-to-var1814=([java.lang.Object], java.util.Map), beginArray/1551982569=([com.google.gson.stream.JsonReader], void), hasNext/1315043792=([com.google.gson.stream.JsonReader], boolean), endArray/-1907335909=([com.google.gson.stream.JsonReader], void)}
; {var3134=com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var16=r3, var1359=com.google.gson.stream.JsonReader, var3278=r0, var2024=com.google.gson.stream.JsonToken, var3943=r1, var1450=$r2, var3930=com.google.gson.internal.ObjectConstructor, var1125=$r4, var341=java.lang.Object, var903=$r5, var1814=java.util.Map, var1599=r6, var2265=$r7, var3613=$z1}
; {com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var3134, r3=var16, com.google.gson.stream.JsonReader=var1359, r0=var3278, com.google.gson.stream.JsonToken=var2024, r1=var3943, $r2=var1450, com.google.gson.internal.ObjectConstructor=var3930, $r4=var1125, java.lang.Object=var341, $r5=var903, java.util.Map=var1814, r6=var1599, $r7=var2265, $z1=var3613}
;seq 
;cnt {}
;stmts r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>();	r6 = (java.util.Map) $r5;	$r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY>;	if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>();	virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginArray()>();	$z1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>();	if $z1 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>();	virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>();	goto [?= return r6];	return r6
;block_num 6