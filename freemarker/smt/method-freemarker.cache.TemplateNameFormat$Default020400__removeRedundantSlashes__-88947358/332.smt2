(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var803 0)
(declare-sort var1194 0)
(declare-sort var2427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2427_replace/400718214 (String String String) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var803 var803)
(declare-const null-String String)
(declare-const var755 var803) ; Statement: r2 := @this: freemarker.cache.TemplateNameFormat$Default020400 
(assert (not (= var755 null-var803)))
(declare-const var513 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var513 null-String)))
(assert true) ; Non Conditional
(define-const var3652 String var513) ; Statement: r0 = r3 
(define-const var3009 String (var2427_replace/400718214 var513 "//" "/")) ; Statement: $r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String)>(r3, "//", "/") 
(define-const var513!1 String var3009) ; Statement: r3 = $r1 
 ; Statement: if r0 != $r1 goto r0 = r3 
(assert (not (not (= var3652 var3009)))) ; Negate: Cond: r0 != $r1  
(assert true)
(define-const var3762 Bool (startsWith/-1785782452 var3009 "/")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r4 = $r1 
(assert (= (ite var3762 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1126 String var3009) ; Statement: $r4 = $r1 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2427_replace/400718214=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var803=freemarker.cache.TemplateNameFormat$Default020400, var755=r2, var513=r3, var1194=null_type, var3652=r0, var2427=freemarker.template.utility.StringUtil, var3009=$r1, var3762=$z0, var1126=$r4}
; {freemarker.cache.TemplateNameFormat$Default020400=var803, r2=var755, r3=var513, null_type=var1194, r0=var3652, freemarker.template.utility.StringUtil=var2427, $r1=var3009, $z0=var3762, $r4=var1126}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: freemarker.cache.TemplateNameFormat$Default020400;	r3 := @parameter0: java.lang.String;	r0 = r3;	$r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String)>(r3, "//", "/");	r3 = $r1;	if r0 != $r1 goto r0 = r3;	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r4 = $r1;	$r4 = $r1;	return $r4
;block_num 5