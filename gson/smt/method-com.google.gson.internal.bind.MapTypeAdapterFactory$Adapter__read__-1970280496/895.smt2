(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2295 0)
(declare-sort var197 0)
(declare-sort var2271 0)
(declare-sort var3658 0)
(declare-sort var3165 0)
(declare-sort var2781 0)
(declare-sort var1957 0)
(declare-sort var1629 0)
(declare-sort var1687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var197) var2271)
(declare-fun constructor/220257121 (var2295) var3658)
(declare-fun var3658_construct/786007884 (var3658) var3165)
(declare-fun cast-from-var3165-to-var2781 (var3165) var2781)
(declare-fun beginObject/803465945 (var197) void)
(declare-fun hasNext/1315043792 (var197) Bool)
(declare-fun promoteNameToValue/836481334 (var1957 var197) void)
(declare-fun keyTypeAdapter/220257121 (var2295) var1629)
(declare-fun read/91428458 (var1629 var197) var3165)
(declare-fun valueTypeAdapter/220257121 (var2295) var1629)
(declare-fun var2781_put/1464166817 (var2781 var3165 var3165) var3165)
(declare-fun var1687-init () var1687)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3165) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/303326391 (var1687 String) void)
(declare-const null-var2295 var2295)
(declare-const null-var197 var197)
(declare-const var2271-NULL var2271)
(declare-const var2271-BEGIN_ARRAY var2271)
(declare-const var1957-INSTANCE var1957)
(declare-const null-var3165 var3165)
(declare-const var1804 var2295) ; Statement: r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var1804 null-var2295)))
(declare-const var269 var197) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var269 null-var197)))
(assert true)
(define-const var865 var2271 (peek/-699404472 var269)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var2664 var2271 var2271-NULL) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL> 
 ; Statement: if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(assert (not (= var865 var2664))) ; Cond: r1 != $r2 
(define-const var70 var3658 (constructor/220257121 var1804)) ; Statement: $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor> 
(define-const var2737 var3165 (var3658_construct/786007884 var70)) ; Statement: $r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>() 
(define-const var1811 var2781 (cast-from-var3165-to-var2781 var2737)) ; Statement: r6 = (java.util.Map) $r5 
(define-const var3622 var2271 var2271-BEGIN_ARRAY) ; Statement: $r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY> 
 ; Statement: if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>() 
(assert (not (= var865 var3622))) ; Cond: r1 != $r7 
(assert true)
;(assert (beginObject/803465945 var269)) ; Statement: virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>() 

(declare-const var269!1 var197)
(assert true) ; Non Conditional
(assert true)
(define-const var3148 Bool (hasNext/1315043792 var269!1)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endObject()>() 
(assert (not (= (ite var3148 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3300 var1957 var1957-INSTANCE) ; Statement: $r8 = <com.google.gson.internal.JsonReaderInternalAccess: com.google.gson.internal.JsonReaderInternalAccess INSTANCE> 
(assert true)
;(assert (promoteNameToValue/836481334 var3300 var269!1)) ; Statement: virtualinvoke $r8.<com.google.gson.internal.JsonReaderInternalAccess: void promoteNameToValue(com.google.gson.stream.JsonReader)>(r0) 

(declare-const var3300!1 var1957)
(declare-const var269!2 var197)
(define-const var1900 var1629 (keyTypeAdapter/220257121 var1804)) ; Statement: $r9 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter keyTypeAdapter> 
(assert true)
(define-const var3415 var3165 (read/91428458 var1900 var269!2)) ; Statement: r26 = virtualinvoke $r9.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0) 
(define-const var1600 var1629 (valueTypeAdapter/220257121 var1804)) ; Statement: $r10 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter valueTypeAdapter> 
(assert true)
(define-const var3104 var3165 (read/91428458 var1600 var269!2)) ; Statement: r27 = virtualinvoke $r10.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0) 
(define-const var2368 var3165 (var2781_put/1464166817 var1811 var3415 var3104)) ; Statement: r28 = interfaceinvoke r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r26, r27) 
 ; Statement: if r28 == null goto (branch) 
(assert (not (= var2368 null-var3165))) ; Negate: Cond: r28 == null  
(define-const var213 var1687 var1687-init) ; Statement: $r11 = new com.google.gson.JsonSyntaxException 
(define-const var3243 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3243)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3243!1 String)
(assert (= var3243!1 ""))
(assert true)
(define-const var3847 String (append/672562846 var3243!1 "duplicate key: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duplicate key: ") 
(declare-const var3243!2 String)
(assert (= var3243!2 (str.++ var3243!1 "duplicate key: ")))
(assert true)
(define-const var2516 String (append/-1031950772 var3847 var3415)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r26) 
(declare-const var3847!1 String)
(assert (str.prefixof var3847 var3847!1))
(assert true)
(define-const var3115 String (toString/-2075883882 var2516)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/303326391 var213 var3115)) ; Statement: specialinvoke $r11.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r15) 

