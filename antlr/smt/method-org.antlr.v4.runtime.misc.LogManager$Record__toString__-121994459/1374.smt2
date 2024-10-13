(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var28 0)
(declare-sort var1899 0)
(declare-sort var2808 0)
(declare-sort var740 0)
(declare-sort var3035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1899-init () var1899)
(declare-fun <init>/-1862704206 (var1899 String) void)
(declare-fun var2808-init () var2808)
(declare-fun timestamp/-705093563 (var28) Int)
(declare-fun <init>/593337323 (var2808 Int) void)
(declare-fun format/215566421 (var740 var2808) String)
(declare-fun cast-from-var1899-to-var740 (var1899) var740)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun component/-705093563 (var28) String)
(declare-fun location/-705093563 (var28) var3035)
(declare-fun getFileName/-547794010 (var3035) String)
(declare-fun getLineNumber/1148630320 (var3035) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun msg/-705093563 (var28) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var28 var28)
(declare-const var941 var28) ; Statement: r3 := @this: org.antlr.v4.runtime.misc.LogManager$Record 
(assert (not (= var941 null-var28)))
(define-const var877 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var877)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var877!1 String)
(assert (= var877!1 ""))
(define-const var326 var1899 var1899-init) ; Statement: $r1 = new java.text.SimpleDateFormat 
(assert true)
;(assert (<init>/-1862704206 var326 "yyyy-MM-dd HH:mm:ss:SSS")) ; Statement: specialinvoke $r1.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyy-MM-dd HH:mm:ss:SSS") 

(declare-const var326!1 var1899)
(declare-const var1581 String)
(define-const var1431 var2808 var2808-init) ; Statement: $r2 = new java.util.Date 
(define-const var2257 Int (timestamp/-705093563 var941)) ; Statement: $l0 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: long timestamp> 
(assert true)
;(assert (<init>/593337323 var1431 var2257)) ; Statement: specialinvoke $r2.<java.util.Date: void <init>(long)>($l0) 

(declare-const var1431!1 var2808)
(declare-const var2257!1 Int)
(assert true)
(define-const var2613 String (format/215566421 (cast-from-var1899-to-var740 var326!1) var1431!1)) ; Statement: $r4 = virtualinvoke $r1.<java.text.SimpleDateFormat: java.lang.String format(java.util.Date)>($r2) 
(assert true)
;(assert (append/672562846 var877!1 var2613)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var877!2 String)
(assert (= var877!2 (str.++ var877!1 var2613)))
(assert true)
;(assert (append/672562846 var877!2 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var877!3 String)
(assert (= var877!3 (str.++ var877!2 " ")))
(define-const var2725 String (component/-705093563 var941)) ; Statement: $r5 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.String component> 
(assert true)
;(assert (append/672562846 var877!3 var2725)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var877!4 String)
(assert (= var877!4 (str.++ var877!3 var2725)))
(assert true)
;(assert (append/672562846 var877!4 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var877!5 String)
(assert (= var877!5 (str.++ var877!4 " ")))
(define-const var3699 var3035 (location/-705093563 var941)) ; Statement: $r6 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.StackTraceElement location> 
(assert true)
(define-const var2958 String (getFileName/-547794010 var3699)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StackTraceElement: java.lang.String getFileName()>() 
(assert true)
;(assert (append/672562846 var877!5 var2958)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var877!6 String)
(assert (= var877!6 (str.++ var877!5 var2958)))
(assert true)
;(assert (append/672562846 var877!6 ":")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var877!7 String)
(assert (= var877!7 (str.++ var877!6 ":")))
(define-const var3452 var3035 (location/-705093563 var941)) ; Statement: $r8 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.StackTraceElement location> 
(assert true)
(define-const var974 Int (getLineNumber/1148630320 var3452)) ; Statement: $i1 = virtualinvoke $r8.<java.lang.StackTraceElement: int getLineNumber()>() 
(assert true)
;(assert (append/-1001720160 var877!7 var974)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var877!8 String)
(assert (str.prefixof var877!7 var877!8))
(assert true)
;(assert (append/672562846 var877!8 " ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var877!9 String)
(assert (= var877!9 (str.++ var877!8 " ")))
(define-const var2105 String (msg/-705093563 var941)) ; Statement: $r9 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.String msg> 
(assert true)
;(assert (append/672562846 var877!9 var2105)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var877!10 String)
(assert (= var877!10 (str.++ var877!9 var2105)))
(assert true)
(define-const var2374 String (toString/-2075883882 var877!10)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1899-init=([], java.text.SimpleDateFormat), <init>/-1862704206=([java.text.SimpleDateFormat, java.lang.String], void), var2808-init=([], java.util.Date), timestamp/-705093563=([org.antlr.v4.runtime.misc.LogManager$Record], long), <init>/593337323=([java.util.Date, long], void), format/215566421=([java.text.DateFormat, java.util.Date], java.lang.String), cast-from-var1899-to-var740=([java.text.SimpleDateFormat], java.text.DateFormat), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), component/-705093563=([org.antlr.v4.runtime.misc.LogManager$Record], java.lang.String), location/-705093563=([org.antlr.v4.runtime.misc.LogManager$Record], java.lang.StackTraceElement), getFileName/-547794010=([java.lang.StackTraceElement], java.lang.String), getLineNumber/1148630320=([java.lang.StackTraceElement], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), msg/-705093563=([org.antlr.v4.runtime.misc.LogManager$Record], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var28=org.antlr.v4.runtime.misc.LogManager$Record, var941=r3, var877=$r0, var1899=java.text.SimpleDateFormat, var326=$r1, var1581="yyyy-MM-dd HH:mm:ss:SSS", var2808=java.util.Date, var1431=$r2, var2257=$l0, var740=java.text.DateFormat, var2613=$r4, var2725=$r5, var3035=java.lang.StackTraceElement, var3699=$r6, var2958=$r7, var3452=$r8, var974=$i1, var2105=$r9, var2374=$r10}
; {org.antlr.v4.runtime.misc.LogManager$Record=var28, r3=var941, $r0=var877, java.text.SimpleDateFormat=var1899, $r1=var326, "yyyy-MM-dd HH:mm:ss:SSS"=var1581, java.util.Date=var2808, $r2=var1431, $l0=var2257, java.text.DateFormat=var740, $r4=var2613, $r5=var2725, java.lang.StackTraceElement=var3035, $r6=var3699, $r7=var2958, $r8=var3452, $i1=var974, $r9=var2105, $r10=var2374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.antlr.v4.runtime.misc.LogManager$Record;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.text.SimpleDateFormat;	specialinvoke $r1.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyy-MM-dd HH:mm:ss:SSS");	$r2 = new java.util.Date;	$l0 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: long timestamp>;	specialinvoke $r2.<java.util.Date: void <init>(long)>($l0);	$r4 = virtualinvoke $r1.<java.text.SimpleDateFormat: java.lang.String format(java.util.Date)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.String component>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.StackTraceElement location>;	$r7 = virtualinvoke $r6.<java.lang.StackTraceElement: java.lang.String getFileName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r8 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.StackTraceElement location>;	$i1 = virtualinvoke $r8.<java.lang.StackTraceElement: int getLineNumber()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r9 = r3.<org.antlr.v4.runtime.misc.LogManager$Record: java.lang.String msg>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1