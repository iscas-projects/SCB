(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1037 0)
(declare-sort var677 0)
(declare-sort var2068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1037 var1037)
(declare-const null-String String)
(declare-const null-var2068 var2068)
(declare-const var552 var1037) ; Statement: r1 := @this: com.google.javascript.jscomp.XtbMessageBundle$Handler 
(assert (not (= var552 null-var1037)))
(declare-const var3983 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var3983 null-String)))
(declare-const var3522 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var3522 null-String)))
(declare-const var3507 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3507 null-String)))
(declare-const var2599 var2068) ; Statement: r3 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2599 null-var2068)))
(define-const var968 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var139 Int (hashCode/-467973558 var3507)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1840647503: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("translation");     case -593847693: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("translationbundle");     case 3576: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ph");     default: goto tableswitch(b1) {     case 0: goto $r8 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: java.lang.String lang>;     case 1: goto $r6 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     case 2: goto $r2 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     default: goto return; }; } 
(assert (and (not (= var139 3576)) (and (not (= var139 (- 593847693))) (and (not (= var139 (- 1840647503))) true)))) ; Intersect: Negate: Cond: $i0 == 3576   and Intersect: Negate: Cond: $i0 == -593847693   and Intersect: Negate: Cond: $i0 == -1840647503   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r8 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: java.lang.String lang>;     case 1: goto $r6 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     case 2: goto $r2 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     default: goto return; } 
(assert (and (not (= var968 2)) (and (not (= var968 1)) (and (not (= var968 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var1037=com.google.javascript.jscomp.XtbMessageBundle$Handler, var552=r1, var3983=r12, var677=null_type, var3522=r13, var3507=r0, var2068=org.xml.sax.Attributes, var2599=r3, var968=b1, var139=$i0}
; {com.google.javascript.jscomp.XtbMessageBundle$Handler=var1037, r1=var552, r12=var3983, null_type=var677, r13=var3522, r0=var3507, org.xml.sax.Attributes=var2068, r3=var2599, b1=var968, $i0=var139}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.XtbMessageBundle$Handler;	r12 := @parameter0: java.lang.String;	r13 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r3 := @parameter3: org.xml.sax.Attributes;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1840647503: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("translation");     case -593847693: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("translationbundle");     case 3576: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ph");     default: goto tableswitch(b1) {     case 0: goto $r8 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: java.lang.String lang>;     case 1: goto $r6 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     case 2: goto $r2 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     default: goto return; }; };	tableswitch(b1) {     case 0: goto $r8 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: java.lang.String lang>;     case 1: goto $r6 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     case 2: goto $r2 = r1.<com.google.javascript.jscomp.XtbMessageBundle$Handler: com.google.javascript.jscomp.JsMessage$Builder msgBuilder>;     default: goto return; };	return
;block_num 3