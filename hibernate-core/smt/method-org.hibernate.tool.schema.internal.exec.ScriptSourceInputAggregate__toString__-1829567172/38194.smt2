(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3150 0)
(declare-sort var1996 0)
(declare-sort var1795 0)
(declare-sort var89 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun inputs/-1465367132 (var3150) (Array Int var1996))
(declare-fun var1795_toString/-575966009 ((Array Int var89)) String)
(declare-fun cast-from-__Array__Int__var1996__-to-__Array__Int__var89__ ((Array Int var1996)) (Array Int var89))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3150 var3150)
(declare-const var3474 var3150) ; Statement: r1 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputAggregate 
(assert (not (= var3474 null-var3150)))
(define-const var700 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var700)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var700!1 String)
(assert (= var700!1 ""))
(assert true)
(define-const var2573 String (append/672562846 var700!1 "ScriptSourceInputAggregate(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptSourceInputAggregate(") 
(declare-const var700!2 String)
(assert (= var700!2 (str.++ var700!1 "ScriptSourceInputAggregate(")))
(define-const var2033 (Array Int var1996) (inputs/-1465367132 var3474)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputAggregate: org.hibernate.tool.schema.spi.ScriptSourceInput[] inputs> 
(define-const var1727 String (var1795_toString/-575966009 (cast-from-__Array__Int__var1996__-to-__Array__Int__var89__ var2033))) ; Statement: $r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var1014 String (append/672562846 var2573 var1727)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2573!1 String)
(assert (= var2573!1 (str.++ var2573 var1727)))
(assert true)
(define-const var2436 String (append/672562846 var1014 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1014!1 String)
(assert (= var1014!1 (str.++ var1014 ")")))
(assert true)
(define-const var3857 String (toString/-2075883882 var2436)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), inputs/-1465367132=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputAggregate], org.hibernate.tool.schema.spi.ScriptSourceInput[]), var1795_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var1996__-to-__Array__Int__var89__=([org.hibernate.tool.schema.spi.ScriptSourceInput[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3150=org.hibernate.tool.schema.internal.exec.ScriptSourceInputAggregate, var3474=r1, var700=$r0, var2573=$r4, var1996=org.hibernate.tool.schema.spi.ScriptSourceInput, var2033=$r2, var1795=java.util.Arrays, var89=java.lang.Object, var1727=$r3, var1014=$r5, var2436=$r6, var3857=$r7}
; {org.hibernate.tool.schema.internal.exec.ScriptSourceInputAggregate=var3150, r1=var3474, $r0=var700, $r4=var2573, org.hibernate.tool.schema.spi.ScriptSourceInput=var1996, $r2=var2033, java.util.Arrays=var1795, java.lang.Object=var89, $r3=var1727, $r5=var1014, $r6=var2436, $r7=var3857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputAggregate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptSourceInputAggregate(");	$r2 = r1.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputAggregate: org.hibernate.tool.schema.spi.ScriptSourceInput[] inputs>;	$r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1