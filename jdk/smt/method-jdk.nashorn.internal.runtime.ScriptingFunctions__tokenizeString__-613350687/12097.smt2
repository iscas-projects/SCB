(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1056 0)
(declare-sort var1875 0)
(declare-sort var2330 0)
(declare-sort var507 0)
(declare-sort var3835 0)
(declare-sort var969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1875-init () var1875)
(declare-fun var2330-init () var2330)
(declare-fun <init>/814598262 (var2330 String) void)
(declare-fun <init>/487573699 (var1875 var507) void)
(declare-fun cast-from-var2330-to-var507 (var2330) var507)
(declare-fun resetSyntax/974557810 (var1875) void)
(declare-fun wordChars/1161868139 (var1875 Int Int) void)
(declare-fun whitespaceChars/-1904160552 (var1875 Int Int) void)
(declare-fun commentChar/-1970742006 (var1875 Int) void)
(declare-fun quoteChar/-1654773977 (var1875 Int) void)
(declare-fun var3835-init () var3835)
(declare-fun <init>/-325640736 (var3835) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var969_nextToken/1223858768 (var1875) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const var3109 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3109 null-String)))
(define-const var515 var1875 var1875-init) ; Statement: $r12 = new java.io.StreamTokenizer 
(define-const var1051 var2330 var2330-init) ; Statement: $r11 = new java.io.StringReader 
(assert true)
;(assert (<init>/814598262 var1051 var3109)) ; Statement: specialinvoke $r11.<java.io.StringReader: void <init>(java.lang.String)>(r2) 

(declare-const var1051!1 var2330)
(declare-const var3109!1 String)
(assert true)
;(assert (<init>/487573699 var515 (cast-from-var2330-to-var507 var1051!1))) ; Statement: specialinvoke $r12.<java.io.StreamTokenizer: void <init>(java.io.Reader)>($r11) 

(declare-const var515!1 var1875)
(declare-const var1051!2 var2330)
(assert true)
;(assert (resetSyntax/974557810 var515!1)) ; Statement: virtualinvoke $r12.<java.io.StreamTokenizer: void resetSyntax()>() 

(declare-const var515!2 var1875)
(assert true)
;(assert (wordChars/1161868139 var515!2 0 255)) ; Statement: virtualinvoke $r12.<java.io.StreamTokenizer: void wordChars(int,int)>(0, 255) 

(declare-const var515!3 var1875)
(declare-const var542 Int)
(declare-const var2376 Int)
(assert true)
;(assert (whitespaceChars/-1904160552 var515!3 0 32)) ; Statement: virtualinvoke $r12.<java.io.StreamTokenizer: void whitespaceChars(int,int)>(0, 32) 

(declare-const var515!4 var1875)
(declare-const var542!1 Int)
(declare-const var2380 Int)
(assert true)
;(assert (commentChar/-1970742006 var515!4 35)) ; Statement: virtualinvoke $r12.<java.io.StreamTokenizer: void commentChar(int)>(35) 

(declare-const var515!5 var1875)
(declare-const var3385 Int)
(assert true)
;(assert (quoteChar/-1654773977 var515!5 34)) ; Statement: virtualinvoke $r12.<java.io.StreamTokenizer: void quoteChar(int)>(34) 

(declare-const var515!6 var1875)
(declare-const var3379 Int)
(assert true)
;(assert (quoteChar/-1654773977 var515!6 39)) ; Statement: virtualinvoke $r12.<java.io.StreamTokenizer: void quoteChar(int)>(39) 

(declare-const var515!7 var1875)
(declare-const var1322 Int)
(define-const var3747 var3835 var3835-init) ; Statement: $r13 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3747)) ; Statement: specialinvoke $r13.<java.util.ArrayList: void <init>()>() 

(declare-const var3747!1 var3835)
(define-const var2653 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2653)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2653!1 String)
(assert (= var2653!1 ""))
(assert true) ; Non Conditional
(define-const var2696 Int (var969_nextToken/1223858768 var515!7)) ; Statement: $i0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptingFunctions: int nextToken(java.io.StreamTokenizer)>($r12) 
(define-const var3850 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $i1 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>() 
(assert (= var2696 var3850)) ; Cond: $i0 == $i5 
(assert true)
(define-const var3816 Int (length/-171891354 var2653!1)) ; Statement: $i1 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 == 0 goto return $r13 
(assert (= var3816 0)) ; Cond: $i1 == 0 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1875-init=([], java.io.StreamTokenizer), var2330-init=([], java.io.StringReader), <init>/814598262=([java.io.StringReader, java.lang.String], void), <init>/487573699=([java.io.StreamTokenizer, java.io.Reader], void), cast-from-var2330-to-var507=([java.io.StringReader], java.io.Reader), resetSyntax/974557810=([java.io.StreamTokenizer], void), wordChars/1161868139=([java.io.StreamTokenizer, int, int], void), whitespaceChars/-1904160552=([java.io.StreamTokenizer, int, int], void), commentChar/-1970742006=([java.io.StreamTokenizer, int], void), quoteChar/-1654773977=([java.io.StreamTokenizer, int], void), var3835-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var969_nextToken/1223858768=([java.io.StreamTokenizer], int), cast-from-Int-to-Int=([int], int), length/-171891354=([java.lang.StringBuilder], int)}
; {var3109=r2, var1056=null_type, var1875=java.io.StreamTokenizer, var515=$r12, var2330=java.io.StringReader, var1051=$r11, var507=java.io.Reader, var542=0, var2376=255, var2380=32, var3385=35, var3379=34, var1322=39, var3835=java.util.ArrayList, var3747=$r13, var2653=$r14, var969=jdk.nashorn.internal.runtime.ScriptingFunctions, var2696=$i0, var3850=$i5, var3816=$i1}
; {r2=var3109, null_type=var1056, java.io.StreamTokenizer=var1875, $r12=var515, java.io.StringReader=var2330, $r11=var1051, java.io.Reader=var507, 0=var542, 255=var2376, 32=var2380, 35=var3385, 34=var3379, 39=var1322, java.util.ArrayList=var3835, $r13=var3747, $r14=var2653, jdk.nashorn.internal.runtime.ScriptingFunctions=var969, $i0=var2696, $i5=var3850, $i1=var3816}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$r12 = new java.io.StreamTokenizer;	$r11 = new java.io.StringReader;	specialinvoke $r11.<java.io.StringReader: void <init>(java.lang.String)>(r2);	specialinvoke $r12.<java.io.StreamTokenizer: void <init>(java.io.Reader)>($r11);	virtualinvoke $r12.<java.io.StreamTokenizer: void resetSyntax()>();	virtualinvoke $r12.<java.io.StreamTokenizer: void wordChars(int,int)>(0, 255);	virtualinvoke $r12.<java.io.StreamTokenizer: void whitespaceChars(int,int)>(0, 32);	virtualinvoke $r12.<java.io.StreamTokenizer: void commentChar(int)>(35);	virtualinvoke $r12.<java.io.StreamTokenizer: void quoteChar(int)>(34);	virtualinvoke $r12.<java.io.StreamTokenizer: void quoteChar(int)>(39);	$r13 = new java.util.ArrayList;	specialinvoke $r13.<java.util.ArrayList: void <init>()>();	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$i0 = staticinvoke <jdk.nashorn.internal.runtime.ScriptingFunctions: int nextToken(java.io.StreamTokenizer)>($r12);	$i5 = (int) -1;	if $i0 == $i5 goto $i1 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>();	if $i1 == 0 goto return $r13;	return $r13
;block_num 4