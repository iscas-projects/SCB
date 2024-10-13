(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var556 var556)
(declare-const null-__Array__Int__var556__ (Array Int var556))
(declare-const var423 var556) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var423 null-var556)))
(declare-const var1591 (Array Int var556)) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.CtClass[] 
(assert (not (= var1591 null-__Array__Int__var556__)))
(define-const var2929 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2929)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2929!1 String)
(assert (= var2929!1 ""))
(assert true)
;(assert (append/-1166366385 var2929!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2929!2 String)
(assert (str.prefixof var2929!1 var2929!2))
 ; Statement: if r1 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= var1591 null-__Array__Int__var556__)) ; Cond: r1 == null 
(assert true)
;(assert (append/-1166366385 var2929!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2929!3 String)
(assert (str.prefixof var2929!2 var2929!3))
 ; Statement: if r2 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var423 null-var556)) ; Cond: r2 == null 
(assert true)
(define-const var1931 String (toString/-2075883882 var2929!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var556=org.apache.ibatis.javassist.CtClass, var423=r2, var1591=r1, var2929=$r0, var1931=$r3}
; {org.apache.ibatis.javassist.CtClass=var556, r2=var423, r1=var1591, $r0=var2929, $r3=var1931}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.javassist.CtClass;	r1 := @parameter1: org.apache.ibatis.javassist.CtClass[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	if r1 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	if r2 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3