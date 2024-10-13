(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2144 0)
(declare-sort var2985 0)
(declare-sort var1506 0)
(declare-sort var3654 0)
(declare-sort var212 0)
(declare-sort var2737 0)
(declare-sort var515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3654-init () var3654)
(declare-fun mailhost/-1706755279 (var2985) String)
(declare-fun port/-1029469955 (var2985) Int)
(declare-fun <init>/624529186 (var3654 String Int) void)
(declare-fun var212_getDateForHeader/1166021712 () String)
(declare-fun setHeader/-1987092425 (var3654 String String) void)
(declare-fun from/1607271034 (var2985) String)
(declare-fun from/-1285714277 (var3654 String) void)
(declare-fun replytoList/-2005424537 (var2985) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2737-init () var2737)
(declare-fun toList/-1151686697 (var2985) String)
(declare-fun <init>/-1517764957 (var2737 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var2737) Bool)
(declare-fun subject/1054519358 (var2985) String)
(declare-fun setSubject/-540069337 (var3654 String) void)
(declare-fun charset/-904220642 (var2985) String)
(declare-fun mimeType/-1520647390 (var2985) String)
(declare-fun getPrintStream/853539708 (var3654) var515)
(declare-fun body/1252986894 (var2985) String)
(declare-fun println/1773605060 (var515 String) void)
(declare-fun sendAndClose/-31098045 (var3654) void)
(declare-const null-var2144 var2144)
(declare-const null-var2985 var2985)
(declare-const null-String String)
(declare-const var456 var2144) ; Statement: r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var456 null-var2144)))
(declare-const var2505 var2985) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values 
(assert (not (= var2505 null-var2985)))
(declare-const var3750 String) ; Statement: r19 := @parameter1: java.lang.String 
(assert (not (= var3750 null-String)))
(define-const var3006 var3654 var3654-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert true)
(define-const var272 String (mailhost/-1706755279 var2505)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mailhost()>() 
(assert true)
(define-const var2702 Int (port/-1029469955 var2505)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: int port()>() 
(assert true)
;(assert (<init>/624529186 var3006 var272 var2702)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void <init>(java.lang.String,int)>($r2, $i0) 

(declare-const var3006!1 var3654)
(declare-const var272!1 String)
(declare-const var2702!1 Int)
(define-const var741 String var212_getDateForHeader/1166021712) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>() 
(assert true)
;(assert (setHeader/-1987092425 var3006!1 "Date" var741)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Date", $r3) 

(declare-const var3006!2 var3654)
(declare-const var3194 String)
(declare-const var741!1 String)
(assert true)
(define-const var120 String (from/1607271034 var2505)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String 'from'()>() 
(assert true)
;(assert (from/-1285714277 var3006!2 var120)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void 'from'(java.lang.String)>($r4) 

(declare-const var3006!3 var3654)
(declare-const var120!1 String)
(assert true)
(define-const var1541 String (replytoList/-2005424537 var2505)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String replytoList()>() 
(assert true)
(define-const var1060 Bool (isEmpty/-1285796103 var1541)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r6 = new java.util.StringTokenizer 
(assert (not (= (ite var1060 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1777 var2737 var2737-init) ; Statement: $r6 = new java.util.StringTokenizer 
(assert true)
(define-const var3913 String (toList/-1151686697 var2505)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String toList()>() 
(assert true)
;(assert (<init>/-1517764957 var1777 var3913 ", " (ite (= 1 0) true false))) ; Statement: specialinvoke $r6.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>($r7, ", ", 0) 

(declare-const var1777!1 var2737)
(declare-const var3913!1 String)
(declare-const var2535 String)
(declare-const var1716 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var1757 Bool (hasMoreTokens/711654492 var1777!1)) ; Statement: $z4 = virtualinvoke $r6.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z4 == 0 goto $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>() 
(assert (= (ite var1757 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var2314 String (subject/1054519358 var2505)) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>() 
(assert true)
;(assert (setSubject/-540069337 var3006!3 var2314)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setSubject(java.lang.String)>($r8) 

(declare-const var3006!4 var3654)
(declare-const var2314!1 String)
(assert true)
(define-const var1779 String (charset/-904220642 var2505)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>() 
(assert true)
(define-const var2225 Bool (isEmpty/-1285796103 var1779)) ; Statement: $z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r10 = new java.lang.StringBuilder 
(assert (not (= (ite var2225 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var2121 String (mimeType/-1520647390 var2505)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mimeType()>() 
(assert true)
;(assert (setHeader/-1987092425 var3006!4 "Content-Type" var2121)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Content-Type", $r20) 

(declare-const var3006!5 var3654)
(declare-const var679 String)
(declare-const var2121!1 String)
 ; Statement: goto [?= $r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var404 var515 (getPrintStream/853539708 var3006!5)) ; Statement: $r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>() 
(assert true)
(define-const var2174 String (body/1252986894 var2505)) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>() 
(assert true)
(define-const var1599 Bool (isEmpty/-1285796103 var2174)) ; Statement: $z2 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>() 
(assert (not (= (ite var1599 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1483 String var3750) ; Statement: $r27 = r19 
 ; Statement: goto [?= virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27)] 
(assert true) ; Non Conditional
(assert true)
;(assert (println/1773605060 var404 var1483)) ; Statement: virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27) 

(declare-const var404!1 var515)
(declare-const var1483!1 String)
(assert true)
;(assert (sendAndClose/-31098045 var3006!5)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void sendAndClose()>() 

(declare-const var3006!6 var3654)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3654-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage), mailhost/-1706755279=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), port/-1029469955=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], int), <init>/624529186=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int], void), var212_getDateForHeader/1166021712=([], java.lang.String), setHeader/-1987092425=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, java.lang.String], void), from/1607271034=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), from/-1285714277=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String], void), replytoList/-2005424537=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2737-init=([], java.util.StringTokenizer), toList/-1151686697=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), subject/1054519358=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), setSubject/-540069337=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String], void), charset/-904220642=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), mimeType/-1520647390=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), getPrintStream/853539708=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], java.io.PrintStream), body/1252986894=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), sendAndClose/-31098045=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], void)}
; {var2144=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var456=r26, var2985=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values, var2505=r1, var3750=r19, var1506=null_type, var3654=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var3006=$r0, var272=$r2, var2702=$i0, var212=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils, var741=$r3, var3194="Date", var120=$r4, var1541=$r5, var1060=$z0, var2737=java.util.StringTokenizer, var1777=$r6, var3913=$r7, var2535=", ", var1716=0, var1757=$z4, var2314=$r8, var1779=$r9, var2225=$z1, var2121=$r20, var679="Content-Type", var515=java.io.PrintStream, var404=$r21, var2174=$r18, var1599=$z2, var1483=$r27}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var2144, r26=var456, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values=var2985, r1=var2505, r19=var3750, null_type=var1506, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var3654, $r0=var3006, $r2=var272, $i0=var2702, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils=var212, $r3=var741, "Date"=var3194, $r4=var120, $r5=var1541, $z0=var1060, java.util.StringTokenizer=var2737, $r6=var1777, $r7=var3913, ", "=var2535, 0=var1716, $z4=var1757, $r8=var2314, $r9=var1779, $z1=var2225, $r20=var2121, "Content-Type"=var679, java.io.PrintStream=var515, $r21=var404, $r18=var2174, $z2=var1599, $r27=var1483}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 3}
;stmts r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values;	r19 := @parameter1: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mailhost()>();	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: int port()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void <init>(java.lang.String,int)>($r2, $i0);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Date", $r3);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String 'from'()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void 'from'(java.lang.String)>($r4);	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String replytoList()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r6 = new java.util.StringTokenizer;	$r6 = new java.util.StringTokenizer;	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String toList()>();	specialinvoke $r6.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>($r7, ", ", 0);	$z4 = virtualinvoke $r6.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z4 == 0 goto $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>();	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setSubject(java.lang.String)>($r8);	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>();	$z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r10 = new java.lang.StringBuilder;	$r20 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mimeType()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Content-Type", $r20);	goto [?= $r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>()];	$r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>();	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>();	$z2 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>();	$r27 = r19;	goto [?= virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27)];	virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27);	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void sendAndClose()>();	return
;block_num 8