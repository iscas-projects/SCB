(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2337 0)
(declare-sort var1049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1049_astToClassName/83829456 (String var2337 Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2337 var2337)
(declare-const null-Int Int)
(declare-const var2958 var2337) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTList 
(assert (not (= var2958 null-var2337)))
(declare-const var2809 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2809 null-Int)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var2958 null-var2337))) ; Cond: r0 != null 
(define-const var2059 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2059)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2059!1 String)
(assert (= var2059!1 ""))
;(assert (var1049_astToClassName/83829456 var2059!1 var2958 var2809)) ; Statement: staticinvoke <org.apache.ibatis.javassist.compiler.ast.Declarator: void astToClassName(java.lang.StringBuilder,org.apache.ibatis.javassist.compiler.ast.ASTList,char)>($r1, r0, c0) 

(declare-const var2059!2 String)
(declare-const var2958!1 var2337)
(declare-const var2809!1 Int)
(assert true)
(define-const var48 String (toString/-2075883882 var2059!2)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1049_astToClassName/83829456=([java.lang.StringBuilder, org.apache.ibatis.javassist.compiler.ast.ASTList, char], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2337=org.apache.ibatis.javassist.compiler.ast.ASTList, var2958=r0, var2809=c0, var2059=$r1, var1049=org.apache.ibatis.javassist.compiler.ast.Declarator, var48=$r2}
; {org.apache.ibatis.javassist.compiler.ast.ASTList=var2337, r0=var2958, c0=var2809, $r1=var2059, org.apache.ibatis.javassist.compiler.ast.Declarator=var1049, $r2=var48}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTList;	c0 := @parameter1: char;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.apache.ibatis.javassist.compiler.ast.Declarator: void astToClassName(java.lang.StringBuilder,org.apache.ibatis.javassist.compiler.ast.ASTList,char)>($r1, r0, c0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 2