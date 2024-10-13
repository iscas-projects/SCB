(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1300 0)
(declare-sort var573 0)
(declare-sort var1026 0)
(declare-sort var1218 0)
(declare-sort var2859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var573) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1026-init () var1026)
(declare-fun <init>/-1542747071 (var1026 var1218) void)
(declare-const null-var1300 var1300)
(declare-const null-var573 var573)
(declare-const null-NullType var2859)
(declare-const null-var1218 var1218)
(declare-const var3587 var1300) ; Statement: r3 := @this: jdk.jfr.consumer.ParserFactory 
(assert (not (= var3587 null-var1300)))
(declare-const var2111 var573) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var2111 null-var573)))
(assert true)
(define-const var2457 String (getName/-2081927433 var2111)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var1459 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1402 Int (hashCode/-467973558 var2457)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; } 
(assert (and (not (= var1402 1195259493)) (and (not (= var1402 109413500)) (and (not (= var1402 97526364)) (and (not (= var1402 64711720)) (and (not (= var1402 3327612)) (and (not (= var1402 3052374)) (and (not (= var1402 3039496)) (and (not (= var1402 104431)) (and (not (= var1402 (- 1325958191))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional         
 ; Statement: tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; } 
(assert (and (= var1459 5) (and (not (= var1459 4)) (and (not (= var1459 3)) (and (not (= var1459 2)) (and (not (= var1459 1)) (and (not (= var1459 0)) true))))))) ; Intersect: Cond: b2 == 5  and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional      
(define-const var1463 var1026 var1026-init) ; Statement: $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser 
(assert true)
;(assert (<init>/-1542747071 var1463 null-var1218)) ; Statement: specialinvoke $r11.<jdk.jfr.consumer.ParserFactory$BooleanParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null) 

(declare-const var1463!1 var1026)
(declare-const var1950 var2859)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1026-init=([], jdk.jfr.consumer.ParserFactory$BooleanParser), <init>/-1542747071=([jdk.jfr.consumer.ParserFactory$BooleanParser, jdk.jfr.consumer.ParserFactory$1], void)}
; {var1300=jdk.jfr.consumer.ParserFactory, var3587=r3, var573=jdk.jfr.internal.Type, var2111=r0, var2457=r1, var1459=b2, var1402=$i0, var1026=jdk.jfr.consumer.ParserFactory$BooleanParser, var1463=$r11, var1218=jdk.jfr.consumer.ParserFactory$1, var1950=null, var2859=null_type}
; {jdk.jfr.consumer.ParserFactory=var1300, r3=var3587, jdk.jfr.internal.Type=var573, r0=var2111, r1=var2457, b2=var1459, $i0=var1402, jdk.jfr.consumer.ParserFactory$BooleanParser=var1026, $r11=var1463, jdk.jfr.consumer.ParserFactory$1=var1218, null=var1950, null_type=var2859}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: jdk.jfr.consumer.ParserFactory;	r0 := @parameter0: jdk.jfr.internal.Type;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; };	tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; };	$r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;	specialinvoke $r11.<jdk.jfr.consumer.ParserFactory$BooleanParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null);	return $r11
;block_num 3