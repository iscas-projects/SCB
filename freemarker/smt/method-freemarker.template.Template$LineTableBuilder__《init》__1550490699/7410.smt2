(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2887 0)
(declare-sort var1069 0)
(declare-sort var2008 0)
(declare-sort var993 0)
(declare-sort var3402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/659030463 (var2887) var1069)
(declare-fun <init>/1691129943 (var3402 var2008) void)
(declare-fun cast-from-var2887-to-var3402 (var2887) var3402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lineBuf/659030463 (var2887) String)
(declare-fun var993_getTabSize/576834898 (var993) Int)
(declare-fun tabSize/659030463 (var2887) Int)
(declare-const null-var2887 var2887)
(declare-const null-var1069 var1069)
(declare-const null-var2008 var2008)
(declare-const null-var993 var993)
(declare-const var1276 var2887) ; Statement: r0 := @this: freemarker.template.Template$LineTableBuilder 
(assert (not (= var1276 null-var2887)))
(declare-const var517 var1069) ; Statement: r1 := @parameter0: freemarker.template.Template 
(assert (not (= var517 null-var1069)))
(declare-const var1403 var2008) ; Statement: r2 := @parameter1: java.io.Reader 
(assert (not (= var1403 null-var2008)))
(declare-const var2718 var993) ; Statement: r4 := @parameter2: freemarker.core.ParserConfiguration 
(assert (not (= var2718 null-var993)))
(declare-const var1276!1 var2887)
(assert (not (= var1276!1 null-var2887)))
(assert (= (this$0/659030463 var1276!1) var517)) ; Statement: r0.<freemarker.template.Template$LineTableBuilder: freemarker.template.Template this$0> = r1 
(assert true)
;(assert (<init>/1691129943 (cast-from-var2887-to-var3402 var1276!1) var1403)) ; Statement: specialinvoke r0.<java.io.FilterReader: void <init>(java.io.Reader)>(r2) 

(declare-const var1276!2 var2887)
(declare-const var1403!1 var2008)
(define-const var2475 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2475)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2475!1 String)
(assert (= var2475!1 ""))
(declare-const var1276!3 var2887)
(assert (not (= var1276!3 null-var2887)))
(assert (= (lineBuf/659030463 var1276!3) var2475!1)) ; Statement: r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf> = $r3 
(define-const var3195 Int (var993_getTabSize/576834898 var2718)) ; Statement: $i0 = interfaceinvoke r4.<freemarker.core.ParserConfiguration: int getTabSize()>() 
(declare-const var1276!4 var2887)
(assert (not (= var1276!4 null-var2887)))
(assert (= (tabSize/659030463 var1276!4) var3195)) ; Statement: r0.<freemarker.template.Template$LineTableBuilder: int tabSize> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/659030463=([freemarker.template.Template$LineTableBuilder], freemarker.template.Template), <init>/1691129943=([java.io.FilterReader, java.io.Reader], void), cast-from-var2887-to-var3402=([freemarker.template.Template$LineTableBuilder], java.io.FilterReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lineBuf/659030463=([freemarker.template.Template$LineTableBuilder], java.lang.StringBuilder), var993_getTabSize/576834898=([freemarker.core.ParserConfiguration], int), tabSize/659030463=([freemarker.template.Template$LineTableBuilder], int)}
; {var2887=freemarker.template.Template$LineTableBuilder, var1276=r0, var1069=freemarker.template.Template, var517=r1, var2008=java.io.Reader, var1403=r2, var993=freemarker.core.ParserConfiguration, var2718=r4, var3402=java.io.FilterReader, var2475=$r3, var3195=$i0}
; {freemarker.template.Template$LineTableBuilder=var2887, r0=var1276, freemarker.template.Template=var1069, r1=var517, java.io.Reader=var2008, r2=var1403, freemarker.core.ParserConfiguration=var993, r4=var2718, java.io.FilterReader=var3402, $r3=var2475, $i0=var3195}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: freemarker.template.Template$LineTableBuilder;	r1 := @parameter0: freemarker.template.Template;	r2 := @parameter1: java.io.Reader;	r4 := @parameter2: freemarker.core.ParserConfiguration;	r0.<freemarker.template.Template$LineTableBuilder: freemarker.template.Template this$0> = r1;	specialinvoke r0.<java.io.FilterReader: void <init>(java.io.Reader)>(r2);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf> = $r3;	$i0 = interfaceinvoke r4.<freemarker.core.ParserConfiguration: int getTabSize()>();	r0.<freemarker.template.Template$LineTableBuilder: int tabSize> = $i0;	return
;block_num 1