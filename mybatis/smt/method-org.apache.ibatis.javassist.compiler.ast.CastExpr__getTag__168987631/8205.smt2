(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun castType/-1426331897 (var3099) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun arrayDim/-1426331897 (var3099) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3099 var3099)
(declare-const var2573 var3099) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.CastExpr 
(assert (not (= var2573 null-var3099)))
(define-const var2902 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2902)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2902!1 String)
(assert (= var2902!1 ""))
(assert true)
(define-const var1467 String (append/672562846 var2902!1 "cast:")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast:") 
(declare-const var2902!2 String)
(assert (= var2902!2 (str.++ var2902!1 "cast:")))
(define-const var2849 Int (castType/-1426331897 var2573)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.compiler.ast.CastExpr: int castType> 
(assert true)
(define-const var3006 String (append/-1001720160 var1467 var2849)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1467!1 String)
(assert (str.prefixof var1467 var1467!1))
(assert true)
(define-const var2913 String (append/672562846 var3006 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3006!1 String)
(assert (= var3006!1 (str.++ var3006 ":")))
(define-const var1327 Int (arrayDim/-1426331897 var2573)) ; Statement: $i1 = r1.<org.apache.ibatis.javassist.compiler.ast.CastExpr: int arrayDim> 
(assert true)
(define-const var650 String (append/-1001720160 var2913 var1327)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2913!1 String)
(assert (str.prefixof var2913 var2913!1))
(assert true)
(define-const var555 String (toString/-2075883882 var650)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), castType/-1426331897=([org.apache.ibatis.javassist.compiler.ast.CastExpr], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), arrayDim/-1426331897=([org.apache.ibatis.javassist.compiler.ast.CastExpr], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3099=org.apache.ibatis.javassist.compiler.ast.CastExpr, var2573=r1, var2902=$r0, var1467=$r2, var2849=$i0, var3006=$r3, var2913=$r4, var1327=$i1, var650=$r5, var555=$r6}
; {org.apache.ibatis.javassist.compiler.ast.CastExpr=var3099, r1=var2573, $r0=var2902, $r2=var1467, $i0=var2849, $r3=var3006, $r4=var2913, $i1=var1327, $r5=var650, $r6=var555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.CastExpr;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast:");	$i0 = r1.<org.apache.ibatis.javassist.compiler.ast.CastExpr: int castType>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r1.<org.apache.ibatis.javassist.compiler.ast.CastExpr: int arrayDim>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1