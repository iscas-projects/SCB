(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var454 0)
(declare-sort var1510 0)
(declare-sort var2289 0)
(declare-sort var908 0)
(declare-sort var1544 0)
(declare-sort var3175 0)
(declare-sort var1590 0)
(declare-sort var3551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var1510) var2289)
(declare-fun constructor/220257121 (var454) var908)
(declare-fun var908_construct/786007884 (var908) var1544)
(declare-fun cast-from-var1544-to-var3175 (var1544) var3175)
(declare-fun beginArray/1551982569 (var1510) void)
(declare-fun hasNext/1315043792 (var1510) Bool)
(declare-fun keyTypeAdapter/220257121 (var454) var1590)
(declare-fun read/91428458 (var1590 var1510) var1544)
(declare-fun valueTypeAdapter/220257121 (var454) var1590)
(declare-fun var3175_put/1464166817 (var3175 var1544 var1544) var1544)
(declare-fun var3551-init () var3551)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1544) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/303326391 (var3551 String) void)
(declare-const null-var454 var454)
(declare-const null-var1510 var1510)
(declare-const var2289-NULL var2289)
(declare-const var2289-BEGIN_ARRAY var2289)
(declare-const null-var1544 var1544)
(declare-const var3415 var454) ; Statement: r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var3415 null-var454)))
(declare-const var2995 var1510) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var2995 null-var1510)))
(assert true)
(define-const var1040 var2289 (peek/-699404472 var2995)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var2687 var2289 var2289-NULL) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(assert (not (= var1040 var2687))) ; Cond: r1 != $r2 
(define-const var534 var908 (constructor/220257121 var3415)) ; Statement: $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(define-const var3203 var1544 (var908_construct/786007884 var534)) ; Statement: $r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>() 
(define-const var2785 var3175 (cast-from-var1544-to-var3175 var3203)) ; Statement: r6 = (java.util.Map) $r5 
(define-const var2033 var2289 var2289-BEGIN_ARRAY) ; Statement: $r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY> 
 ; Statement: if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>() 
(assert (not (not (= var1040 var2033)))) ; Negate: Cond: r1 != $r7  
(assert true)
;(assert (beginArray/1551982569 var2995)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginArray()>() 

(declare-const var2995!1 var1510)
(assert true) ; Non Conditional
(assert true)
(define-const var2422 Bool (hasNext/1315043792 var2995!1)) ; Statement: $z1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>() 
(assert (not (= (ite var2422 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (beginArray/1551982569 var2995!1)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginArray()>() 

(declare-const var2995!2 var1510)
(define-const var1985 var1590 (keyTypeAdapter/220257121 var3415)) ; Statement: $r16 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter keyTypeAdapter> 
(assert true)
(define-const var3349 var1544 (read/91428458 var1985 var2995!2)) ; Statement: r23 = virtualinvoke $r16.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0) 
(define-const var1709 var1590 (valueTypeAdapter/220257121 var3415)) ; Statement: $r17 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter valueTypeAdapter> 
(assert true)
(define-const var2203 var1544 (read/91428458 var1709 var2995!2)) ; Statement: r24 = virtualinvoke $r17.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0) 
(define-const var2121 var1544 (var3175_put/1464166817 var2785 var3349 var2203)) ; Statement: r25 = interfaceinvoke r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r23, r24) 
 ; Statement: if r25 == null goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>() 
(assert (not (= var2121 null-var1544))) ; Negate: Cond: r25 == null  
(define-const var3891 var3551 var3551-init) ; Statement: $r18 = new com.google.gson.JsonSyntaxException 
(define-const var511 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var511)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var511!1 String)
(assert (= var511!1 ""))
(assert true)
(define-const var3708 String (append/672562846 var511!1 "duplicate key: ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duplicate key: ") 
(declare-const var511!2 String)
(assert (= var511!2 (str.++ var511!1 "duplicate key: ")))
(assert true)
(define-const var2624 String (append/-1031950772 var3708 var3349)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r23) 
(declare-const var3708!1 String)
(assert (str.prefixof var3708 var3708!1))
(assert true)
(define-const var2353 String (toString/-2075883882 var2624)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/303326391 var3891 var2353)) ; Statement: specialinvoke $r18.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r22) 

(declare-const var3891!1 var3551)
(declare-const var2353!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), constructor/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.internal.ObjectConstructor), var908_construct/786007884=([com.google.gson.internal.ObjectConstructor], java.lang.Object), cast-from-var1544-to-var3175=([java.lang.Object], java.util.Map), beginArray/1551982569=([com.google.gson.stream.JsonReader], void), hasNext/1315043792=([com.google.gson.stream.JsonReader], boolean), keyTypeAdapter/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.TypeAdapter), read/91428458=([com.google.gson.TypeAdapter, com.google.gson.stream.JsonReader], java.lang.Object), valueTypeAdapter/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.TypeAdapter), var3175_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), var3551-init=([], com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/303326391=([com.google.gson.JsonSyntaxException, java.lang.String], void)}
; {var454=com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var3415=r3, var1510=com.google.gson.stream.JsonReader, var2995=r0, var2289=com.google.gson.stream.JsonToken, var1040=r1, var2687=$r2, var908=com.google.gson.internal.ObjectConstructor, var534=$r4, var1544=java.lang.Object, var3203=$r5, var3175=java.util.Map, var2785=r6, var2033=$r7, var2422=$z1, var1590=com.google.gson.TypeAdapter, var1985=$r16, var3349=r23, var1709=$r17, var2203=r24, var2121=r25, var3551=com.google.gson.JsonSyntaxException, var3891=$r18, var511=$r19, var3708=$r20, var2624=$r21, var2353=$r22}
; {com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var454, r3=var3415, com.google.gson.stream.JsonReader=var1510, r0=var2995, com.google.gson.stream.JsonToken=var2289, r1=var1040, $r2=var2687, com.google.gson.internal.ObjectConstructor=var908, $r4=var534, java.lang.Object=var1544, $r5=var3203, java.util.Map=var3175, r6=var2785, $r7=var2033, $z1=var2422, com.google.gson.TypeAdapter=var1590, $r16=var1985, r23=var3349, $r17=var1709, r24=var2203, r25=var2121, com.google.gson.JsonSyntaxException=var3551, $r18=var3891, $r19=var511, $r20=var3708, $r21=var2624, $r22=var2353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>();	r6 = (java.util.Map) $r5;	$r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY>;	if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>();	virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginArray()>();	$z1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>();	if $z1 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>();	virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginArray()>();	$r16 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter keyTypeAdapter>;	r23 = virtualinvoke $r16.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0);	$r17 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter valueTypeAdapter>;	r24 = virtualinvoke $r17.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0);	r25 = interfaceinvoke r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r23, r24);	if r25 == null goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endArray()>();	$r18 = new com.google.gson.JsonSyntaxException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duplicate key: ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r23);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r22);	throw $r18
;block_num 6