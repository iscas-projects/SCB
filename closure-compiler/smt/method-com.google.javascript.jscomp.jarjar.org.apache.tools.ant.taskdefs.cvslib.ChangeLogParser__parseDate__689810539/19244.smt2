(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var674 0)
(declare-sort var2627 0)
(declare-sort var2741 0)
(declare-sort var1771 0)
(declare-sort var1811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputDate/1087169286 (var674) var2741)
(declare-fun cvs1129InputDate/1087169286 (var674) var2741)
(declare-fun var1811-init () var1811)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1811 String) void)
(declare-const null-var674 var674)
(declare-const null-String String)
(declare-const null-var1771 var1771)
(declare-const var423 var674) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser 
(assert (not (= var423 null-var674)))
(declare-const var115 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var115 null-String)))
(define-const var2076 var2741 (inputDate/1087169286 var423)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.text.SimpleDateFormat inputDate> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3018 var1771) ; Statement: $r10 := @caughtexception 
(assert (not (= var3018 null-var1771)))
(define-const var569 var2741 (cvs1129InputDate/1087169286 var423)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.text.SimpleDateFormat cvs1129InputDate> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var418 var1771) ; Statement: $r4 := @caughtexception 
(assert (not (= var418 null-var1771)))
(define-const var3442 var1811 var1811-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(define-const var560 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var560)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var560!1 String)
(assert (= var560!1 ""))
(assert true)
(define-const var1695 String (append/672562846 var560!1 "Invalid date format: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid date format: ") 
(declare-const var560!2 String)
(assert (= var560!2 (str.++ var560!1 "Invalid date format: ")))
(assert true)
(define-const var2306 String (append/672562846 var1695 var115)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1695!1 String)
(assert (= var1695!1 (str.++ var1695 var115)))
(assert true)
(define-const var2643 String (toString/-2075883882 var2306)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3442 var2643)) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var3442!1 var1811)
(declare-const var2643!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {inputDate/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.text.SimpleDateFormat), cvs1129InputDate/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.text.SimpleDateFormat), var1811-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var674=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser, var423=r0, var115=r1, var2627=null_type, var2741=java.text.SimpleDateFormat, var2076=$r2, var1771=java.text.ParseException, var3018=$r10, var569=$r11, var418=$r4, var1811=java.lang.IllegalStateException, var3442=$r5, var560=$r6, var1695=$r7, var2306=$r8, var2643=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser=var674, r0=var423, r1=var115, null_type=var2627, java.text.SimpleDateFormat=var2741, $r2=var2076, java.text.ParseException=var1771, $r10=var3018, $r11=var569, $r4=var418, java.lang.IllegalStateException=var1811, $r5=var3442, $r6=var560, $r7=var1695, $r8=var2306, $r9=var2643}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.text.SimpleDateFormat inputDate>;	$r10 := @caughtexception;	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.text.SimpleDateFormat cvs1129InputDate>;	$r4 := @caughtexception;	$r5 = new java.lang.IllegalStateException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid date format: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 3