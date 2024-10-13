(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1362 0)
(declare-sort var3824 0)
(declare-sort var2330 0)
(declare-sort var1627 0)
(declare-sort var102 0)
(declare-sort var1207 0)
(declare-sort var1341 0)
(declare-sort var2046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun env/-839157179 (var1362) var2330)
(declare-fun isTimingEnabled/-1397521293 (var2330) Bool)
(declare-fun log/-839157179 (var1362) var1627)
(declare-fun arr-var102-init () (Array Int var102))
(declare-fun cast-from-var1362-to-var102 (var1362) var102)
(declare-fun cast-from-String-to-var102 (String) var102)
(declare-fun info/-358788785 (var1627 (Array Int var102)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var102) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun _timing/-920435095 (var2330) var1341)
(declare-fun toString/1577654813 (var1362) String)
(declare-fun var2046_nanoTime/-1409780067 () Int)
(declare-fun accumulateTime/-1245996488 (var1341 String Int) void)
(declare-fun var1341_toMillisPrint/-25268587 (Int) String)
(declare-const null-var1362 var1362)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var102__ (Array Int var102))
(declare-const null-var1207 var1207)
(declare-const var529 var1362) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var529 null-var1362)))
(declare-const var1603 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1603 null-String)))
(declare-const var2350 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2350 null-Int)))
(declare-const var566 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var566 null-Int)))
(declare-const var3627 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3627 null-Bool)))
(define-const var2241 var2330 (env/-839157179 var529)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert true)
(define-const var3205 Bool (isTimingEnabled/-1397521293 var2241)) ; Statement: z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>() 
 ; Statement: if z0 == 0 goto $l15 = 0L 
(assert (= (ite var3205 1 0) 0)) ; Cond: z0 == 0 
(define-const var205 Int 0) ; Statement: $l15 = 0L 
(assert true) ; Non Conditional
(define-const var2849 Int var205) ; Statement: l0 = $l15 
(define-const var980 var1627 (log/-839157179 var529)) ; Statement: $r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(define-const var1691 (Array Int var102) arr-var102-init) ; Statement: $r2 = newarray (java.lang.Object)[4] 
(declare-const var1691!1 (Array Int var102))
(assert (not (= var1691!1 null-__Array__Int__var102__)))
(assert (= (select var1691!1 0) (cast-from-var1362-to-var102 var529))) ; Statement: $r2[0] = r0 
(declare-const var1691!2 (Array Int var102))
(assert (not (= var1691!2 null-__Array__Int__var102__)))
(assert (= (select var1691!2 1) (cast-from-String-to-var102 " begin for \u0027"))) ; Statement: $r2[1] = " begin for \'" 
(declare-const var1691!3 (Array Int var102))
(assert (not (= var1691!3 null-__Array__Int__var102__)))
(assert (= (select var1691!3 2) (cast-from-String-to-var102 var1603))) ; Statement: $r2[2] = r3 
(declare-const var1691!4 (Array Int var102))
(assert (not (= var1691!4 null-__Array__Int__var102__)))
(assert (= (select var1691!4 3) (cast-from-String-to-var102 "\u0027"))) ; Statement: $r2[3] = "\'" 
(assert true)
;(assert (info/-358788785 var980 var1691!4)) ; Statement: virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2) 

