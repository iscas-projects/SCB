(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1349 0)
(declare-sort var2028 0)
(declare-sort var2034 0)
(declare-sort var1161 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/573518636 (var1161) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setBody/-813466147 (var3533 String) void)
(declare-fun cast-from-var2034-to-var3533 (var2034) var3533)
(declare-fun addMethod/-1476701768 (var2028 var2034) void)
(declare-const null-var1349 var1349)
(declare-const null-var2028 var2028)
(declare-const null-var2034 var2034)
(declare-const null-var1161 var1161)
(declare-const var3160 var1349) ; Statement: r9 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler 
(assert (not (= var3160 null-var1349)))
(declare-const var1151 var2028) ; Statement: r8 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1151 null-var2028)))
(declare-const var491 var2034) ; Statement: r7 := @parameter1: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var491 null-var2034)))
(declare-const var1196 var1161) ; Statement: r1 := @parameter2: org.apache.ibatis.javassist.CtField 
(assert (not (= var1196 null-var1161)))
(define-const var3612 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3612)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3612!1 String)
(assert (= var3612!1 ""))
(assert true)
(define-const var1163 String (append/672562846 var3612!1 "return ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("return ") 
(declare-const var3612!2 String)
(assert (= var3612!2 (str.++ var3612!1 "return ")))
(assert true)
(define-const var3747 String (getName/573518636 var1196)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>() 
(assert true)
(define-const var3358 String (append/672562846 var1163 var3747)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1163!1 String)
(assert (= var1163!1 (str.++ var1163 var3747)))
(assert true)
(define-const var3206 String (append/672562846 var3358 ".getValue($1, $2);")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".getValue($1, $2);") 
(declare-const var3358!1 String)
(assert (= var3358!1 (str.++ var3358 ".getValue($1, $2);")))
(assert true)
(define-const var3983 String (toString/-2075883882 var3206)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setBody/-813466147 (cast-from-var2034-to-var3533 var491) var3983)) ; Statement: virtualinvoke r7.<org.apache.ibatis.javassist.CtMethod: void setBody(java.lang.String)>(r6) 

(declare-const var491!1 var2034)
(declare-const var3983!1 String)
(assert true)
;(assert (addMethod/-1476701768 var1151 var491!1)) ; Statement: virtualinvoke r8.<org.apache.ibatis.javassist.CtClass: void addMethod(org.apache.ibatis.javassist.CtMethod)>(r7) 

(declare-const var1151!1 var2028)
(declare-const var491!2 var2034)
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/573518636=([org.apache.ibatis.javassist.CtField], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setBody/-813466147=([org.apache.ibatis.javassist.CtBehavior, java.lang.String], void), cast-from-var2034-to-var3533=([org.apache.ibatis.javassist.CtMethod], org.apache.ibatis.javassist.CtBehavior), addMethod/-1476701768=([org.apache.ibatis.javassist.CtClass, org.apache.ibatis.javassist.CtMethod], void)}
; {var1349=org.apache.ibatis.ognl.enhance.ExpressionCompiler, var3160=r9, var2028=org.apache.ibatis.javassist.CtClass, var1151=r8, var2034=org.apache.ibatis.javassist.CtMethod, var491=r7, var1161=org.apache.ibatis.javassist.CtField, var1196=r1, var3612=$r0, var1163=$r3, var3747=$r2, var3358=$r4, var3206=$r5, var3983=r6, var3533=org.apache.ibatis.javassist.CtBehavior}
; {org.apache.ibatis.ognl.enhance.ExpressionCompiler=var1349, r9=var3160, org.apache.ibatis.javassist.CtClass=var2028, r8=var1151, org.apache.ibatis.javassist.CtMethod=var2034, r7=var491, org.apache.ibatis.javassist.CtField=var1161, r1=var1196, $r0=var3612, $r3=var1163, $r2=var3747, $r4=var3358, $r5=var3206, r6=var3983, org.apache.ibatis.javassist.CtBehavior=var3533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler;	r8 := @parameter0: org.apache.ibatis.javassist.CtClass;	r7 := @parameter1: org.apache.ibatis.javassist.CtMethod;	r1 := @parameter2: org.apache.ibatis.javassist.CtField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("return ");	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".getValue($1, $2);");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r7.<org.apache.ibatis.javassist.CtMethod: void setBody(java.lang.String)>(r6);	virtualinvoke r8.<org.apache.ibatis.javassist.CtClass: void addMethod(org.apache.ibatis.javassist.CtMethod)>(r7);	return r6
;block_num 1