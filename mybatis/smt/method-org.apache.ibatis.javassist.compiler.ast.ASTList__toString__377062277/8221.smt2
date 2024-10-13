(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1355 0)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTag/743290027 (var33) String)
(declare-fun cast-from-var1355-to-var33 (var1355) var33)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1355 var1355)
(declare-const var1842 var1355) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.ASTList 
(assert (not (= var1842 null-var1355)))
(define-const var1633 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1633)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1633!1 String)
(assert (= var1633!1 ""))
(assert true)
;(assert (append/672562846 var1633!1 "(<")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<") 
(declare-const var1633!2 String)
(assert (= var1633!2 (str.++ var1633!1 "(<")))
(assert true)
(define-const var655 String (getTag/743290027 (cast-from-var1355-to-var33 var1842))) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.ASTList: java.lang.String getTag()>() 
(assert true)
;(assert (append/672562846 var1633!2 var655)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1633!3 String)
(assert (= var1633!3 (str.++ var1633!2 var655)))
(assert true)
;(assert (append/-1166366385 var1633!3 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1633!4 String)
(assert (str.prefixof var1633!3 var1633!4))
(define-const var2374 var1355 var1842) ; Statement: r5 = r1 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= var2374 null-var1355)) ; Cond: r5 == null 
(assert true)
;(assert (append/-1166366385 var1633!4 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1633!5 String)
(assert (str.prefixof var1633!4 var1633!5))
(assert true)
(define-const var1476 String (toString/-2075883882 var1633!5)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTag/743290027=([org.apache.ibatis.javassist.compiler.ast.ASTree], java.lang.String), cast-from-var1355-to-var33=([org.apache.ibatis.javassist.compiler.ast.ASTList], org.apache.ibatis.javassist.compiler.ast.ASTree), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1355=org.apache.ibatis.javassist.compiler.ast.ASTList, var1842=r1, var1633=$r0, var33=org.apache.ibatis.javassist.compiler.ast.ASTree, var655=$r2, var2374=r5, var1476=$r3}
; {org.apache.ibatis.javassist.compiler.ast.ASTList=var1355, r1=var1842, $r0=var1633, org.apache.ibatis.javassist.compiler.ast.ASTree=var33, $r2=var655, r5=var2374, $r3=var1476}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.ASTList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<");	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.ASTList: java.lang.String getTag()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	r5 = r1;	if r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3