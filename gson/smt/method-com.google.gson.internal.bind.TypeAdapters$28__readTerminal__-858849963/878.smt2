(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var266 0)
(declare-sort var2184 0)
(declare-sort var3672 0)
(declare-sort var486 0)
(declare-sort var3540 0)
(declare-sort var2493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3540) Int)
(declare-fun cast-from-var3672-to-var3540 (var3672) var3540)
(declare-fun nextNull/273520319 (var2184) void)
(declare-const null-var266 var266)
(declare-const null-var2184 var2184)
(declare-const null-var3672 var3672)
(declare-const var486-$SwitchMap$com$google$gson$stream$JsonToken (Array Int Int))
(declare-const var2493-INSTANCE var2493)
(declare-const var1413 var266) ; Statement: r16 := @this: com.google.gson.internal.bind.TypeAdapters$28 
(assert (not (= var1413 null-var266)))
(declare-const var3533 var2184) ; Statement: r2 := @parameter0: com.google.gson.stream.JsonReader 
(assert (not (= var3533 null-var2184)))
(declare-const var171 var3672) ; Statement: r0 := @parameter1: com.google.gson.stream.JsonToken 
(assert (not (= var171 null-var3672)))
(define-const var344 (Array Int Int) var486-$SwitchMap$com$google$gson$stream$JsonToken) ; Statement: $r1 = <com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken> 
(assert true)
(define-const var548 Int (ordinal/-291641772 (cast-from-var3672-to-var3540 var171))) ; Statement: $i0 = virtualinvoke r0.<com.google.gson.stream.JsonToken: int ordinal()>() 
(define-const var2187 Int (select var344 var548)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; } 
(assert (and (= var2187 6) (and (not (= var2187 5)) (and (not (= var2187 4)) (and (not (= var2187 3)) (and (not (= var2187 2)) (and (not (= var2187 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
;(assert (nextNull/273520319 var3533)) ; Statement: virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>() 

(declare-const var3533!1 var2184)
(define-const var456 var2493 var2493-INSTANCE) ; Statement: $r3 = <com.google.gson.JsonNull: com.google.gson.JsonNull INSTANCE> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3672-to-var3540=([com.google.gson.stream.JsonToken], java.lang.Enum), nextNull/273520319=([com.google.gson.stream.JsonReader], void)}
; {var266=com.google.gson.internal.bind.TypeAdapters$28, var1413=r16, var2184=com.google.gson.stream.JsonReader, var3533=r2, var3672=com.google.gson.stream.JsonToken, var171=r0, var486=com.google.gson.internal.bind.TypeAdapters$35, var344=$r1, var3540=java.lang.Enum, var548=$i0, var2187=$i1, var2493=com.google.gson.JsonNull, var456=$r3}
; {com.google.gson.internal.bind.TypeAdapters$28=var266, r16=var1413, com.google.gson.stream.JsonReader=var2184, r2=var3533, com.google.gson.stream.JsonToken=var3672, r0=var171, com.google.gson.internal.bind.TypeAdapters$35=var486, $r1=var344, java.lang.Enum=var3540, $i0=var548, $i1=var2187, com.google.gson.JsonNull=var2493, $r3=var456}
;seq 
;cnt {}
;stmts r16 := @this: com.google.gson.internal.bind.TypeAdapters$28;	r2 := @parameter0: com.google.gson.stream.JsonReader;	r0 := @parameter1: com.google.gson.stream.JsonToken;	$r1 = <com.google.gson.internal.bind.TypeAdapters$35: int[] $SwitchMap$com$google$gson$stream$JsonToken>;	$i0 = virtualinvoke r0.<com.google.gson.stream.JsonToken: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r8 = virtualinvoke r2.<com.google.gson.stream.JsonReader: java.lang.String nextString()>();     case 2: goto $r6 = new com.google.gson.JsonPrimitive;     case 3: goto $r4 = new com.google.gson.JsonPrimitive;     case 4: goto $r11 = new java.lang.IllegalStateException;     case 5: goto $r11 = new java.lang.IllegalStateException;     case 6: goto virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>();     default: goto $r11 = new java.lang.IllegalStateException; };	virtualinvoke r2.<com.google.gson.stream.JsonReader: void nextNull()>();	$r3 = <com.google.gson.JsonNull: com.google.gson.JsonNull INSTANCE>;	return $r3
;block_num 2