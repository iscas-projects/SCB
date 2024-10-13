(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var3587 0)
(declare-sort var1823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun currentCharacters/-996869017 (var3187) String)
(declare-const null-var3187 var3187)
(declare-const null-String String)
(declare-const null-var1823 var1823)
(declare-const var3679 var3187) ; Statement: r2 := @this: jdk.jfr.internal.jfc.JFCParserHandler 
(assert (not (= var3679 null-var3187)))
(declare-const var2267 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var2267 null-String)))
(declare-const var3467 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var3467 null-String)))
(declare-const var3108 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3108 null-String)))
(declare-const var461 var1823) ; Statement: r3 := @parameter3: jdk.internal.org.xml.sax.Attributes 
(assert (not (= var461 null-var1823)))
(assert true)
(define-const var770 String (toLowerCase/415700667 var3108)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>() 
(define-const var1304 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1112 Int (hashCode/-467973558 var770)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 96891546: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("event");     case 1932752118: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("configuration");     case 1985941072: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("setting");     default: goto tableswitch(b1) {     case 0: goto r6 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("version");     case 1: goto $r5 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 2: goto $r4 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> = null; }; } 
(assert (and (not (= var1112 1985941072)) (and (not (= var1112 1932752118)) (and (not (= var1112 96891546)) true)))) ; Intersect: Negate: Cond: $i0 == 1985941072   and Intersect: Negate: Cond: $i0 == 1932752118   and Intersect: Negate: Cond: $i0 == 96891546   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto r6 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("version");     case 1: goto $r5 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 2: goto $r4 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> = null; } 
(assert (and (not (= var1304 2)) (and (not (= var1304 1)) (and (not (= var1304 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(declare-const var3679!1 var3187)
(assert (not (= var3679!1 null-var3187)))
(assert (= (currentCharacters/-996869017 var3679!1) null-String)) ; Statement: r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> = null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/415700667=([java.lang.String], java.lang.String), hashCode/-467973558=([java.lang.String], int), currentCharacters/-996869017=([jdk.jfr.internal.jfc.JFCParserHandler], java.lang.StringBuilder)}
; {var3187=jdk.jfr.internal.jfc.JFCParserHandler, var3679=r2, var2267=r11, var3587=null_type, var3467=r12, var3108=r0, var1823=jdk.internal.org.xml.sax.Attributes, var461=r3, var770=r1, var1304=b1, var1112=$i0}
; {jdk.jfr.internal.jfc.JFCParserHandler=var3187, r2=var3679, r11=var2267, null_type=var3587, r12=var3467, r0=var3108, jdk.internal.org.xml.sax.Attributes=var1823, r3=var461, r1=var770, b1=var1304, $i0=var1112}
;seq <java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: jdk.jfr.internal.jfc.JFCParserHandler;	r11 := @parameter0: java.lang.String;	r12 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r3 := @parameter3: jdk.internal.org.xml.sax.Attributes;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase()>();	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 96891546: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("event");     case 1932752118: goto $z2 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("configuration");     case 1985941072: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("setting");     default: goto tableswitch(b1) {     case 0: goto r6 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("version");     case 1: goto $r5 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 2: goto $r4 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> = null; }; };	tableswitch(b1) {     case 0: goto r6 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("version");     case 1: goto $r5 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 2: goto $r4 = interfaceinvoke r3.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> = null; };	r2.<jdk.jfr.internal.jfc.JFCParserHandler: java.lang.StringBuilder currentCharacters> = null;	return
;block_num 3