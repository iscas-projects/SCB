(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2867 0)
(declare-sort var241 0)
(declare-sort var3282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2867 var2867)
(declare-const null-var241 var241)
(declare-const null-String String)
(declare-const var3099 var2867) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter 
(assert (not (= var3099 null-var2867)))
(declare-const var496 var241) ; Statement: r1 := @parameter0: java.io.Writer 
(assert (not (= var496 null-var241)))
(declare-const var2331 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2331 null-String)))
(assert true)
(define-const var3760 Int (length/-134980193 var2331)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1156 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var1457 Int (indexOf/-1209756239 var2331 "]]>")) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("]]>") 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto return 
(assert (>= var1156 var3760)) ; Cond: i4 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2867=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter, var3099=r2, var241=java.io.Writer, var496=r1, var2331=r0, var3282=null_type, var3760=i0, var1156=i4, var1457=i5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter=var2867, r2=var3099, java.io.Writer=var241, r1=var496, r0=var2331, null_type=var3282, i0=var3760, i4=var1156, i5=var1457}
;seq <java.lang.String: int length()>;	<java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter;	r1 := @parameter0: java.io.Writer;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("]]>");	if i4 >= i0 goto return;	return
;block_num 3