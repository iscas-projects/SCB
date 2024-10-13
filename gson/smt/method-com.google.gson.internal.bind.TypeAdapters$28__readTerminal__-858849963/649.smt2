(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var55 0)
(declare-sort var2336 0)
(declare-sort var497 0)
(declare-sort var3153 0)
(declare-sort var3839 0)
(declare-sort var1619 0)
(declare-sort var2404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3839) Int)
(declare-fun cast-from-var497-to-var3839 (var497) var3839)
(declare-fun var1619-init () var1619)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2404) String)
(declare-fun cast-from-var497-to-var2404 (var497) var2404)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1619 String) void)
(declare-const null-var55 var55)
(declare-const null-var2336 var2336)
(declare-const null-var497 var497)
(declare-const var3153-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var1058 var55) ; Statement: r16 := @this: com.google.gson.internal.bind.TypeAdapters$28 
(assert (not (= var1058 null-var55)))
(declare-const var709 var2336) ; Statement: r2 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var709 null-var2336)))
(declare-const var356 var497) ; Statement: r0 := @parameter1: com.google.gson.stream.JsonToken 
(assert (not (= var356 null-var497)))
(define-const var3250 (Array Int Int) var3153-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r1 = <com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var942 Int (ordinal/-291641772 (cast-from-var497-to-var3839 var356))) ; Statement: $i0 = virtualinvoke r0.<com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var2101 Int (select var3250 var942)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; } 
(assert (and (not (= var2101 3)) (and (not (= var2101 2)) (and (not (= var2101 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var1431 var1619 var1619-init) ; Statement: $r11 = new java.lang.IllegalStateException 
(define-const var1933 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1933)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1933!1 String)
(assert (= var1933!1 ""))
(assert true)
(define-const var2087 String (append/672562846 var1933!1 "Unexpected token: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ") 
(declare-const var1933!2 String)
(assert (= var1933!2 (str.++ var1933!1 "Unexpected token: ")))
(assert true)
(define-const var394 String (append/-1031950772 var2087 (cast-from-var497-to-var2404 var356))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2087!1 String)
(assert (str.prefixof var2087 var2087!1))
(assert true)
(define-const var3519 String (toString/-2075883882 var394)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1431 var3519)) ; Statement: specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var1431!1 var1619)
(declare-const var3519!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var497-to-var3839=([com.google.gson.stream.JsonToken], java.lang.Enum), var1619-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var497-to-var2404=([com.google.gson.stream.JsonToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var55=com.google.gson.internal.bind.TypeAdapters$28, var1058=r16, var2336=com.google.gson.stream.JsonReader, var709=r2, var497=com.google.gson.stream.JsonToken, var356=r0, var3153=com.google.gson.internal.bind.TypeAdapters$35, var3250=$r1, var3839=java.lang.Enum, var942=$i0, var2101=$i1, var1619=java.lang.IllegalStateException, var1431=$r11, var1933=$r12, var2087=$r13, var2404=java.lang.Object, var394=$r14, var3519=$r15}
; {com.google.gson.internal.bind.TypeAdapters$28=var55, r16=var1058, com.google.gson.stream.JsonReader=var2336, r2=var709, com.google.gson.stream.JsonToken=var497, r0=var356, com.google.gson.internal.bind.TypeAdapters$35=var3153, $r1=var3250, java.lang.Enum=var3839, $i0=var942, $i1=var2101, java.lang.IllegalStateException=var1619, $r11=var1431, $r12=var1933, $r13=var2087, java.lang.Object=var2404, $r14=var394, $r15=var3519}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: com.google.gson.internal.bind.TypeAdapters$28;	r2 := @parameter0: com.google.gson.stream.JsonReader;	r0 := @parameter1: com.google.gson.stream.JsonToken;	$r1 = <com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r0.<com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; };	$r11 = new java.lang.IllegalStateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2