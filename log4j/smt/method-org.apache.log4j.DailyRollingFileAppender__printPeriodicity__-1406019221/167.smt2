(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2839 0)
(declare-sort var2327 0)
(declare-sort var183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var2327) String)
(declare-fun cast-from-var2839-to-var2327 (var2839) var2327)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var183_debug/381960894 (String) void)
(declare-const null-var2839 var2839)
(declare-const null-Int Int)
(declare-const var63 var2839) ; Statement: r1 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var63 null-var2839)))
(declare-const var1854 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1854 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; } 
(assert (and (= var1854 5) (and (not (= var1854 4)) (and (not (= var1854 3)) (and (not (= var1854 2)) (and (not (= var1854 1)) (and (not (= var1854 0)) true))))))) ; Intersect: Cond: i0 == 5  and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional      
(define-const var2835 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2835)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2835!1 String)
(assert true)
(define-const var3465 String (append/1560614132 var2835!1 "Appender [")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [") 
(declare-const var2835!2 String)
(assert (str.prefixof var2835!1 var2835!2))
(define-const var260 String (name/-1806528418 (cast-from-var2839-to-var2327 var63))) ; Statement: $r2 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var344 String (append/1560614132 var3465 var260)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3465!1 String)
(assert (str.prefixof var3465 var3465!1))
(assert true)
(define-const var291 String (append/1560614132 var344 "] to be rolled at start of every month.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at start of every month.") 
(declare-const var344!1 String)
(assert (str.prefixof var344 var344!1))
(assert true)
(define-const var3903 String (toString/-222306083 var291)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var183_debug/381960894 var3903)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6) 

(declare-const var3903!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var2839-to-var2327=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var183_debug/381960894=([java.lang.String], void)}
; {var2839=org.apache.log4j.DailyRollingFileAppender, var63=r1, var1854=i0, var2835=$r0, var3465=$r3, var2327=org.apache.log4j.AppenderSkeleton, var260=$r2, var344=$r4, var291=$r5, var3903=$r6, var183=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var2839, r1=var63, i0=var1854, $r0=var2835, $r3=var3465, org.apache.log4j.AppenderSkeleton=var2327, $r2=var260, $r4=var344, $r5=var291, $r6=var3903, org.apache.log4j.helpers.LogLog=var183}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.DailyRollingFileAppender;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; };	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [");	$r2 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at start of every month.");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6);	goto [?= return];	return
;block_num 3