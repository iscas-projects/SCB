(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3163 0)
(declare-sort var855 0)
(declare-sort var1772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1772-init () var1772)
(declare-fun <init>/875830710 (var1772 String) void)
(declare-const null-var3163 var3163)
(declare-const null-String String)
(declare-const var3272 var3163) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var3272 null-var3163)))
(declare-const var2971 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2971 null-String)))
(assert true)
(define-const var1963 Int (length/-134980193 var2971)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= var1963 0)))) ; Negate: Cond: $i0 != 0  
(define-const var936 var1772 var1772-init) ; Statement: $r32 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var936 "0-length format name")) ; Statement: specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("0-length format name") 

(declare-const var936!1 var1772)
(declare-const var1520 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1772-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3163=freemarker.template.Configuration, var3272=r1, var2971=r0, var855=null_type, var1963=$i0, var1772=java.lang.IllegalArgumentException, var936=$r32, var1520="0-length format name"}
; {freemarker.template.Configuration=var3163, r1=var3272, r0=var2971, null_type=var855, $i0=var1963, java.lang.IllegalArgumentException=var1772, $r32=var936, "0-length format name"=var1520}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r32 = new java.lang.IllegalArgumentException;	specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("0-length format name");	throw $r32
;block_num 2