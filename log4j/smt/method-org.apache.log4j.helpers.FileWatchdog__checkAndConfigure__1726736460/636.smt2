(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var618 0)
(declare-sort var2736 0)
(declare-sort var977 0)
(declare-sort var3222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/1615815964 (var618) var2736)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun filename/1615815964 (var618) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3222_warn/241933037 (String) void)
(declare-fun interrupted/1615815964 (var618) Bool)
(declare-const null-var618 var618)
(declare-const null-var977 var977)
(declare-const var2474 var618) ; Statement: r0 := @this: org.apache.log4j.helpers.FileWatchdog 
(assert (not (= var2474 null-var618)))
(define-const var1622 var2736 (file/1615815964 var2474)) ; Statement: $r1 = r0.<org.apache.log4j.helpers.FileWatchdog: java.io.File file> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var866 var977) ; Statement: $r9 := @caughtexception 
(assert (not (= var866 null-var977)))
(define-const var1766 String String-init) ; Statement: $r16 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1766)) ; Statement: specialinvoke $r16.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1766!1 String)
(assert true)
(define-const var3412 String (append/1560614132 var1766!1 "Was not allowed to read check file existance, file:[")) ; Statement: $r12 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Was not allowed to read check file existance, file:[") 
(declare-const var1766!2 String)
(assert (str.prefixof var1766!1 var1766!2))
(define-const var1066 String (filename/1615815964 var2474)) ; Statement: $r11 = r0.<org.apache.log4j.helpers.FileWatchdog: java.lang.String filename> 
(assert true)
(define-const var82 String (append/1560614132 var3412 var1066)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var3412!1 String)
(assert (str.prefixof var3412 var3412!1))
(assert true)
(define-const var2259 String (append/1560614132 var82 "].")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var82!1 String)
(assert (str.prefixof var82 var82!1))
(assert true)
(define-const var805 String (toString/-222306083 var2259)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3222_warn/241933037 var805)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r15) 

(declare-const var805!1 String)
(declare-const var2474!1 var618)
(assert (not (= var2474!1 null-var618)))
(assert (= (interrupted/1615815964 var2474!1) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.helpers.FileWatchdog: boolean interrupted> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {file/1615815964=([org.apache.log4j.helpers.FileWatchdog], java.io.File), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), filename/1615815964=([org.apache.log4j.helpers.FileWatchdog], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3222_warn/241933037=([java.lang.String], void), interrupted/1615815964=([org.apache.log4j.helpers.FileWatchdog], boolean)}
; {var618=org.apache.log4j.helpers.FileWatchdog, var2474=r0, var2736=java.io.File, var1622=$r1, var977=java.lang.SecurityException, var866=$r9, var1766=$r16, var3412=$r12, var1066=$r11, var82=$r13, var2259=$r14, var805=$r15, var3222=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.helpers.FileWatchdog=var618, r0=var2474, java.io.File=var2736, $r1=var1622, java.lang.SecurityException=var977, $r9=var866, $r16=var1766, $r12=var3412, $r11=var1066, $r13=var82, $r14=var2259, $r15=var805, org.apache.log4j.helpers.LogLog=var3222}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.FileWatchdog;	$r1 = r0.<org.apache.log4j.helpers.FileWatchdog: java.io.File file>;	$r9 := @caughtexception;	$r16 = new java.lang.StringBuffer;	specialinvoke $r16.<java.lang.StringBuffer: void <init>()>();	$r12 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Was not allowed to read check file existance, file:[");	$r11 = r0.<org.apache.log4j.helpers.FileWatchdog: java.lang.String filename>;	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r15);	r0.<org.apache.log4j.helpers.FileWatchdog: boolean interrupted> = 1;	return
;block_num 2