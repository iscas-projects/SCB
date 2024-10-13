(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var1439 0)
(declare-sort var3127 0)
(declare-sort var2652 0)
(declare-sort var2128 0)
(declare-sort var2852 0)
(declare-sort var3564 0)
(declare-sort var1329 0)
(declare-sort var760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1495963846 (var3127 String) void)
(declare-fun cast-from-var966-to-var3127 (var966) var3127)
(declare-fun var2652-init () var2652)
(declare-fun <init>/-201242697 (var2652) void)
(declare-fun cast-from-var2652-to-var2128 (var2652) var2128)
(declare-fun expected/-603474257 (var966) var2128)
(declare-fun var2852-init () var2852)
(declare-fun <init>/1281898776 (var2852) void)
(declare-fun cast-from-var2852-to-var3564 (var2852) var3564)
(declare-fun caps/-603474257 (var966) var3564)
(declare-fun forwardReferences/-603474257 (var966) var2852)
(declare-fun inCharClass/-603474257 (var966) Bool)
(declare-fun inNegativeClass/-603474257 (var966) Bool)
(declare-fun String-init () String)
(declare-fun limit/-1835107176 (var3127) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun sb/-603474257 (var966) String)
(declare-fun reset/84691649 (var3127 Int) void)
(declare-fun var1329_valueOf/-1186540555 (Int) var1329)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2128_put/1464166817 (var2128 var760 var760) var760)
(declare-fun cast-from-var1329-to-var760 (var1329) var760)
(declare-fun cast-from-Int-to-var760 (Int) var760)
(declare-const null-var966 var966)
(declare-const null-String String)
(declare-const var2202 var966) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var2202 null-var966)))
(declare-const var3777 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3777 null-String)))
(assert true)
;(assert (<init>/1495963846 (cast-from-var966-to-var3127 var2202) var3777)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.parser.Scanner: void <init>(java.lang.String)>(r1) 

(declare-const var2202!1 var966)
(declare-const var3777!1 String)
(define-const var798 var2652 var2652-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var798)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var798!1 var2652)
(declare-const var2202!2 var966)
(assert (not (= var2202!2 null-var966)))
(assert (= (expected/-603474257 var2202!2) (cast-from-var2652-to-var2128 var798!1))) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.Map expected> = $r2 
(define-const var473 var2852 var2852-init) ; Statement: $r3 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var473)) ; Statement: specialinvoke $r3.<java.util.LinkedList: void <init>()>() 

(declare-const var473!1 var2852)
(declare-const var2202!3 var966)
(assert (not (= var2202!3 null-var966)))
(assert (= (caps/-603474257 var2202!3) (cast-from-var2852-to-var3564 var473!1))) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.List caps> = $r3 
(define-const var1949 var2852 var2852-init) ; Statement: $r4 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var1949)) ; Statement: specialinvoke $r4.<java.util.LinkedList: void <init>()>() 

(declare-const var1949!1 var2852)
(declare-const var2202!4 var966)
(assert (not (= var2202!4 null-var966)))
(assert (= (forwardReferences/-603474257 var2202!4) var1949!1)) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.LinkedList forwardReferences> = $r4 
(declare-const var2202!5 var966)
(assert (not (= var2202!5 null-var966)))
(assert (= (inCharClass/-603474257 var2202!5) (ite (= 1 0) true false))) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean inCharClass> = 0 
(declare-const var2202!6 var966)
(assert (not (= var2202!6 null-var966)))
(assert (= (inNegativeClass/-603474257 var2202!6) (ite (= 1 0) true false))) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean inNegativeClass> = 0 
(define-const var1352 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var3587 Int (limit/-1835107176 (cast-from-var966-to-var3127 var2202!6))) ; Statement: $i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int limit> 
(assert true)
;(assert (<init>/543593434 var1352 var3587)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var1352!1 String)
(declare-const var3587!1 Int)
(declare-const var2202!7 var966)
(assert (not (= var2202!7 null-var966)))
(assert (= (sb/-603474257 var2202!7) var1352!1)) ; Statement: r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> = $r5 
(assert true)
;(assert (reset/84691649 (cast-from-var966-to-var3127 var2202!7) 0)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void reset(int)>(0) 

(declare-const var2202!8 var966)
(declare-const var752 Int)
(define-const var109 var2128 (expected/-603474257 var2202!8)) ; Statement: $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.Map expected> 
(define-const var2393 var1329 (var1329_valueOf/-1186540555 93)) ; Statement: $r8 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(93) 
(define-const var130 Int (Int_valueOf/-1371140006 0)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
;(assert (var2128_put/1464166817 var109 (cast-from-var1329-to-var760 var2393) (cast-from-Int-to-var760 var130))) ; Statement: interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r8, $r7) 

(declare-const var109!1 var2128)
(declare-const var2393!1 var1329)
(declare-const var130!1 Int)
(define-const var2039 var2128 (expected/-603474257 var2202!8)) ; Statement: $r9 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.Map expected> 
(define-const var3846 var1329 (var1329_valueOf/-1186540555 125)) ; Statement: $r11 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(125) 
(define-const var1318 Int (Int_valueOf/-1371140006 0)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0) 
;(assert (var2128_put/1464166817 var2039 (cast-from-var1329-to-var760 var3846) (cast-from-Int-to-var760 var1318))) ; Statement: interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, $r10) 

