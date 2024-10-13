(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var731 0)
(declare-sort var1408 0)
(declare-sort var1450 0)
(declare-sort var945 0)
(declare-sort var465 0)
(declare-sort var3244 0)
(declare-sort var277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var465) Int)
(declare-fun cast-from-var1450-to-var465 (var1450) var465)
(declare-fun var3244-init () var3244)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var277) String)
(declare-fun cast-from-var1450-to-var277 (var1450) var277)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3244 String) void)
(declare-const null-var731 var731)
(declare-const null-var1408 var1408)
(declare-const null-var1450 var1450)
(declare-const var945-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var3771 var731) ; Statement: r16 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28 
(assert (not (= var3771 null-var731)))
(declare-const var1431 var1408) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var1431 null-var1408)))
(declare-const var1111 var1450) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken 
(assert (not (= var1111 null-var1450)))
(define-const var2881 (Array Int Int) var945-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var480 Int (ordinal/-291641772 (cast-from-var1450-to-var465 var1111))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var3021 Int (select var2881 var480)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; } 
(assert (and (not (= var3021 3)) (and (not (= var3021 2)) (and (not (= var3021 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var857 var3244 var3244-init) ; Statement: $r11 = new java.lang.IllegalStateException 
(define-const var2806 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2806)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2806!1 String)
(assert (= var2806!1 ""))
(assert true)
(define-const var854 String (append/672562846 var2806!1 "Unexpected token: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ") 
(declare-const var2806!2 String)
(assert (= var2806!2 (str.++ var2806!1 "Unexpected token: ")))
(assert true)
(define-const var468 String (append/-1031950772 var854 (cast-from-var1450-to-var277 var1111))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var854!1 String)
(assert (str.prefixof var854 var854!1))
(assert true)
(define-const var490 String (toString/-2075883882 var468)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var857 var490)) ; Statement: specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var857!1 var3244)
(declare-const var490!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1450-to-var465=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Enum), var3244-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1450-to-var277=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var731=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28, var3771=r16, var1408=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var1431=r2, var1450=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var1111=r0, var945=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35, var2881=$r1, var465=java.lang.Enum, var480=$i0, var3021=$i1, var3244=java.lang.IllegalStateException, var857=$r11, var2806=$r12, var854=$r13, var277=java.lang.Object, var468=$r14, var490=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28=var731, r16=var3771, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var1408, r2=var1431, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var1450, r0=var1111, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35=var945, $r1=var2881, java.lang.Enum=var465, $i0=var480, $i1=var3021, java.lang.IllegalStateException=var3244, $r11=var857, $r12=var2806, $r13=var854, java.lang.Object=var277, $r14=var468, $r15=var490}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; };	$r11 = new java.lang.IllegalStateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected token: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2