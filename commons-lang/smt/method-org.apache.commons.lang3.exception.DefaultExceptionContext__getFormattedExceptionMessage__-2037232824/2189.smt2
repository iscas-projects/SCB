(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2962 0)
(declare-sort var2590 0)
(declare-sort var1928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun contextValues/636685309 (var2962) var1928)
(declare-fun var1928_isEmpty/-153543822 (var1928) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2962 var2962)
(declare-const null-String String)
(declare-const var1829 var2962) ; Statement: r2 := @this: org.apache.commons.lang3.exception.DefaultExceptionContext 
(assert (not (= var1829 null-var2962)))
(declare-const var600 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var600 null-String)))
(define-const var1576 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1576 256)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(256) 

(declare-const var1576!1 String)
(declare-const var1881 Int)
 ; Statement: if r1 == null goto $r3 = r2.<org.apache.commons.lang3.exception.DefaultExceptionContext: java.util.List contextValues> 
(assert (= var600 null-String)) ; Cond: r1 == null 
(define-const var3650 var1928 (contextValues/636685309 var1829)) ; Statement: $r3 = r2.<org.apache.commons.lang3.exception.DefaultExceptionContext: java.util.List contextValues> 
(define-const var2193 Bool (var1928_isEmpty/-153543822 var3650)) ; Statement: $z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2193 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1818 String (toString/-2075883882 var1576!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), contextValues/636685309=([org.apache.commons.lang3.exception.DefaultExceptionContext], java.util.List), var1928_isEmpty/-153543822=([java.util.List], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2962=org.apache.commons.lang3.exception.DefaultExceptionContext, var1829=r2, var600=r1, var2590=null_type, var1576=$r0, var1881=256, var1928=java.util.List, var3650=$r3, var2193=$z0, var1818=$r4}
; {org.apache.commons.lang3.exception.DefaultExceptionContext=var2962, r2=var1829, r1=var600, null_type=var2590, $r0=var1576, 256=var1881, java.util.List=var1928, $r3=var3650, $z0=var2193, $r4=var1818}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.commons.lang3.exception.DefaultExceptionContext;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(256);	if r1 == null goto $r3 = r2.<org.apache.commons.lang3.exception.DefaultExceptionContext: java.util.List contextValues>;	$r3 = r2.<org.apache.commons.lang3.exception.DefaultExceptionContext: java.util.List contextValues>;	$z0 = interfaceinvoke $r3.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3