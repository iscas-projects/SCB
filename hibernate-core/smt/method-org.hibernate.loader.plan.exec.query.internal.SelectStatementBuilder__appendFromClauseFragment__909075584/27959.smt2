(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var30 0)
(declare-sort var1687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun appendFromClauseFragment/-1824855813 (var30 String) void)
(declare-const null-var30 var30)
(declare-const null-String String)
(declare-const var1871 var30) ; Statement: r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var1871 null-var30)))
(declare-const var3772 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3772 null-String)))
(declare-const var1286 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1286 null-String)))
(define-const var2133 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2133)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2133!1 String)
(assert (= var2133!1 ""))
(assert true)
(define-const var2859 String (append/672562846 var2133!1 var3772)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2133!2 String)
(assert (= var2133!2 (str.++ var2133!1 var3772)))
(assert true)
(define-const var408 String (append/-1166366385 var2859 32)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2859!1 String)
(assert (str.prefixof var2859 var2859!1))
(assert true)
(define-const var3276 String (append/672562846 var408 var1286)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var408!1 String)
(assert (= var408!1 (str.++ var408 var1286)))
(assert true)
(define-const var742 String (toString/-2075883882 var3276)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (appendFromClauseFragment/-1824855813 var1871 var742)) ; Statement: virtualinvoke r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void appendFromClauseFragment(java.lang.String)>($r7) 

(declare-const var1871!1 var30)
(declare-const var742!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), appendFromClauseFragment/-1824855813=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, java.lang.String], void)}
; {var30=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var1871=r0, var3772=r2, var1687=null_type, var1286=r4, var2133=$r1, var2859=$r3, var408=$r5, var3276=$r6, var742=$r7}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var30, r0=var1871, r2=var3772, null_type=var1687, r4=var1286, $r1=var2133, $r3=var2859, $r5=var408, $r6=var3276, $r7=var742}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void appendFromClauseFragment(java.lang.String)>($r7);	return
;block_num 1