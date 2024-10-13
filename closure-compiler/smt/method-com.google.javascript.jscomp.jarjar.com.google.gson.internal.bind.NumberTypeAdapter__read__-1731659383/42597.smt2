(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var882 0)
(declare-sort var1632 0)
(declare-sort var395 0)
(declare-sort var1566 0)
(declare-sort var2078 0)
(declare-sort var1134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/134225960 (var882) var1632)
(declare-fun ordinal/-291641772 (var1566) Int)
(declare-fun cast-from-var1632-to-var1566 (var1632) var1566)
(declare-fun var2078-init () var2078)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1134) String)
(declare-fun cast-from-var1632-to-var1134 (var1632) var1134)
(declare-fun getPath/1855716710 (var882) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1916012838 (var2078 String) void)
(declare-const null-var279 var279)
(declare-const null-var882 var882)
(declare-const var395-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var2127 var279) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter 
(assert (not (= var2127 null-var279)))
(declare-const var3045 var882) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var3045 null-var882)))
(assert true)
(define-const var2853 var1632 (peek/134225960 var3045)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var3313 (Array Int Int) var395-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var2191 Int (ordinal/-291641772 (cast-from-var1632-to-var1566 var2853))) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var2505 Int (select var3313 var2191)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     case 2: goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberStrategy toNumberStrategy>;     case 3: goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberStrategy toNumberStrategy>;     default: goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException; } 
(assert (and (not (= var2505 3)) (and (not (= var2505 2)) (and (not (= var2505 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3488 var2078 var2078-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException 
(define-const var475 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var475)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var475!1 String)
(assert (= var475!1 ""))
(assert true)
(define-const var3262 String (append/672562846 var475!1 "Expecting number, got: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting number, got: ") 
(declare-const var475!2 String)
(assert (= var475!2 (str.++ var475!1 "Expecting number, got: ")))
(assert true)
(define-const var3506 String (append/-1031950772 var3262 (cast-from-var1632-to-var1134 var2853))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3262!1 String)
(assert (str.prefixof var3262 var3262!1))
(assert true)
(define-const var171 String (append/672562846 var3506 "; at path ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ") 
(declare-const var3506!1 String)
(assert (= var3506!1 (str.++ var3506 "; at path ")))
(assert true)
(define-const var3117 String (getPath/1855716710 var3045)) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPath()>() 
(assert true)
(define-const var471 String (append/672562846 var171 var3117)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var171!1 String)
(assert (= var171!1 (str.++ var171 var3117)))
(assert true)
(define-const var209 String (toString/-2075883882 var471)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1916012838 var3488 var209)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r13) 

(declare-const var3488!1 var2078)
(declare-const var209!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/134225960=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1632-to-var1566=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Enum), var2078-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1632-to-var1134=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), getPath/1855716710=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1916012838=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException, java.lang.String], void)}
; {var279=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter, var2127=r3, var882=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var3045=r0, var1632=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var2853=r1, var395=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter$2, var3313=$r2, var1566=java.lang.Enum, var2191=$i0, var2505=$i1, var2078=com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException, var3488=$r6, var475=$r7, var3262=$r8, var1134=java.lang.Object, var3506=$r9, var171=$r11, var3117=$r10, var471=$r12, var209=$r13}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter=var279, r3=var2127, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var882, r0=var3045, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var1632, r1=var2853, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter$2=var395, $r2=var3313, java.lang.Enum=var1566, $i0=var2191, $i1=var2505, com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException=var2078, $r6=var3488, $r7=var475, $r8=var3262, java.lang.Object=var1134, $r9=var3506, $r11=var171, $r10=var3117, $r12=var471, $r13=var209}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter$2: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     case 2: goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberStrategy toNumberStrategy>;     case 3: goto $r4 = r3.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.NumberTypeAdapter: com.google.javascript.jscomp.jarjar.com.google.gson.ToNumberStrategy toNumberStrategy>;     default: goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException; };	$r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting number, got: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; at path ");	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String getPath()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonSyntaxException: void <init>(java.lang.String)>($r13);	throw $r6
;block_num 2