(declare-const var2039!1 var2128)
(declare-const var3846!1 var1329)
(declare-const var1318!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1495963846=([jdk.nashorn.internal.parser.Scanner, java.lang.String], void), cast-from-var966-to-var3127=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), var2652-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var2652-to-var2128=([java.util.HashMap], java.util.Map), expected/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.util.Map), var2852-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), cast-from-var2852-to-var3564=([java.util.LinkedList], java.util.List), caps/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.util.List), forwardReferences/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.util.LinkedList), inCharClass/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean), inNegativeClass/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], boolean), String-init=([], java.lang.StringBuilder), limit/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), <init>/543593434=([java.lang.StringBuilder, int], void), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), reset/84691649=([jdk.nashorn.internal.parser.Scanner, int], void), var1329_valueOf/-1186540555=([char], java.lang.Character), Int_valueOf/-1371140006=([int], java.lang.Integer), var2128_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1329-to-var760=([java.lang.Character], java.lang.Object), cast-from-Int-to-var760=([java.lang.Integer], java.lang.Object)}
; {var966=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var2202=r0, var3777=r1, var1439=null_type, var3127=jdk.nashorn.internal.parser.Scanner, var2652=java.util.HashMap, var798=$r2, var2128=java.util.Map, var2852=java.util.LinkedList, var473=$r3, var3564=java.util.List, var1949=$r4, var1352=$r5, var3587=$i0, var752=0, var109=$r6, var1329=java.lang.Character, var2393=$r8, var130=$r7, var760=java.lang.Object, var2039=$r9, var3846=$r11, var1318=$r10}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var966, r0=var2202, r1=var3777, null_type=var1439, jdk.nashorn.internal.parser.Scanner=var3127, java.util.HashMap=var2652, $r2=var798, java.util.Map=var2128, java.util.LinkedList=var2852, $r3=var473, java.util.List=var3564, $r4=var1949, $r5=var1352, $i0=var3587, 0=var752, $r6=var109, java.lang.Character=var1329, $r8=var2393, $r7=var130, java.lang.Object=var760, $r9=var2039, $r11=var3846, $r10=var1318}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<jdk.nashorn.internal.parser.Scanner: void <init>(java.lang.String)>(r1);	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.Map expected> = $r2;	$r3 = new java.util.LinkedList;	specialinvoke $r3.<java.util.LinkedList: void <init>()>();	r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.List caps> = $r3;	$r4 = new java.util.LinkedList;	specialinvoke $r4.<java.util.LinkedList: void <init>()>();	r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.LinkedList forwardReferences> = $r4;	r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean inCharClass> = 0;	r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean inNegativeClass> = 0;	$r5 = new java.lang.StringBuilder;	$i0 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: int limit>;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i0);	r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> = $r5;	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void reset(int)>(0);	$r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.Map expected>;	$r8 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(93);	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r8, $r7);	$r9 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.util.Map expected>;	$r11 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(125);	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	interfaceinvoke $r9.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r11, $r10);	return
;block_num 1