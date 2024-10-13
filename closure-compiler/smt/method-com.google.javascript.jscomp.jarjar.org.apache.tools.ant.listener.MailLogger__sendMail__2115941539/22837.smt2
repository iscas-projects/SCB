(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort var2591 0)
(declare-sort var2194 0)
(declare-sort var3893 0)
(declare-sort var3214 0)
(declare-sort var2526 0)
(declare-sort var1177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3893-init () var3893)
(declare-fun mailhost/-1706755279 (var2591) String)
(declare-fun port/-1029469955 (var2591) Int)
(declare-fun <init>/624529186 (var3893 String Int) void)
(declare-fun var3214_getDateForHeader/1166021712 () String)
(declare-fun setHeader/-1987092425 (var3893 String String) void)
(declare-fun from/1607271034 (var2591) String)
(declare-fun from/-1285714277 (var3893 String) void)
(declare-fun replytoList/-2005424537 (var2591) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2526-init () var2526)
(declare-fun toList/-1151686697 (var2591) String)
(declare-fun <init>/-1517764957 (var2526 String String Bool) void)
(declare-fun hasMoreTokens/711654492 (var2526) Bool)
(declare-fun subject/1054519358 (var2591) String)
(declare-fun setSubject/-540069337 (var3893 String) void)
(declare-fun charset/-904220642 (var2591) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun mimeType/-1520647390 (var2591) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPrintStream/853539708 (var3893) var1177)
(declare-fun body/1252986894 (var2591) String)
(declare-fun println/1773605060 (var1177 String) void)
(declare-fun sendAndClose/-31098045 (var3893) void)
(declare-const null-var1400 var1400)
(declare-const null-var2591 var2591)
(declare-const null-String String)
(declare-const var3838 var1400) ; Statement: r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger 
(assert (not (= var3838 null-var1400)))
(declare-const var841 var2591) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values 
(assert (not (= var841 null-var2591)))
(declare-const var2318 String) ; Statement: r19 := @parameter1: java.lang.String 
(assert (not (= var2318 null-String)))
(define-const var1176 var3893 var3893-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage 
(assert true)
(define-const var114 String (mailhost/-1706755279 var841)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mailhost()>() 
(assert true)
(define-const var3706 Int (port/-1029469955 var841)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: int port()>() 
(assert true)
;(assert (<init>/624529186 var1176 var114 var3706)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void <init>(java.lang.String,int)>($r2, $i0) 

(declare-const var1176!1 var3893)
(declare-const var114!1 String)
(declare-const var3706!1 Int)
(define-const var3257 String var3214_getDateForHeader/1166021712) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>() 
(assert true)
;(assert (setHeader/-1987092425 var1176!1 "Date" var3257)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Date", $r3) 

(declare-const var1176!2 var3893)
(declare-const var3751 String)
(declare-const var3257!1 String)
(assert true)
(define-const var2938 String (from/1607271034 var841)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String 'from'()>() 
(assert true)
;(assert (from/-1285714277 var1176!2 var2938)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void 'from'(java.lang.String)>($r4) 

(declare-const var1176!3 var3893)
(declare-const var2938!1 String)
(assert true)
(define-const var2386 String (replytoList/-2005424537 var841)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String replytoList()>() 
(assert true)
(define-const var2937 Bool (isEmpty/-1285796103 var2386)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r6 = new java.util.StringTokenizer 
(assert (not (= (ite var2937 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1572 var2526 var2526-init) ; Statement: $r6 = new java.util.StringTokenizer 
(assert true)
(define-const var1757 String (toList/-1151686697 var841)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String toList()>() 
(assert true)
;(assert (<init>/-1517764957 var1572 var1757 ", " (ite (= 1 0) true false))) ; Statement: specialinvoke $r6.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>($r7, ", ", 0) 

(declare-const var1572!1 var2526)
(declare-const var1757!1 String)
(declare-const var3669 String)
(declare-const var2039 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var985 Bool (hasMoreTokens/711654492 var1572!1)) ; Statement: $z4 = virtualinvoke $r6.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z4 == 0 goto $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>() 
(assert (= (ite var985 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var2741 String (subject/1054519358 var841)) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>() 
(assert true)
;(assert (setSubject/-540069337 var1176!3 var2741)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setSubject(java.lang.String)>($r8) 

(declare-const var1176!4 var3893)
(declare-const var2741!1 String)
(assert true)
(define-const var1737 String (charset/-904220642 var841)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>() 
(assert true)
(define-const var1030 Bool (isEmpty/-1285796103 var1737)) ; Statement: $z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r10 = new java.lang.StringBuilder 
(assert (= (ite var1030 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3267 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3267)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3267!1 String)
(assert (= var3267!1 ""))
(assert true)
(define-const var1022 String (mimeType/-1520647390 var841)) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mimeType()>() 
(assert true)
(define-const var2391 String (append/672562846 var3267!1 var1022)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3267!2 String)
(assert (= var3267!2 (str.++ var3267!1 var1022)))
(assert true)
(define-const var869 String (append/672562846 var2391 "; charset=\u0022")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; charset=\"") 
(declare-const var2391!1 String)
(assert (= var2391!1 (str.++ var2391 "; charset=\u0022")))
(assert true)
(define-const var2356 String (charset/-904220642 var841)) ; Statement: $r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>() 
(assert true)
(define-const var3736 String (append/672562846 var869 var2356)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var869!1 String)
(assert (= var869!1 (str.++ var869 var2356)))
(assert true)
(define-const var1848 String (append/672562846 var3736 "\u0022")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3736!1 String)
(assert (= var3736!1 (str.++ var3736 "\u0022")))
(assert true)
(define-const var3102 String (toString/-2075883882 var1848)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setHeader/-1987092425 var1176!4 "Content-Type" var3102)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Content-Type", $r17) 

(declare-const var1176!5 var3893)
(declare-const var1302 String)
(declare-const var3102!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var479 var1177 (getPrintStream/853539708 var1176!5)) ; Statement: $r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>() 
(assert true)
(define-const var2252 String (body/1252986894 var841)) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>() 
(assert true)
(define-const var3112 Bool (isEmpty/-1285796103 var2252)) ; Statement: $z2 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>() 
(assert (not (= (ite var3112 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2912 String var2318) ; Statement: $r27 = r19 
 ; Statement: goto [?= virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27)] 
(assert true) ; Non Conditional
(assert true)
;(assert (println/1773605060 var479 var2912)) ; Statement: virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27) 

(declare-const var479!1 var1177)
(declare-const var2912!1 String)
(assert true)
;(assert (sendAndClose/-31098045 var1176!5)) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void sendAndClose()>() 

(declare-const var1176!6 var3893)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3893-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage), mailhost/-1706755279=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), port/-1029469955=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], int), <init>/624529186=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, int], void), var3214_getDateForHeader/1166021712=([], java.lang.String), setHeader/-1987092425=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String, java.lang.String], void), from/1607271034=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), from/-1285714277=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String], void), replytoList/-2005424537=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2526-init=([], java.util.StringTokenizer), toList/-1151686697=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), subject/1054519358=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), setSubject/-540069337=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, java.lang.String], void), charset/-904220642=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), mimeType/-1520647390=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPrintStream/853539708=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], java.io.PrintStream), body/1252986894=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), sendAndClose/-31098045=([com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage], void)}
; {var1400=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger, var3838=r26, var2591=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values, var841=r1, var2318=r19, var2194=null_type, var3893=com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage, var1176=$r0, var114=$r2, var3706=$i0, var3214=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils, var3257=$r3, var3751="Date", var2938=$r4, var2386=$r5, var2937=$z0, var2526=java.util.StringTokenizer, var1572=$r6, var1757=$r7, var3669=", ", var2039=0, var985=$z4, var2741=$r8, var1737=$r9, var1030=$z1, var3267=$r10, var1022=$r11, var2391=$r12, var869=$r14, var2356=$r13, var3736=$r15, var1848=$r16, var3102=$r17, var1302="Content-Type", var1177=java.io.PrintStream, var479=$r21, var2252=$r18, var3112=$z2, var2912=$r27}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger=var1400, r26=var3838, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values=var2591, r1=var841, r19=var2318, null_type=var2194, com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage=var3893, $r0=var1176, $r2=var114, $i0=var3706, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils=var3214, $r3=var3257, "Date"=var3751, $r4=var2938, $r5=var2386, $z0=var2937, java.util.StringTokenizer=var2526, $r6=var1572, $r7=var1757, ", "=var3669, 0=var2039, $z4=var985, $r8=var2741, $r9=var1737, $z1=var1030, $r10=var3267, $r11=var1022, $r12=var2391, $r14=var869, $r13=var2356, $r15=var3736, $r16=var1848, $r17=var3102, "Content-Type"=var1302, java.io.PrintStream=var1177, $r21=var479, $r18=var2252, $z2=var3112, $r27=var2912}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values;	r19 := @parameter1: java.lang.String;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mailhost()>();	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: int port()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void <init>(java.lang.String,int)>($r2, $i0);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DateUtils: java.lang.String getDateForHeader()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Date", $r3);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String 'from'()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void 'from'(java.lang.String)>($r4);	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String replytoList()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r6 = new java.util.StringTokenizer;	$r6 = new java.util.StringTokenizer;	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String toList()>();	specialinvoke $r6.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>($r7, ", ", 0);	$z4 = virtualinvoke $r6.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z4 == 0 goto $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>();	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String subject()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setSubject(java.lang.String)>($r8);	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>();	$z1 = virtualinvoke $r9.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String mimeType()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; charset=\"");	$r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String charset()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void setHeader(java.lang.String,java.lang.String)>("Content-Type", $r17);	$r21 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: java.io.PrintStream getPrintStream()>();	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>();	$z2 = virtualinvoke $r18.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r27 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.MailLogger$Values: java.lang.String body()>();	$r27 = r19;	goto [?= virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27)];	virtualinvoke $r21.<java.io.PrintStream: void println(java.lang.String)>($r27);	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.mail.MailMessage: void sendAndClose()>();	return
;block_num 8