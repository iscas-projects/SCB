(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1509 0)
(declare-sort var3651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun values/-1079057620 (var1509) (Array Int var3651))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1509 var1509)
(declare-const null-__Array__Int__var3651__ (Array Int var3651))
(declare-const var3248 var1509) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue 
(assert (not (= var3248 null-var1509)))
(define-const var3090 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3090)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3090!1 String)
(assert (= var3090!1 ""))
(assert true)
;(assert (append/-1166366385 var3090!1 123)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var3090!2 String)
(assert (str.prefixof var3090!1 var3090!2))
(define-const var1187 (Array Int var3651) (values/-1079057620 var3248)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.'annotation'.ArrayMemberValue: org.apache.ibatis.javassist.bytecode.'annotation'.MemberValue[] values> 
 ; Statement: if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= var1187 null-__Array__Int__var3651__)) ; Cond: $r2 == null 
(assert true)
;(assert (append/-1166366385 var3090!2 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3090!3 String)
(assert (str.prefixof var3090!2 var3090!3))
(assert true)
(define-const var3751 String (toString/-2075883882 var3090!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), values/-1079057620=([org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue], org.apache.ibatis.javassist.bytecode.annotation.MemberValue[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1509=org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue, var3248=r1, var3090=$r0, var3651=org.apache.ibatis.javassist.bytecode.annotation.MemberValue, var1187=$r2, var3751=$r3}
; {org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue=var1509, r1=var3248, $r0=var3090, org.apache.ibatis.javassist.bytecode.annotation.MemberValue=var3651, $r2=var1187, $r3=var3751}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	$r2 = r1.<org.apache.ibatis.javassist.bytecode.'annotation'.ArrayMemberValue: org.apache.ibatis.javassist.bytecode.'annotation'.MemberValue[] values>;	if $r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2