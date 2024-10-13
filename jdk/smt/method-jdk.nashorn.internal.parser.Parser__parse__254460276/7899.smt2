(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var519 0)
(declare-sort var28 0)
(declare-sort var1792 0)
(declare-sort var1443 0)
(declare-sort var1218 0)
(declare-sort var1126 0)
(declare-sort var1313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun env/-839157179 (var519) var1792)
(declare-fun isTimingEnabled/-1397521293 (var1792) Bool)
(declare-fun var1443_nanoTime/-1409780067 () Int)
(declare-fun log/-839157179 (var519) var1218)
(declare-fun arr-var1126-init () (Array Int var1126))
(declare-fun cast-from-var519-to-var1126 (var519) var1126)
(declare-fun cast-from-String-to-var1126 (String) var1126)
(declare-fun info/-358788785 (var1218 (Array Int var1126)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1126) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/1869501631 (var1218 String) void)
(declare-const null-var519 var519)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1126__ (Array Int var1126))
(declare-const null-var1313 var1313)
(declare-const var302 var519) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var302 null-var519)))
(declare-const var2226 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2226 null-String)))
(declare-const var2338 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2338 null-Int)))
(declare-const var3029 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3029 null-Int)))
(declare-const var3470 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3470 null-Bool)))
(define-const var3499 var1792 (env/-839157179 var302)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert true)
(define-const var135 Bool (isTimingEnabled/-1397521293 var3499)) ; Statement: z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>() 
 ; Statement: if z0 == 0 goto $l15 = 0L 
(assert (not (= (ite var135 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var405 Int var1443_nanoTime/-1409780067) ; Statement: $l15 = staticinvoke <java.lang.System: long nanoTime()>() 
 ; Statement: goto [?= l0 = $l15] 
(assert true) ; Non Conditional
(define-const var1737 Int var405) ; Statement: l0 = $l15 
(define-const var3108 var1218 (log/-839157179 var302)) ; Statement: $r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(define-const var1661 (Array Int var1126) arr-var1126-init) ; Statement: $r2 = newarray (java.lang.Object)[4] 
(declare-const var1661!1 (Array Int var1126))
(assert (not (= var1661!1 null-__Array__Int__var1126__)))
(assert (= (select var1661!1 0) (cast-from-var519-to-var1126 var302))) ; Statement: $r2[0] = r0 
(declare-const var1661!2 (Array Int var1126))
(assert (not (= var1661!2 null-__Array__Int__var1126__)))
(assert (= (select var1661!2 1) (cast-from-String-to-var1126 " begin for \u0027"))) ; Statement: $r2[1] = " begin for \'" 
(declare-const var1661!3 (Array Int var1126))
(assert (not (= var1661!3 null-__Array__Int__var1126__)))
(assert (= (select var1661!3 2) (cast-from-String-to-var1126 var2226))) ; Statement: $r2[2] = r3 
(declare-const var1661!4 (Array Int var1126))
(assert (not (= var1661!4 null-__Array__Int__var1126__)))
(assert (= (select var1661!4 3) (cast-from-String-to-var1126 "\u0027"))) ; Statement: $r2[3] = "\'" 
(assert true)
;(assert (info/-358788785 var3108 var1661!4)) ; Statement: virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2) 

(declare-const var3108!1 var1218)
(declare-const var1661!5 (Array Int var1126))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3570 var1313) ; Statement: $r14 := @caughtexception 
(assert (not (= var3570 null-var1313)))
(assert true) ; Non Conditional
(define-const var1626 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1626)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1626!1 String)
(assert (= var1626!1 ""))
(assert true)
(define-const var434 String (append/-1031950772 var1626!1 (cast-from-var519-to-var1126 var302))) ; Statement: $r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1626!2 String)
(assert (str.prefixof var1626!1 var1626!2))
(assert true)
(define-const var3548 String (append/672562846 var434 " end \u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'") 
(declare-const var434!1 String)
(assert (= var434!1 (str.++ var434 " end \u0027")))
(assert true)
(define-const var3610 String (append/672562846 var3548 var2226)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3548!1 String)
(assert (= var3548!1 (str.++ var3548 var2226)))
(assert true)
(define-const var59 String (append/672562846 var3610 "\u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3610!1 String)
(assert (= var3610!1 (str.++ var3610 "\u0027")))
(assert true)
(define-const var1302 String (toString/-2075883882 var59)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(assert (= (ite var135 1 0) 0)) ; Cond: z0 == 0 
(define-const var2342 var1218 (log/-839157179 var302)) ; Statement: $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(assert true)
;(assert (info/1869501631 var2342 var1302)) ; Statement: virtualinvoke $r21.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>(r20) 

(declare-const var2342!1 var1218)
(declare-const var1302!1 String)
(assert true) ; Non Conditional
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {env/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.ScriptEnvironment), isTimingEnabled/-1397521293=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), var1443_nanoTime/-1409780067=([], long), log/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.logging.DebugLogger), arr-var1126-init=([], java.lang.Object[]), cast-from-var519-to-var1126=([jdk.nashorn.internal.parser.Parser], java.lang.Object), cast-from-String-to-var1126=([java.lang.String], java.lang.Object), info/-358788785=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/1869501631=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.String], void)}
; {var519=jdk.nashorn.internal.parser.Parser, var302=r0, var2226=r3, var28=null_type, var2338=i1, var3029=i2, var3470=z2, var1792=jdk.nashorn.internal.runtime.ScriptEnvironment, var3499=$r1, var135=z0, var1443=java.lang.System, var405=$l15, var1737=l0, var1218=jdk.nashorn.internal.runtime.logging.DebugLogger, var3108=$r4, var1126=java.lang.Object, var1661=$r2, var1313=java.lang.Throwable, var3570=$r14, var1626=$r59, var434=$r16, var3548=$r17, var3610=$r18, var59=$r19, var1302=r20, var2342=$r21}
; {jdk.nashorn.internal.parser.Parser=var519, r0=var302, r3=var2226, null_type=var28, i1=var2338, i2=var3029, z2=var3470, jdk.nashorn.internal.runtime.ScriptEnvironment=var1792, $r1=var3499, z0=var135, java.lang.System=var1443, $l15=var405, l0=var1737, jdk.nashorn.internal.runtime.logging.DebugLogger=var1218, $r4=var3108, java.lang.Object=var1126, $r2=var1661, java.lang.Throwable=var1313, $r14=var3570, $r59=var1626, $r16=var434, $r17=var3548, $r18=var3610, $r19=var59, r20=var1302, $r21=var2342}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	r3 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	z2 := @parameter3: boolean;	$r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>();	if z0 == 0 goto $l15 = 0L;	$l15 = staticinvoke <java.lang.System: long nanoTime()>();	goto [?= l0 = $l15];	l0 = $l15;	$r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r2 = newarray (java.lang.Object)[4];	$r2[0] = r0;	$r2[1] = " begin for \'";	$r2[2] = r3;	$r2[3] = "\'";	virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2);	$r14 := @caughtexception;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	virtualinvoke $r21.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.String)>(r20);	throw $r14
;block_num 7