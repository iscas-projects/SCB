(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2068 0)
(declare-sort var2571 0)
(declare-sort var2220 0)
(declare-sort var1256 0)
(declare-sort var3163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var2068 Int) var2571)
(declare-fun breakableDirectiveNesting/-1475596563 (var2068) Int)
(declare-fun var2220-init () var2220)
(declare-fun <init>/320996183 (var2220) void)
(declare-fun template/-1475596563 (var2068) var1256)
(declare-fun setLocation/2027311074 (var3163 var1256 var2571 var2571) void)
(declare-fun cast-from-var2220-to-var3163 (var2220) var3163)
(declare-const null-var2068 var2068)
(declare-const var695 var2068) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var695 null-var2068)))
(assert true)
(define-const var818 var2571 (jj_consume_token/-1662239344 var695 55)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(55) 
(define-const var3258 Int (breakableDirectiveNesting/-1475596563 var695)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting> 
 ; Statement: if $i0 >= 1 goto $r2 = new freemarker.core.BreakInstruction 
(assert (>= var3258 1)) ; Cond: $i0 >= 1 
(define-const var3737 var2220 var2220-init) ; Statement: $r2 = new freemarker.core.BreakInstruction 
(assert true)
;(assert (<init>/320996183 var3737)) ; Statement: specialinvoke $r2.<freemarker.core.BreakInstruction: void <init>()>() 

(declare-const var3737!1 var2220)
(define-const var3699 var1256 (template/-1475596563 var695)) ; Statement: $r3 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (setLocation/2027311074 (cast-from-var2220-to-var3163 var3737!1) var3699 var818 var818)) ; Statement: virtualinvoke $r2.<freemarker.core.BreakInstruction: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r3, r1, r1) 

(declare-const var3737!2 var2220)
(declare-const var3699!1 var1256)
(declare-const var818!1 var2571)
(declare-const var818!2 var2571)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), breakableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), var2220-init=([], freemarker.core.BreakInstruction), <init>/320996183=([freemarker.core.BreakInstruction], void), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), setLocation/2027311074=([freemarker.core.TemplateObject, freemarker.template.Template, freemarker.core.Token, freemarker.core.Token], void), cast-from-var2220-to-var3163=([freemarker.core.BreakInstruction], freemarker.core.TemplateObject)}
; {var2068=freemarker.core.FMParser, var695=r0, var2571=freemarker.core.Token, var818=r1, var3258=$i0, var2220=freemarker.core.BreakInstruction, var3737=$r2, var1256=freemarker.template.Template, var3699=$r3, var3163=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var2068, r0=var695, freemarker.core.Token=var2571, r1=var818, $i0=var3258, freemarker.core.BreakInstruction=var2220, $r2=var3737, freemarker.template.Template=var1256, $r3=var3699, freemarker.core.TemplateObject=var3163}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(55);	$i0 = r0.<freemarker.core.FMParser: int breakableDirectiveNesting>;	if $i0 >= 1 goto $r2 = new freemarker.core.BreakInstruction;	$r2 = new freemarker.core.BreakInstruction;	specialinvoke $r2.<freemarker.core.BreakInstruction: void <init>()>();	$r3 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	virtualinvoke $r2.<freemarker.core.BreakInstruction: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r3, r1, r1);	return $r2
;block_num 2