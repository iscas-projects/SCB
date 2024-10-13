(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3701 0)
(declare-sort var134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var134_appendEscapedMultibyteChars/351194105 (String String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var861 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var861 null-String)))
(define-const var1349 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1349)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1349!1 String)
(assert (= var1349!1 ""))
;(assert (var134_appendEscapedMultibyteChars/351194105 var861 var1349!1)) ; Statement: staticinvoke <org.hibernate.hql.internal.ast.util.ASTPrinter: void appendEscapedMultibyteChars(java.lang.String,java.lang.StringBuilder)>(r1, $r0) 

(declare-const var861!1 String)
(declare-const var1349!2 String)
(assert true)
(define-const var1498 String (toString/-2075883882 var1349!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var134_appendEscapedMultibyteChars/351194105=([java.lang.String, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var861=r1, var3701=null_type, var1349=$r0, var134=org.hibernate.hql.internal.ast.util.ASTPrinter, var1498=$r2}
; {r1=var861, null_type=var3701, $r0=var1349, org.hibernate.hql.internal.ast.util.ASTPrinter=var134, $r2=var1498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.hibernate.hql.internal.ast.util.ASTPrinter: void appendEscapedMultibyteChars(java.lang.String,java.lang.StringBuilder)>(r1, $r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1