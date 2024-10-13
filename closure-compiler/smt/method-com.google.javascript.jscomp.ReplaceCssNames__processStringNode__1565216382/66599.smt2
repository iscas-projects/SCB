(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3856 0)
(declare-sort var1609 0)
(declare-sort var3236 0)
(declare-sort var2753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var1609) String)
(declare-fun skiplist/1187477660 (var3856) var3236)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun symbolMap/1187477660 (var3856) var2753)
(declare-const null-var3856 var3856)
(declare-const null-var1609 var1609)
(declare-const null-var3236 var3236)
(declare-const null-var2753 var2753)
(declare-const var1426 var3856) ; Statement: r2 := @this: com.google.javascript.jscomp.ReplaceCssNames 
(assert (not (= var1426 null-var3856)))
(declare-const var250 var1609) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var250 null-var1609)))
(assert true)
(define-const var3386 String (getString/-897720134 var250)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var2929 var3236 (skiplist/1187477660 var1426)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.ReplaceCssNames: java.util.Set skiplist> 
 ; Statement: if $r3 == null goto $r24 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("-") 
(assert (= var2929 null-var3236)) ; Cond: $r3 == null 
(assert true)
(define-const var1120 (Array Int String) (split/-636890950 var3386 "-")) ; Statement: $r24 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("-") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3386 "-") i) (re.++ (re.* re.all) (str.to_re "-") (re.* re.all))))))
(define-const var300 var2753 (symbolMap/1187477660 var1426)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.CssRenamingMap symbolMap> 
 ; Statement: if $r4 == null goto return 
(assert (= var300 null-var2753)) ; Cond: $r4 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), skiplist/1187477660=([com.google.javascript.jscomp.ReplaceCssNames], java.util.Set), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), symbolMap/1187477660=([com.google.javascript.jscomp.ReplaceCssNames], com.google.javascript.jscomp.CssRenamingMap)}
; {var3856=com.google.javascript.jscomp.ReplaceCssNames, var1426=r2, var1609=com.google.javascript.rhino.Node, var250=r0, var3386=r1, var3236=java.util.Set, var2929=$r3, var1120=$r24, var2753=com.google.javascript.jscomp.CssRenamingMap, var300=$r4}
; {com.google.javascript.jscomp.ReplaceCssNames=var3856, r2=var1426, com.google.javascript.rhino.Node=var1609, r0=var250, r1=var3386, java.util.Set=var3236, $r3=var2929, $r24=var1120, com.google.javascript.jscomp.CssRenamingMap=var2753, $r4=var300}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ReplaceCssNames;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r3 = r2.<com.google.javascript.jscomp.ReplaceCssNames: java.util.Set skiplist>;	if $r3 == null goto $r24 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("-");	$r24 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>("-");	$r4 = r2.<com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.CssRenamingMap symbolMap>;	if $r4 == null goto return;	return
;block_num 3