(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1005 0)
(declare-sort var2226 0)
(declare-sort var3495 0)
(declare-sort var1331 0)
(declare-sort var961 0)
(declare-sort var2314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var2226) var3495)
(declare-fun constructor/220257121 (var1005) var1331)
(declare-fun var1331_construct/786007884 (var1331) var961)
(declare-fun cast-from-var961-to-var2314 (var961) var2314)
(declare-fun beginObject/803465945 (var2226) void)
(declare-fun hasNext/1315043792 (var2226) Bool)
(declare-fun endObject/938775527 (var2226) void)
(declare-const null-var1005 var1005)
(declare-const null-var2226 var2226)
(declare-const var3495-NULL var3495)
(declare-const var3495-BEGIN_ARRAY var3495)
(declare-const var2821 var1005) ; Statement: r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var2821 null-var1005)))
(declare-const var1180 var2226) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var1180 null-var2226)))
(assert true)
(define-const var3214 var3495 (peek/-699404472 var1180)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var2648 var3495 var3495-NULL) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(assert (not (= var3214 var2648))) ; Cond: r1 != $r2 
(define-const var892 var1331 (constructor/220257121 var2821)) ; Statement: $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(define-const var3831 var961 (var1331_construct/786007884 var892)) ; Statement: $r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>() 
(define-const var160 var2314 (cast-from-var961-to-var2314 var3831)) ; Statement: r6 = (java.util.Map) $r5 
(define-const var65 var3495 var3495-BEGIN_ARRAY) ; Statement: $r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY> 
 ; Statement: if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>() 
(assert (not (= var3214 var65))) ; Cond: r1 != $r7 
(assert true)
;(assert (beginObject/803465945 var1180)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>() 

(declare-const var1180!1 var2226)
(assert true) ; Non Conditional
(assert true)
(define-const var3856 Bool (hasNext/1315043792 var1180!1)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endObject()>() 
(assert (= (ite var3856 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (endObject/938775527 var1180!1)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonReader: void endObject()>() 

(declare-const var1180!2 var2226)
(assert true) ; Non Conditional
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), constructor/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.internal.ObjectConstructor), var1331_construct/786007884=([com.google.gson.internal.ObjectConstructor], java.lang.Object), cast-from-var961-to-var2314=([java.lang.Object], java.util.Map), beginObject/803465945=([com.google.gson.stream.JsonReader], void), hasNext/1315043792=([com.google.gson.stream.JsonReader], boolean), endObject/938775527=([com.google.gson.stream.JsonReader], void)}
; {var1005=com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var2821=r3, var2226=com.google.gson.stream.JsonReader, var1180=r0, var3495=com.google.gson.stream.JsonToken, var3214=r1, var2648=$r2, var1331=com.google.gson.internal.ObjectConstructor, var892=$r4, var961=java.lang.Object, var3831=$r5, var2314=java.util.Map, var160=r6, var65=$r7, var3856=$z0}
; {com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var1005, r3=var2821, com.google.gson.stream.JsonReader=var2226, r0=var1180, com.google.gson.stream.JsonToken=var3495, r1=var3214, $r2=var2648, com.google.gson.internal.ObjectConstructor=var1331, $r4=var892, java.lang.Object=var961, $r5=var3831, java.util.Map=var2314, r6=var160, $r7=var65, $z0=var3856}
;seq 
;cnt {}
;stmts r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>();	r6 = (java.util.Map) $r5;	$r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY>;	if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>();	virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>();	$z0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endObject()>();	virtualinvoke r0.<com.google.gson.stream.JsonReader: void endObject()>();	return r6
;block_num 6