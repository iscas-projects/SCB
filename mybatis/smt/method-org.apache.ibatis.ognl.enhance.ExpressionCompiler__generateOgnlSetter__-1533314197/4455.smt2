(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2210 0)
(declare-sort var3042 0)
(declare-sort var3047 0)
(declare-sort var1153 0)
(declare-sort var3985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/573518636 (var1153) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setBody/-813466147 (var3985 String) void)
(declare-fun cast-from-var3047-to-var3985 (var3047) var3985)
(declare-fun addMethod/-1476701768 (var3042 var3047) void)
(declare-const null-var2210 var2210)
(declare-const null-var3042 var3042)
(declare-const null-var3047 var3047)
(declare-const null-var1153 var1153)
(declare-const var3310 var2210) ; Statement: r8 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler 
(assert (not (= var3310 null-var2210)))
(declare-const var1238 var3042) ; Statement: r7 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1238 null-var3042)))
(declare-const var1182 var3047) ; Statement: r6 := @parameter1: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var1182 null-var3047)))
(declare-const var200 var1153) ; Statement: r1 := @parameter2: org.apache.ibatis.javassist.CtField 
(assert (not (= var200 null-var1153)))
(define-const var855 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var855)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var855!1 String)
(assert (= var855!1 ""))
(assert true)
(define-const var515 String (getName/573518636 var200)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>() 
(assert true)
(define-const var3555 String (append/672562846 var855!1 var515)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var855!2 String)
(assert (= var855!2 (str.++ var855!1 var515)))
(assert true)
(define-const var584 String (append/672562846 var3555 ".setValue($1, $2, $3);")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".setValue($1, $2, $3);") 
(declare-const var3555!1 String)
(assert (= var3555!1 (str.++ var3555 ".setValue($1, $2, $3);")))
(assert true)
(define-const var3322 String (toString/-2075883882 var584)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setBody/-813466147 (cast-from-var3047-to-var3985 var1182) var3322)) ; Statement: virtualinvoke r6.<org.apache.ibatis.javassist.CtMethod: void setBody(java.lang.String)>(r5) 

(declare-const var1182!1 var3047)
(declare-const var3322!1 String)
(assert true)
;(assert (addMethod/-1476701768 var1238 var1182!1)) ; Statement: virtualinvoke r7.<org.apache.ibatis.javassist.CtClass: void addMethod(org.apache.ibatis.javassist.CtMethod)>(r6) 

(declare-const var1238!1 var3042)
(declare-const var1182!2 var3047)
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/573518636=([org.apache.ibatis.javassist.CtField], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setBody/-813466147=([org.apache.ibatis.javassist.CtBehavior, java.lang.String], void), cast-from-var3047-to-var3985=([org.apache.ibatis.javassist.CtMethod], org.apache.ibatis.javassist.CtBehavior), addMethod/-1476701768=([org.apache.ibatis.javassist.CtClass, org.apache.ibatis.javassist.CtMethod], void)}
; {var2210=org.apache.ibatis.ognl.enhance.ExpressionCompiler, var3310=r8, var3042=org.apache.ibatis.javassist.CtClass, var1238=r7, var3047=org.apache.ibatis.javassist.CtMethod, var1182=r6, var1153=org.apache.ibatis.javassist.CtField, var200=r1, var855=$r0, var515=$r2, var3555=$r3, var584=$r4, var3322=r5, var3985=org.apache.ibatis.javassist.CtBehavior}
; {org.apache.ibatis.ognl.enhance.ExpressionCompiler=var2210, r8=var3310, org.apache.ibatis.javassist.CtClass=var3042, r7=var1238, org.apache.ibatis.javassist.CtMethod=var3047, r6=var1182, org.apache.ibatis.javassist.CtField=var1153, r1=var200, $r0=var855, $r2=var515, $r3=var3555, $r4=var584, r5=var3322, org.apache.ibatis.javassist.CtBehavior=var3985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.ognl.enhance.ExpressionCompiler;	r7 := @parameter0: org.apache.ibatis.javassist.CtClass;	r6 := @parameter1: org.apache.ibatis.javassist.CtMethod;	r1 := @parameter2: org.apache.ibatis.javassist.CtField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtField: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".setValue($1, $2, $3);");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r6.<org.apache.ibatis.javassist.CtMethod: void setBody(java.lang.String)>(r5);	virtualinvoke r7.<org.apache.ibatis.javassist.CtClass: void addMethod(org.apache.ibatis.javassist.CtMethod)>(r6);	return r5
;block_num 1