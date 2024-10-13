(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3343 0)
(declare-sort var3718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun castType/-1426331897 (var3718) Int)
(declare-fun cast-from-var3343-to-var3718 (var3343) var3718)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun arrayDim/-1426331897 (var3718) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3343 var3343)
(declare-const var2749 var3343) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr 
(assert (not (= var2749 null-var3343)))
(define-const var3778 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3778)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3778!1 String)
(assert (= var3778!1 ""))
(assert true)
(define-const var1641 String (append/672562846 var3778!1 "instanceof:")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("instanceof:") 
(declare-const var3778!2 String)
(assert (= var3778!2 (str.++ var3778!1 "instanceof:")))
(define-const var1179 Int (castType/-1426331897 (cast-from-var3343-to-var3718 var2749))) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr: int castType> 
(assert true)
(define-const var856 String (append/-1001720160 var1641 var1179)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1641!1 String)
(assert (str.prefixof var1641 var1641!1))
(assert true)
(define-const var393 String (append/672562846 var856 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var856!1 String)
(assert (= var856!1 (str.++ var856 ":")))
(define-const var620 Int (arrayDim/-1426331897 (cast-from-var3343-to-var3718 var2749))) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr: int arrayDim> 
(assert true)
(define-const var361 String (append/-1001720160 var393 var620)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var393!1 String)
(assert (str.prefixof var393 var393!1))
(assert true)
(define-const var2003 String (toString/-2075883882 var361)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), castType/-1426331897=([org.apache.ibatis.javassist.compiler.ast.CastExpr], int), cast-from-var3343-to-var3718=([org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr], org.apache.ibatis.javassist.compiler.ast.CastExpr), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), arrayDim/-1426331897=([org.apache.ibatis.javassist.compiler.ast.CastExpr], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3343=org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr, var2749=r1, var3778=$r0, var1641=$r2, var3718=org.apache.ibatis.javassist.compiler.ast.CastExpr, var1179=$i0, var856=$r3, var393=$r4, var620=$i1, var361=$r5, var2003=$r6}
; {org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr=var3343, r1=var2749, $r0=var3778, $r2=var1641, org.apache.ibatis.javassist.compiler.ast.CastExpr=var3718, $i0=var1179, $r3=var856, $r4=var393, $i1=var620, $r5=var361, $r6=var2003}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("instanceof:");	$i0 = r1.<org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr: int castType>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<org.apache.ibatis.javassist.compiler.ast.InstanceOfExpr: int arrayDim>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1