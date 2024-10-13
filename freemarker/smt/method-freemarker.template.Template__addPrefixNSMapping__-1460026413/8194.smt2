(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var600 0)
(declare-sort var903 0)
(declare-sort var2079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2079-init () var2079)
(declare-fun <init>/875830710 (var2079 String) void)
(declare-const null-var600 var600)
(declare-const null-String String)
(declare-const var1264 var600) ; Statement: r2 := @this: freemarker.template.Template 
(assert (not (= var1264 null-var600)))
(declare-const var2405 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2405 null-String)))
(declare-const var3835 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3835 null-String)))
(assert true)
(define-const var1151 Int (length/-134980193 var3835)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= var1151 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2201 var2079 var2079-init) ; Statement: $r26 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2201 "Cannot map empty string URI")) ; Statement: specialinvoke $r26.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Cannot map empty string URI") 

(declare-const var2201!1 var2079)
(declare-const var1324 String)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2079-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var600=freemarker.template.Template, var1264=r2, var2405=r1, var903=null_type, var3835=r0, var1151=$i0, var2079=java.lang.IllegalArgumentException, var2201=$r26, var1324="Cannot map empty string URI"}
; {freemarker.template.Template=var600, r2=var1264, r1=var2405, null_type=var903, r0=var3835, $i0=var1151, java.lang.IllegalArgumentException=var2079, $r26=var2201, "Cannot map empty string URI"=var1324}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: freemarker.template.Template;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$r26 = new java.lang.IllegalArgumentException;	specialinvoke $r26.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Cannot map empty string URI");	throw $r26
;block_num 2