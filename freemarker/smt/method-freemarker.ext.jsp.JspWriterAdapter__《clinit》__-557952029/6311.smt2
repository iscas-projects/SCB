(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3786_getSystemProperty/1520031166 (String String) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-const var677 String (var3786_getSystemProperty/1520031166 "line.separator" "\n")) ; Statement: $r0 = staticinvoke <freemarker.template.utility.SecurityUtilities: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("line.separator", "\n") 
(assert true)
(define-const var2386 (Array Int Int) (toCharArray/415275702 var677)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var327 (Array Int Int) var2386) ; Statement: <freemarker.ext.jsp.JspWriterAdapter: char[] NEWLINE> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3786_getSystemProperty/1520031166=([java.lang.String, java.lang.String], java.lang.String), toCharArray/415275702=([java.lang.String], char[])}
; {var3786=freemarker.template.utility.SecurityUtilities, var677=$r0, var2386=$r1, var327=<freemarker.ext.jsp.JspWriterAdapter: char[] NEWLINE>}
; {freemarker.template.utility.SecurityUtilities=var3786, $r0=var677, $r1=var2386, <freemarker.ext.jsp.JspWriterAdapter: char[] NEWLINE>=var327}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = staticinvoke <freemarker.template.utility.SecurityUtilities: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("line.separator", "\n");	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<freemarker.ext.jsp.JspWriterAdapter: char[] NEWLINE> = $r1;	return
;block_num 1