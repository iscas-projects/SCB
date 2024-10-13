(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort var3630 0)
(declare-sort var2652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2652_replace/400718214 (String String String) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1396 var1396)
(declare-const null-String String)
(declare-const var3829 var1396) ; Statement: r2 := @this: freemarker.cache.TemplateNameFormat$Default020400 
(assert (not (= var3829 null-var1396)))
(declare-const var639 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var639 null-String)))
(assert true) ; Non Conditional
(define-const var1767 String var639) ; Statement: r0 = r3 
(define-const var1909 String (var2652_replace/400718214 var639 "//" "/")) ; Statement: $r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String)>(r3, "//", "/") 
(define-const var639!1 String var1909) ; Statement: r3 = $r1 
 ; Statement: if r0 != $r1 goto r0 = r3 
(assert (not (not (= var1767 var1909)))) ; Negate: Cond: r0 != $r1  
(assert true)
(define-const var2024 Bool (startsWith/-1785782452 var1909 "/")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r4 = $r1 
(assert (not (= (ite var2024 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (and true (and (>= 1 0) (>= (str.len var1909) 1))))
(define-const var3293 String (substring/850833817 var1909 1)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2652_replace/400718214=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1396=freemarker.cache.TemplateNameFormat$Default020400, var3829=r2, var639=r3, var3630=null_type, var1767=r0, var2652=freemarker.template.utility.StringUtil, var1909=$r1, var2024=$z0, var3293=$r4}
; {freemarker.cache.TemplateNameFormat$Default020400=var1396, r2=var3829, r3=var639, null_type=var3630, r0=var1767, freemarker.template.utility.StringUtil=var2652, $r1=var1909, $z0=var2024, $r4=var3293}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: freemarker.cache.TemplateNameFormat$Default020400;	r3 := @parameter0: java.lang.String;	r0 = r3;	$r1 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String replace(java.lang.String,java.lang.String,java.lang.String)>(r3, "//", "/");	r3 = $r1;	if r0 != $r1 goto r0 = r3;	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r4 = $r1;	$r4 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>(1);	goto [?= return $r4];	return $r4
;block_num 5