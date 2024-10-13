(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var516 0)
(declare-sort var107 0)
(declare-sort var3713 0)
(declare-sort var3874 0)
(declare-sort var2062 0)
(declare-sort var1731 0)
(declare-sort var243 0)
(declare-sort var3499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun env/-839157179 (var516) var3713)
(declare-fun isTimingEnabled/-1397521293 (var3713) Bool)
(declare-fun var3874_nanoTime/-1409780067 () Int)
(declare-fun log/-839157179 (var516) var2062)
(declare-fun arr-var1731-init () (Array Int var1731))
(declare-fun cast-from-var516-to-var1731 (var516) var1731)
(declare-fun cast-from-String-to-var1731 (String) var1731)
(declare-fun info/-358788785 (var2062 (Array Int var1731)) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1731) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun _timing/-920435095 (var3713) var3499)
(declare-fun toString/1577654813 (var516) String)
(declare-fun accumulateTime/-1245996488 (var3499 String Int) void)
(declare-fun var3499_toMillisPrint/-25268587 (Int) String)
(declare-const null-var516 var516)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var1731__ (Array Int var1731))
(declare-const null-var243 var243)
(declare-const var964 var516) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var964 null-var516)))
(declare-const var2761 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2761 null-String)))
(declare-const var2089 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2089 null-Int)))
(declare-const var2061 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2061 null-Int)))
(declare-const var3559 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3559 null-Bool)))
(define-const var1682 var3713 (env/-839157179 var964)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert true)
(define-const var3086 Bool (isTimingEnabled/-1397521293 var1682)) ; Statement: z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>() 
 ; Statement: if z0 == 0 goto $l15 = 0L 
