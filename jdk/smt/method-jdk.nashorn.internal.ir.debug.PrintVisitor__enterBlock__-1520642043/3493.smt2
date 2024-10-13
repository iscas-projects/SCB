(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3537 0)
(declare-sort var353 0)
(declare-sort var169 0)
(declare-sort var2596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/709861400 (var3537) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun indent/709861400 (var3537) Int)
(declare-fun getStatements/-769893494 (var353) var169)
(declare-fun var169_iterator/-912451715 (var169) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun EOLN/709861400 (var3537) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun indent/-656645729 (var3537) void)
(declare-fun printLocalVariableConversion/1292819794 (var3537 var2596) void)
(declare-fun cast-from-var353-to-var2596 (var353) var2596)
(declare-const null-var3537 var3537)
(declare-const null-var353 var353)
(declare-const var362 var3537) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var362 null-var3537)))
(declare-const var3005 var353) ; Statement: r3 := @parameter0: jdk.nashorn.internal.ir.Block 
(assert (not (= var3005 null-var353)))
(define-const var864 String (sb/709861400 var362)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/-1166366385 var864 32)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var864!1 String)
(assert (str.prefixof var864 var864!1))
(define-const var2468 String (sb/709861400 var362)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/-1166366385 var2468 123)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var2468!1 String)
(assert (str.prefixof var2468 var2468!1))
(define-const var1788 Int (indent/709861400 var362)) ; Statement: $i0 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> 
(define-const var3733 Int (+ var1788 4)) ; Statement: $i1 = $i0 + 4 
(declare-const var362!1 var3537)
(assert (not (= var362!1 null-var3537)))
(assert (= (indent/709861400 var362!1) var3733)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i1 
(assert true)
(define-const var1688 var169 (getStatements/-769893494 var3005)) ; Statement: r4 = virtualinvoke r3.<jdk.nashorn.internal.ir.Block: java.util.List getStatements()>() 
(define-const var3221 Iterator (var169_iterator/-912451715 var1688)) ; Statement: r5 = interfaceinvoke r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var803 Bool (Iterator_hasNext/-1669924200 var3221)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $i2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> 
(assert (= (ite var803 1 0) 0)) ; Cond: $z0 == 0 
(define-const var849 Int (indent/709861400 var362!1)) ; Statement: $i2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> 
(define-const var3520 Int (- var849 4)) ; Statement: $i3 = $i2 - 4 
(declare-const var362!2 var3537)
(assert (not (= var362!2 null-var3537)))
(assert (= (indent/709861400 var362!2) var3520)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i3 
(define-const var1811 String (sb/709861400 var362!2)) ; Statement: $r7 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var935 String (EOLN/709861400 var362!2)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN> 
(assert true)
;(assert (append/672562846 var1811 var935)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1811!1 String)
(assert (= var1811!1 (str.++ var1811 var935)))
(assert true)
;(assert (indent/-656645729 var362!2)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>() 

(declare-const var362!3 var3537)
(define-const var3220 String (sb/709861400 var362!3)) ; Statement: $r8 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/-1166366385 var3220 125)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3220!1 String)
(assert (str.prefixof var3220 var3220!1))
(assert true)
;(assert (printLocalVariableConversion/1292819794 var362!3 (cast-from-var353-to-var2596 var3005))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>(r3) 

(declare-const var362!4 var3537)
(declare-const var3005!1 var353)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), indent/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], int), getStatements/-769893494=([jdk.nashorn.internal.ir.Block], java.util.List), var169_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), EOLN/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), indent/-656645729=([jdk.nashorn.internal.ir.debug.PrintVisitor], void), printLocalVariableConversion/1292819794=([jdk.nashorn.internal.ir.debug.PrintVisitor, jdk.nashorn.internal.ir.JoinPredecessor], void), cast-from-var353-to-var2596=([jdk.nashorn.internal.ir.Block], jdk.nashorn.internal.ir.JoinPredecessor)}
; {var3537=jdk.nashorn.internal.ir.debug.PrintVisitor, var362=r0, var353=jdk.nashorn.internal.ir.Block, var3005=r3, var864=$r1, var2468=$r2, var1788=$i0, var3733=$i1, var169=java.util.List, var1688=r4, var3221=r5, var803=$z0, var849=$i2, var3520=$i3, var1811=$r7, var935=$r6, var3220=$r8, var2596=jdk.nashorn.internal.ir.JoinPredecessor}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var3537, r0=var362, jdk.nashorn.internal.ir.Block=var353, r3=var3005, $r1=var864, $r2=var2468, $i0=var1788, $i1=var3733, java.util.List=var169, r4=var1688, r5=var3221, $z0=var803, $i2=var849, $i3=var3520, $r7=var1811, $r6=var935, $r8=var3220, jdk.nashorn.internal.ir.JoinPredecessor=var2596}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r3 := @parameter0: jdk.nashorn.internal.ir.Block;	$r1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	$i0 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent>;	$i1 = $i0 + 4;	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i1;	r4 = virtualinvoke r3.<jdk.nashorn.internal.ir.Block: java.util.List getStatements()>();	r5 = interfaceinvoke r4.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $i2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent>;	$i2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent>;	$i3 = $i2 - 4;	r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: int indent> = $i3;	$r7 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r6 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN>;	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>();	$r8 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>(r3);	return 0
;block_num 3