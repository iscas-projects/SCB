(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1416 0)
(declare-sort var3290 0)
(declare-sort var1268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-2081927433 (var3290) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1268-init () var1268)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1268 String) void)
(declare-const null-var1416 var1416)
(declare-const null-var3290 var3290)
(declare-const var2705 var1416) ; Statement: r3 := @this: jdk.jfr.consumer.ParserFactory 
(assert (not (= var2705 null-var1416)))
(declare-const var3663 var3290) ; Statement: r0 := @parameter0: jdk.jfr.internal.Type 
(assert (not (= var3663 null-var3290)))
(assert true)
(define-const var3610 String (getName/-2081927433 var3663)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(define-const var1026 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1111 Int (hashCode/-467973558 var3610)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; } 
(assert (and (not (= var1111 1195259493)) (and (not (= var1111 109413500)) (and (not (= var1111 97526364)) (and (not (= var1111 64711720)) (and (not (= var1111 3327612)) (and (not (= var1111 3052374)) (and (not (= var1111 3039496)) (and (not (= var1111 104431)) (and (not (= var1111 (- 1325958191))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional         
 ; Statement: tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; } 
(assert (and (not (= var1026 8)) (and (not (= var1026 7)) (and (not (= var1026 6)) (and (not (= var1026 5)) (and (not (= var1026 4)) (and (not (= var1026 3)) (and (not (= var1026 2)) (and (not (= var1026 1)) (and (not (= var1026 0)) true)))))))))) ; Intersect: Negate: Cond: b2 == 8   and Intersect: Negate: Cond: b2 == 7   and Intersect: Negate: Cond: b2 == 6   and Intersect: Negate: Cond: b2 == 5   and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional         
(define-const var3754 var1268 var1268-init) ; Statement: $r17 = new java.io.IOException 
(define-const var1847 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1847)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1847!1 String)
(assert (= var1847!1 ""))
(assert true)
(define-const var3449 String (append/672562846 var1847!1 "Unknown primitive type ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown primitive type ") 
(declare-const var1847!2 String)
(assert (= var1847!2 (str.++ var1847!1 "Unknown primitive type ")))
(assert true)
(define-const var609 String (getName/-2081927433 var3663)) ; Statement: $r19 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert true)
(define-const var843 String (append/672562846 var3449 var609)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3449!1 String)
(assert (= var3449!1 (str.++ var3449 var609)))
(assert true)
(define-const var2529 String (toString/-2075883882 var843)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3754 var2529)) ; Statement: specialinvoke $r17.<java.io.IOException: void <init>(java.lang.String)>($r22) 

(declare-const var3754!1 var1268)
(declare-const var2529!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-2081927433=([jdk.jfr.internal.Type], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1268-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1416=jdk.jfr.consumer.ParserFactory, var2705=r3, var3290=jdk.jfr.internal.Type, var3663=r0, var3610=r1, var1026=b2, var1111=$i0, var1268=java.io.IOException, var3754=$r17, var1847=$r18, var3449=$r20, var609=$r19, var843=$r21, var2529=$r22}
; {jdk.jfr.consumer.ParserFactory=var1416, r3=var2705, jdk.jfr.internal.Type=var3290, r0=var3663, r1=var3610, b2=var1026, $i0=var1111, java.io.IOException=var1268, $r17=var3754, $r18=var1847, $r20=var3449, $r19=var609, $r21=var843, $r22=var2529}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: jdk.jfr.consumer.ParserFactory;	r0 := @parameter0: jdk.jfr.internal.Type;	r1 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	b2 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z8 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z7 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z6 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z5 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; }; };	tableswitch(b2) {     case 0: goto $r16 = new jdk.jfr.consumer.ParserFactory$IntegerParser;     case 1: goto $r15 = new jdk.jfr.consumer.ParserFactory$LongParser;     case 2: goto $r14 = new jdk.jfr.consumer.ParserFactory$FloatParser;     case 3: goto $r13 = new jdk.jfr.consumer.ParserFactory$DoubleParser;     case 4: goto $r12 = new jdk.jfr.consumer.ParserFactory$CharacterParser;     case 5: goto $r11 = new jdk.jfr.consumer.ParserFactory$BooleanParser;     case 6: goto $r10 = new jdk.jfr.consumer.ParserFactory$ShortParser;     case 7: goto $r9 = new jdk.jfr.consumer.ParserFactory$ByteParser;     case 8: goto $r2 = new jdk.jfr.consumer.ConstantMap;     default: goto $r17 = new java.io.IOException; };	$r17 = new java.io.IOException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown primitive type ");	$r19 = virtualinvoke r0.<jdk.jfr.internal.Type: java.lang.String getName()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.io.IOException: void <init>(java.lang.String)>($r22);	throw $r17
;block_num 3