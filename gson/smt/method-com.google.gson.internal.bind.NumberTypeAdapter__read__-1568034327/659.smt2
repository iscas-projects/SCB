(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1275 0)
(declare-sort var3134 0)
(declare-sort var3881 0)
(declare-sort var2436 0)
(declare-sort var1601 0)
(declare-sort var590 0)
(declare-sort var130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-699404472 (var3134) var3881)
(declare-fun ordinal/-291641772 (var1601) Int)
(declare-fun cast-from-var3881-to-var1601 (var3881) var1601)
(declare-fun var590-init () var590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var130) String)
(declare-fun cast-from-var3881-to-var130 (var3881) var130)
(declare-fun getPath/876800821 (var3134) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/303326391 (var590 String) void)
(declare-const null-var1275 var1275)
(declare-const null-var3134 var3134)
(declare-const var2436-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var881 var1275) ; Statement: r3 := @this: com.google.gson.internal.bind.NumberTypeAdapter 
(assert (not (= var881 null-var1275)))
(declare-const var2365 var3134) ; Statement: r0 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var2365 null-var3134)))
(assert true)
(define-const var1340 var3881 (peek/-699404472 var2365)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var2248 (Array Int Int) var2436-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r2 = <com.google.gson.internal.bind.NumberTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var253 Int (ordinal/-291641772 (cast-from-var3881-to-var1601 var1340))) ; Statement: $i0 = virtualinvoke r1.<com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var2915 Int (select var2248 var253)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void nextNull()>();     case 2: goto $r4 = r3.<com.google.gson.internal.bind.NumberTypeAdapter: com.google.gson.ToNumberStrategy toNumberStrategy>;     case 3: goto $r4 = r3.<com.google.gson.internal.bind.NumberTypeAdapter: com.google.gson.ToNumberStrategy toNumberStrategy>;     default: goto $r6 = new com.google.gson.JsonSyntaxException; } 
(assert (and (not (= var2915 3)) (and (not (= var2915 2)) (and (not (= var2915 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var2105 var590 var590-init) ; Statement: $r6 = new com.google.gson.JsonSyntaxException 
(define-const var2950 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2950)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2950!1 String)
(assert (= var2950!1 ""))
(assert true)
(define-const var580 String (append/672562846 var2950!1 "Expecting number, got: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting number, got: ") 
(declare-const var2950!2 String)
(assert (= var2950!2 (str.++ var2950!1 "Expecting number, got: ")))
(assert true)
(define-const var1691 String (append/-1031950772 var580 (cast-from-var3881-to-var130 var1340))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var580!1 String)
(assert (str.prefixof var580 var580!1))
(assert true)
(define-const var3048 String (append/672562846 var1691 "; at path ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ") 
(declare-const var1691!1 String)
(assert (= var1691!1 (str.++ var1691 "; at path ")))
(assert true)
(define-const var165 String (getPath/876800821 var2365)) ; Statement: $r10 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPath()>() 
(assert true)
(define-const var532 String (append/672562846 var3048 var165)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3048!1 String)
(assert (= var3048!1 (str.++ var3048 var165)))
(assert true)
(define-const var2374 String (toString/-2075883882 var532)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/303326391 var2105 var2374)) ; Statement: specialinvoke $r6.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r13) 

(declare-const var2105!1 var590)
(declare-const var2374!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-699404472=([com.google.gson.stream.JsonReader], com.google.gson.stream.JsonToken), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3881-to-var1601=([com.google.gson.stream.JsonToken], java.lang.Enum), var590-init=([], com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3881-to-var130=([com.google.gson.stream.JsonToken], java.lang.Object), getPath/876800821=([com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/303326391=([com.google.gson.JsonSyntaxException, java.lang.String], void)}
; {var1275=com.google.gson.internal.bind.NumberTypeAdapter, var881=r3, var3134=com.google.gson.stream.JsonReader, var2365=r0, var3881=com.google.gson.stream.JsonToken, var1340=r1, var2436=com.google.gson.internal.bind.NumberTypeAdapter$2, var2248=$r2, var1601=java.lang.Enum, var253=$i0, var2915=$i1, var590=com.google.gson.JsonSyntaxException, var2105=$r6, var2950=$r7, var580=$r8, var130=java.lang.Object, var1691=$r9, var3048=$r11, var165=$r10, var532=$r12, var2374=$r13}
; {com.google.gson.internal.bind.NumberTypeAdapter=var1275, r3=var881, com.google.gson.stream.JsonReader=var3134, r0=var2365, com.google.gson.stream.JsonToken=var3881, r1=var1340, com.google.gson.internal.bind.NumberTypeAdapter$2=var2436, $r2=var2248, java.lang.Enum=var1601, $i0=var253, $i1=var2915, com.google.gson.JsonSyntaxException=var590, $r6=var2105, $r7=var2950, $r8=var580, java.lang.Object=var130, $r9=var1691, $r11=var3048, $r10=var165, $r12=var532, $r13=var2374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.gson.internal.bind.NumberTypeAdapter;	r0 := @parameter0: com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.gson.stream.JsonReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.internal.bind.NumberTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r1.<com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto virtualinvoke r0.<com.google.gson.stream.JsonReader: void nextNull()>();     case 2: goto $r4 = r3.<com.google.gson.internal.bind.NumberTypeAdapter: com.google.gson.ToNumberStrategy toNumberStrategy>;     case 3: goto $r4 = r3.<com.google.gson.internal.bind.NumberTypeAdapter: com.google.gson.ToNumberStrategy toNumberStrategy>;     default: goto $r6 = new com.google.gson.JsonSyntaxException; };	$r6 = new com.google.gson.JsonSyntaxException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting number, got: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ");	$r10 = virtualinvoke r0.<com.google.gson.stream.JsonReader: java.lang.String getPath()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r13);	throw $r6
;block_num 2