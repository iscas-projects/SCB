(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var789 0)
(declare-sort var344 0)
(declare-sort var2441 0)
(declare-sort var1269 0)
(declare-sort var1798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2441) void)
(declare-fun cast-from-var789-to-var2441 (var789) var2441)
(declare-fun beginLine/467713178 (var789) Bool)
(declare-fun afterBeginBeforeEnd/467713178 (var789) Bool)
(declare-fun afterByOrSetOrFromOrSelect/467713178 (var789) Bool)
(declare-fun afterOn/467713178 (var789) Bool)
(declare-fun afterBetween/467713178 (var789) Bool)
(declare-fun afterInsert/467713178 (var789) Bool)
(declare-fun inFunction/467713178 (var789) Int)
(declare-fun parensSinceSelect/467713178 (var789) Int)
(declare-fun var1269-init () var1269)
(declare-fun <init>/1281898776 (var1269) void)
(declare-fun parenCounts/467713178 (var789) var1269)
(declare-fun afterByOrFromOrSelects/467713178 (var789) var1269)
(declare-fun indent/467713178 (var789) Int)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun result/467713178 (var789) String)
(declare-fun var1798-init () var1798)
(declare-fun <init>/-1517764957 (var1798 String String Bool) void)
(declare-fun tokens/467713178 (var789) var1798)
(declare-const null-var789 var789)
(declare-const null-String String)
(declare-const var2237 var789) ; Statement: r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess 
(assert (not (= var2237 null-var789)))
(declare-const var911 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var911 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var789-to-var2441 var2237))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2237!1 var789)
(declare-const var2237!2 var789)
(assert (not (= var2237!2 null-var789)))
(assert (= (beginLine/467713178 var2237!2) (ite (= 1 1) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 1 
(declare-const var2237!3 var789)
(assert (not (= var2237!3 null-var789)))
(assert (= (afterBeginBeforeEnd/467713178 var2237!3) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBeginBeforeEnd> = 0 
(declare-const var2237!4 var789)
(assert (not (= var2237!4 null-var789)))
(assert (= (afterByOrSetOrFromOrSelect/467713178 var2237!4) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterByOrSetOrFromOrSelect> = 0 
(declare-const var2237!5 var789)
(assert (not (= var2237!5 null-var789)))
(assert (= (afterOn/467713178 var2237!5) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterOn> = 0 
(declare-const var2237!6 var789)
(assert (not (= var2237!6 null-var789)))
(assert (= (afterBetween/467713178 var2237!6) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBetween> = 0 
(declare-const var2237!7 var789)
(assert (not (= var2237!7 null-var789)))
(assert (= (afterInsert/467713178 var2237!7) (ite (= 1 0) true false))) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> = 0 
(declare-const var2237!8 var789)
(assert (not (= var2237!8 null-var789)))
(assert (= (inFunction/467713178 var2237!8) 0)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int inFunction> = 0 
(declare-const var2237!9 var789)
(assert (not (= var2237!9 null-var789)))
(assert (= (parensSinceSelect/467713178 var2237!9) 0)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int parensSinceSelect> = 0 
(define-const var2526 var1269 var1269-init) ; Statement: $r1 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var2526)) ; Statement: specialinvoke $r1.<java.util.LinkedList: void <init>()>() 

(declare-const var2526!1 var1269)
(declare-const var2237!10 var789)
(assert (not (= var2237!10 null-var789)))
(assert (= (parenCounts/467713178 var2237!10) var2526!1)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.LinkedList parenCounts> = $r1 
(define-const var1984 var1269 var1269-init) ; Statement: $r2 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var1984)) ; Statement: specialinvoke $r2.<java.util.LinkedList: void <init>()>() 

(declare-const var1984!1 var1269)
(declare-const var2237!11 var789)
(assert (not (= var2237!11 null-var789)))
(assert (= (afterByOrFromOrSelects/467713178 var2237!11) var1984!1)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.LinkedList afterByOrFromOrSelects> = $r2 
(declare-const var2237!12 var789)
(assert (not (= var2237!12 null-var789)))
(assert (= (indent/467713178 var2237!12) 1)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent> = 1 
(define-const var3825 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3825)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3825!1 String)
(declare-const var2237!13 var789)
(assert (not (= var2237!13 null-var789)))
(assert (= (result/467713178 var2237!13) var3825!1)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result> = $r3 
(define-const var3255 var1798 var1798-init) ; Statement: $r4 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var3255 var911 "()+*/-=<>\u0027`\u0022[], \n\r\f\t" (ite (= 1 1) true false))) ; Statement: specialinvoke $r4.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r5, "()+*/-=<>\'`\"[], \n\r\f\t", 1) 

(declare-const var3255!1 var1798)
(declare-const var911!1 String)
(declare-const var2323 String)
(declare-const var302 Int)
(declare-const var2237!14 var789)
(assert (not (= var2237!14 null-var789)))
(assert (= (tokens/467713178 var2237!14) var3255!1)) ; Statement: r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.StringTokenizer tokens> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var789-to-var2441=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.Object), beginLine/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), afterBeginBeforeEnd/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), afterByOrSetOrFromOrSelect/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), afterOn/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), afterBetween/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), afterInsert/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], boolean), inFunction/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], int), parensSinceSelect/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], int), var1269-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), parenCounts/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.util.LinkedList), afterByOrFromOrSelects/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.util.LinkedList), indent/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), result/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.lang.StringBuffer), var1798-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), tokens/467713178=([cn.hutool.db.sql.SqlFormatter$FormatProcess], java.util.StringTokenizer)}
; {var789=cn.hutool.db.sql.SqlFormatter$FormatProcess, var2237=r0, var911=r5, var344=null_type, var2441=java.lang.Object, var1269=java.util.LinkedList, var2526=$r1, var1984=$r2, var3825=$r3, var1798=java.util.StringTokenizer, var3255=$r4, var2323="()+*/-=<>\'`\"[], \n\r\f\t", var302=1}
; {cn.hutool.db.sql.SqlFormatter$FormatProcess=var789, r0=var2237, r5=var911, null_type=var344, java.lang.Object=var2441, java.util.LinkedList=var1269, $r1=var2526, $r2=var1984, $r3=var3825, java.util.StringTokenizer=var1798, $r4=var3255, "()+*/-=<>\'`\"[], \n\r\f\t"=var2323, 1=var302}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlFormatter$FormatProcess;	r5 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean beginLine> = 1;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBeginBeforeEnd> = 0;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterByOrSetOrFromOrSelect> = 0;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterOn> = 0;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterBetween> = 0;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: boolean afterInsert> = 0;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int inFunction> = 0;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int parensSinceSelect> = 0;	$r1 = new java.util.LinkedList;	specialinvoke $r1.<java.util.LinkedList: void <init>()>();	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.LinkedList parenCounts> = $r1;	$r2 = new java.util.LinkedList;	specialinvoke $r2.<java.util.LinkedList: void <init>()>();	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.LinkedList afterByOrFromOrSelects> = $r2;	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: int indent> = 1;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.lang.StringBuffer result> = $r3;	$r4 = new java.util.StringTokenizer;	specialinvoke $r4.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r5, "()+*/-=<>\'`\"[], \n\r\f\t", 1);	r0.<cn.hutool.db.sql.SqlFormatter$FormatProcess: java.util.StringTokenizer tokens> = $r4;	return
;block_num 1