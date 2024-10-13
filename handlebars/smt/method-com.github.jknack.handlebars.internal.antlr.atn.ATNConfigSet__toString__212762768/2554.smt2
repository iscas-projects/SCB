(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3092 0)
(declare-sort var1096 0)
(declare-sort var3616 0)
(declare-sort var1064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elements/778749726 (var3092) var1096)
(declare-fun toString/-522406933 (var3616) String)
(declare-fun cast-from-var1096-to-var3616 (var1096) var3616)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hasSemanticContext/-2029523208 (var3092) Bool)
(declare-fun uniqueAlt/-2029523208 (var3092) Int)
(declare-fun conflictingAlts/-2029523208 (var3092) var1064)
(declare-fun dipsIntoOuterContext/-2029523208 (var3092) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3092 var3092)
(declare-const null-var1064 var1064)
(declare-const var2565 var3092) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var2565 null-var3092)))
(define-const var846 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var846)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var846!1 String)
(assert (= var846!1 ""))
(assert true)
(define-const var3107 var1096 (elements/778749726 var2565)) ; Statement: $r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.List elements()>() 
(assert true)
(define-const var3347 String (toString/-522406933 (cast-from-var1096-to-var3616 var3107))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var846!1 var3347)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var846!2 String)
(assert (= var846!2 (str.++ var846!1 var3347)))
(define-const var1898 Bool (hasSemanticContext/-2029523208 var2565)) ; Statement: $z0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: boolean hasSemanticContext> 
 ; Statement: if $z0 == 0 goto $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: int uniqueAlt> 
(assert (= (ite var1898 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1465 Int (uniqueAlt/-2029523208 var2565)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: int uniqueAlt> 
 ; Statement: if $i0 == 0 goto $r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.BitSet conflictingAlts> 
(assert (= var1465 0)) ; Cond: $i0 == 0 
(define-const var947 var1064 (conflictingAlts/-2029523208 var2565)) ; Statement: $r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.BitSet conflictingAlts> 
 ; Statement: if $r4 == null goto $z1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: boolean dipsIntoOuterContext> 
(assert (= var947 null-var1064)) ; Cond: $r4 == null 
(define-const var3560 Bool (dipsIntoOuterContext/-2029523208 var2565)) ; Statement: $z1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: boolean dipsIntoOuterContext> 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3560 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var462 String (toString/-2075883882 var846!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elements/778749726=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1096-to-var3616=([java.util.List], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hasSemanticContext/-2029523208=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], boolean), uniqueAlt/-2029523208=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], int), conflictingAlts/-2029523208=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.util.BitSet), dipsIntoOuterContext/-2029523208=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3092=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var2565=r1, var846=$r0, var1096=java.util.List, var3107=$r2, var3616=java.lang.Object, var3347=$r3, var1898=$z0, var1465=$i0, var1064=java.util.BitSet, var947=$r4, var3560=$z1, var462=$r5}
; {com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var3092, r1=var2565, $r0=var846, java.util.List=var1096, $r2=var3107, java.lang.Object=var3616, $r3=var3347, $z0=var1898, $i0=var1465, java.util.BitSet=var1064, $r4=var947, $z1=var3560, $r5=var462}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.List elements()>();	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: boolean hasSemanticContext>;	if $z0 == 0 goto $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: int uniqueAlt>;	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: int uniqueAlt>;	if $i0 == 0 goto $r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.BitSet conflictingAlts>;	$r4 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: java.util.BitSet conflictingAlts>;	if $r4 == null goto $z1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: boolean dipsIntoOuterContext>;	$z1 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet: boolean dipsIntoOuterContext>;	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5