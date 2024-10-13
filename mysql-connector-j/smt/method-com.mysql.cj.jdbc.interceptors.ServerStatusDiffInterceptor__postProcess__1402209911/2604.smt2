(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2787 0)
(declare-sort var3653 0)
(declare-sort var584 0)
(declare-sort var3588 0)
(declare-sort var3040 0)
(declare-sort var3221 0)
(declare-sort var1713 0)
(declare-sort var412 0)
(declare-sort var1197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun postExecuteValues/75211536 (var2787) var3221)
(declare-fun populateMapWithSessionStatusValues/-1849186219 (var2787 var3221) void)
(declare-fun log/75211536 (var2787) var1713)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun preExecuteValues/75211536 (var2787) var3221)
(declare-fun var412_calculateDifferences/882889647 (var3221 var3221) var3221)
(declare-fun append/-1031950772 (String var1197) String)
(declare-fun cast-from-var3221-to-var1197 (var3221) var1197)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1713_logInfo/-784859844 (var1713 var1197) void)
(declare-fun cast-from-String-to-var1197 (String) var1197)
(declare-const null-var2787 var2787)
(declare-const null-var3653 var3653)
(declare-const null-var584 var584)
(declare-const null-var3588 var3588)
(declare-const null-var3040 var3040)
(declare-const var1113 var2787) ; Statement: r0 := @this: com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor 
(assert (not (= var1113 null-var2787)))
(declare-const var1663 var3653) ; Statement: r10 := @parameter0: java.util.function.Supplier 
(assert (not (= var1663 null-var3653)))
(declare-const var2699 var584) ; Statement: r11 := @parameter1: com.mysql.cj.Query 
(assert (not (= var2699 null-var584)))
(declare-const var844 var3588) ; Statement: r12 := @parameter2: com.mysql.cj.protocol.Resultset 
(assert (not (= var844 null-var3588)))
(declare-const var2213 var3040) ; Statement: r13 := @parameter3: com.mysql.cj.protocol.ServerSession 
(assert (not (= var2213 null-var3040)))
(define-const var2881 var3221 (postExecuteValues/75211536 var1113)) ; Statement: $r1 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: java.util.Map postExecuteValues> 
(assert true)
;(assert (populateMapWithSessionStatusValues/-1849186219 var1113 var2881)) ; Statement: specialinvoke r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: void populateMapWithSessionStatusValues(java.util.Map)>($r1) 

(declare-const var1113!1 var2787)
(declare-const var2881!1 var3221)
(define-const var3683 var1713 (log/75211536 var1113!1)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: com.mysql.cj.log.Log log> 
(define-const var1803 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1803)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1803!1 String)
(assert (= var1803!1 ""))
(assert true)
(define-const var1376 String (append/672562846 var1803!1 "Server status change for query:\n")) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server status change for query:\n") 
(declare-const var1803!2 String)
(assert (= var1803!2 (str.++ var1803!1 "Server status change for query:\n")))
(define-const var532 var3221 (preExecuteValues/75211536 var1113!1)) ; Statement: $r5 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: java.util.Map preExecuteValues> 
(define-const var1799 var3221 (postExecuteValues/75211536 var1113!1)) ; Statement: $r4 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: java.util.Map postExecuteValues> 
(define-const var3672 var3221 (var412_calculateDifferences/882889647 var532 var1799)) ; Statement: $r6 = staticinvoke <com.mysql.cj.util.Util: java.util.Map calculateDifferences(java.util.Map,java.util.Map)>($r5, $r4) 
(assert true)
(define-const var1736 String (append/-1031950772 var1376 (cast-from-var3221-to-var1197 var3672))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1376!1 String)
(assert (str.prefixof var1376 var1376!1))
(assert true)
(define-const var3968 String (toString/-2075883882 var1736)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1713_logInfo/-784859844 var3683 (cast-from-String-to-var1197 var3968))) ; Statement: interfaceinvoke $r3.<com.mysql.cj.log.Log: void logInfo(java.lang.Object)>($r9) 

(declare-const var3683!1 var1713)
(declare-const var3968!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {postExecuteValues/75211536=([com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor], java.util.Map), populateMapWithSessionStatusValues/-1849186219=([com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor, java.util.Map], void), log/75211536=([com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor], com.mysql.cj.log.Log), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), preExecuteValues/75211536=([com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor], java.util.Map), var412_calculateDifferences/882889647=([java.util.Map, java.util.Map], java.util.Map), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3221-to-var1197=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1713_logInfo/-784859844=([com.mysql.cj.log.Log, java.lang.Object], void), cast-from-String-to-var1197=([java.lang.String], java.lang.Object)}
; {var2787=com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor, var1113=r0, var3653=java.util.function.Supplier, var1663=r10, var584=com.mysql.cj.Query, var2699=r11, var3588=com.mysql.cj.protocol.Resultset, var844=r12, var3040=com.mysql.cj.protocol.ServerSession, var2213=r13, var3221=java.util.Map, var2881=$r1, var1713=com.mysql.cj.log.Log, var3683=$r3, var1803=$r2, var1376=$r7, var532=$r5, var1799=$r4, var412=com.mysql.cj.util.Util, var3672=$r6, var1197=java.lang.Object, var1736=$r8, var3968=$r9}
; {com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor=var2787, r0=var1113, java.util.function.Supplier=var3653, r10=var1663, com.mysql.cj.Query=var584, r11=var2699, com.mysql.cj.protocol.Resultset=var3588, r12=var844, com.mysql.cj.protocol.ServerSession=var3040, r13=var2213, java.util.Map=var3221, $r1=var2881, com.mysql.cj.log.Log=var1713, $r3=var3683, $r2=var1803, $r7=var1376, $r5=var532, $r4=var1799, com.mysql.cj.util.Util=var412, $r6=var3672, java.lang.Object=var1197, $r8=var1736, $r9=var3968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor;	r10 := @parameter0: java.util.function.Supplier;	r11 := @parameter1: com.mysql.cj.Query;	r12 := @parameter2: com.mysql.cj.protocol.Resultset;	r13 := @parameter3: com.mysql.cj.protocol.ServerSession;	$r1 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: java.util.Map postExecuteValues>;	specialinvoke r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: void populateMapWithSessionStatusValues(java.util.Map)>($r1);	$r3 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: com.mysql.cj.log.Log log>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Server status change for query:\n");	$r5 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: java.util.Map preExecuteValues>;	$r4 = r0.<com.mysql.cj.jdbc.interceptors.ServerStatusDiffInterceptor: java.util.Map postExecuteValues>;	$r6 = staticinvoke <com.mysql.cj.util.Util: java.util.Map calculateDifferences(java.util.Map,java.util.Map)>($r5, $r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r3.<com.mysql.cj.log.Log: void logInfo(java.lang.Object)>($r9);	return null
;block_num 1