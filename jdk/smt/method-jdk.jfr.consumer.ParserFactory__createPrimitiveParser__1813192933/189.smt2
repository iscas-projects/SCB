(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2140 0)
(declare-sort var198 0)
(declare-sort var209 0)
(declare-sort var2699 0)
(declare-sort var3423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var198) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var209-init () var209)
(declare-fun <init>/-1466368171 (var209 var2699) void)
(declare-const null-var2140 var2140)
(declare-const null-var198 var198)
(declare-const null-NullType var3423)
(declare-const null-var2699 var2699)
(declare-const var2500 var2140) ; Statement: r3 := @this: jdk.jfr.consumer.ParserFactory 
(assert (not (= var2500 null-var2140)))
(declare-const var528 var198) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var528 null-var198)))
(assert true)
(define-const var822 String (getName/-2081927433 var528)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var3943 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var430 Int (hashCode/-467973558 var822)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; } 
(assert (and (not (= var430 1195259493)) (and (not (= var430 109413500)) (and (not (= var430 97526364)) (and (not (= var430 64711720)) (and (not (= var430 3327612)) (and (not (= var430 3052374)) (and (not (= var430 3039496)) (and (not (= var430 104431)) (and (not (= var430 (- 1325958191))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional         
 ; Statement: tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; } 
(assert (and (= var3943 1) (and (not (= var3943 0)) true))) ; Intersect: Cond: b2 == 1  and Intersect: Negate: Cond: b2 == 0   and Non Conditional  
(define-const var2350 var209 var209-init) ; Statement: $r15 = new jdk.jfr.consumer.ParserFactory$LongParser 
(assert true)
;(assert (<init>/-1466368171 var2350 null-var2699)) ; Statement: specialinvoke $r15.<jdk.jfr.consumer.ParserFactory$LongParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null) 

(declare-const var2350!1 var209)
(declare-const var905 var3423)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var209-init=([], jdk.jfr.consumer.ParserFactory$LongParser), <init>/-1466368171=([jdk.jfr.consumer.ParserFactory$LongParser, jdk.jfr.consumer.ParserFactory$1], void)}
; {var2140=jdk.jfr.consumer.ParserFactory, var2500=r3, var198=jdk.jfr.internal.Type, var528=r0, var822=r1, var3943=b2, var430=$i0, var209=jdk.jfr.consumer.ParserFactory$LongParser, var2350=$r15, var2699=jdk.jfr.consumer.ParserFactory$1, var905=null, var3423=null_type}
; {jdk.jfr.consumer.ParserFactory=var2140, r3=var2500, jdk.jfr.internal.Type=var198, r0=var528, r1=var822, b2=var3943, $i0=var430, jdk.jfr.consumer.ParserFactory$LongParser=var209, $r15=var2350, jdk.jfr.consumer.ParserFactory$1=var2699, null=var905, null_type=var3423}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: jdk.jfr.consumer.ParserFactory;	r0 := @parameter0: jdk.jfr.internal.Type;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; };	tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; };	$r15 = new jdk.jfr.consumer.ParserFactory$LongParser;	specialinvoke $r15.<jdk.jfr.consumer.ParserFactory$LongParser: void <init>(jdk.jfr.consumer.ParserFactory$1)>(null);	return $r15
;block_num 3