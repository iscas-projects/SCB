(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var807 0)
(declare-sort var2147 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-666442270 (var807 var389) var389)
(declare-fun cast-from-String-to-var389 (String) var389)
(declare-fun cast-from-var389-to-String (var389) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun put/-13419698 (var807 String var389) var389)
(declare-const null-var807 var807)
(declare-const null-String String)
(declare-const var3429 var807) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3429 null-var807)))
(declare-const var1316 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1316 null-String)))
(assert true)
(define-const var18 var389 (get/-666442270 var3429 (cast-from-String-to-var389 "_preCast"))) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object get(java.lang.Object)>("_preCast") 
(define-const var44 String (cast-from-var389-to-String var18)) ; Statement: r6 = (java.lang.String) $r1 
 ; Statement: if r6 == null goto r7 = r2 
(assert (not (= var44 null-String))) ; Negate: Cond: r6 == null  
(define-const var2027 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2027)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2027!1 String)
(assert (= var2027!1 ""))
(assert true)
(define-const var2398 String (append/672562846 var2027!1 var1316)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2027!2 String)
(assert (= var2027!2 (str.++ var2027!1 var1316)))
(assert true)
(define-const var1110 String (append/672562846 var2398 var44)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2398!1 String)
(assert (= var2398!1 (str.++ var2398 var44)))
(assert true)
(define-const var1481 String (toString/-2075883882 var1110)) ; Statement: r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object put(java.lang.String,java.lang.Object)>("_preCast", r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (put/-13419698 var3429 "_preCast" (cast-from-String-to-var389 var1481))) ; Statement: virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object put(java.lang.String,java.lang.Object)>("_preCast", r7) 

(declare-const var3429!1 var807)
(declare-const var2069 String)
(declare-const var1481!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-666442270=([org.apache.ibatis.ognl.OgnlContext, java.lang.Object], java.lang.Object), cast-from-String-to-var389=([java.lang.String], java.lang.Object), cast-from-var389-to-String=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), put/-13419698=([org.apache.ibatis.ognl.OgnlContext, java.lang.String, java.lang.Object], java.lang.Object)}
; {var807=org.apache.ibatis.ognl.OgnlContext, var3429=r0, var1316=r2, var2147=null_type, var389=java.lang.Object, var18=$r1, var44=r6, var2027=$r3, var2398=$r4, var1110=$r5, var1481=r7, var2069="_preCast"}
; {org.apache.ibatis.ognl.OgnlContext=var807, r0=var3429, r2=var1316, null_type=var2147, java.lang.Object=var389, $r1=var18, r6=var44, $r3=var2027, $r4=var2398, $r5=var1110, r7=var1481, "_preCast"=var2069}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r2 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object get(java.lang.Object)>("_preCast");	r6 = (java.lang.String) $r1;	if r6 == null goto r7 = r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object put(java.lang.String,java.lang.Object)>("_preCast", r7)];	virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object put(java.lang.String,java.lang.Object)>("_preCast", r7);	return
;block_num 3