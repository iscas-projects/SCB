(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1446 0)
(declare-sort var3423 0)
(declare-sort var557 0)
(declare-sort var572 0)
(declare-sort var1306 0)
(declare-sort var407 0)
(declare-sort var3685 0)
(declare-sort var664 0)
(declare-sort var2916 0)
(declare-sort var2632 0)
(declare-sort var3393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2021500432 (var3685 var3423) void)
(declare-fun cast-from-var1446-to-var3685 (var1446) var3685)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun name/553368507 (var1446) String)
(declare-fun parentScopeResolution/1326566435 (var3423) Bool)
(declare-fun var664_compile/1318237133 (String Bool) var1306)
(declare-fun path/553368507 (var1446) var1306)
(declare-fun type/553368507 (var1446) var572)
(declare-fun var1446_empty/-1389424036 (var1446) var2916)
(declare-fun emptyVar/553368507 (var1446) var2916)
(declare-fun params/613494813 (var3685 var1306) var3685)
(declare-fun hash/1814668815 (var3685 var407) var3685)
(declare-fun getEscapingStrategy/87010935 (var3423) var2632)
(declare-fun escapingStrategy/553368507 (var1446) var2632)
(declare-fun getFormatter/1101966082 (var3423) var3393)
(declare-fun formatter/553368507 (var1446) var3393)
(declare-fun var1306_size/-959786421 (var1306) Int)
(declare-fun noArg/553368507 (var1446) Bool)
(declare-fun postInit/-922671778 (var1446) void)
(declare-const null-var1446 var1446)
(declare-const null-var3423 var3423)
(declare-const null-String String)
(declare-const null-var572 var572)
(declare-const null-var1306 var1306)
(declare-const null-var407 var407)
(declare-const var572-VAR var572)
(declare-const var3611 var1446) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Variable 
(assert (not (= var3611 null-var1446)))
(declare-const var1014 var3423) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.Handlebars 
(assert (not (= var1014 null-var3423)))
(declare-const var3216 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3216 null-String)))
(declare-const var2282 var572) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.TagType 
(assert (not (= var2282 null-var572)))
(declare-const var957 var1306) ; Statement: r7 := @parameter3: java.util.List 
(assert (not (= var957 null-var1306)))
(declare-const var2273 var407) ; Statement: r8 := @parameter4: java.util.Map 
(assert (not (= var2273 null-var407)))
(assert true)
;(assert (<init>/-2021500432 (cast-from-var1446-to-var3685 var3611) var1014)) ; Statement: specialinvoke r0.<com.github.jknack.handlebars.internal.HelperResolver: void <init>(com.github.jknack.handlebars.Handlebars)>(r1) 

