(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var2214 0)
(declare-sort var972 0)
(declare-sort var2762 0)
(declare-sort var1585 0)
(declare-sort var3684 0)
(declare-sort var1333 0)
(declare-sort var3079 0)
(declare-sort var2197 0)
(declare-sort var91 0)
(declare-sort var1629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2021500432 (var1333 var2214) void)
(declare-fun cast-from-var2299-to-var1333 (var2299) var1333)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun name/553368507 (var2299) String)
(declare-fun parentScopeResolution/1326566435 (var2214) Bool)
(declare-fun var3079_compile/1318237133 (String Bool) var1585)
(declare-fun path/553368507 (var2299) var1585)
(declare-fun type/553368507 (var2299) var2762)
(declare-fun var2299_empty/-1389424036 (var2299) var2197)
(declare-fun emptyVar/553368507 (var2299) var2197)
(declare-fun params/613494813 (var1333 var1585) var1333)
(declare-fun hash/1814668815 (var1333 var3684) var1333)
(declare-fun escapingStrategy/553368507 (var2299) var91)
(declare-fun getFormatter/1101966082 (var2214) var1629)
(declare-fun formatter/553368507 (var2299) var1629)
(declare-fun var1585_size/-959786421 (var1585) Int)
(declare-fun noArg/553368507 (var2299) Bool)
(declare-fun postInit/-922671778 (var2299) void)
(declare-const null-var2299 var2299)
(declare-const null-var2214 var2214)
(declare-const null-String String)
(declare-const null-var2762 var2762)
(declare-const null-var1585 var1585)
(declare-const null-var3684 var3684)
(declare-const var2762-VAR var2762)
(declare-const var91-NOOP var91)
(declare-const var2565 var2299) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Variable 
(assert (not (= var2565 null-var2299)))
(declare-const var825 var2214) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.Handlebars 
(assert (not (= var825 null-var2214)))
(declare-const var1885 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1885 null-String)))
(declare-const var537 var2762) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.TagType 
(assert (not (= var537 null-var2762)))
(declare-const var440 var1585) ; Statement: r7 := @parameter3: java.util.List 
(assert (not (= var440 null-var1585)))
(declare-const var2934 var3684) ; Statement: r8 := @parameter4: java.util.Map 
(assert (not (= var2934 null-var3684)))
(assert true)
;(assert (<init>/-2021500432 (cast-from-var2299-to-var1333 var2565) var825)) ; Statement: specialinvoke r0.<com.github.jknack.handlebars.internal.HelperResolver: void <init>(com.github.jknack.handlebars.Handlebars)>(r1) 

