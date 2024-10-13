(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3137 0)
(declare-sort var3819 0)
(declare-sort var1299 0)
(declare-sort var1326 0)
(declare-sort var1724 0)
(declare-sort var1722 0)
(declare-sort var1053 0)
(declare-sort var2936 0)
(declare-sort var1891 0)
(declare-sort var3607 0)
(declare-sort var518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var1299 String) void)
(declare-fun getDeadEndConfigs/667854675 (var3819) var1724)
(declare-fun iterator/-269204326 (var1724) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1722)
(declare-fun cast-from-var1722-to-var1053 (var1722) var1053)
(declare-fun state/-2092381073 (var1053) var2936)
(declare-fun getNumberOfTransitions/-683258218 (var2936) Int)
(declare-fun transition/110262428 (var2936 Int) var1891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun parser/145254134 (var3137) var3607)
(declare-fun toString/727813534 (var1053 var518 Bool) String)
(declare-fun cast-from-var3607-to-var518 (var3607) var518)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3137 var3137)
(declare-const null-var3819 var3819)
(declare-const var1326-err var1299)
(declare-const var2142 var3137) ; Statement: r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2142 null-var3137)))
(declare-const var3433 var3819) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.NoViableAltException 
(assert (not (= var3433 null-var3819)))
(define-const var2751 var1299 var1326-err) ; Statement: $r0 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var2751 "dead end configs: ")) ; Statement: virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ") 

(declare-const var2751!1 var1299)
(declare-const var186 String)
(assert true)
(define-const var2295 var1724 (getDeadEndConfigs/667854675 var3433)) ; Statement: $r2 = virtualinvoke r1.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.atn.ATNConfigSet getDeadEndConfigs()>() 
(assert true)
(define-const var37 Iterator (iterator/-269204326 var2295)) ; Statement: r3 = virtualinvoke $r2.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1858 Bool (Iterator_hasNext/-1669924200 var37)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1858 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1525 var1722 (Iterator_next/-1124697587 var37)) ; Statement: $r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var37!1 Iterator)
(define-const var3631 var1053 (cast-from-var1722-to-var1053 var1525)) ; Statement: r5 = (org.antlr.v4.runtime.atn.ATNConfig) $r4 
(define-const var2880 String "no edges") ; Statement: r20 = "no edges" 
(define-const var882 var2936 (state/-2092381073 var3631)) ; Statement: $r6 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(assert true)
(define-const var3864 Int (getNumberOfTransitions/-683258218 var882)) ; Statement: $i0 = virtualinvoke $r6.<org.antlr.v4.runtime.atn.ATNState: int getNumberOfTransitions()>() 
 ; Statement: if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (not (<= var3864 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3224 var2936 (state/-2092381073 var3631)) ; Statement: $r8 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state> 
(assert true)
(define-const var1945 var1891 (transition/110262428 var3224 0)) ; Statement: r9 = virtualinvoke $r8.<org.antlr.v4.runtime.atn.ATNState: org.antlr.v4.runtime.atn.Transition transition(int)>(0) 
(define-const var160 Bool false) ; Statement: $z1 = r9 instanceof org.antlr.v4.runtime.atn.AtomTransition 
 ; Statement: if $z1 == 0 goto $z2 = r9 instanceof org.antlr.v4.runtime.atn.SetTransition 
(assert (= (ite var160 1 0) 0)) ; Cond: $z1 == 0 
(define-const var795 Bool false) ; Statement: $z2 = r9 instanceof org.antlr.v4.runtime.atn.SetTransition 
 ; Statement: if $z2 == 0 goto $r24 = <java.lang.System: java.io.PrintStream err> 
(assert (= (ite var795 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1541 var1299 var1326-err) ; Statement: $r24 = <java.lang.System: java.io.PrintStream err> 
(define-const var1552 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1552)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1552!1 String)
(assert (= var1552!1 ""))
(define-const var976 var3607 (parser/145254134 var2142)) ; Statement: $r26 = r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1917 String (toString/727813534 var3631 (cast-from-var3607-to-var518 var976) (ite (= 1 1) true false))) ; Statement: $r27 = virtualinvoke r5.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r26, 1) 
(assert true)
(define-const var3666 String (append/672562846 var1552!1 var1917)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1552!2 String)
(assert (= var1552!2 (str.++ var1552!1 var1917)))
(assert true)
(define-const var3176 String (append/672562846 var3666 ":")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3666!1 String)
(assert (= var3666!1 (str.++ var3666 ":")))
(assert true)
(define-const var2073 String (append/672562846 var3176 var2880)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var3176!1 String)
(assert (= var3176!1 (str.++ var3176 var2880)))
(assert true)
(define-const var853 String (toString/-2075883882 var2073)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1541 var853)) ; Statement: virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31) 

