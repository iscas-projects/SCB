(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var843 0)
(declare-sort var3732 0)
(declare-sort var3517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun identifier/-732619893 (var3732) String)
(declare-fun cast-from-var843-to-var3732 (var843) var3732)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun declarator/1584318383 (var843) var3517)
(declare-fun getType/1080370188 (var3517) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var843 var843)
(declare-const var2051 var843) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.Variable 
(assert (not (= var2051 null-var843)))
(define-const var105 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var105)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var105!1 String)
(assert (= var105!1 ""))
(define-const var2501 String (identifier/-732619893 (cast-from-var843-to-var3732 var2051))) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Variable: java.lang.String identifier> 
(assert true)
(define-const var1219 String (append/672562846 var105!1 var2501)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var105!2 String)
(assert (= var105!2 (str.++ var105!1 var2501)))
(assert true)
(define-const var3815 String (append/672562846 var1219 ":")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1219!1 String)
(assert (= var1219!1 (str.++ var1219 ":")))
(define-const var3261 var3517 (declarator/1584318383 var2051)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Variable: org.apache.ibatis.javassist.compiler.ast.Declarator declarator> 
(assert true)
(define-const var2610 Int (getType/1080370188 var3261)) ; Statement: $i0 = virtualinvoke $r4.<org.apache.ibatis.javassist.compiler.ast.Declarator: int getType()>() 
(assert true)
(define-const var58 String (append/-1001720160 var3815 var2610)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3815!1 String)
(assert (str.prefixof var3815 var3815!1))
(assert true)
(define-const var2383 String (toString/-2075883882 var58)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), identifier/-732619893=([org.apache.ibatis.javassist.compiler.ast.Symbol], java.lang.String), cast-from-var843-to-var3732=([org.apache.ibatis.javassist.compiler.ast.Variable], org.apache.ibatis.javassist.compiler.ast.Symbol), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), declarator/1584318383=([org.apache.ibatis.javassist.compiler.ast.Variable], org.apache.ibatis.javassist.compiler.ast.Declarator), getType/1080370188=([org.apache.ibatis.javassist.compiler.ast.Declarator], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var843=org.apache.ibatis.javassist.compiler.ast.Variable, var2051=r1, var105=$r0, var3732=org.apache.ibatis.javassist.compiler.ast.Symbol, var2501=$r2, var1219=$r3, var3815=$r5, var3517=org.apache.ibatis.javassist.compiler.ast.Declarator, var3261=$r4, var2610=$i0, var58=$r6, var2383=$r7}
; {org.apache.ibatis.javassist.compiler.ast.Variable=var843, r1=var2051, $r0=var105, org.apache.ibatis.javassist.compiler.ast.Symbol=var3732, $r2=var2501, $r3=var1219, $r5=var3815, org.apache.ibatis.javassist.compiler.ast.Declarator=var3517, $r4=var3261, $i0=var2610, $r6=var58, $r7=var2383}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.Variable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Variable: java.lang.String identifier>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Variable: org.apache.ibatis.javassist.compiler.ast.Declarator declarator>;	$i0 = virtualinvoke $r4.<org.apache.ibatis.javassist.compiler.ast.Declarator: int getType()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1