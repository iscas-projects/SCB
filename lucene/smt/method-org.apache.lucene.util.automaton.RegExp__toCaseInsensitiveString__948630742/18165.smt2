(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var517 0)
(declare-sort var2932 0)
(declare-sort var3299 0)
(declare-sort var387 0)
(declare-sort var2399 0)
(declare-sort var445 0)
(declare-sort var3219 0)
(declare-sort var3499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2932-init () var2932)
(declare-fun <init>/-325640736 (var2932) void)
(declare-fun s/406973053 (var517) String)
(declare-fun codePoints/1952025435 (String) var3299)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3299_iterator/248004405 (var3299) var387)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var387-to-Iterator (var387) Iterator)
(declare-fun var445_concatenate/416308160 (var3219) var2399)
(declare-fun cast-from-var2932-to-var3219 (var2932) var3219)
(declare-fun var3499_minimize/1168268114 (var2399 Int) var2399)
(declare-const null-var517 var517)
(declare-const null-Int Int)
(declare-const var1261 var517) ; Statement: r1 := @this: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var1261 null-var517)))
(declare-const var3246 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3246 null-Int)))
(define-const var501 var2932 var2932-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var501)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var501!1 var2932)
(define-const var3630 String (s/406973053 var1261)) ; Statement: $r2 = r1.<org.apache.lucene.util.automaton.RegExp: java.lang.String s> 
(assert true)
(define-const var2479 var3299 (codePoints/1952025435 (cast-from-String-to-String var3630))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.util.stream.IntStream codePoints()>() 
(define-const var2026 var387 (var3299_iterator/248004405 var2479)) ; Statement: r4 = interfaceinvoke $r3.<java.util.stream.IntStream: java.util.PrimitiveIterator$OfInt iterator()>() 
(assert true) ; Non Conditional
(define-const var56 Bool (Iterator_hasNext/-1669924200 (cast-from-var387-to-Iterator var2026))) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto r8 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0) 
(assert (= (ite var56 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1218 var2399 (var445_concatenate/416308160 (cast-from-var2932-to-var3219 var501!1))) ; Statement: r8 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0) 
(define-const var1467 var2399 (var3499_minimize/1168268114 var1218 var3246)) ; Statement: r9 = staticinvoke <org.apache.lucene.util.automaton.MinimizationOperations: org.apache.lucene.util.automaton.Automaton minimize(org.apache.lucene.util.automaton.Automaton,int)>(r8, i0) 
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2932-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), s/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), codePoints/1952025435=([java.lang.CharSequence], java.util.stream.IntStream), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3299_iterator/248004405=([java.util.stream.IntStream], java.util.PrimitiveIterator$OfInt), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var387-to-Iterator=([java.util.PrimitiveIterator$OfInt], java.util.Iterator), var445_concatenate/416308160=([java.util.List], org.apache.lucene.util.automaton.Automaton), cast-from-var2932-to-var3219=([java.util.ArrayList], java.util.List), var3499_minimize/1168268114=([org.apache.lucene.util.automaton.Automaton, int], org.apache.lucene.util.automaton.Automaton)}
; {var517=org.apache.lucene.util.automaton.RegExp, var1261=r1, var3246=i0, var2932=java.util.ArrayList, var501=$r0, var3630=$r2, var3299=java.util.stream.IntStream, var2479=$r3, var387=java.util.PrimitiveIterator$OfInt, var2026=r4, var56=$z0, var2399=org.apache.lucene.util.automaton.Automaton, var445=org.apache.lucene.util.automaton.Operations, var3219=java.util.List, var1218=r8, var3499=org.apache.lucene.util.automaton.MinimizationOperations, var1467=r9}
; {org.apache.lucene.util.automaton.RegExp=var517, r1=var1261, i0=var3246, java.util.ArrayList=var2932, $r0=var501, $r2=var3630, java.util.stream.IntStream=var3299, $r3=var2479, java.util.PrimitiveIterator$OfInt=var387, r4=var2026, $z0=var56, org.apache.lucene.util.automaton.Automaton=var2399, org.apache.lucene.util.automaton.Operations=var445, java.util.List=var3219, r8=var1218, org.apache.lucene.util.automaton.MinimizationOperations=var3499, r9=var1467}
;seq <java.lang.CharSequence: java.util.stream.IntStream codePoints()>
;cnt {"<java.lang.CharSequence: java.util.stream.IntStream codePoints()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.RegExp;	i0 := @parameter0: int;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.lucene.util.automaton.RegExp: java.lang.String s>;	$r3 = virtualinvoke $r2.<java.lang.String: java.util.stream.IntStream codePoints()>();	r4 = interfaceinvoke $r3.<java.util.stream.IntStream: java.util.PrimitiveIterator$OfInt iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto r8 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0);	r8 = staticinvoke <org.apache.lucene.util.automaton.Operations: org.apache.lucene.util.automaton.Automaton concatenate(java.util.List)>($r0);	r9 = staticinvoke <org.apache.lucene.util.automaton.MinimizationOperations: org.apache.lucene.util.automaton.Automaton minimize(org.apache.lucene.util.automaton.Automaton,int)>(r8, i0);	return r9
;block_num 3