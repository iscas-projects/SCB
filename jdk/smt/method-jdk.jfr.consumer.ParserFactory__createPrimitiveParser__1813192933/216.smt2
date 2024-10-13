(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1148 0)
(declare-sort var1258 0)
(declare-sort var1558 0)
(declare-sort var3806 0)
(declare-sort var692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var1258) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1558-init () var1558)
(declare-fun <init>/-1908086654 (var1558 var3806) void)
(declare-const null-var1148 var1148)
(declare-const null-var1258 var1258)
(declare-const null-NullType var692)
(declare-const null-var3806 var3806)
(declare-const var3947 var1148) ; Statement: r3 := @this: jdk.jfr.consumer.ParserFactory 
(assert (not (= var3947 null-var1148)))
(declare-const var2806 var1258) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var2806 null-var1258)))
(assert true)
(define-const var1675 String (getName/-2081927433 var2806)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var2198 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3062 Int (hashCode/-467973558 var1675)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; } 
(assert (and (not (= var3062 1195259493)) (and (not (= var3062 109413500)) (and (not (= var3062 97526364)) (and (not (= var3062 64711720)) (and (not (= var3062 3327612)) (and (not (= var3062 3052374)) (and (not (= var3062 3039496)) (and (not (= var3062 104431)) (and (not (= var3062 (- 1325958191))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional         
 ; Statement: tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; } 
(assert (and (= var2198 4) (and (not (= var2198 3)) (and (not (= var2198 2)) (and (not (= var2198 1)) (and (not (= var2198 0)) true)))))) ; Intersect: Cond: b2 == 4  and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional     
(define-const var1016 var1558 var1558-init) ; Statement: $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser 
(assert true)
;(assert (<init>/-1908086654 var1016 null-var3806)) ; Statement: specialinvoke $r12.<jdk.jfr.consumer.ParserFactory$CharacterParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null) 

(declare-const var1016!1 var1558)
(declare-const var3704 var692)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1558-init=([], jdk.jfr.consumer.ParserFactory$CharacterParser), <init>/-1908086654=([jdk.jfr.consumer.ParserFactory$CharacterParser, jdk.jfr.consumer.ParserFactory$1], void)}
; {var1148=jdk.jfr.consumer.ParserFactory, var3947=r3, var1258=jdk.jfr.internal.Type, var2806=r0, var1675=r1, var2198=b2, var3062=$i0, var1558=jdk.jfr.consumer.ParserFactory$CharacterParser, var1016=$r12, var3806=jdk.jfr.consumer.ParserFactory$1, var3704=null, var692=null_type}
; {jdk.jfr.consumer.ParserFactory=var1148, r3=var3947, jdk.jfr.internal.Type=var1258, r0=var2806, r1=var1675, b2=var2198, $i0=var3062, jdk.jfr.consumer.ParserFactory$CharacterParser=var1558, $r12=var1016, jdk.jfr.consumer.ParserFactory$1=var3806, null=var3704, null_type=var692}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: jdk.jfr.consumer.ParserFactory;	r0 := @parameter0: jdk.jfr.internal.Type;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; };	tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; };	$r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;	specialinvoke $r12.<jdk.jfr.consumer.ParserFactory$CharacterParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null);	return $r12
;block_num 3