(declare-const var3611!1 var1446)
(declare-const var1014!1 var3423)
(assert true)
(define-const var3713 String (trim/-847153721 var3216)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(declare-const var3611!2 var1446)
(assert (not (= var3611!2 null-var1446)))
(assert (= (name/553368507 var3611!2) var3713)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: java.lang.String name> = $r3 
(assert true)
(define-const var3857 Bool (parentScopeResolution/1326566435 var1014!1)) ; Statement: $z0 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: boolean parentScopeResolution()>() 
(define-const var2833 var1306 (var664_compile/1318237133 var3216 var3857)) ; Statement: $r4 = staticinvoke <com.github.jknack.handlebars.PathCompiler: java.util.List compile(java.lang.String,boolean)>(r2, $z0) 
(declare-const var3611!3 var1446)
(assert (not (= var3611!3 null-var1446)))
(assert (= (path/553368507 var3611!3) var2833)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: java.util.List path> = $r4 
(declare-const var3611!4 var1446)
(assert (not (= var3611!4 null-var1446)))
(assert (= (type/553368507 var3611!4) var2282)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.TagType type> = r5 
(define-const var2932 var2916 (var1446_empty/-1389424036 var3611!4)) ; Statement: $r6 = staticinvoke <com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template empty(com.github.jknack.handlebars.internal.Variable)>(r0) 
(declare-const var3611!5 var1446)
(assert (not (= var3611!5 null-var1446)))
(assert (= (emptyVar/553368507 var3611!5) var2932)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template emptyVar> = $r6 
(assert true)
;(assert (params/613494813 (cast-from-var1446-to-var3685 var3611!5) var957)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver params(java.util.List)>(r7) 

(declare-const var3611!6 var1446)
(declare-const var957!1 var1306)
(assert true)
;(assert (hash/1814668815 (cast-from-var1446-to-var3685 var3611!6) var2273)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver hash(java.util.Map)>(r8) 

(declare-const var3611!7 var1446)
(declare-const var2273!1 var407)
(define-const var328 var572 var572-VAR) ; Statement: $r9 = <com.github.jknack.handlebars.TagType: com.github.jknack.handlebars.TagType VAR> 
 ; Statement: if r5 != $r9 goto $r11 = <com.github.jknack.handlebars.EscapingStrategy: com.github.jknack.handlebars.EscapingStrategy NOOP> 
(assert (not (not (= var2282 var328)))) ; Negate: Cond: r5 != $r9  
(assert true)
(define-const var1722 var2632 (getEscapingStrategy/87010935 var1014!1)) ; Statement: $r11 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.EscapingStrategy getEscapingStrategy()>() 
 ; Statement: goto [?= r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.EscapingStrategy escapingStrategy> = $r11] 
(assert true) ; Non Conditional
(declare-const var3611!8 var1446)
(assert (not (= var3611!8 null-var1446)))
(assert (= (escapingStrategy/553368507 var3611!8) var1722)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.EscapingStrategy escapingStrategy> = $r11 
(assert true)
(define-const var2700 var3393 (getFormatter/1101966082 var1014!1)) ; Statement: $r10 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.Formatter$Chain getFormatter()>() 
(declare-const var3611!9 var1446)
(assert (not (= var3611!9 null-var1446)))
(assert (= (formatter/553368507 var3611!9) var2700)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Formatter$Chain formatter> = $r10 
(define-const var2947 Int (var1306_size/-959786421 var957!1)) ; Statement: $i0 = interfaceinvoke r7.<java.util.List: int size()>() 
 ; Statement: if $i0 != 0 goto $z1 = 0 
(assert (not (= var2947 0))) ; Cond: $i0 != 0 
(define-const var677 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(declare-const var3611!10 var1446)
(assert (not (= var3611!10 null-var1446)))
(assert (= (noArg/553368507 var3611!10) var677)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: boolean noArg> = $z1 
(assert true)
;(assert (postInit/-922671778 var3611!10)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: void postInit()>() 

(declare-const var3611!11 var1446)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2021500432=([com.github.jknack.handlebars.internal.HelperResolver, com.github.jknack.handlebars.Handlebars], void), cast-from-var1446-to-var3685=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.internal.HelperResolver), trim/-847153721=([java.lang.String], java.lang.String), name/553368507=([com.github.jknack.handlebars.internal.Variable], java.lang.String), parentScopeResolution/1326566435=([com.github.jknack.handlebars.Handlebars], boolean), var664_compile/1318237133=([java.lang.String, boolean], java.util.List), path/553368507=([com.github.jknack.handlebars.internal.Variable], java.util.List), type/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.TagType), var1446_empty/-1389424036=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.Template), emptyVar/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.Template), params/613494813=([com.github.jknack.handlebars.internal.HelperResolver, java.util.List], com.github.jknack.handlebars.internal.HelperResolver), hash/1814668815=([com.github.jknack.handlebars.internal.HelperResolver, java.util.Map], com.github.jknack.handlebars.internal.HelperResolver), getEscapingStrategy/87010935=([com.github.jknack.handlebars.Handlebars], com.github.jknack.handlebars.EscapingStrategy), escapingStrategy/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.EscapingStrategy), getFormatter/1101966082=([com.github.jknack.handlebars.Handlebars], com.github.jknack.handlebars.Formatter$Chain), formatter/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.Formatter$Chain), var1306_size/-959786421=([java.util.List], int), noArg/553368507=([com.github.jknack.handlebars.internal.Variable], boolean), postInit/-922671778=([com.github.jknack.handlebars.internal.Variable], void)}
; {var1446=com.github.jknack.handlebars.internal.Variable, var3611=r0, var3423=com.github.jknack.handlebars.Handlebars, var1014=r1, var3216=r2, var557=null_type, var572=com.github.jknack.handlebars.TagType, var2282=r5, var1306=java.util.List, var957=r7, var407=java.util.Map, var2273=r8, var3685=com.github.jknack.handlebars.internal.HelperResolver, var3713=$r3, var3857=$z0, var664=com.github.jknack.handlebars.PathCompiler, var2833=$r4, var2916=com.github.jknack.handlebars.Template, var2932=$r6, var328=$r9, var2632=com.github.jknack.handlebars.EscapingStrategy, var1722=$r11, var3393=com.github.jknack.handlebars.Formatter$Chain, var2700=$r10, var2947=$i0, var677=$z1}
; {com.github.jknack.handlebars.internal.Variable=var1446, r0=var3611, com.github.jknack.handlebars.Handlebars=var3423, r1=var1014, r2=var3216, null_type=var557, com.github.jknack.handlebars.TagType=var572, r5=var2282, java.util.List=var1306, r7=var957, java.util.Map=var407, r8=var2273, com.github.jknack.handlebars.internal.HelperResolver=var3685, $r3=var3713, $z0=var3857, com.github.jknack.handlebars.PathCompiler=var664, $r4=var2833, com.github.jknack.handlebars.Template=var2916, $r6=var2932, $r9=var328, com.github.jknack.handlebars.EscapingStrategy=var2632, $r11=var1722, com.github.jknack.handlebars.Formatter$Chain=var3393, $r10=var2700, $i0=var2947, $z1=var677}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Variable;	r1 := @parameter0: com.github.jknack.handlebars.Handlebars;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: com.github.jknack.handlebars.TagType;	r7 := @parameter3: java.util.List;	r8 := @parameter4: java.util.Map;	specialinvoke r0.<com.github.jknack.handlebars.internal.HelperResolver: void <init>(com.github.jknack.handlebars.Handlebars)>(r1);	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	r0.<com.github.jknack.handlebars.internal.Variable: java.lang.String name> = $r3;	$z0 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: boolean parentScopeResolution()>();	$r4 = staticinvoke <com.github.jknack.handlebars.PathCompiler: java.util.List compile(java.lang.String,boolean)>(r2, $z0);	r0.<com.github.jknack.handlebars.internal.Variable: java.util.List path> = $r4;	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.TagType type> = r5;	$r6 = staticinvoke <com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template empty(com.github.jknack.handlebars.internal.Variable)>(r0);	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template emptyVar> = $r6;	virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver params(java.util.List)>(r7);	virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver hash(java.util.Map)>(r8);	$r9 = <com.github.jknack.handlebars.TagType: com.github.jknack.handlebars.TagType VAR>;	if r5 != $r9 goto $r11 = <com.github.jknack.handlebars.EscapingStrategy: com.github.jknack.handlebars.EscapingStrategy NOOP>;	$r11 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.EscapingStrategy getEscapingStrategy()>();	goto [?= r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.EscapingStrategy escapingStrategy> = $r11];	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.EscapingStrategy escapingStrategy> = $r11;	$r10 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.Formatter$Chain getFormatter()>();	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Formatter$Chain formatter> = $r10;	$i0 = interfaceinvoke r7.<java.util.List: int size()>();	if $i0 != 0 goto $z1 = 0;	$z1 = 0;	r0.<com.github.jknack.handlebars.internal.Variable: boolean noArg> = $z1;	virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: void postInit()>();	return
;block_num 5