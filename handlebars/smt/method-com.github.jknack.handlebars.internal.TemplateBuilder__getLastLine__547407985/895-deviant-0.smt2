(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var321 0)
(declare-sort var3543 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3473_lastIndexOfAny/2108165634 (String (Array Int String)) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var321 var321)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1055 var321) ; Statement: r3 := @this: com.github.jknack.handlebars.internal.TemplateBuilder 
(assert (not (= var1055 null-var321)))
(declare-const var161 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var161 null-String)))
(define-const var2112 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.CharSequence)[2] 
(declare-const var2112!1 (Array Int String))
(assert (not (= var2112!1 null-__Array__Int__String__)))
(assert (= (select var2112!1 0) (cast-from-String-to-String "\r"))) ; Statement: $r1[0] = "\r" 
(declare-const var2112!2 (Array Int String))
(assert (not (= var2112!2 null-__Array__Int__String__)))
(assert (= (select var2112!2 1) (cast-from-String-to-String "\n"))) ; Statement: $r1[1] = "\n" 
(define-const var1904 Int (var3473_lastIndexOfAny/2108165634 (cast-from-String-to-String var161) var2112!2)) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int lastIndexOfAny(java.lang.CharSequence,java.lang.CharSequence[])>(r0, $r1) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (>= var1904 0)) ; Cond: i0 >= 0 
(define-const var905 Int (+ var1904 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= var905 0) (>= (str.len var161) var905)))))
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.CharSequence[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3473_lastIndexOfAny/2108165634=([java.lang.CharSequence, java.lang.CharSequence[]], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var321=com.github.jknack.handlebars.internal.TemplateBuilder, var1055=r3, var161=r0, var3543=null_type, var2112=$r1, var3473=org.apache.commons.lang3.StringUtils, var1904=i0, var905=$i1, var1231=$r2}
; {com.github.jknack.handlebars.internal.TemplateBuilder=var321, r3=var1055, r0=var161, null_type=var3543, $r1=var2112, org.apache.commons.lang3.StringUtils=var3473, i0=var1904, $i1=var905, $r2=var1231}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.internal.TemplateBuilder;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.CharSequence)[2];	$r1[0] = "\r";	$r1[1] = "\n";	i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int lastIndexOfAny(java.lang.CharSequence,java.lang.CharSequence[])>(r0, $r1);	if i0 >= 0 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	return $r2
;block_num 2