(declare-const var2565!1 var2299)
(declare-const var825!1 var2214)
(assert true)
(define-const var1392 String (trim/-847153721 var1885)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(declare-const var2565!2 var2299)
(assert (not (= var2565!2 null-var2299)))
(assert (= (name/553368507 var2565!2) var1392)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: java.lang.String name> = $r3 
(assert true)
(define-const var275 Bool (parentScopeResolution/1326566435 var825!1)) ; Statement: $z0 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: boolean parentScopeResolution()>() 
(define-const var1804 var1585 (var3079_compile/1318237133 var1885 var275)) ; Statement: $r4 = staticinvoke <com.github.jknack.handlebars.PathCompiler: java.util.List compile(java.lang.String,boolean)>(r2, $z0) 
(declare-const var2565!3 var2299)
(assert (not (= var2565!3 null-var2299)))
(assert (= (path/553368507 var2565!3) var1804)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: java.util.List path> = $r4 
(declare-const var2565!4 var2299)
(assert (not (= var2565!4 null-var2299)))
(assert (= (type/553368507 var2565!4) var537)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.TagType type> = r5 
(define-const var1873 var2197 (var2299_empty/-1389424036 var2565!4)) ; Statement: $r6 = staticinvoke <com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template empty(com.github.jknack.handlebars.internal.Variable)>(r0) 
(declare-const var2565!5 var2299)
(assert (not (= var2565!5 null-var2299)))
(assert (= (emptyVar/553368507 var2565!5) var1873)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template emptyVar> = $r6 
(assert true)
;(assert (params/613494813 (cast-from-var2299-to-var1333 var2565!5) var440)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver params(java.util.List)>(r7) 

(declare-const var2565!6 var2299)
(declare-const var440!1 var1585)
(assert true)
;(assert (hash/1814668815 (cast-from-var2299-to-var1333 var2565!6) var2934)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver hash(java.util.Map)>(r8) 

(declare-const var2565!7 var2299)
(declare-const var2934!1 var3684)
(define-const var2865 var2762 var2762-VAR) ; Statement: $r9 = <com.github.jknack.handlebars.TagType: com.github.jknack.handlebars.TagType VAR> 
 ; Statement: if r5 != $r9 goto $r11 = <com.github.jknack.handlebars.EscapingStrategy: com.github.jknack.handlebars.EscapingStrategy NOOP> 
(assert (not (= var537 var2865))) ; Cond: r5 != $r9 
(define-const var3700 var91 var91-NOOP) ; Statement: $r11 = <com.github.jknack.handlebars.EscapingStrategy: com.github.jknack.handlebars.EscapingStrategy NOOP> 
(assert true) ; Non Conditional
(declare-const var2565!8 var2299)
(assert (not (= var2565!8 null-var2299)))
(assert (= (escapingStrategy/553368507 var2565!8) var3700)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.EscapingStrategy escapingStrategy> = $r11 
(assert true)
(define-const var1140 var1629 (getFormatter/1101966082 var825!1)) ; Statement: $r10 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.Formatter$Chain getFormatter()>() 
(declare-const var2565!9 var2299)
(assert (not (= var2565!9 null-var2299)))
(assert (= (formatter/553368507 var2565!9) var1140)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Formatter$Chain formatter> = $r10 
(define-const var591 Int (var1585_size/-959786421 var440!1)) ; Statement: $i0 = interfaceinvoke r7.<java.util.List: int size()>() 
 ; Statement: if $i0 != 0 goto $z1 = 0 
(assert (not (= var591 0))) ; Cond: $i0 != 0 
(define-const var1105 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(declare-const var2565!10 var2299)
(assert (not (= var2565!10 null-var2299)))
(assert (= (noArg/553368507 var2565!10) var1105)) ; Statement: r0.<com.github.jknack.handlebars.internal.Variable: boolean noArg> = $z1 
(assert true)
;(assert (postInit/-922671778 var2565!10)) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: void postInit()>() 

(declare-const var2565!11 var2299)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2021500432=([com.github.jknack.handlebars.internal.HelperResolver, com.github.jknack.handlebars.Handlebars], void), cast-from-var2299-to-var1333=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.internal.HelperResolver), trim/-847153721=([java.lang.String], java.lang.String), name/553368507=([com.github.jknack.handlebars.internal.Variable], java.lang.String), parentScopeResolution/1326566435=([com.github.jknack.handlebars.Handlebars], boolean), var3079_compile/1318237133=([java.lang.String, boolean], java.util.List), path/553368507=([com.github.jknack.handlebars.internal.Variable], java.util.List), type/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.TagType), var2299_empty/-1389424036=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.Template), emptyVar/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.Template), params/613494813=([com.github.jknack.handlebars.internal.HelperResolver, java.util.List], com.github.jknack.handlebars.internal.HelperResolver), hash/1814668815=([com.github.jknack.handlebars.internal.HelperResolver, java.util.Map], com.github.jknack.handlebars.internal.HelperResolver), escapingStrategy/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.EscapingStrategy), getFormatter/1101966082=([com.github.jknack.handlebars.Handlebars], com.github.jknack.handlebars.Formatter$Chain), formatter/553368507=([com.github.jknack.handlebars.internal.Variable], com.github.jknack.handlebars.Formatter$Chain), var1585_size/-959786421=([java.util.List], int), noArg/553368507=([com.github.jknack.handlebars.internal.Variable], boolean), postInit/-922671778=([com.github.jknack.handlebars.internal.Variable], void)}
; {var2299=com.github.jknack.handlebars.internal.Variable, var2565=r0, var2214=com.github.jknack.handlebars.Handlebars, var825=r1, var1885=r2, var972=null_type, var2762=com.github.jknack.handlebars.TagType, var537=r5, var1585=java.util.List, var440=r7, var3684=java.util.Map, var2934=r8, var1333=com.github.jknack.handlebars.internal.HelperResolver, var1392=$r3, var275=$z0, var3079=com.github.jknack.handlebars.PathCompiler, var1804=$r4, var2197=com.github.jknack.handlebars.Template, var1873=$r6, var2865=$r9, var91=com.github.jknack.handlebars.EscapingStrategy, var3700=$r11, var1629=com.github.jknack.handlebars.Formatter$Chain, var1140=$r10, var591=$i0, var1105=$z1}
; {com.github.jknack.handlebars.internal.Variable=var2299, r0=var2565, com.github.jknack.handlebars.Handlebars=var2214, r1=var825, r2=var1885, null_type=var972, com.github.jknack.handlebars.TagType=var2762, r5=var537, java.util.List=var1585, r7=var440, java.util.Map=var3684, r8=var2934, com.github.jknack.handlebars.internal.HelperResolver=var1333, $r3=var1392, $z0=var275, com.github.jknack.handlebars.PathCompiler=var3079, $r4=var1804, com.github.jknack.handlebars.Template=var2197, $r6=var1873, $r9=var2865, com.github.jknack.handlebars.EscapingStrategy=var91, $r11=var3700, com.github.jknack.handlebars.Formatter$Chain=var1629, $r10=var1140, $i0=var591, $z1=var1105}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Variable;	r1 := @parameter0: com.github.jknack.handlebars.Handlebars;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: com.github.jknack.handlebars.TagType;	r7 := @parameter3: java.util.List;	r8 := @parameter4: java.util.Map;	specialinvoke r0.<com.github.jknack.handlebars.internal.HelperResolver: void <init>(com.github.jknack.handlebars.Handlebars)>(r1);	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	r0.<com.github.jknack.handlebars.internal.Variable: java.lang.String name> = $r3;	$z0 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: boolean parentScopeResolution()>();	$r4 = staticinvoke <com.github.jknack.handlebars.PathCompiler: java.util.List compile(java.lang.String,boolean)>(r2, $z0);	r0.<com.github.jknack.handlebars.internal.Variable: java.util.List path> = $r4;	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.TagType type> = r5;	$r6 = staticinvoke <com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template empty(com.github.jknack.handlebars.internal.Variable)>(r0);	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Template emptyVar> = $r6;	virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver params(java.util.List)>(r7);	virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.internal.HelperResolver hash(java.util.Map)>(r8);	$r9 = <com.github.jknack.handlebars.TagType: com.github.jknack.handlebars.TagType VAR>;	if r5 != $r9 goto $r11 = <com.github.jknack.handlebars.EscapingStrategy: com.github.jknack.handlebars.EscapingStrategy NOOP>;	$r11 = <com.github.jknack.handlebars.EscapingStrategy: com.github.jknack.handlebars.EscapingStrategy NOOP>;	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.EscapingStrategy escapingStrategy> = $r11;	$r10 = virtualinvoke r1.<com.github.jknack.handlebars.Handlebars: com.github.jknack.handlebars.Formatter$Chain getFormatter()>();	r0.<com.github.jknack.handlebars.internal.Variable: com.github.jknack.handlebars.Formatter$Chain formatter> = $r10;	$i0 = interfaceinvoke r7.<java.util.List: int size()>();	if $i0 != 0 goto $z1 = 0;	$z1 = 0;	r0.<com.github.jknack.handlebars.internal.Variable: boolean noArg> = $z1;	virtualinvoke r0.<com.github.jknack.handlebars.internal.Variable: void postInit()>();	return
;block_num 5