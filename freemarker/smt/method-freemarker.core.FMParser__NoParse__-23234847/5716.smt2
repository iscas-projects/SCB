(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2173 0)
(declare-sort var2522 0)
(declare-sort var882 0)
(declare-sort var2424 0)
(declare-sort var2314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jj_consume_token/-1662239344 (var2173 Int) var2522)
(declare-fun UnparsedContent/-4538053 (var2173 var2522 String) var2522)
(declare-fun var882-init () var882)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-582494301 (var882 String Bool) void)
(declare-fun template/-1475596563 (var2173) var2424)
(declare-fun setLocation/2027311074 (var2314 var2424 var2522 var2522) void)
(declare-fun cast-from-var882-to-var2314 (var882) var2314)
(declare-const null-var2173 var2173)
(declare-const var3183 var2173) ; Statement: r1 := @this: freemarker.core.FMParser 
(assert (not (= var3183 null-var2173)))
(define-const var2002 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2002)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2002!1 String)
(assert (= var2002!1 ""))
(assert true)
(define-const var1438 var2522 (jj_consume_token/-1662239344 var3183 35)) ; Statement: r2 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(35) 
(assert true)
(define-const var3734 var2522 (UnparsedContent/-4538053 var3183 var1438 var2002!1)) ; Statement: r3 = virtualinvoke r1.<freemarker.core.FMParser: freemarker.core.Token UnparsedContent(freemarker.core.Token,java.lang.StringBuilder)>(r2, $r0) 
(define-const var684 var882 var882-init) ; Statement: $r4 = new freemarker.core.TextBlock 
(assert true)
(define-const var1608 String (toString/-2075883882 var2002!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-582494301 var684 var1608 (ite (= 1 1) true false))) ; Statement: specialinvoke $r4.<freemarker.core.TextBlock: void <init>(java.lang.String,boolean)>($r5, 1) 

(declare-const var684!1 var882)
(declare-const var1608!1 String)
(declare-const var1844 Int)
(define-const var186 var2424 (template/-1475596563 var3183)) ; Statement: $r6 = r1.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (setLocation/2027311074 (cast-from-var882-to-var2314 var684!1) var186 var1438 var3734)) ; Statement: virtualinvoke $r4.<freemarker.core.TextBlock: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r6, r2, r3) 

(declare-const var684!2 var882)
(declare-const var186!1 var2424)
(declare-const var1438!1 var2522)
(declare-const var3734!1 var2522)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), UnparsedContent/-4538053=([freemarker.core.FMParser, freemarker.core.Token, java.lang.StringBuilder], freemarker.core.Token), var882-init=([], freemarker.core.TextBlock), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-582494301=([freemarker.core.TextBlock, java.lang.String, boolean], void), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), setLocation/2027311074=([freemarker.core.TemplateObject, freemarker.template.Template, freemarker.core.Token, freemarker.core.Token], void), cast-from-var882-to-var2314=([freemarker.core.TextBlock], freemarker.core.TemplateObject)}
; {var2173=freemarker.core.FMParser, var3183=r1, var2002=$r0, var2522=freemarker.core.Token, var1438=r2, var3734=r3, var882=freemarker.core.TextBlock, var684=$r4, var1608=$r5, var1844=1, var2424=freemarker.template.Template, var186=$r6, var2314=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var2173, r1=var3183, $r0=var2002, freemarker.core.Token=var2522, r2=var1438, r3=var3734, freemarker.core.TextBlock=var882, $r4=var684, $r5=var1608, 1=var1844, freemarker.template.Template=var2424, $r6=var186, freemarker.core.TemplateObject=var2314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.FMParser;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = specialinvoke r1.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(35);	r3 = virtualinvoke r1.<freemarker.core.FMParser: freemarker.core.Token UnparsedContent(freemarker.core.Token,java.lang.StringBuilder)>(r2, $r0);	$r4 = new freemarker.core.TextBlock;	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<freemarker.core.TextBlock: void <init>(java.lang.String,boolean)>($r5, 1);	$r6 = r1.<freemarker.core.FMParser: freemarker.template.Template template>;	virtualinvoke $r4.<freemarker.core.TextBlock: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r6, r2, r3);	return $r4
;block_num 1