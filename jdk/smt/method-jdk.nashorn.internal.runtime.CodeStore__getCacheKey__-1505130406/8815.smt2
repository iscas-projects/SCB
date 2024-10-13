(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var928 0)
(declare-sort var3479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var928) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var928 var928)
(declare-const null-__Array__Int__var3479__ (Array Int var3479))
(declare-const var1267 var928) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1267 null-var928)))
(declare-const var439 (Array Int var3479)) ; Statement: r3 := @parameter1: jdk.nashorn.internal.codegen.types.Type[] 
(assert (not (= var439 null-__Array__Int__var3479__)))
(define-const var19 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var19)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var19!1 String)
(assert (= var19!1 ""))
(assert true)
(define-const var2769 String (append/-1031950772 var19!1 var1267)) ; Statement: r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var19!2 String)
(assert (str.prefixof var19!1 var19!2))
 ; Statement: if r3 == null goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var439 null-__Array__Int__var3479__)) ; Cond: r3 == null 
(assert true)
(define-const var853 String (toString/-2075883882 var2769)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var928=java.lang.Object, var1267=r1, var3479=jdk.nashorn.internal.codegen.types.Type, var439=r3, var19=$r0, var2769=r2, var853=$r5}
; {java.lang.Object=var928, r1=var1267, jdk.nashorn.internal.codegen.types.Type=var3479, r3=var439, $r0=var19, r2=var2769, $r5=var853}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r3 := @parameter1: jdk.nashorn.internal.codegen.types.Type[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	if r3 == null goto $r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2