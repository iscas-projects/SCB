(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1235 0)
(declare-sort var3574 0)
(declare-sort var1837 0)
(declare-sort var399 0)
(declare-sort var2123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1837) void)
(declare-fun cast-from-var1235-to-var1837 (var1235) var1837)
(declare-fun beginLine/-1214741580 (var1235) Bool)
(declare-fun var399-init () var399)
(declare-fun <init>/1281898776 (var399) void)
(declare-fun parenCounts/-1214741580 (var1235) var399)
(declare-fun afterByOrFromOrSelects/-1214741580 (var1235) var399)
(declare-fun indent/-1214741580 (var1235) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun result/-1214741580 (var1235) String)
(declare-fun var2123-init () var2123)
(declare-fun <init>/-1517764957 (var2123 String String Bool) void)
(declare-fun tokens/-1214741580 (var1235) var2123)
(declare-const null-var1235 var1235)
(declare-const null-String String)
(declare-const var3598 var1235) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess 
(assert (not (= var3598 null-var1235)))
(declare-const var2519 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2519 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1235-to-var1837 var3598))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3598!1 var1235)
(declare-const var3598!2 var1235)
(assert (not (= var3598!2 null-var1235)))
(assert (= (beginLine/-1214741580 var3598!2) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 1 
(define-const var2570 var399 var399-init) ; Statement: $r1 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var2570)) ; Statement: specialinvoke $r1.<java.util.LinkedList: void <init>()>() 

(declare-const var2570!1 var399)
(declare-const var3598!3 var1235)
(assert (not (= var3598!3 null-var1235)))
(assert (= (parenCounts/-1214741580 var3598!3) var2570!1)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.LinkedList parenCounts> = $r1 
(define-const var3819 var399 var399-init) ; Statement: $r2 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var3819)) ; Statement: specialinvoke $r2.<java.util.LinkedList: void <init>()>() 

(declare-const var3819!1 var399)
(declare-const var3598!4 var1235)
(assert (not (= var3598!4 null-var1235)))
(assert (= (afterByOrFromOrSelects/-1214741580 var3598!4) var3819!1)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.LinkedList afterByOrFromOrSelects> = $r2 
(declare-const var3598!5 var1235)
(assert (not (= var3598!5 null-var1235)))
(assert (= (indent/-1214741580 var3598!5) 1)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent> = 1 
(define-const var883 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var883)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var883!1 String)
(assert (= var883!1 ""))
(declare-const var3598!6 var1235)
(assert (not (= var3598!6 null-var1235)))
(assert (= (result/-1214741580 var3598!6) var883!1)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result> = $r3 
(define-const var3178 var2123 var2123-init) ; Statement: $r4 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var3178 var2519 "()+*/-=<>\u0027`\u0022[], \n\r\f\t" (ite (= 1 1) true false))) ; Statement: specialinvoke $r4.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r5, "()+*/-=<>\'`\"[], \n\r\f\t", 1) 

(declare-const var3178!1 var2123)
(declare-const var2519!1 String)
(declare-const var2497 String)
(declare-const var460 Int)
(declare-const var3598!7 var1235)
(assert (not (= var3598!7 null-var1235)))
(assert (= (tokens/-1214741580 var3598!7) var3178!1)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.StringTokenizer tokens> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1235-to-var1837=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.Object), beginLine/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], boolean), var399-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), parenCounts/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.util.LinkedList), afterByOrFromOrSelects/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.util.LinkedList), indent/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), result/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.lang.StringBuilder), var2123-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), tokens/-1214741580=([org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess], java.util.StringTokenizer)}
; {var1235=org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess, var3598=r0, var2519=r5, var3574=null_type, var1837=java.lang.Object, var399=java.util.LinkedList, var2570=$r1, var3819=$r2, var883=$r3, var2123=java.util.StringTokenizer, var3178=$r4, var2497="()+*/-=<>\'`\"[], \n\r\f\t", var460=1}
; {org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess=var1235, r0=var3598, r5=var2519, null_type=var3574, java.lang.Object=var1837, java.util.LinkedList=var399, $r1=var2570, $r2=var3819, $r3=var883, java.util.StringTokenizer=var2123, $r4=var3178, "()+*/-=<>\'`\"[], \n\r\f\t"=var2497, 1=var460}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess;	r5 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: boolean beginLine> = 1;	$r1 = new java.util.LinkedList;	specialinvoke $r1.<java.util.LinkedList: void <init>()>();	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.LinkedList parenCounts> = $r1;	$r2 = new java.util.LinkedList;	specialinvoke $r2.<java.util.LinkedList: void <init>()>();	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.LinkedList afterByOrFromOrSelects> = $r2;	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: int indent> = 1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.lang.StringBuilder result> = $r3;	$r4 = new java.util.StringTokenizer;	specialinvoke $r4.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r5, "()+*/-=<>\'`\"[], \n\r\f\t", 1);	r0.<org.hibernate.engine.jdbc.internal.BasicFormatterImpl$FormatProcess: java.util.StringTokenizer tokens> = $r4;	return
;block_num 1