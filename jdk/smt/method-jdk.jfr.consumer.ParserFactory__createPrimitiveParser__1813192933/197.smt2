(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var153 0)
(declare-sort var1320 0)
(declare-sort var2385 0)
(declare-sort var198 0)
(declare-sort var2497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var1320) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2385-init () var2385)
(declare-fun <init>/308878197 (var2385 var198) void)
(declare-const null-var153 var153)
(declare-const null-var1320 var1320)
(declare-const null-NullType var2497)
(declare-const null-var198 var198)
(declare-const var3516 var153) ; Statement: r3 := @this: jdk.jfr.consumer.ParserFactory 
(assert (not (= var3516 null-var153)))
(declare-const var944 var1320) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var944 null-var1320)))
(assert true)
(define-const var2978 String (getName/-2081927433 var944)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var416 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3979 Int (hashCode/-467973558 var2978)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; } 
(assert (and (not (= var3979 1195259493)) (and (not (= var3979 109413500)) (and (not (= var3979 97526364)) (and (not (= var3979 64711720)) (and (not (= var3979 3327612)) (and (not (= var3979 3052374)) (and (not (= var3979 3039496)) (and (not (= var3979 104431)) (and (not (= var3979 (- 1325958191))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional         
 ; Statement: tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; } 
(assert (and (= var416 2) (and (not (= var416 1)) (and (not (= var416 0)) true)))) ; Intersect: Cond: b2 == 2  and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional   
(define-const var2261 var2385 var2385-init) ; Statement: $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser 
(assert true)
;(assert (<init>/308878197 var2261 null-var198)) ; Statement: specialinvoke $r14.<jdk.jfr.consumer.ParserFactory$FloatParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null) 

(declare-const var2261!1 var2385)
(declare-const var2815 var2497)
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2385-init=([], jdk.jfr.consumer.ParserFactory$FloatParser), <init>/308878197=([jdk.jfr.consumer.ParserFactory$FloatParser, jdk.jfr.consumer.ParserFactory$1], void)}
; {var153=jdk.jfr.consumer.ParserFactory, var3516=r3, var1320=jdk.jfr.internal.Type, var944=r0, var2978=r1, var416=b2, var3979=$i0, var2385=jdk.jfr.consumer.ParserFactory$FloatParser, var2261=$r14, var198=jdk.jfr.consumer.ParserFactory$1, var2815=null, var2497=null_type}
; {jdk.jfr.consumer.ParserFactory=var153, r3=var3516, jdk.jfr.internal.Type=var1320, r0=var944, r1=var2978, b2=var416, $i0=var3979, jdk.jfr.consumer.ParserFactory$FloatParser=var2385, $r14=var2261, jdk.jfr.consumer.ParserFactory$1=var198, null=var2815, null_type=var2497}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: jdk.jfr.consumer.ParserFactory;	r0 := @parameter0: jdk.jfr.internal.Type;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; };	tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; };	$r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;	specialinvoke $r14.<jdk.jfr.consumer.ParserFactory$FloatParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null);	return $r14
;block_num 3