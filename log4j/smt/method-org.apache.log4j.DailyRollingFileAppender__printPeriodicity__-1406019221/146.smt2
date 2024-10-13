(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var222 0)
(declare-sort var364 0)
(declare-sort var2689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var364) String)
(declare-fun cast-from-var222-to-var364 (var222) var364)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2689_debug/381960894 (String) void)
(declare-const null-var222 var222)
(declare-const null-Int Int)
(declare-const var3235 var222) ; Statement: r1 := @this: org.apache.log4j.DailyRollingFileAppender 
(assert (not (= var3235 null-var222)))
(declare-const var3760 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3760 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; } 
(assert (and (= var3760 3) (and (not (= var3760 2)) (and (not (= var3760 1)) (and (not (= var3760 0)) true))))) ; Intersect: Cond: i0 == 3  and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional    
(define-const var519 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var519)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var519!1 String)
(assert true)
(define-const var2631 String (append/1560614132 var519!1 "Appender [")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [") 
(declare-const var519!2 String)
(assert (str.prefixof var519!1 var519!2))
(define-const var3159 String (name/-1806528418 (cast-from-var222-to-var364 var3235))) ; Statement: $r14 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name> 
(assert true)
(define-const var1652 String (append/1560614132 var2631 var3159)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var2631!1 String)
(assert (str.prefixof var2631 var2631!1))
(assert true)
(define-const var3054 String (append/1560614132 var1652 "] to be rolled at midnight.")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at midnight.") 
(declare-const var1652!1 String)
(assert (str.prefixof var1652 var1652!1))
(assert true)
(define-const var3172 String (toString/-222306083 var3054)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2689_debug/381960894 var3172)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r18) 

(declare-const var3172!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), cast-from-var222-to-var364=([org.apache.log4j.DailyRollingFileAppender], org.apache.log4j.AppenderSkeleton), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2689_debug/381960894=([java.lang.String], void)}
; {var222=org.apache.log4j.DailyRollingFileAppender, var3235=r1, var3760=i0, var519=$r13, var2631=$r15, var364=org.apache.log4j.AppenderSkeleton, var3159=$r14, var1652=$r16, var3054=$r17, var3172=$r18, var2689=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.DailyRollingFileAppender=var222, r1=var3235, i0=var3760, $r13=var519, $r15=var2631, org.apache.log4j.AppenderSkeleton=var364, $r14=var3159, $r16=var1652, $r17=var3054, $r18=var3172, org.apache.log4j.helpers.LogLog=var2689}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.DailyRollingFileAppender;	i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto $r31 = new java.lang.StringBuffer;     case 1: goto $r25 = new java.lang.StringBuffer;     case 2: goto $r19 = new java.lang.StringBuffer;     case 3: goto $r13 = new java.lang.StringBuffer;     case 4: goto $r7 = new java.lang.StringBuffer;     case 5: goto $r0 = new java.lang.StringBuffer;     default: goto $r37 = new java.lang.StringBuffer; };	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender [");	$r14 = r1.<org.apache.log4j.DailyRollingFileAppender: java.lang.String name>;	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to be rolled at midnight.");	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r18);	goto [?= return];	return
;block_num 3