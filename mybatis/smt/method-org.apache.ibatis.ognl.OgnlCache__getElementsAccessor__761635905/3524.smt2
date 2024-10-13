(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2629 0)
(declare-sort var579 0)
(declare-sort var229 0)
(declare-sort var2473 0)
(declare-sort var2664 0)
(declare-sort var200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elementsAccessors/1493318390 (var2629) var579)
(declare-fun var2473_getHandler/-1171995976 (ClassObject var579) var229)
(declare-fun cast-from-var229-to-var2664 (var229) var2664)
(declare-fun var200-init () var200)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var229) String)
(declare-fun cast-from-ClassObject-to-var229 (ClassObject) var229)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-434000407 (var200 String) void)
(declare-const null-var2629 var2629)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2664 var2664)
(declare-const var3179 var2629) ; Statement: r1 := @this: org.apache.ibatis.ognl.OgnlCache 
(assert (not (= var3179 null-var2629)))
(declare-const var2351 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2351 null-ClassObject)))
(define-const var203 var579 (elementsAccessors/1493318390 var3179)) ; Statement: $r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache elementsAccessors> 
(define-const var734 var229 (var2473_getHandler/-1171995976 var2351 var203)) ; Statement: $r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2) 
(define-const var1871 var2664 (cast-from-var229-to-var2664 var734)) ; Statement: r4 = (org.apache.ibatis.ognl.ElementsAccessor) $r3 
 ; Statement: if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException 
(assert (= var1871 null-var2664)) ; Cond: r4 == null 
(define-const var3455 var200 var200-init) ; Statement: $r5 = new org.apache.ibatis.ognl.OgnlException 
(define-const var2799 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2799)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2799!1 String)
(assert (= var2799!1 ""))
(assert true)
(define-const var11 String (append/672562846 var2799!1 "No elements accessor for class ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No elements accessor for class ") 
(declare-const var2799!2 String)
(assert (= var2799!2 (str.++ var2799!1 "No elements accessor for class ")))
(assert true)
(define-const var201 String (append/-1031950772 var11 (cast-from-ClassObject-to-var229 var2351))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var11!1 String)
(assert (str.prefixof var11 var11!1))
(assert true)
(define-const var607 String (toString/-2075883882 var201)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-434000407 var3455 var607)) ; Statement: specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9) 

(declare-const var3455!1 var200)
(declare-const var607!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {elementsAccessors/1493318390=([org.apache.ibatis.ognl.OgnlCache], org.apache.ibatis.ognl.internal.ClassCache), var2473_getHandler/-1171995976=([java.lang.Class, org.apache.ibatis.ognl.internal.ClassCache], java.lang.Object), cast-from-var229-to-var2664=([java.lang.Object], org.apache.ibatis.ognl.ElementsAccessor), var200-init=([], org.apache.ibatis.ognl.OgnlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var229=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-434000407=([org.apache.ibatis.ognl.OgnlException, java.lang.String], void)}
; {var2629=org.apache.ibatis.ognl.OgnlCache, var3179=r1, var2351=r0, var579=org.apache.ibatis.ognl.internal.ClassCache, var203=$r2, var229=java.lang.Object, var2473=org.apache.ibatis.ognl.internal.ClassCacheHandler, var734=$r3, var2664=org.apache.ibatis.ognl.ElementsAccessor, var1871=r4, var200=org.apache.ibatis.ognl.OgnlException, var3455=$r5, var2799=$r6, var11=$r7, var201=$r8, var607=$r9}
; {org.apache.ibatis.ognl.OgnlCache=var2629, r1=var3179, r0=var2351, org.apache.ibatis.ognl.internal.ClassCache=var579, $r2=var203, java.lang.Object=var229, org.apache.ibatis.ognl.internal.ClassCacheHandler=var2473, $r3=var734, org.apache.ibatis.ognl.ElementsAccessor=var2664, r4=var1871, org.apache.ibatis.ognl.OgnlException=var200, $r5=var3455, $r6=var2799, $r7=var11, $r8=var201, $r9=var607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.OgnlCache;	r0 := @parameter0: java.lang.Class;	$r2 = r1.<org.apache.ibatis.ognl.OgnlCache: org.apache.ibatis.ognl.internal.ClassCache elementsAccessors>;	$r3 = staticinvoke <org.apache.ibatis.ognl.internal.ClassCacheHandler: java.lang.Object getHandler(java.lang.Class,org.apache.ibatis.ognl.internal.ClassCache)>(r0, $r2);	r4 = (org.apache.ibatis.ognl.ElementsAccessor) $r3;	if r4 == null goto $r5 = new org.apache.ibatis.ognl.OgnlException;	$r5 = new org.apache.ibatis.ognl.OgnlException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No elements accessor for class ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.ognl.OgnlException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2