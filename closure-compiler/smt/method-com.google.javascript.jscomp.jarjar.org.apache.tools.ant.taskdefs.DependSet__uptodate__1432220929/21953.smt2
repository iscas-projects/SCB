(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2769 0)
(declare-sort var2246 0)
(declare-sort var3525 0)
(declare-sort var812 0)
(declare-sort var2438 0)
(declare-sort var1963 0)
(declare-sort var3490 0)
(declare-sort var2308 0)
(declare-sort var3777 0)
(declare-sort var2099 0)
(declare-sort var1932 0)
(declare-sort var2281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3525-init () var3525)
(declare-fun <init>/-585277778 (var3525) void)
(declare-fun var812_currentTimeMillis/630293680 () Int)
(declare-fun setMillis/181854254 (var3525 Int) void)
(declare-fun setWhen/-1678609002 (var3525 var2438) void)
(declare-fun setGranularity/-2041730992 (var3525 Int) void)
(declare-fun targets/-515343238 (var2769) var1963)
(declare-fun logFuture/-1670538492 (var2769 var2246 var3490) void)
(declare-fun cast-from-var1963-to-var2246 (var1963) var2246)
(declare-fun cast-from-var3525-to-var3490 (var3525) var3490)
(declare-fun var2308-init () var2308)
(declare-fun <init>/309030405 (var2308 var2246 var3777) void)
(declare-fun size/-1298271672 (var1932) Int)
(declare-fun cast-from-var2308-to-var1932 (var2308) var1932)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2281 String Int) void)
(declare-fun cast-from-var2769-to-var2281 (var2769) var2281)
(declare-fun logMissing/-1983316700 (var2769 var2246 String) void)
(declare-fun cast-from-var2308-to-var2246 (var2308) var2246)
(declare-const null-var2769 var2769)
(declare-const null-var2246 var2246)
(declare-const var2438-AFTER var2438)
(declare-const null-NullType var2099)
(declare-const null-var3777 var3777)
(declare-const var1843 var2769) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet 
(assert (not (= var1843 null-var2769)))
(declare-const var2478 var2246) ; Statement: r21 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection 
(assert (not (= var2478 null-var2246)))
(declare-const var2874 var2246) ; Statement: r22 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection 
(assert (not (= var2874 null-var2246)))
(define-const var284 var3525 var3525-init) ; Statement: $r23 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date 
(assert true)
;(assert (<init>/-585277778 var284)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void <init>()>() 

(declare-const var284!1 var3525)
(define-const var2852 Int var812_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
;(assert (setMillis/181854254 var284!1 var2852)) ; Statement: virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void setMillis(long)>($l0) 

(declare-const var284!2 var3525)
(declare-const var2852!1 Int)
(define-const var3731 var2438 var2438-AFTER) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison AFTER> 
(assert true)
;(assert (setWhen/-1678609002 var284!2 var3731)) ; Statement: virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void setWhen(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison)>($r1) 

(declare-const var284!3 var3525)
(declare-const var3731!1 var2438)
(assert true)
;(assert (setGranularity/-2041730992 var284!3 0)) ; Statement: virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void setGranularity(long)>(0L) 

(declare-const var284!4 var3525)
(declare-const var1409 Int)
(define-const var3053 var1963 (targets/-515343238 var1843)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path targets> 
(assert true)
;(assert (logFuture/-1670538492 var1843 (cast-from-var1963-to-var2246 var3053) (cast-from-var3525-to-var3490 var284!4))) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void logFuture(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.ResourceSelector)>($r3, $r23) 

(declare-const var1843!1 var2769)
(declare-const var3053!1 var1963)
(declare-const var284!5 var3525)
(define-const var1777 var2308 var2308-init) ; Statement: $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent 
(define-const var2046 var1963 (targets/-515343238 var1843!1)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path targets> 
(assert true)
;(assert (<init>/309030405 var1777 (cast-from-var1963-to-var2246 var2046) null-var3777)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$1)>($r5, null) 

(declare-const var1777!1 var2308)
(declare-const var2046!1 var1963)
(declare-const var2941 var2099)
(assert true)
(define-const var1266 Int (size/-1298271672 (cast-from-var2308-to-var1932 var1777!1))) ; Statement: i1 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent: int size()>() 
 ; Statement: if i1 <= 0 goto $r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path targets> 
(assert (not (<= var1266 0))) ; Negate: Cond: i1 <= 0  
(define-const var405 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var405)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var405!1 String)
(assert (= var405!1 ""))
(assert true)
(define-const var3262 String (append/-1001720160 var405!1 var1266)) ; Statement: $r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var405!2 String)
(assert (str.prefixof var405!1 var405!2))
(assert true)
(define-const var1976 String (append/672562846 var3262 " nonexistent targets")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nonexistent targets") 
(declare-const var3262!1 String)
(assert (= var3262!1 (str.++ var3262 " nonexistent targets")))
(assert true)
(define-const var343 String (toString/-2075883882 var1976)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2769-to-var2281 var1843!1) var343 3)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r20, 3) 

(declare-const var1843!2 var2769)
(declare-const var343!1 String)
(declare-const var3071 Int)
(assert true)
;(assert (logMissing/-1983316700 var1843!2 (cast-from-var2308-to-var2246 var1777!1) "target")) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void logMissing(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection,java.lang.String)>($r24, "target") 

(declare-const var1843!3 var2769)
(declare-const var1777!2 var2308)
(declare-const var3007 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3525-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date), <init>/-585277778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date], void), var812_currentTimeMillis/630293680=([], long), setMillis/181854254=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date, long], void), setWhen/-1678609002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison], void), setGranularity/-2041730992=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date, long], void), targets/-515343238=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), logFuture/-1670538492=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.ResourceSelector], void), cast-from-var1963-to-var2246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection), cast-from-var3525-to-var3490=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.ResourceSelector), var2308-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent), <init>/309030405=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$1], void), size/-1298271672=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Restrict], int), cast-from-var2308-to-var1932=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Restrict), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2769-to-var2281=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), logMissing/-1983316700=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, java.lang.String], void), cast-from-var2308-to-var2246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection)}
; {var2769=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet, var1843=r2, var2246=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, var2478=r21, var2874=r22, var3525=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date, var284=$r23, var812=java.lang.System, var2852=$l0, var2438=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison, var3731=$r1, var1409=0L, var1963=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var3053=$r3, var3490=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.ResourceSelector, var2308=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent, var1777=$r24, var2046=$r5, var3777=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$1, var2941=null, var2099=null_type, var1932=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Restrict, var1266=i1, var405=$r25, var3262=$r18, var1976=$r19, var343=$r20, var2281=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3071=3, var3007="target"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet=var2769, r2=var1843, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection=var2246, r21=var2478, r22=var2874, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date=var3525, $r23=var284, java.lang.System=var812, $l0=var2852, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison=var2438, $r1=var3731, 0L=var1409, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var1963, $r3=var3053, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.ResourceSelector=var3490, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent=var2308, $r24=var1777, $r5=var2046, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$1=var3777, null=var2941, null_type=var2099, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Restrict=var1932, i1=var1266, $r25=var405, $r18=var3262, $r19=var1976, $r20=var343, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2281, 3=var3071, "target"=var3007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet;	r21 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection;	r22 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection;	$r23 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date;	specialinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void <init>()>();	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void setMillis(long)>($l0);	$r1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison AFTER>;	virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void setWhen(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.TimeComparison)>($r1);	virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.Date: void setGranularity(long)>(0L);	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path targets>;	specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void logFuture(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.selectors.ResourceSelector)>($r3, $r23);	$r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent;	$r5 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path targets>;	specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$1)>($r5, null);	i1 = virtualinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet$NonExistent: int size()>();	if i1 <= 0 goto $r6 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path targets>;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nonexistent targets");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r20, 3);	specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void logMissing(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection,java.lang.String)>($r24, "target");	return 0
;block_num 2