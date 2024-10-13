(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1687 0)
(declare-sort var96 0)
(declare-sort var27 0)
(declare-sort var2482 0)
(declare-sort var2573 0)
(declare-sort var463 0)
(declare-sort var860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2482-init () var2482)
(declare-fun mailhost/-1706755279 (var96) String)
(declare-fun port/-1029469955 (var96) Int)
(declare-fun <init>/624529186 (var2482 String Int) void)
(declare-fun var2573_getDateForHeader/1166021712 () String)
(declare-fun setHeader/-1987092425 (var2482 String String) void)
(declare-fun from/1607271034 (var96) String)
(declare-fun from/-1285714277 (var2482 String) void)
(declare-fun replytoList/-2005424537 (var96) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var463-init () var463)
(declare-fun toList/-1151686697 (var96) String)
(declare-fun <init>/-1517764957 (var463 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var463) Bool)
(declare-fun subject/1054519358 (var96) String)
(declare-fun setSubject/-540069337 (var2482 String) void)
(declare-fun charset/-904220642 (var96) String)
(declare-fun mimeType/-1520647390 (var96) String)
(declare-fun getPrintStream/853539708 (var2482) var860)
(declare-fun body/1252986894 (var96) String)
(declare-fun println/1773605060 (var860 String) void)
(declare-fun sendAndClose/-31098045 (var2482) void)
(declare-const null-var1687 var1687)
(declare-const null-var96 var96)
(declare-const null-String String)
(declare-const var1413 var1687) ; Statement: r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var1413 null-var1687)))
(declare-const var2658 var96) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values 
(assert (not (= var2658 null-var96)))
(declare-const var3459 String) ; Statement: r19 := @parameter1: java.lang.String 
(assert (not (= var3459 null-String)))
(define-const var3177 var2482 var2482-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert true)
(define-const var1243 String (mailhost/-1706755279 var2658)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mailhost()>() 
(assert true)
(define-const var1971 Int (port/-1029469955 var2658)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: int port()>() 
(assert true)
;(assert (<init>/624529186 var3177 var1243 var1971)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void <init>(java.lang.String,int)>($r2, $i0) 

(declare-const var3177!1 var2482)
(declare-const var1243!1 String)
(declare-const var1971!1 Int)
(define-const var3392 String var2573_getDateForHeader/1166021712) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>() 
(assert true)
;(assert (setHeader/-1987092425 var3177!1 "Date" var3392)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Date", $r3) 

(declare-const var3177!2 var2482)
(declare-const var1442 String)
(declare-const var3392!1 String)
(assert true)
(define-const var3460 String (from/1607271034 var2658)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String 'from'()>() 
(assert true)
;(assert (from/-1285714277 var3177!2 var3460)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void 'from'(java.lang.String)>($r4) 

(declare-const var3177!3 var2482)
(declare-const var3460!1 String)
(assert true)
(define-const var1707 String (replytoList/-2005424537 var2658)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String replytoList()>() 
(assert true)
(define-const var1641 Bool (isEmpty/-1285796103 var1707)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r6 = new java.util.StringTokenizer 
(assert (not (= (ite var1641 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1838 var463 var463-init) ; Statement: $r6 = new java.util.StringTokenizer 
(assert true)
(define-const var2284 String (toList/-1151686697 var2658)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String toList()>() 
(assert true)
;(assert (<init>/-1517764957 var1838 var2284 ", " (ite (= 1 0) true false))) ; Statement: specialinvoke $r6.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>($r7, ", ", 0) 

(declare-const var1838!1 var463)
(declare-const var2284!1 String)
(declare-const var3737 String)
(declare-const var1048 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var3105 Bool (hasMoreTokens/711654492 var1838!1)) ; Statement: $z4 = virtualinvoke $r6.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z4 == 0 goto $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>() 
(assert (= (ite var3105 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var522 String (subject/1054519358 var2658)) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>() 
(assert true)
;(assert (setSubject/-540069337 var3177!3 var522)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setSubject(java.lang.String)>($r8) 

(declare-const var3177!4 var2482)
(declare-const var522!1 String)
(assert true)
(define-const var1796 String (charset/-904220642 var2658)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>() 
(assert true)
(define-const var2654 Bool (isEmpty/-1285796103 var1796)) ; Statement: $z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r10 = new java.lang.StringBuilder 
(assert (not (= (ite var2654 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var490 String (mimeType/-1520647390 var2658)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mimeType()>() 
(assert true)
;(assert (setHeader/-1987092425 var3177!4 "Content-Type" var490)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Content-Type", $r20) 

(declare-const var3177!5 var2482)
(declare-const var1254 String)
(declare-const var490!1 String)
 ; Statement: goto [?= $r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3628 var860 (getPrintStream/853539708 var3177!5)) ; Statement: $r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>() 
(assert true)
(define-const var817 String (body/1252986894 var2658)) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>() 
(assert true)
(define-const var1962 Bool (isEmpty/-1285796103 var817)) ; Statement: $z2 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>() 
(assert (= (ite var1962 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var797 String (body/1252986894 var2658)) ; Statement: $r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (println/1773605060 var3628 var797)) ; Statement: virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27) 

(declare-const var3628!1 var860)
(declare-const var797!1 String)
(assert true)
;(assert (sendAndClose/-31098045 var3177!5)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void sendAndClose()>() 

(declare-const var3177!6 var2482)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2482-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage), mailhost/-1706755279=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), port/-1029469955=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], int), <init>/624529186=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int], void), var2573_getDateForHeader/1166021712=([], java.lang.String), setHeader/-1987092425=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, java.lang.String], void), from/1607271034=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), from/-1285714277=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String], void), replytoList/-2005424537=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var463-init=([], java.util.StringTokenizer), toList/-1151686697=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), subject/1054519358=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), setSubject/-540069337=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String], void), charset/-904220642=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), mimeType/-1520647390=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), getPrintStream/853539708=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], java.io.PrintStream), body/1252986894=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), sendAndClose/-31098045=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], void)}
; {var1687=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var1413=r26, var96=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values, var2658=r1, var3459=r19, var27=null_type, var2482=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var3177=$r0, var1243=$r2, var1971=$i0, var2573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils, var3392=$r3, var1442="Date", var3460=$r4, var1707=$r5, var1641=$z0, var463=java.util.StringTokenizer, var1838=$r6, var2284=$r7, var3737=", ", var1048=0, var3105=$z4, var522=$r8, var1796=$r9, var2654=$z1, var490=$r20, var1254="Content-Type", var860=java.io.PrintStream, var3628=$r21, var817=$r18, var1962=$z2, var797=$r27}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var1687, r26=var1413, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values=var96, r1=var2658, r19=var3459, null_type=var27, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var2482, $r0=var3177, $r2=var1243, $i0=var1971, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils=var2573, $r3=var3392, "Date"=var1442, $r4=var3460, $r5=var1707, $z0=var1641, java.util.StringTokenizer=var463, $r6=var1838, $r7=var2284, ", "=var3737, 0=var1048, $z4=var3105, $r8=var522, $r9=var1796, $z1=var2654, $r20=var490, "Content-Type"=var1254, java.io.PrintStream=var860, $r21=var3628, $r18=var817, $z2=var1962, $r27=var797}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 3}
;stmts r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values;	r19 := @parameter1: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mailhost()>();	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: int port()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void <init>(java.lang.String,int)>($r2, $i0);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Date", $r3);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String 'from'()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void 'from'(java.lang.String)>($r4);	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String replytoList()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r6 = new java.util.StringTokenizer;	$r6 = new java.util.StringTokenizer;	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String toList()>();	specialinvoke $r6.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>($r7, ", ", 0);	$z4 = virtualinvoke $r6.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z4 == 0 goto $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>();	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setSubject(java.lang.String)>($r8);	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>();	$z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r10 = new java.lang.StringBuilder;	$r20 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mimeType()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Content-Type", $r20);	goto [?= $r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>()];	$r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>();	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>();	$z2 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>();	$r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>();	virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27);	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void sendAndClose()>();	return
;block_num 8