(assert (not (= (ite var3086 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3462 Int var3874_nanoTime/-1409780067) ; Statement: $l15 = staticinvoke <java.lang.System: long nanoTime()>() 
 ; Statement: goto [?= l0 = $l15] 
(assert true) ; Non Conditional
(define-const var2987 Int var3462) ; Statement: l0 = $l15 
(define-const var1015 var2062 (log/-839157179 var964)) ; Statement: $r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(define-const var196 (Array Int var1731) arr-var1731-init) ; Statement: $r2 = newarray (java.lang.Object)[4] 
(declare-const var196!1 (Array Int var1731))
(assert (not (= var196!1 null-__Array__Int__var1731__)))
(assert (= (select var196!1 0) (cast-from-var516-to-var1731 var964))) ; Statement: $r2[0] = r0 
(declare-const var196!2 (Array Int var1731))
(assert (not (= var196!2 null-__Array__Int__var1731__)))
(assert (= (select var196!2 1) (cast-from-String-to-var1731 " begin for \u0027"))) ; Statement: $r2[1] = " begin for \'" 
(declare-const var196!3 (Array Int var1731))
(assert (not (= var196!3 null-__Array__Int__var1731__)))
(assert (= (select var196!3 2) (cast-from-String-to-var1731 var2761))) ; Statement: $r2[2] = r3 
(declare-const var196!4 (Array Int var1731))
(assert (not (= var196!4 null-__Array__Int__var1731__)))
(assert (= (select var196!4 3) (cast-from-String-to-var1731 "\u0027"))) ; Statement: $r2[3] = "\'" 
(assert true)
;(assert (info/-358788785 var1015 var196!4)) ; Statement: virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2) 

(declare-const var1015!1 var2062)
(declare-const var196!5 (Array Int var1731))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1031 var243) ; Statement: $r14 := @caughtexception 
(assert (not (= var1031 null-var243)))
(assert true) ; Non Conditional
(define-const var3985 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3985)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3985!1 String)
(assert (= var3985!1 ""))
(assert true)
(define-const var1991 String (append/-1031950772 var3985!1 (cast-from-var516-to-var1731 var964))) ; Statement: $r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3985!2 String)
(assert (str.prefixof var3985!1 var3985!2))
(assert true)
(define-const var3013 String (append/672562846 var1991 " end \u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'") 
(declare-const var1991!1 String)
(assert (= var1991!1 (str.++ var1991 " end \u0027")))
(assert true)
(define-const var2999 String (append/672562846 var3013 var2761)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3013!1 String)
(assert (= var3013!1 (str.++ var3013 var2761)))
(assert true)
(define-const var3824 String (append/672562846 var2999 "\u0027")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2999!1 String)
(assert (= var2999!1 (str.++ var2999 "\u0027")))
(assert true)
(define-const var2910 String (toString/-2075883882 var3824)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(assert (not (= (ite var3086 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var267 var3713 (env/-839157179 var964)) ; Statement: $r22 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var2334 var3499 (_timing/-920435095 var267)) ; Statement: $r23 = $r22.<jdk.nashorn.internal.runtime.ScriptEnvironment: jdk.nashorn.internal.runtime.Timing _timing> 
(assert true)
(define-const var2556 String (toString/1577654813 var964)) ; Statement: $r24 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.String toString()>() 
(define-const var238 Int var3874_nanoTime/-1409780067) ; Statement: $l7 = staticinvoke <java.lang.System: long nanoTime()>() 
(define-const var2230 Int (- var238 var2987)) ; Statement: $l8 = $l7 - l0 
(assert true)
;(assert (accumulateTime/-1245996488 var2334 var2556 var2230)) ; Statement: virtualinvoke $r23.<jdk.nashorn.internal.runtime.Timing: void accumulateTime(java.lang.String,long)>($r24, $l8) 

(declare-const var2334!1 var3499)
(declare-const var2556!1 String)
(declare-const var2230!1 Int)
(define-const var3697 var2062 (log/-839157179 var964)) ; Statement: $r26 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log> 
(define-const var3292 (Array Int var1731) arr-var1731-init) ; Statement: $r25 = newarray (java.lang.Object)[4] 
(declare-const var3292!1 (Array Int var1731))
(assert (not (= var3292!1 null-__Array__Int__var1731__)))
(assert (= (select var3292!1 0) (cast-from-String-to-var1731 var2910))) ; Statement: $r25[0] = r20 
(declare-const var3292!2 (Array Int var1731))
(assert (not (= var3292!2 null-__Array__Int__var1731__)))
(assert (= (select var3292!2 1) (cast-from-String-to-var1731 "\u0027 in "))) ; Statement: $r25[1] = "\' in " 
(define-const var3863 Int var3874_nanoTime/-1409780067) ; Statement: $l9 = staticinvoke <java.lang.System: long nanoTime()>() 
(define-const var1275 Int (- var3863 var2987)) ; Statement: $l10 = $l9 - l0 
(define-const var1157 String (var3499_toMillisPrint/-25268587 var1275)) ; Statement: $r27 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>($l10) 
(declare-const var3292!3 (Array Int var1731))
(assert (not (= var3292!3 null-__Array__Int__var1731__)))
(assert (= (select var3292!3 2) (cast-from-String-to-var1731 var1157))) ; Statement: $r25[2] = $r27 
(declare-const var3292!4 (Array Int var1731))
(assert (not (= var3292!4 null-__Array__Int__var1731__)))
(assert (= (select var3292!4 3) (cast-from-String-to-var1731 " ms"))) ; Statement: $r25[3] = " ms" 
(assert true)
;(assert (info/-358788785 var3697 var3292!4)) ; Statement: virtualinvoke $r26.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r25) 

(declare-const var3697!1 var2062)
(declare-const var3292!5 (Array Int var1731))
 ; Statement: goto [?= throw $r14] 
(assert true) ; Non Conditional
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {env/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.ScriptEnvironment), isTimingEnabled/-1397521293=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), var3874_nanoTime/-1409780067=([], long), log/-839157179=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.runtime.logging.DebugLogger), arr-var1731-init=([], java.lang.Object[]), cast-from-var516-to-var1731=([jdk.nashorn.internal.parser.Parser], java.lang.Object), cast-from-String-to-var1731=([java.lang.String], java.lang.Object), info/-358788785=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), _timing/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], jdk.nashorn.internal.runtime.Timing), toString/1577654813=([jdk.nashorn.internal.parser.Parser], java.lang.String), accumulateTime/-1245996488=([jdk.nashorn.internal.runtime.Timing, java.lang.String, long], void), var3499_toMillisPrint/-25268587=([long], java.lang.String)}
; {var516=jdk.nashorn.internal.parser.Parser, var964=r0, var2761=r3, var107=null_type, var2089=i1, var2061=i2, var3559=z2, var3713=jdk.nashorn.internal.runtime.ScriptEnvironment, var1682=$r1, var3086=z0, var3874=java.lang.System, var3462=$l15, var2987=l0, var2062=jdk.nashorn.internal.runtime.logging.DebugLogger, var1015=$r4, var1731=java.lang.Object, var196=$r2, var243=java.lang.Throwable, var1031=$r14, var3985=$r59, var1991=$r16, var3013=$r17, var2999=$r18, var3824=$r19, var2910=r20, var267=$r22, var3499=jdk.nashorn.internal.runtime.Timing, var2334=$r23, var2556=$r24, var238=$l7, var2230=$l8, var3697=$r26, var3292=$r25, var3863=$l9, var1275=$l10, var1157=$r27}
; {jdk.nashorn.internal.parser.Parser=var516, r0=var964, r3=var2761, null_type=var107, i1=var2089, i2=var2061, z2=var3559, jdk.nashorn.internal.runtime.ScriptEnvironment=var3713, $r1=var1682, z0=var3086, java.lang.System=var3874, $l15=var3462, l0=var2987, jdk.nashorn.internal.runtime.logging.DebugLogger=var2062, $r4=var1015, java.lang.Object=var1731, $r2=var196, java.lang.Throwable=var243, $r14=var1031, $r59=var3985, $r16=var1991, $r17=var3013, $r18=var2999, $r19=var3824, r20=var2910, $r22=var267, jdk.nashorn.internal.runtime.Timing=var3499, $r23=var2334, $r24=var2556, $l7=var238, $l8=var2230, $r26=var3697, $r25=var3292, $l9=var3863, $l10=var1275, $r27=var1157}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<jdk.nashorn.internal.parser.Parser: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	r3 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	z2 := @parameter3: boolean;	$r1 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean isTimingEnabled()>();	if z0 == 0 goto $l15 = 0L;	$l15 = staticinvoke <java.lang.System: long nanoTime()>();	goto [?= l0 = $l15];	l0 = $l15;	$r4 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r2 = newarray (java.lang.Object)[4];	$r2[0] = r0;	$r2[1] = " begin for \'";	$r2[2] = r3;	$r2[3] = "\'";	virtualinvoke $r4.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r2);	$r14 := @caughtexception;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" end \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r21 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r22 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r23 = $r22.<jdk.nashorn.internal.runtime.ScriptEnvironment: jdk.nashorn.internal.runtime.Timing _timing>;	$r24 = virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: java.lang.String toString()>();	$l7 = staticinvoke <java.lang.System: long nanoTime()>();	$l8 = $l7 - l0;	virtualinvoke $r23.<jdk.nashorn.internal.runtime.Timing: void accumulateTime(java.lang.String,long)>($r24, $l8);	$r26 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.runtime.logging.DebugLogger log>;	$r25 = newarray (java.lang.Object)[4];	$r25[0] = r20;	$r25[1] = "\' in ";	$l9 = staticinvoke <java.lang.System: long nanoTime()>();	$l10 = $l9 - l0;	$r27 = staticinvoke <jdk.nashorn.internal.runtime.Timing: java.lang.String toMillisPrint(long)>($l10);	$r25[2] = $r27;	$r25[3] = " ms";	virtualinvoke $r26.<jdk.nashorn.internal.runtime.logging.DebugLogger: void info(java.lang.Object[])>($r25);	goto [?= throw $r14];	throw $r14
;block_num 7