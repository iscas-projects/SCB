(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1334 0)
(declare-sort var3799 0)
(declare-sort var3757 0)
(declare-sort var715 0)
(declare-sort var3041 0)
(declare-sort var1312 0)
(declare-sort var90 0)
(declare-sort var2162 0)
(declare-sort var295 0)
(declare-sort var2334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var3757 String) void)
(declare-fun getDeadEndConfigs/667854675 (var3799) var3041)
(declare-fun iterator/-269204326 (var3041) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1312)
(declare-fun cast-from-var1312-to-var90 (var1312) var90)
(declare-fun state/-2092381073 (var90) var2162)
(declare-fun getNumberOfTransitions/-683258218 (var2162) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun parser/145254134 (var1334) var295)
(declare-fun toString/727813534 (var90 var2334 Bool) String)
(declare-fun cast-from-var295-to-var2334 (var295) var2334)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1334 var1334)
(declare-const null-var3799 var3799)
(declare-const var715-err var3757)
(declare-const var1569 var1334) ; Statement: r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1569 null-var1334)))
(declare-const var2357 var3799) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.NoViableAltException 
(assert (not (= var2357 null-var3799)))
(define-const var3843 var3757 var715-err) ; Statement: $r0 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var3843 "dead end configs: ")) ; Statement: virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ") 

(declare-const var3843!1 var3757)
(declare-const var913 String)
(assert true)
(define-const var3212 var3041 (getDeadEndConfigs/667854675 var2357)) ; Statement: $r2 = virtualinvoke r1.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.atn.ATNConfigSet getDeadEndConfigs()>() 
(assert true)
(define-const var3168 Iterator (iterator/-269204326 var3212)) ; Statement: r3 = virtualinvoke $r2.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3530 Bool (Iterator_hasNext/-1669924200 var3168)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3530 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1753 var1312 (Iterator_next/-1124697587 var3168)) ; Statement: $r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3168!1 Iterator)
(define-const var1007 var90 (cast-from-var1312-to-var90 var1753)) ; Statement: r5 = (org.antlr.v4.runtime.atn.ATNConfig) $r4 
(define-const var3557 String "no edges") ; Statement: r20 = "no edges" 
(define-const var561 var2162 (state/-2092381073 var1007)) ; Statement: $r6 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(assert true)
(define-const var2062 Int (getNumberOfTransitions/-683258218 var561)) ; Statement: $i0 = virtualinvoke $r6.<org.antlr.v4.runtime.atn.ATNState: int getNumberOfTransitions()>() 
 ; Statement: if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (<= var2062 0)) ; Cond: $i0 <= 0 
(define-const var1839 var3757 var715-err) ; Statement: $r24 = <java.lang.System: java.io.PrintStream err> 
(define-const var628 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var628)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var628!1 String)
(assert (= var628!1 ""))
(define-const var3401 var295 (parser/145254134 var1569)) ; Statement: $r26 = r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var3469 String (toString/727813534 var1007 (cast-from-var295-to-var2334 var3401) (ite (= 1 1) true false))) ; Statement: $r27 = virtualinvoke r5.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r26, 1) 
(assert true)
(define-const var2101 String (append/672562846 var628!1 var3469)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var628!2 String)
(assert (= var628!2 (str.++ var628!1 var3469)))
(assert true)
(define-const var3553 String (append/672562846 var2101 ":")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2101!1 String)
(assert (= var2101!1 (str.++ var2101 ":")))
(assert true)
(define-const var726 String (append/672562846 var3553 var3557)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var3553!1 String)
(assert (= var3553!1 (str.++ var3553 var3557)))
(assert true)
(define-const var3715 String (toString/-2075883882 var726)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1839 var3715)) ; Statement: virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31) 

(declare-const var1839!1 var3757)
(declare-const var3715!1 String)
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3530!1 Bool (Iterator_hasNext/-1669924200 var3168!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3530!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), getDeadEndConfigs/667854675=([org.antlr.v4.runtime.NoViableAltException], org.antlr.v4.runtime.atn.ATNConfigSet), iterator/-269204326=([org.antlr.v4.runtime.atn.ATNConfigSet], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1312-to-var90=([java.lang.Object], org.antlr.v4.runtime.atn.ATNConfig), state/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.ATNState), getNumberOfTransitions/-683258218=([org.antlr.v4.runtime.atn.ATNState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), toString/727813534=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.Recognizer, boolean], java.lang.String), cast-from-var295-to-var2334=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1334=org.antlr.v4.runtime.atn.ParserATNSimulator, var1569=r7, var3799=org.antlr.v4.runtime.NoViableAltException, var2357=r1, var3757=java.io.PrintStream, var715=java.lang.System, var3843=$r0, var913="dead end configs: ", var3041=org.antlr.v4.runtime.atn.ATNConfigSet, var3212=$r2, var3168=r3, var3530=$z0, var1312=java.lang.Object, var1753=$r4, var90=org.antlr.v4.runtime.atn.ATNConfig, var1007=r5, var3557=r20, var2162=org.antlr.v4.runtime.atn.ATNState, var561=$r6, var2062=$i0, var1839=$r24, var628=$r25, var295=org.antlr.v4.runtime.Parser, var3401=$r26, var2334=org.antlr.v4.runtime.Recognizer, var3469=$r27, var2101=$r28, var3553=$r29, var726=$r30, var3715=$r31}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1334, r7=var1569, org.antlr.v4.runtime.NoViableAltException=var3799, r1=var2357, java.io.PrintStream=var3757, java.lang.System=var715, $r0=var3843, "dead end configs: "=var913, org.antlr.v4.runtime.atn.ATNConfigSet=var3041, $r2=var3212, r3=var3168, $z0=var3530, java.lang.Object=var1312, $r4=var1753, org.antlr.v4.runtime.atn.ATNConfig=var90, r5=var1007, r20=var3557, org.antlr.v4.runtime.atn.ATNState=var2162, $r6=var561, $i0=var2062, $r24=var1839, $r25=var628, org.antlr.v4.runtime.Parser=var295, $r26=var3401, org.antlr.v4.runtime.Recognizer=var2334, $r27=var3469, $r28=var2101, $r29=var3553, $r30=var726, $r31=var3715}
;seq <java.lang.StringBuilder: void <init>()>;	<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.NoViableAltException;	$r0 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ");	$r2 = virtualinvoke r1.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.atn.ATNConfigSet getDeadEndConfigs()>();	r3 = virtualinvoke $r2.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	$r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r5 = (org.antlr.v4.runtime.atn.ATNConfig) $r4;	r20 = "no edges";	$r6 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	$i0 = virtualinvoke $r6.<org.antlr.v4.runtime.atn.ATNState: int getNumberOfTransitions()>();	if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r24 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r27 = virtualinvoke r5.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r26, 1);	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31);	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 6