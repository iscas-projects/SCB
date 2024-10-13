(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3625 0)
(declare-sort var1968 0)
(declare-sort var2062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1968_unescapeLiteralGlobSection/1790071314 (String) String)
(declare-fun var2062_quote/811834350 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3329 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3329 null-String)))
(declare-const var1055 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1055 null-String)))
(declare-const var193 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var193 null-Int)))
(declare-const var43 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var43 null-Int)))
 ; Statement: if i0 != i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
(assert (not (= var193 var43))) ; Cond: i0 != i1 
(assert (and true (and (>= var193 0) (>= (str.len var1055) var43) (>= var43 var193))))
(define-const var643 String (substring/-1240304868 var1055 var193 var43)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
(define-const var264 String (var1968_unescapeLiteralGlobSection/1790071314 var643)) ; Statement: r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String unescapeLiteralGlobSection(java.lang.String)>($r1) 
(define-const var1538 String (var2062_quote/811834350 var264)) ; Statement: $r4 = staticinvoke <java.util.regex.Pattern: java.lang.String quote(java.lang.String)>(r2) 
(assert true)
;(assert (append/672562846 var3329 var1538)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3329!1 String)
(assert (= var3329!1 (str.++ var3329 var1538)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1968_unescapeLiteralGlobSection/1790071314=([java.lang.String], java.lang.String), var2062_quote/811834350=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3329=r3, var1055=r0, var3625=null_type, var193=i0, var43=i1, var643=$r1, var1968=freemarker.template.utility.StringUtil, var264=r2, var2062=java.util.regex.Pattern, var1538=$r4}
; {r3=var3329, r0=var1055, null_type=var3625, i0=var193, i1=var43, $r1=var643, freemarker.template.utility.StringUtil=var1968, r2=var264, java.util.regex.Pattern=var2062, $r4=var1538}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	i1 := @parameter3: int;	if i0 != i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String unescapeLiteralGlobSection(java.lang.String)>($r1);	$r4 = staticinvoke <java.util.regex.Pattern: java.lang.String quote(java.lang.String)>(r2);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	return
;block_num 2