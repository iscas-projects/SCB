(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2137_appendTypes/-1727026421 (String (Array Int ClassObject) Bool) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3061 (Array Int ClassObject)) ; Statement: r2 := @parameter0: java.lang.Class[] 
(assert (not (= var3061 null-__Array__Int__ClassObject__)))
(define-const var2870 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2870)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2870!1 String)
(assert (= var2870!1 ""))
(assert true)
(define-const var487 String (append/-1166366385 var2870!1 91)) ; Statement: r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var2870!2 String)
(assert (str.prefixof var2870!1 var2870!2))
;(assert (var2137_appendTypes/-1727026421 var487 var3061 (ite (= 1 0) true false))) ; Statement: staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: void appendTypes(java.lang.StringBuilder,java.lang.Class[],boolean)>(r1, r2, 0) 

(declare-const var487!1 String)
(declare-const var3061!1 (Array Int ClassObject))
(declare-const var1922 Int)
(assert true)
(define-const var3399 String (append/-1166366385 var487!1 93)) ; Statement: $r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var487!2 String)
(assert (str.prefixof var487!1 var487!2))
(assert true)
(define-const var3165 String (toString/-2075883882 var3399)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2137_appendTypes/-1727026421=([java.lang.StringBuilder, java.lang.Class[], boolean], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3061=r2, var2870=$r0, var487=r1, var2137=jdk.internal.dynalink.beans.OverloadedMethod, var1922=0, var3399=$r3, var3165=$r4}
; {r2=var3061, $r0=var2870, r1=var487, jdk.internal.dynalink.beans.OverloadedMethod=var2137, 0=var1922, $r3=var3399, $r4=var3165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Class[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: void appendTypes(java.lang.StringBuilder,java.lang.Class[],boolean)>(r1, r2, 0);	$r3 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1