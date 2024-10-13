(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var37 0)
(declare-sort var2999 0)
(declare-sort var2730 0)
(declare-sort var2852 0)
(declare-sort var3033 0)
(declare-sort var1642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2999-init () var2999)
(declare-fun val$buf/-1156293301 (var37) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/814598262 (var2999 String) void)
(declare-fun var2730-init () var2730)
(declare-fun <init>/358169345 (var2730) void)
(declare-fun this$0/-1156293301 (var37) var2852)
(declare-fun transform/1795368977 (var2852 var3033 var1642) void)
(declare-fun cast-from-var2999-to-var3033 (var2999) var3033)
(declare-fun cast-from-var2730-to-var1642 (var2730) var1642)
(declare-fun val$out/-1156293301 (var37) var1642)
(declare-fun toString/138175384 (var2730) String)
(declare-fun write/654681022 (var1642 String) void)
(declare-const null-var37 var37)
(declare-const var3759 var37) ; Statement: r1 := @this: freemarker.template.utility.NormalizeNewlines$1 
(assert (not (= var3759 null-var37)))
(define-const var1690 var2999 var2999-init) ; Statement: $r0 = new java.io.StringReader 
(define-const var3530 String (val$buf/-1156293301 var3759)) ; Statement: $r2 = r1.<freemarker.template.utility.NormalizeNewlines$1: java.lang.StringBuilder val$buf> 
(assert true)
(define-const var2295 String (toString/-2075883882 var3530)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/814598262 var1690 var2295)) ; Statement: specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3) 

(declare-const var1690!1 var2999)
(declare-const var2295!1 String)
(define-const var3026 var2730 var2730-init) ; Statement: $r4 = new java.io.StringWriter 
(assert true)
;(assert (<init>/358169345 var3026)) ; Statement: specialinvoke $r4.<java.io.StringWriter: void <init>()>() 

(declare-const var3026!1 var2730)
(define-const var1778 var2852 (this$0/-1156293301 var3759)) ; Statement: $r5 = r1.<freemarker.template.utility.NormalizeNewlines$1: freemarker.template.utility.NormalizeNewlines this$0> 
(assert true)
;(assert (transform/1795368977 var1778 (cast-from-var2999-to-var3033 var1690!1) (cast-from-var2730-to-var1642 var3026!1))) ; Statement: virtualinvoke $r5.<freemarker.template.utility.NormalizeNewlines: void transform(java.io.Reader,java.io.Writer)>($r0, $r4) 

(declare-const var1778!1 var2852)
(declare-const var1690!2 var2999)
(declare-const var3026!2 var2730)
(define-const var3268 var1642 (val$out/-1156293301 var3759)) ; Statement: $r6 = r1.<freemarker.template.utility.NormalizeNewlines$1: java.io.Writer val$out> 
(assert true)
(define-const var2140 String (toString/138175384 var3026!2)) ; Statement: $r7 = virtualinvoke $r4.<java.io.StringWriter: java.lang.String toString()>() 
(assert true)
;(assert (write/654681022 var3268 var2140)) ; Statement: virtualinvoke $r6.<java.io.Writer: void write(java.lang.String)>($r7) 

(declare-const var3268!1 var1642)
(declare-const var2140!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2999-init=([], java.io.StringReader), val$buf/-1156293301=([freemarker.template.utility.NormalizeNewlines$1], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/814598262=([java.io.StringReader, java.lang.String], void), var2730-init=([], java.io.StringWriter), <init>/358169345=([java.io.StringWriter], void), this$0/-1156293301=([freemarker.template.utility.NormalizeNewlines$1], freemarker.template.utility.NormalizeNewlines), transform/1795368977=([freemarker.template.utility.NormalizeNewlines, java.io.Reader, java.io.Writer], void), cast-from-var2999-to-var3033=([java.io.StringReader], java.io.Reader), cast-from-var2730-to-var1642=([java.io.StringWriter], java.io.Writer), val$out/-1156293301=([freemarker.template.utility.NormalizeNewlines$1], java.io.Writer), toString/138175384=([java.io.StringWriter], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void)}
; {var37=freemarker.template.utility.NormalizeNewlines$1, var3759=r1, var2999=java.io.StringReader, var1690=$r0, var3530=$r2, var2295=$r3, var2730=java.io.StringWriter, var3026=$r4, var2852=freemarker.template.utility.NormalizeNewlines, var1778=$r5, var3033=java.io.Reader, var1642=java.io.Writer, var3268=$r6, var2140=$r7}
; {freemarker.template.utility.NormalizeNewlines$1=var37, r1=var3759, java.io.StringReader=var2999, $r0=var1690, $r2=var3530, $r3=var2295, java.io.StringWriter=var2730, $r4=var3026, freemarker.template.utility.NormalizeNewlines=var2852, $r5=var1778, java.io.Reader=var3033, java.io.Writer=var1642, $r6=var3268, $r7=var2140}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.io.StringWriter: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.template.utility.NormalizeNewlines$1;	$r0 = new java.io.StringReader;	$r2 = r1.<freemarker.template.utility.NormalizeNewlines$1: java.lang.StringBuilder val$buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>($r3);	$r4 = new java.io.StringWriter;	specialinvoke $r4.<java.io.StringWriter: void <init>()>();	$r5 = r1.<freemarker.template.utility.NormalizeNewlines$1: freemarker.template.utility.NormalizeNewlines this$0>;	virtualinvoke $r5.<freemarker.template.utility.NormalizeNewlines: void transform(java.io.Reader,java.io.Writer)>($r0, $r4);	$r6 = r1.<freemarker.template.utility.NormalizeNewlines$1: java.io.Writer val$out>;	$r7 = virtualinvoke $r4.<java.io.StringWriter: java.lang.String toString()>();	virtualinvoke $r6.<java.io.Writer: void write(java.lang.String)>($r7);	return
;block_num 1