(declare-const var213!1 var1687)
(declare-const var3115!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), constructor/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.internal.ObjectConstructor), var3658_construct/786007884=([com.google.gson.internal.ObjectConstructor], java.lang.Object), cast-from-var3165-to-var2781=([java.lang.Object], java.util.Map), beginObject/803465945=([com.google.gson.stream.JsonReader], void), hasNext/1315043792=([com.google.gson.stream.JsonReader], boolean), promoteNameToValue/836481334=([com.google.gson.internal.JsonReaderInternalAccess, com.google.gson.stream.JsonReader], void), keyTypeAdapter/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.TypeAdapter), read/91428458=([com.google.gson.TypeAdapter, com.google.gson.stream.JsonReader], java.lang.Object), valueTypeAdapter/220257121=([com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter], com.google.gson.TypeAdapter), var2781_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), var1687-init=([], com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/303326391=([com.google.gson.JsonSyntaxException, java.lang.String], void)}
; {var2295=com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var1804=r3, var197=com.google.gson.stream.JsonReader, var269=r0, var2271=com.google.gson.stream.JsonToken, var865=r1, var2664=$r2, var3658=com.google.gson.internal.ObjectConstructor, var70=$r4, var3165=java.lang.Object, var2737=$r5, var2781=java.util.Map, var1811=r6, var3622=$r7, var3148=$z0, var1957=com.google.gson.internal.JsonReaderInternalAccess, var3300=$r8, var1629=com.google.gson.TypeAdapter, var1900=$r9, var3415=r26, var1600=$r10, var3104=r27, var2368=r28, var1687=com.google.gson.JsonSyntaxException, var213=$r11, var3243=$r12, var3847=$r13, var2516=$r14, var3115=$r15}
; {com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var2295, r3=var1804, com.google.gson.stream.JsonReader=var197, r0=var269, com.google.gson.stream.JsonToken=var2271, r1=var865, $r2=var2664, com.google.gson.internal.ObjectConstructor=var3658, $r4=var70, java.lang.Object=var3165, $r5=var2737, java.util.Map=var2781, r6=var1811, $r7=var3622, $z0=var3148, com.google.gson.internal.JsonReaderInternalAccess=var1957, $r8=var3300, com.google.gson.TypeAdapter=var1629, $r9=var1900, r26=var3415, $r10=var1600, r27=var3104, r28=var2368, com.google.gson.JsonSyntaxException=var1687, $r11=var213, $r12=var3243, $r13=var3847, $r14=var2516, $r15=var3115}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NULL>;	if r1 != $r2 goto $r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r4 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.internal.ObjectConstructor constructor>;	$r5 = interfaceinvoke $r4.<com.google.gson.internal.ObjectConstructor: java.lang.Object construct()>();	r6 = (java.util.Map) $r5;	$r7 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken BEGIN_ARRAY>;	if r1 != $r7 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>();	virtualinvoke r0.<com.google.gson.stream.JsonReader: void beginObject()>();	$z0 = virtualinvoke r0.<com.google.gson.stream.JsonReader: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void endObject()>();	$r8 = <com.google.gson.internal.JsonReaderInternalAccess: com.google.gson.internal.JsonReaderInternalAccess INSTANCE>;	virtualinvoke $r8.<com.google.gson.internal.JsonReaderInternalAccess: void promoteNameToValue(com.google.gson.stream.JsonReader)>(r0);	$r9 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter keyTypeAdapter>;	r26 = virtualinvoke $r9.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0);	$r10 = r3.<com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter: com.google.gson.TypeAdapter valueTypeAdapter>;	r27 = virtualinvoke $r10.<com.google.gson.TypeAdapter: java.lang.Object read(com.google.gson.stream.JsonReader)>(r0);	r28 = interfaceinvoke r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r26, r27);	if r28 == null goto (branch);	$r11 = new com.google.gson.JsonSyntaxException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("duplicate key: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r26);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 6