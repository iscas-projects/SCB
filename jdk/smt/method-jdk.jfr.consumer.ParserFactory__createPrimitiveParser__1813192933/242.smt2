(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1133 0)
(declare-sort var1591 0)
(declare-sort var3380 0)
(declare-sort var1613 0)
(declare-sort var1597 0)
(declare-sort var2817 0)
(declare-sort var1890 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var1591) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3380-init () var3380)
(declare-fun timeConverter/-348917848 (var1133) var1613)
(declare-fun var1597_create/-1291904071 (var1591 var1613) var1597)
(declare-fun <init>/-82967043 (var3380 var1597 String) void)
(declare-fun constantPools/-348917848 (var1133) var2817)
(declare-fun getId/1727904112 (var1591) Int)
(declare-fun put/258681714 (var2817 Int var1890) void)
(declare-fun cast-from-var3380-to-var1890 (var3380) var1890)
(declare-fun var3168-init () var3168)
(declare-fun <init>/749671178 (var3168 var3380) void)
(declare-const null-var1133 var1133)
(declare-const null-var1591 var1591)
(declare-const var3732 var1133) ; Statement: r3 := @this: jdk.jfr.consumer.ParserFactory 
(assert (not (= var3732 null-var1133)))
(declare-const var270 var1591) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var270 null-var1591)))
(assert true)
(define-const var2820 String (getName/-2081927433 var270)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var1902 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3927 Int (hashCode/-467973558 var2820)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; } 
(assert (and (not (= var3927 1195259493)) (and (not (= var3927 109413500)) (and (not (= var3927 97526364)) (and (not (= var3927 64711720)) (and (not (= var3927 3327612)) (and (not (= var3927 3052374)) (and (not (= var3927 3039496)) (and (not (= var3927 104431)) (and (not (= var3927 (- 1325958191))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional         
 ; Statement: tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; } 
(assert (and (= var1902 8) (and (not (= var1902 7)) (and (not (= var1902 6)) (and (not (= var1902 5)) (and (not (= var1902 4)) (and (not (= var1902 3)) (and (not (= var1902 2)) (and (not (= var1902 1)) (and (not (= var1902 0)) true)))))))))) ; Intersect: Cond: b2 == 8  and Intersect: Negate: Cond: b2 == 7   and Intersect: Negate: Cond: b2 == 6   and Intersect: Negate: Cond: b2 == 5   and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional         
(define-const var3572 var3380 var3380-init) ; Statement: $r2 = new jdk.jfr.consumer.ConstantMap 
(define-const var133 var1613 (timeConverter/-348917848 var3732)) ; Statement: $r4 = r3.<jdk.jfr.consumer.ParserFactory: jdk.jfr.consumer.TimeConverter timeConverter> 
(define-const var1222 var1597 (var1597_create/-1291904071 var270 var133)) ; Statement: $r6 = staticinvoke <jdk.jfr.consumer.ObjectFactory: jdk.jfr.consumer.ObjectFactory create(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, $r4) 
(assert true)
(define-const var190 String (getName/-2081927433 var270)) ; Statement: $r5 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-82967043 var3572 var1222 var190)) ; Statement: specialinvoke $r2.<jdk.jfr.consumer.ConstantMap: void <init>(jdk.jfr.consumer.ObjectFactory,java.lang.String)>($r6, $r5) 

(declare-const var3572!1 var3380)
(declare-const var1222!1 var1597)
(declare-const var190!1 String)
(define-const var2051 var2817 (constantPools/-348917848 var3732)) ; Statement: $r7 = r3.<jdk.jfr.consumer.ParserFactory: jdk.jfr.consumer.LongMap constantPools> 
(assert true)
(define-const var2677 Int (getId/1727904112 var270)) ; Statement: $l1 = virtualinvoke r0.<jdk.jfr.internal.Type: long getId()>() 
(assert true)
;(assert (put/258681714 var2051 var2677 (cast-from-var3380-to-var1890 var3572!1))) ; Statement: virtualinvoke $r7.<jdk.jfr.consumer.LongMap: void put(long,java.lang.Object)>($l1, $r2) 

(declare-const var2051!1 var2817)
(declare-const var2677!1 Int)
(declare-const var3572!2 var3380)
(define-const var962 var3168 var3168-init) ; Statement: $r8 = new jdk.jfr.consumer.ParserFactory$StringParser 
(assert true)
;(assert (<init>/749671178 var962 var3572!2)) ; Statement: specialinvoke $r8.<jdk.jfr.consumer.ParserFactory$StringParser: void <init>(jdk.jfr.consumer.ConstantMap)>($r2) 

(declare-const var962!1 var3168)
(declare-const var3572!3 var3380)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3380-init=([], jdk.jfr.consumer.ConstantMap), timeConverter/-348917848=([jdk.jfr.consumer.ParserFactory], jdk.jfr.consumer.TimeConverter), var1597_create/-1291904071=([jdk.jfr.internal.Type, jdk.jfr.consumer.TimeConverter], jdk.jfr.consumer.ObjectFactory), <init>/-82967043=([jdk.jfr.consumer.ConstantMap, jdk.jfr.consumer.ObjectFactory, java.lang.String], void), constantPools/-348917848=([jdk.jfr.consumer.ParserFactory], jdk.jfr.consumer.LongMap), getId/1727904112=([jdk.jfr.internal.Type], long), put/258681714=([jdk.jfr.consumer.LongMap, long, java.lang.Object], void), cast-from-var3380-to-var1890=([jdk.jfr.consumer.ConstantMap], java.lang.Object), var3168-init=([], jdk.jfr.consumer.ParserFactory$StringParser), <init>/749671178=([jdk.jfr.consumer.ParserFactory$StringParser, jdk.jfr.consumer.ConstantMap], void)}
; {var1133=jdk.jfr.consumer.ParserFactory, var3732=r3, var1591=jdk.jfr.internal.Type, var270=r0, var2820=r1, var1902=b2, var3927=$i0, var3380=jdk.jfr.consumer.ConstantMap, var3572=$r2, var1613=jdk.jfr.consumer.TimeConverter, var133=$r4, var1597=jdk.jfr.consumer.ObjectFactory, var1222=$r6, var190=$r5, var2817=jdk.jfr.consumer.LongMap, var2051=$r7, var2677=$l1, var1890=java.lang.Object, var3168=jdk.jfr.consumer.ParserFactory$StringParser, var962=$r8}
; {jdk.jfr.consumer.ParserFactory=var1133, r3=var3732, jdk.jfr.internal.Type=var1591, r0=var270, r1=var2820, b2=var1902, $i0=var3927, jdk.jfr.consumer.ConstantMap=var3380, $r2=var3572, jdk.jfr.consumer.TimeConverter=var1613, $r4=var133, jdk.jfr.consumer.ObjectFactory=var1597, $r6=var1222, $r5=var190, jdk.jfr.consumer.LongMap=var2817, $r7=var2051, $l1=var2677, java.lang.Object=var1890, jdk.jfr.consumer.ParserFactory$StringParser=var3168, $r8=var962}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: jdk.jfr.consumer.ParserFactory;	r0 := @parameter0: jdk.jfr.internal.Type;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; };	tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; };	$r2 = new jdk.jfr.consumer.ConstantMap;	$r4 = r3.<jdk.jfr.consumer.ParserFactory: jdk.jfr.consumer.TimeConverter timeConverter>;	$r6 = staticinvoke <jdk.jfr.consumer.ObjectFactory: jdk.jfr.consumer.ObjectFactory create(jdk.jfr.internal.Type,jdk.jfr.consumer.TimeConverter)>(r0, $r4);	$r5 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	specialinvoke $r2.<jdk.jfr.consumer.ConstantMap: void <init>(jdk.jfr.consumer.ObjectFactory,java.lang.String)>($r6, $r5);	$r7 = r3.<jdk.jfr.consumer.ParserFactory: jdk.jfr.consumer.LongMap constantPools>;	$l1 = virtualinvoke r0.<jdk.jfr.internal.Type: long getId()>();	virtualinvoke $r7.<jdk.jfr.consumer.LongMap: void put(long,java.lang.Object)>($l1, $r2);	$r8 = new jdk.jfr.consumer.ParserFactory$StringParser;	specialinvoke $r8.<jdk.jfr.consumer.ParserFactory$StringParser: void <init>(jdk.jfr.consumer.ConstantMap)>($r2);	return $r8
;block_num 3