(declare-const var980!1 var1627)
(declare-const var1691!5 (Array Int var102))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1053 var1207) ; Statement: $r14 := @caughtexception 
(assert (not (= var1053 null-var1207)))
(assert true) ; Non Conditional
(define-const var2721 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2721)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2721!1 String)
(assert (= var2721!1 ""))
(assert true)
(define-const var959 String (append/-1031950772 var2721!1 (cast-from-var1362-to-var102 var529))) ; Statement: $r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2721!2 String)
(assert (str.prefixof var2721!1 var2721!2))
(assert true)
(define-const var2434 String (append/672562846 var959 " end \u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'") 
(declare-const var959!1 String)
(assert (= var959!1 (str.++ var959 " end \u0027")))
(assert true)
(define-const var2289 String (append/672562846 var2434 var1603)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2434!1 String)
(assert (= var2434!1 (str.++ var2434 var1603)))
(assert true)
(define-const var3637 String (append/672562846 var2289 "\u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2289!1 String)
(assert (= var2289!1 (str.++ var2289 "\u0027")))
(assert true)
(define-const var3211 String (toString/-2075883882 var3637)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(assert (not (= (ite var3205 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2590 var2330 (env/-839157179 var529)) ; Statement: $r22 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var2099 var1341 (_timing/-920435095 var2590)) ; Statement: $r23 = $r22.<jdk.nashorn.internal.runtime.ScriptEnvironment: jdk.nashorn.internal.runtime.Timing _timing> 
(assert true)
(define-const var3216 String (toString/1577654813 var529)) ; Statement: $r24 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.String toString()>() 
(define-const var3913 Int var2046_nanoTime/-1409780067) ; Statement: $l7 = staticinvoke <java.lang.System: long nanoTime()>() 
(define-const var2603 Int (- var3913 var2849)) ; Statement: $l8 = $l7 - l0 
(assert true)
;(assert (accumulateTime/-1245996488 var2099 var3216 var2603)) ; Statement: virtualinvoke $r23.<jdk.nashorn.internal.runtime.Timing: void accumulateTime(java.lang.String,long)>($r24, $l8) 

(declare-const var2099!1 var1341)
(declare-const var3216!1 String)
(declare-const var2603!1 Int)
(define-const var1388 var1627 (log/-839157179 var529)) ; Statement: $r26 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(define-const var2343 (Array Int var102) arr-var102-init) ; Statement: $r25 = newarray (java.lang.Object)[4] 
(declare-const var2343!1 (Array Int var102))
(assert (not (= var2343!1 null-__Array__Int__var102__)))
(assert (= (select var2343!1 0) (cast-from-String-to-var102 var3211))) ; Statement: $r25[0] = r20 
(declare-const var2343!2 (Array Int var102))
(assert (not (= var2343!2 null-__Array__Int__var102__)))
(assert (= (select var2343!2 1) (cast-from-String-to-var102 "\u0027 in "))) ; Statement: $r25[1] = "\' in " 
(define-const var3590 Int var2046_nanoTime/-1409780067) ; Statement: $l9 = staticinvoke <java.lang.System: long nanoTime()>() 
(define-const var614 Int (- var3590 var2849)) ; Statement: $l10 = $l9 - l0 
(define-const var3582 String (var1341_toMillisPrint/-25268587 var614)) ; Statement: $r27 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>($l10) 
(declare-const var2343!3 (Array Int var102))
(assert (not (= var2343!3 null-__Array__Int__var102__)))
(assert (= (select var2343!3 2) (cast-from-String-to-var102 var3582))) ; Statement: $r25[2] = $r27 
(declare-const var2343!4 (Array Int var102))
(assert (not (= var2343!4 null-__Array__Int__var102__)))
(assert (= (select var2343!4 3) (cast-from-String-to-var102 " ms"))) ; Statement: $r25[3] = " ms" 
(assert true)
;(assert (info/-358788785 var1388 var2343!4)) ; Statement: virtualinvoke $r26.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r25) 

(declare-const var1388!1 var1627)
(declare-const var2343!5 (Array Int var102))
 ; Statement: goto [?= throw $r14] 
(assert true) ; Non Conditional
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {env/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.ScriptEnvironment), isTimingEnabled/-1397521293=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), log/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.logging.DebugLogger), arr-var102-init=([], java.lang.Object[]), cast-from-var1362-to-var102=([jdk.nashorn.internal.parser.Parser], java.lang.Object), cast-from-String-to-var102=([java.lang.String], java.lang.Object), info/-358788785=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), _timing/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], jdk.nashorn.internal.runtime.Timing), toString/1577654813=([jdk.nashorn.internal.parser.Parser], java.lang.String), var2046_nanoTime/-1409780067=([], long), accumulateTime/-1245996488=([jdk.nashorn.internal.runtime.Timing, java.lang.String, long], void), var1341_toMillisPrint/-25268587=([long], java.lang.String)}
; {var1362=jdk.nashorn.internal.parser.Parser, var529=r0, var1603=r3, var3824=null_type, var2350=i1, var566=i2, var3627=z2, var2330=jdk.nashorn.internal.runtime.ScriptEnvironment, var2241=$r1, var3205=z0, var205=$l15, var2849=l0, var1627=jdk.nashorn.internal.runtime.logging.DebugLogger, var980=$r4, var102=java.lang.Object, var1691=$r2, var1207=java.lang.Throwable, var1053=$r14, var2721=$r59, var959=$r16, var2434=$r17, var2289=$r18, var3637=$r19, var3211=r20, var2590=$r22, var1341=jdk.nashorn.internal.runtime.Timing, var2099=$r23, var3216=$r24, var2046=java.lang.System, var3913=$l7, var2603=$l8, var1388=$r26, var2343=$r25, var3590=$l9, var614=$l10, var3582=$r27}
; {jdk.nashorn.internal.parser.Parser=var1362, r0=var529, r3=var1603, null_type=var3824, i1=var2350, i2=var566, z2=var3627, jdk.nashorn.internal.runtime.ScriptEnvironment=var2330, $r1=var2241, z0=var3205, $l15=var205, l0=var2849, jdk.nashorn.internal.runtime.logging.DebugLogger=var1627, $r4=var980, java.lang.Object=var102, $r2=var1691, java.lang.Throwable=var1207, $r14=var1053, $r59=var2721, $r16=var959, $r17=var2434, $r18=var2289, $r19=var3637, r20=var3211, $r22=var2590, jdk.nashorn.internal.runtime.Timing=var1341, $r23=var2099, $r24=var3216, java.lang.System=var2046, $l7=var3913, $l8=var2603, $r26=var1388, $r25=var2343, $l9=var3590, $l10=var614, $r27=var3582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<jdk.nashorn.internal.parser.Parser: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	r3 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	z2 := @parameter3: boolean;	$r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>();	if z0 == 0 goto $l15 = 0L;	$l15 = 0L;	l0 = $l15;	$r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r2 = newarray (java.lang.Object)[4];	$r2[0] = r0;	$r2[1] = " begin for \'";	$r2[2] = r3;	$r2[3] = "\'";	virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2);	$r14 := @caughtexception;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r22 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r23 = $r22.<jdk.nashorn.internal.runtime.ScriptEnvironment: jdk.nashorn.internal.runtime.Timing _timing>;	$r24 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.String toString()>();	$l7 = staticinvoke <java.lang.System: long nanoTime()>();	$l8 = $l7 - l0;	virtualinvoke $r23.<jdk.nashorn.internal.runtime.Timing: void accumulateTime(java.lang.String,long)>($r24, $l8);	$r26 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r25 = newarray (java.lang.Object)[4];	$r25[0] = r20;	$r25[1] = "\' in ";	$l9 = staticinvoke <java.lang.System: long nanoTime()>();	$l10 = $l9 - l0;	$r27 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>($l10);	$r25[2] = $r27;	$r25[3] = " ms";	virtualinvoke $r26.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r25);	goto [?= throw $r14];	throw $r14
;block_num 7