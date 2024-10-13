(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var320 0)
(declare-sort var449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var449_ftlQuote/1062900396 (String) String)
(declare-const null-String String)
(declare-const var3030 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3030 null-String)))
(define-const var522 Int 0) ; Statement: b2 = 0 
(define-const var3119 Int 0) ; Statement: b6 = 0 
(define-const var2188 Int 0) ; Statement: b5 = 0 
(define-const var83 Int 0) ; Statement: b4 = 0 
(define-const var504 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var723 Int (length/-134980193 var3030)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto (branch) 
(assert (>= var504 var723)) ; Cond: i3 >= $i0 
 ; Statement: lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; } 
(assert (and (= var3119 34) (and (not (= var3119 0)) true))) ; Intersect: Cond: b6 == 34  and Intersect: Negate: Cond: b6 == 0   and Non Conditional  
(define-const var418 String (var449_ftlQuote/1062900396 var3030)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var449_ftlQuote/1062900396=([java.lang.String], java.lang.String)}
; {var3030=r0, var320=null_type, var522=b2, var3119=b6, var2188=b5, var83=b4, var504=i3, var723=$i0, var449=freemarker.template.utility.StringUtil, var418=$r2}
; {r0=var3030, null_type=var320, b2=var522, b6=var3119, b5=var2188, b4=var83, i3=var504, $i0=var723, freemarker.template.utility.StringUtil=var449, $r2=var418}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b2 = 0;	b6 = 0;	b5 = 0;	b4 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto (branch);	lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; };	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);	return $r2
;block_num 4