(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operatorId/253313183 (var716) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var716 var716)
(declare-const var2738 var716) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.ast.Stmnt 
(assert (not (= var2738 null-var716)))
(define-const var1182 Int (operatorId/253313183 var2738)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId> 
 ; Statement: if $i0 >= 128 goto $r1 = new java.lang.StringBuilder 
(assert (>= var1182 128)) ; Cond: $i0 >= 128 
(define-const var3792 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3792)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3792!1 String)
(assert (= var3792!1 ""))
(assert true)
(define-const var1205 String (append/672562846 var3792!1 "stmnt:")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stmnt:") 
(declare-const var3792!2 String)
(assert (= var3792!2 (str.++ var3792!1 "stmnt:")))
(define-const var1136 Int (operatorId/253313183 var2738)) ; Statement: $i1 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId> 
(assert true)
(define-const var3889 String (append/-1001720160 var1205 var1136)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1205!1 String)
(assert (str.prefixof var1205 var1205!1))
(assert true)
(define-const var3964 String (toString/-2075883882 var3889)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {operatorId/253313183=([org.apache.ibatis.javassist.compiler.ast.Stmnt], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var716=org.apache.ibatis.javassist.compiler.ast.Stmnt, var2738=r0, var1182=$i0, var3792=$r1, var1205=$r2, var1136=$i1, var3889=$r3, var3964=$r4}
; {org.apache.ibatis.javassist.compiler.ast.Stmnt=var716, r0=var2738, $i0=var1182, $r1=var3792, $r2=var1205, $i1=var1136, $r3=var3889, $r4=var3964}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.ast.Stmnt;	$i0 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId>;	if $i0 >= 128 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stmnt:");	$i1 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2