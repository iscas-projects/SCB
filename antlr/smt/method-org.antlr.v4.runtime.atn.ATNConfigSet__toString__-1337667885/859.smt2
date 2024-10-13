(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var93 0)
(declare-sort var1715 0)
(declare-sort var117 0)
(declare-sort var1545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elements/951437857 (var93) var1715)
(declare-fun toString/-522406933 (var117) String)
(declare-fun cast-from-var1715-to-var117 (var1715) var117)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun hasSemanticContext/-1264095885 (var93) Bool)
(declare-fun uniqueAlt/-1264095885 (var93) Int)
(declare-fun conflictingAlts/-1264095885 (var93) var1545)
(declare-fun dipsIntoOuterContext/-1264095885 (var93) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var93 var93)
(declare-const null-var1545 var1545)
(declare-const var988 var93) ; Statement: r1 := @this: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var988 null-var93)))
(define-const var960 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var960)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var960!1 String)
(assert (= var960!1 ""))
(assert true)
(define-const var3536 var1715 (elements/951437857 var988)) ; Statement: $r2 = virtualinvoke r1.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.List elements()>() 
(assert true)
(define-const var199 String (toString/-522406933 (cast-from-var1715-to-var117 var3536))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var960!1 var199)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var960!2 String)
(assert (= var960!2 (str.++ var960!1 var199)))
(define-const var3902 Bool (hasSemanticContext/-1264095885 var988)) ; Statement: $z0 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: boolean hasSemanticContext> 
 ; Statement: if $z0 == 0 goto $i0 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: int uniqueAlt> 
(assert (= (ite var3902 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3121 Int (uniqueAlt/-1264095885 var988)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: int uniqueAlt> 
 ; Statement: if $i0 == 0 goto $r4 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.BitSet conflictingAlts> 
(assert (= var3121 0)) ; Cond: $i0 == 0 
(define-const var3327 var1545 (conflictingAlts/-1264095885 var988)) ; Statement: $r4 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.BitSet conflictingAlts> 
 ; Statement: if $r4 == null goto $z1 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: boolean dipsIntoOuterContext> 
(assert (= var3327 null-var1545)) ; Cond: $r4 == null 
(define-const var946 Bool (dipsIntoOuterContext/-1264095885 var988)) ; Statement: $z1 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: boolean dipsIntoOuterContext> 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var946 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1326 String (toString/-2075883882 var960!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elements/951437857=([org.antlr.v4.runtime.atn.ATNConfigSet], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1715-to-var117=([java.util.List], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), hasSemanticContext/-1264095885=([org.antlr.v4.runtime.atn.ATNConfigSet], boolean), uniqueAlt/-1264095885=([org.antlr.v4.runtime.atn.ATNConfigSet], int), conflictingAlts/-1264095885=([org.antlr.v4.runtime.atn.ATNConfigSet], java.util.BitSet), dipsIntoOuterContext/-1264095885=([org.antlr.v4.runtime.atn.ATNConfigSet], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var93=org.antlr.v4.runtime.atn.ATNConfigSet, var988=r1, var960=$r0, var1715=java.util.List, var3536=$r2, var117=java.lang.Object, var199=$r3, var3902=$z0, var3121=$i0, var1545=java.util.BitSet, var3327=$r4, var946=$z1, var1326=$r5}
; {org.antlr.v4.runtime.atn.ATNConfigSet=var93, r1=var988, $r0=var960, java.util.List=var1715, $r2=var3536, java.lang.Object=var117, $r3=var199, $z0=var3902, $i0=var3121, java.util.BitSet=var1545, $r4=var3327, $z1=var946, $r5=var1326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.atn.ATNConfigSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.List elements()>();	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$z0 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: boolean hasSemanticContext>;	if $z0 == 0 goto $i0 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: int uniqueAlt>;	$i0 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: int uniqueAlt>;	if $i0 == 0 goto $r4 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.BitSet conflictingAlts>;	$r4 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: java.util.BitSet conflictingAlts>;	if $r4 == null goto $z1 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: boolean dipsIntoOuterContext>;	$z1 = r1.<org.antlr.v4.runtime.atn.ATNConfigSet: boolean dipsIntoOuterContext>;	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5