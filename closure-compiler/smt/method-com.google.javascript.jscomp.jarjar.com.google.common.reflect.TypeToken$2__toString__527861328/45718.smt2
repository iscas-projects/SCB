(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3920 0)
(declare-sort var628 0)
(declare-sort var2198 0)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getOwnerType/307112782 (var3920) var628)
(declare-fun append/-1031950772 (String var2198) String)
(declare-fun cast-from-var628-to-var2198 (var628) var2198)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2336_on/1025003129 (String) var2336)
(declare-fun getGenericParameterTypes/1603251879 (var3920) (Array Int ClassObject))
(declare-fun join/623417183 (var2336 (Array Int var2198)) String)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var2198__ ((Array Int ClassObject)) (Array Int var2198))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3920 var3920)
(declare-const var2046 var3920) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2 
(assert (not (= var2046 null-var3920)))
(define-const var263 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var263)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var263!1 String)
(assert (= var263!1 ""))
(assert true)
(define-const var2709 var628 (getOwnerType/307112782 var2046)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getOwnerType()>() 
(assert true)
(define-const var1370 String (append/-1031950772 var263!1 (cast-from-var628-to-var2198 var2709))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var263!2 String)
(assert (str.prefixof var263!1 var263!2))
(assert true)
(define-const var1155 String (append/672562846 var1370 "(")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1370!1 String)
(assert (= var1370!1 (str.++ var1370 "(")))
(define-const var2292 var2336 (var2336_on/1025003129 ", ")) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner on(java.lang.String)>(", ") 
(assert true)
(define-const var2420 (Array Int ClassObject) (getGenericParameterTypes/1603251879 var2046)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2: java.lang.reflect.Type[] getGenericParameterTypes()>() 
(assert true)
(define-const var1310 String (join/623417183 var2292 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var2198__ var2420))) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Object[])>($r4) 
(assert true)
(define-const var2685 String (append/672562846 var1155 var1310)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1155!1 String)
(assert (= var1155!1 (str.++ var1155 var1310)))
(assert true)
(define-const var322 String (append/672562846 var2685 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2685!1 String)
(assert (= var2685!1 (str.++ var2685 ")")))
(assert true)
(define-const var2302 String (toString/-2075883882 var322)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getOwnerType/307112782=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var628-to-var2198=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2336_on/1025003129=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner), getGenericParameterTypes/1603251879=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2], java.lang.reflect.Type[]), join/623417183=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.Object[]], java.lang.String), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var2198__=([java.lang.reflect.Type[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3920=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2, var2046=r1, var263=$r0, var628=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2709=$r2, var2198=java.lang.Object, var1370=$r3, var1155=$r7, var2336=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var2292=$r5, var2420=$r4, var1310=$r6, var2685=$r8, var322=$r9, var2302=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2=var3920, r1=var2046, $r0=var263, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var628, $r2=var2709, java.lang.Object=var2198, $r3=var1370, $r7=var1155, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var2336, $r5=var2292, $r4=var2420, $r6=var1310, $r8=var2685, $r9=var322, $r10=var2302}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getOwnerType()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner on(java.lang.String)>(", ");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$2: java.lang.reflect.Type[] getGenericParameterTypes()>();	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: java.lang.String join(java.lang.Object[])>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1