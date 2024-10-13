(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3574 0)
(declare-sort var1201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1201) ClassObject)
(declare-fun cast-from-var3574-to-var1201 (var3574) var1201)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun externalJpaName/697109331 (var3574) String)
(declare-fun externalHbm2ddlName/697109331 (var3574) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3574 var3574)
(declare-const var256 var3574) ; Statement: r1 := @this: org.hibernate.tool.schema.Action 
(assert (not (= var256 null-var3574)))
(define-const var1154 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1154)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1154!1 String)
(assert (= var1154!1 ""))
(assert true)
(define-const var1964 ClassObject (getClass/1258963082 (cast-from-var3574-to-var1201 var256))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3374 String (getSimpleName/-390194377 var1964)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var209 String (append/672562846 var1154!1 var3374)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1154!2 String)
(assert (= var1154!2 (str.++ var1154!1 var3374)))
(assert true)
(define-const var455 String (append/672562846 var209 "(externalJpaName=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(externalJpaName=") 
(declare-const var209!1 String)
(assert (= var209!1 (str.++ var209 "(externalJpaName=")))
(define-const var644 String (externalJpaName/697109331 var256)) ; Statement: $r5 = r1.<org.hibernate.tool.schema.Action: java.lang.String externalJpaName> 
(assert true)
(define-const var2189 String (append/672562846 var455 var644)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var455!1 String)
(assert (= var455!1 (str.++ var455 var644)))
(assert true)
(define-const var274 String (append/672562846 var2189 ", externalHbm2ddlName=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", externalHbm2ddlName=") 
(declare-const var2189!1 String)
(assert (= var2189!1 (str.++ var2189 ", externalHbm2ddlName=")))
(define-const var625 String (externalHbm2ddlName/697109331 var256)) ; Statement: $r8 = r1.<org.hibernate.tool.schema.Action: java.lang.String externalHbm2ddlName> 
(assert true)
(define-const var319 String (append/672562846 var274 var625)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var274!1 String)
(assert (= var274!1 (str.++ var274 var625)))
(assert true)
(define-const var3170 String (append/672562846 var319 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var319!1 String)
(assert (= var319!1 (str.++ var319 ")")))
(assert true)
(define-const var2326 String (toString/-2075883882 var3170)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3574-to-var1201=([org.hibernate.tool.schema.Action], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), externalJpaName/697109331=([org.hibernate.tool.schema.Action], java.lang.String), externalHbm2ddlName/697109331=([org.hibernate.tool.schema.Action], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3574=org.hibernate.tool.schema.Action, var256=r1, var1154=$r0, var1201=java.lang.Object, var1964=$r2, var3374=$r3, var209=$r4, var455=$r6, var644=$r5, var2189=$r7, var274=$r9, var625=$r8, var319=$r10, var3170=$r11, var2326=$r12}
; {org.hibernate.tool.schema.Action=var3574, r1=var256, $r0=var1154, java.lang.Object=var1201, $r2=var1964, $r3=var3374, $r4=var209, $r6=var455, $r5=var644, $r7=var2189, $r9=var274, $r8=var625, $r10=var319, $r11=var3170, $r12=var2326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.Action;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(externalJpaName=");	$r5 = r1.<org.hibernate.tool.schema.Action: java.lang.String externalJpaName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", externalHbm2ddlName=");	$r8 = r1.<org.hibernate.tool.schema.Action: java.lang.String externalHbm2ddlName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1