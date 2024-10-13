(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2525 0)
(declare-sort var915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toClassName/-811684282 (var2525 var915 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2525 var2525)
(declare-const null-var915 var915)
(declare-const var647 var2525) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.Parser 
(assert (not (= var647 null-var2525)))
(declare-const var1337 var915) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var1337 null-var915)))
(define-const var2033 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2033)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2033!1 String)
(assert (= var2033!1 ""))
(assert true)
;(assert (toClassName/-811684282 var647 var1337 var2033!1)) ; Statement: specialinvoke r1.<org.apache.ibatis.javassist.compiler.Parser: void toClassName(org.apache.ibatis.javassist.compiler.ast.ASTree,java.lang.StringBuilder)>(r2, $r0) 

(declare-const var647!1 var2525)
(declare-const var1337!1 var915)
(declare-const var2033!2 String)
(assert true)
(define-const var3202 String (toString/-2075883882 var2033!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toClassName/-811684282=([org.apache.ibatis.javassist.compiler.Parser, org.apache.ibatis.javassist.compiler.ast.ASTree, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2525=org.apache.ibatis.javassist.compiler.Parser, var647=r1, var915=org.apache.ibatis.javassist.compiler.ast.ASTree, var1337=r2, var2033=$r0, var3202=$r3}
; {org.apache.ibatis.javassist.compiler.Parser=var2525, r1=var647, org.apache.ibatis.javassist.compiler.ast.ASTree=var915, r2=var1337, $r0=var2033, $r3=var3202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.Parser;	r2 := @parameter0: org.apache.ibatis.javassist.compiler.ast.ASTree;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	specialinvoke r1.<org.apache.ibatis.javassist.compiler.Parser: void toClassName(org.apache.ibatis.javassist.compiler.ast.ASTree,java.lang.StringBuilder)>(r2, $r0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1