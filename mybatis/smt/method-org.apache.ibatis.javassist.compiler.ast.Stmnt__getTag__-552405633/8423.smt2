(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operatorId/253313183 (var3552) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3552 var3552)
(declare-const var1849 var3552) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.ast.Stmnt 
(assert (not (= var1849 null-var3552)))
(define-const var156 Int (operatorId/253313183 var1849)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId> 
 ; Statement: if $i0 >= 128 goto $r1 = new java.lang.StringBuilder 
(assert (not (>= var156 128))) ; Negate: Cond: $i0 >= 128  
(define-const var2335 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2335)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2335!1 String)
(assert (= var2335!1 ""))
(assert true)
(define-const var2842 String (append/672562846 var2335!1 "stmnt:")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stmnt:") 
(declare-const var2335!2 String)
(assert (= var2335!2 (str.++ var2335!1 "stmnt:")))
(define-const var342 Int (operatorId/253313183 var1849)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId> 
(define-const var3175 Int (cast-from-Int-to-Int var342)) ; Statement: $c3 = (char) $i2 
(assert true)
(define-const var1931 String (append/-1166366385 var2842 var3175)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3) 
(declare-const var2842!1 String)
(assert (str.prefixof var2842 var2842!1))
(assert true)
(define-const var1990 String (toString/-2075883882 var1931)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {operatorId/253313183=([org.apache.ibatis.javassist.compiler.ast.Stmnt], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3552=org.apache.ibatis.javassist.compiler.ast.Stmnt, var1849=r0, var156=$i0, var2335=$r5, var2842=$r6, var342=$i2, var3175=$c3, var1931=$r7, var1990=$r8}
; {org.apache.ibatis.javassist.compiler.ast.Stmnt=var3552, r0=var1849, $i0=var156, $r5=var2335, $r6=var2842, $i2=var342, $c3=var3175, $r7=var1931, $r8=var1990}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.ast.Stmnt;	$i0 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId>;	if $i0 >= 128 goto $r1 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("stmnt:");	$i2 = r0.<org.apache.ibatis.javassist.compiler.ast.Stmnt: int operatorId>;	$c3 = (char) $i2;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2