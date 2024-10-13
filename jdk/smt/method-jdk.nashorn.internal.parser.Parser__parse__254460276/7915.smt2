(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2039 0)
(declare-sort var222 0)
(declare-sort var627 0)
(declare-sort var667 0)
(declare-sort var3261 0)
(declare-sort var2827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun env/-839157179 (var2039) var627)
(declare-fun isTimingEnabled/-1397521293 (var627) Bool)
(declare-fun log/-839157179 (var2039) var667)
(declare-fun arr-var3261-init () (Array Int var3261))
(declare-fun cast-from-var2039-to-var3261 (var2039) var3261)
(declare-fun cast-from-String-to-var3261 (String) var3261)
(declare-fun info/-358788785 (var667 (Array Int var3261)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3261) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/1869501631 (var667 String) void)
(declare-const null-var2039 var2039)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var3261__ (Array Int var3261))
(declare-const null-var2827 var2827)
(declare-const var1729 var2039) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var1729 null-var2039)))
(declare-const var3238 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3238 null-String)))
(declare-const var841 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var841 null-Int)))
(declare-const var2539 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2539 null-Int)))
(declare-const var1974 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var1974 null-Bool)))
(define-const var3136 var627 (env/-839157179 var1729)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert true)
(define-const var1287 Bool (isTimingEnabled/-1397521293 var3136)) ; Statement: z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>() 
 ; Statement: if z0 == 0 goto $l15 = 0L 
(assert (= (ite var1287 1 0) 0)) ; Cond: z0 == 0 
(define-const var3811 Int 0) ; Statement: $l15 = 0L 
(assert true) ; Non Conditional
(define-const var3358 Int var3811) ; Statement: l0 = $l15 
(define-const var1562 var667 (log/-839157179 var1729)) ; Statement: $r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(define-const var2260 (Array Int var3261) arr-var3261-init) ; Statement: $r2 = newarray (java.lang.Object)[4] 
(declare-const var2260!1 (Array Int var3261))
(assert (not (= var2260!1 null-__Array__Int__var3261__)))
(assert (= (select var2260!1 0) (cast-from-var2039-to-var3261 var1729))) ; Statement: $r2[0] = r0 
(declare-const var2260!2 (Array Int var3261))
(assert (not (= var2260!2 null-__Array__Int__var3261__)))
(assert (= (select var2260!2 1) (cast-from-String-to-var3261 " begin for \u0027"))) ; Statement: $r2[1] = " begin for \'" 
(declare-const var2260!3 (Array Int var3261))
(assert (not (= var2260!3 null-__Array__Int__var3261__)))
(assert (= (select var2260!3 2) (cast-from-String-to-var3261 var3238))) ; Statement: $r2[2] = r3 
(declare-const var2260!4 (Array Int var3261))
(assert (not (= var2260!4 null-__Array__Int__var3261__)))
(assert (= (select var2260!4 3) (cast-from-String-to-var3261 "\u0027"))) ; Statement: $r2[3] = "\'" 
(assert true)
;(assert (info/-358788785 var1562 var2260!4)) ; Statement: virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2) 

(declare-const var1562!1 var667)
(declare-const var2260!5 (Array Int var3261))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3167 var2827) ; Statement: $r14 := @caughtexception 
(assert (not (= var3167 null-var2827)))
(assert true) ; Non Conditional
(define-const var2128 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2128)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2128!1 String)
(assert (= var2128!1 ""))
(assert true)
(define-const var1581 String (append/-1031950772 var2128!1 (cast-from-var2039-to-var3261 var1729))) ; Statement: $r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2128!2 String)
(assert (str.prefixof var2128!1 var2128!2))
(assert true)
(define-const var24 String (append/672562846 var1581 " end \u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'") 
(declare-const var1581!1 String)
(assert (= var1581!1 (str.++ var1581 " end \u0027")))
(assert true)
(define-const var2092 String (append/672562846 var24 var3238)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var24!1 String)
(assert (= var24!1 (str.++ var24 var3238)))
(assert true)
(define-const var258 String (append/672562846 var2092 "\u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2092!1 String)
(assert (= var2092!1 (str.++ var2092 "\u0027")))
(assert true)
(define-const var3031 String (toString/-2075883882 var258)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(assert (= (ite var1287 1 0) 0)) ; Cond: z0 == 0 
(define-const var3526 var667 (log/-839157179 var1729)) ; Statement: $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(assert true)
;(assert (info/1869501631 var3526 var3031)) ; Statement: virtualinvoke $r21.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>(r20) 

(declare-const var3526!1 var667)
(declare-const var3031!1 String)
(assert true) ; Non Conditional
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {env/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.ScriptEnvironment), isTimingEnabled/-1397521293=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), log/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.logging.DebugLogger), arr-var3261-init=([], java.lang.Object[]), cast-from-var2039-to-var3261=([jdk.nashorn.internal.parser.Parser], java.lang.Object), cast-from-String-to-var3261=([java.lang.String], java.lang.Object), info/-358788785=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/1869501631=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.String], void)}
; {var2039=jdk.nashorn.internal.parser.Parser, var1729=r0, var3238=r3, var222=null_type, var841=i1, var2539=i2, var1974=z2, var627=jdk.nashorn.internal.runtime.ScriptEnvironment, var3136=$r1, var1287=z0, var3811=$l15, var3358=l0, var667=jdk.nashorn.internal.runtime.logging.DebugLogger, var1562=$r4, var3261=java.lang.Object, var2260=$r2, var2827=java.lang.Throwable, var3167=$r14, var2128=$r59, var1581=$r16, var24=$r17, var2092=$r18, var258=$r19, var3031=r20, var3526=$r21}
; {jdk.nashorn.internal.parser.Parser=var2039, r0=var1729, r3=var3238, null_type=var222, i1=var841, i2=var2539, z2=var1974, jdk.nashorn.internal.runtime.ScriptEnvironment=var627, $r1=var3136, z0=var1287, $l15=var3811, l0=var3358, jdk.nashorn.internal.runtime.logging.DebugLogger=var667, $r4=var1562, java.lang.Object=var3261, $r2=var2260, java.lang.Throwable=var2827, $r14=var3167, $r59=var2128, $r16=var1581, $r17=var24, $r18=var2092, $r19=var258, r20=var3031, $r21=var3526}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	r3 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	z2 := @parameter3: boolean;	$r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>();	if z0 == 0 goto $l15 = 0L;	$l15 = 0L;	l0 = $l15;	$r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r2 = newarray (java.lang.Object)[4];	$r2[0] = r0;	$r2[1] = " begin for \'";	$r2[2] = r3;	$r2[3] = "\'";	virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2);	$r14 := @caughtexception;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	virtualinvoke $r21.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>(r20);	throw $r14
;block_num 7