(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var3636 0)
(declare-sort var3149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var3636) String)
(declare-fun cast-from-var335-to-var3636 (var335) var3636)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3149_warn/241933037 (String) void)
(declare-const null-var335 var335)
(declare-const null-Int Int)
(declare-const var3967 var335) ; Statement: r1 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var3967 null-var335)))
(declare-const var1749 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1749 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; } 
(assert (and (not (= var1749 5)) (and (not (= var1749 4)) (and (not (= var1749 3)) (and (not (= var1749 2)) (and (not (= var1749 1)) (and (not (= var1749 0)) true))))))) ; Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional      
(define-const var1241 String String-init) ; Statement: $r37 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1241)) ; Statement: specialinvoke $r37.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1241!1 String)
(assert true)
(define-const var517 String (append/1560614132 var1241!1 "Unknown periodicity for appender [")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unknown periodicity for appender [") 
(declare-const var1241!2 String)
(assert (str.prefixof var1241!1 var1241!2))
(define-const var2502 String (name/-1806528418 (cast-from-var335-to-var3636 var3967))) ; Statement: $r38 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var2500 String (append/1560614132 var517 var2502)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r38) 
(declare-const var517!1 String)
(assert (str.prefixof var517 var517!1))
(assert true)
(define-const var1276 String (append/1560614132 var2500 "].")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2500!1 String)
(assert (str.prefixof var2500 var2500!1))
(assert true)
(define-const var1728 String (toString/-222306083 var1276)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3149_warn/241933037 var1728)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r42) 

(declare-const var1728!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var335-to-var3636=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3149_warn/241933037=([java.lang.String], void)}
; {var335=org.apache.log4j.DailyRollingFileAppender, var3967=r1, var1749=i0, var1241=$r37, var517=$r39, var3636=org.apache.log4j.AppenderSkeleton, var2502=$r38, var2500=$r40, var1276=$r41, var1728=$r42, var3149=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var335, r1=var3967, i0=var1749, $r37=var1241, $r39=var517, org.apache.log4j.AppenderSkeleton=var3636, $r38=var2502, $r40=var2500, $r41=var1276, $r42=var1728, org.apache.log4j.helpers.LogLog=var3149}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.DailyRollingFileAppender;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; };	$r37 = new java.lang.StringBuffer;	specialinvoke $r37.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Unknown periodicity for appender [");	$r38 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r42 = virtualinvoke $r41.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r42);	return
;block_num 3