(declare-const var1541!1 var1299)
(declare-const var853!1 String)
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1858!1 Bool (Iterator_hasNext/-1669924200 var37!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1858!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), getDeadEndConfigs/667854675=([org.antlr.v4.runtime.NoViableAltException], org.antlr.v4.runtime.atn.ATNConfigSet), iterator/-269204326=([org.antlr.v4.runtime.atn.ATNConfigSet], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1722-to-var1053=([java.lang.Object], org.antlr.v4.runtime.atn.ATNConfig), state/-2092381073=([org.antlr.v4.runtime.atn.ATNConfig], org.antlr.v4.runtime.atn.ATNState), getNumberOfTransitions/-683258218=([org.antlr.v4.runtime.atn.ATNState], int), transition/110262428=([org.antlr.v4.runtime.atn.ATNState, int], org.antlr.v4.runtime.atn.Transition), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), toString/727813534=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.Recognizer, boolean], java.lang.String), cast-from-var3607-to-var518=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3137=org.antlr.v4.runtime.atn.ParserATNSimulator, var2142=r7, var3819=org.antlr.v4.runtime.NoViableAltException, var3433=r1, var1299=java.io.PrintStream, var1326=java.lang.System, var2751=$r0, var186="dead end configs: ", var1724=org.antlr.v4.runtime.atn.ATNConfigSet, var2295=$r2, var37=r3, var1858=$z0, var1722=java.lang.Object, var1525=$r4, var1053=org.antlr.v4.runtime.atn.ATNConfig, var3631=r5, var2880=r20, var2936=org.antlr.v4.runtime.atn.ATNState, var882=$r6, var3864=$i0, var3224=$r8, var1891=org.antlr.v4.runtime.atn.Transition, var1945=r9, var160=$z1, var795=$z2, var1541=$r24, var1552=$r25, var3607=org.antlr.v4.runtime.Parser, var976=$r26, var518=org.antlr.v4.runtime.Recognizer, var1917=$r27, var3666=$r28, var3176=$r29, var2073=$r30, var853=$r31}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3137, r7=var2142, org.antlr.v4.runtime.NoViableAltException=var3819, r1=var3433, java.io.PrintStream=var1299, java.lang.System=var1326, $r0=var2751, "dead end configs: "=var186, org.antlr.v4.runtime.atn.ATNConfigSet=var1724, $r2=var2295, r3=var37, $z0=var1858, java.lang.Object=var1722, $r4=var1525, org.antlr.v4.runtime.atn.ATNConfig=var1053, r5=var3631, r20=var2880, org.antlr.v4.runtime.atn.ATNState=var2936, $r6=var882, $i0=var3864, $r8=var3224, org.antlr.v4.runtime.atn.Transition=var1891, r9=var1945, $z1=var160, $z2=var795, $r24=var1541, $r25=var1552, org.antlr.v4.runtime.Parser=var3607, $r26=var976, org.antlr.v4.runtime.Recognizer=var518, $r27=var1917, $r28=var3666, $r29=var3176, $r30=var2073, $r31=var853}
;seq <java.lang.StringBuilder: void <init>()>;	<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.NoViableAltException;	$r0 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r0.<java.io.PrintStream: void println(java.lang.String)>("dead end configs: ");	$r2 = virtualinvoke r1.<org.antlr.v4.runtime.NoViableAltException: org.antlr.v4.runtime.atn.ATNConfigSet getDeadEndConfigs()>();	r3 = virtualinvoke $r2.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	$r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r5 = (org.antlr.v4.runtime.atn.ATNConfig) $r4;	r20 = "no edges";	$r6 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	$i0 = virtualinvoke $r6.<org.antlr.v4.runtime.atn.ATNState: int getNumberOfTransitions()>();	if $i0 <= 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r8 = r5.<org.antlr.v4.runtime.atn.ATNConfig: org.antlr.v4.runtime.atn.ATNState state>;	r9 = virtualinvoke $r8.<org.antlr.v4.runtime.atn.ATNState: org.antlr.v4.runtime.atn.Transition transition(int)>(0);	$z1 = r9 instanceof org.antlr.v4.runtime.atn.AtomTransition;	if $z1 == 0 goto $z2 = r9 instanceof org.antlr.v4.runtime.atn.SetTransition;	$z2 = r9 instanceof org.antlr.v4.runtime.atn.SetTransition;	if $z2 == 0 goto $r24 = <java.lang.System: java.io.PrintStream err>;	$r24 = <java.lang.System: java.io.PrintStream err>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r27 = virtualinvoke r5.<org.antlr.v4.runtime.atn.ATNConfig: java.lang.String toString(org.antlr.v4.runtime.Recognizer,boolean)>($r26, 1);	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r24.<java.io.PrintStream: void println(java.lang.String)>($r31);	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 8