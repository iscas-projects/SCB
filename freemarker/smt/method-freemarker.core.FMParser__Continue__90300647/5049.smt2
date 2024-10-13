(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var860 0)
(declare-sort var3139 0)
(declare-sort var2161 0)
(declare-sort var858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-1662239344 (var3110 Int) var860)
(declare-fun continuableDirectiveNesting/-1475596563 (var3110) Int)
(declare-fun var3139-init () var3139)
(declare-fun <init>/638084809 (var3139) void)
(declare-fun template/-1475596563 (var3110) var2161)
(declare-fun setLocation/2027311074 (var858 var2161 var860 var860) void)
(declare-fun cast-from-var3139-to-var858 (var3139) var858)
(declare-const null-var3110 var3110)
(declare-const var2488 var3110) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var2488 null-var3110)))
(assert true)
(define-const var2370 var860 (jj_consume_token/-1662239344 var2488 56)) ; Statement: r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(56) 
(define-const var1191 Int (continuableDirectiveNesting/-1475596563 var2488)) ; Statement: $i0 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting> 
 ; Statement: if $i0 >= 1 goto $r2 = new freemarker.core.ContinueInstruction 
(assert (>= var1191 1)) ; Cond: $i0 >= 1 
(define-const var1671 var3139 var3139-init) ; Statement: $r2 = new freemarker.core.ContinueInstruction 
(assert true)
;(assert (<init>/638084809 var1671)) ; Statement: specialinvoke $r2.<freemarker.core.ContinueInstruction: void <init>()>() 

(declare-const var1671!1 var3139)
(define-const var3421 var2161 (template/-1475596563 var2488)) ; Statement: $r3 = r0.<freemarker.core.FMParser: freemarker.template.Template template> 
(assert true)
;(assert (setLocation/2027311074 (cast-from-var3139-to-var858 var1671!1) var3421 var2370 var2370)) ; Statement: virtualinvoke $r2.<freemarker.core.ContinueInstruction: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r3, r1, r1) 

(declare-const var1671!2 var3139)
(declare-const var3421!1 var2161)
(declare-const var2370!1 var860)
(declare-const var2370!2 var860)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-1662239344=([freemarker.core.FMParser, int], freemarker.core.Token), continuableDirectiveNesting/-1475596563=([freemarker.core.FMParser], int), var3139-init=([], freemarker.core.ContinueInstruction), <init>/638084809=([freemarker.core.ContinueInstruction], void), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), setLocation/2027311074=([freemarker.core.TemplateObject, freemarker.template.Template, freemarker.core.Token, freemarker.core.Token], void), cast-from-var3139-to-var858=([freemarker.core.ContinueInstruction], freemarker.core.TemplateObject)}
; {var3110=freemarker.core.FMParser, var2488=r0, var860=freemarker.core.Token, var2370=r1, var1191=$i0, var3139=freemarker.core.ContinueInstruction, var1671=$r2, var2161=freemarker.template.Template, var3421=$r3, var858=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var3110, r0=var2488, freemarker.core.Token=var860, r1=var2370, $i0=var1191, freemarker.core.ContinueInstruction=var3139, $r2=var1671, freemarker.template.Template=var2161, $r3=var3421, freemarker.core.TemplateObject=var858}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FMParser;	r1 = specialinvoke r0.<freemarker.core.FMParser: freemarker.core.Token jj_consume_token(int)>(56);	$i0 = r0.<freemarker.core.FMParser: int continuableDirectiveNesting>;	if $i0 >= 1 goto $r2 = new freemarker.core.ContinueInstruction;	$r2 = new freemarker.core.ContinueInstruction;	specialinvoke $r2.<freemarker.core.ContinueInstruction: void <init>()>();	$r3 = r0.<freemarker.core.FMParser: freemarker.template.Template template>;	virtualinvoke $r2.<freemarker.core.ContinueInstruction: void setLocation(freemarker.template.Template,freemarker.core.Token,freemarker.core.Token)>($r3, r1, r1);	return $r2
;block_num 2