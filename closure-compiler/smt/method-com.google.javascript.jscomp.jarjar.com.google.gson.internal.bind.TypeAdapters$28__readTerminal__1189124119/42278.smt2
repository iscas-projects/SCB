(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort var2965 0)
(declare-sort var3945 0)
(declare-sort var1168 0)
(declare-sort var1082 0)
(declare-sort var578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1082) Int)
(declare-fun cast-from-var3945-to-var1082 (var3945) var1082)
(declare-fun nextNull/-406193874 (var2965) void)
(declare-const null-var3467 var3467)
(declare-const null-var2965 var2965)
(declare-const null-var3945 var3945)
(declare-const var1168-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var578-INSTANCE var578)
(declare-const var3299 var3467) ; Statement: r16 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28 
(assert (not (= var3299 null-var3467)))
(declare-const var839 var2965) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader 
(assert (not (= var839 null-var2965)))
(declare-const var3731 var3945) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken 
(assert (not (= var3731 null-var3945)))
(define-const var1607 (Array Int Int) var1168-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var2734 Int (ordinal/-291641772 (cast-from-var3945-to-var1082 var3731))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var1666 Int (select var1607 var2734)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; } 
(assert (and (= var1666 6) (and (not (= var1666 5)) (and (not (= var1666 4)) (and (not (= var1666 3)) (and (not (= var1666 2)) (and (not (= var1666 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
;(assert (nextNull/-406193874 var839)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>() 

(declare-const var839!1 var2965)
(define-const var811 var578 var578-INSTANCE) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.gson.JsonNull: com.google.javascript.jscomp.jarjar.com.google.gson.JsonNull INSTANCE> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3945-to-var1082=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken], java.lang.Enum), nextNull/-406193874=([com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader], void)}
; {var3467=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28, var3299=r16, var2965=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader, var839=r2, var3945=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var3731=r0, var1168=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35, var1607=$r1, var1082=java.lang.Enum, var2734=$i0, var1666=$i1, var578=com.google.javascript.jscomp.jarjar.com.google.gson.JsonNull, var811=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28=var3467, r16=var3299, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader=var2965, r2=var839, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var3945, r0=var3731, com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35=var1168, $r1=var1607, java.lang.Enum=var1082, $i0=var2734, $i1=var1666, com.google.javascript.jscomp.jarjar.com.google.gson.JsonNull=var578, $r3=var811}
;seq 
;cnt {}
;stmts r16 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$28;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; };	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonReader: void nextNull()>();	$r3 = <com.google.javascript.jscomp.jarjar.com.google.gson.JsonNull: com.google.javascript.jscomp.jarjar.com.google.gson.JsonNull INSTANCE>;	return $r3
;block_num 2