(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getTag/743290027 (var3029) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3029 var3029)
(declare-const var1038 var3029) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.ASTree 
(assert (not (= var1038 null-var3029)))
(define-const var710 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var710)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var710!1 String)
(assert (= var710!1 ""))
(assert true)
;(assert (append/-1166366385 var710!1 60)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var710!2 String)
(assert (str.prefixof var710!1 var710!2))
(assert true)
(define-const var3864 String (getTag/743290027 var1038)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String getTag()>() 
(assert true)
;(assert (append/672562846 var710!2 var3864)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var710!3 String)
(assert (= var710!3 (str.++ var710!2 var3864)))
(assert true)
;(assert (append/-1166366385 var710!3 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var710!4 String)
(assert (str.prefixof var710!3 var710!4))
(assert true)
(define-const var3014 String (toString/-2075883882 var710!4)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getTag/743290027=([org.apache.ibatis.javassist.compiler.ast.ASTree], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3029=org.apache.ibatis.javassist.compiler.ast.ASTree, var1038=r1, var710=$r0, var3864=$r2, var3014=$r3}
; {org.apache.ibatis.javassist.compiler.ast.ASTree=var3029, r1=var1038, $r0=var710, $r2=var3864, $r3=var3014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.ASTree;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.ASTree: java.lang.String getTag()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1